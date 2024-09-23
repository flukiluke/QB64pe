option _explicit
deflng a-z
$console:only
_dest _console

const FALSE = 0, TRUE = -1

const ASCII_TAB = 9
const ASCII_LF = 10
const ASCII_VTAB = 11
const ASCII_FF = 12
const ASCII_CR = 13
const ASCII_EOF = 26
const ASCII_QUOTE = 34

const TOK_EOF = 1
const TOK_NEWLINE = 2
const TOK_ID = 3
const TOK_WHITESPACE = 4
const TOK_LINENUM = 5
const TOK_METACMD = 6
const TOK_COMMENT = 7
const TOK_STRING = 8
const TOK_DATA = 9
const TOK_NUMBER = 10
const TOK_PUNCTUATION = 11
const TOK_OPAREN = 12
const TOK_CPAREN = 13
const TOK_COMMA = 14

const STATE_BEGIN = 1
const STATE_LINENUM = 2
const STATE_METACMD = 3
const STATE_ID = 4
const STATE_COMMENT = 5
const STATE_STRING = 6
const STATE_DATA = 7
const STATE_GENERAL = 8
const STATE_NUMBER = 9
const STATE_WHITESPACE = 10
const STATE_WHITESPACE_LEADING = 11
const STATE_NEWLINE = 12
const STATE_NEWLINE_WIN = 13

dim shared input_content$
dim shared line_count, column_count
dim shared next_chr_idx
dim shared state

dim token, token_content$

init

token = next_token(token_content$)
do
' print "Token"; token; token_content$
' sleep
    select case token
    case TOK_ID
        select case ucase$(token_content$)
        case "REM"
            state = STATE_COMMENT
        case "DATA"
            state = STATE_DATA
        end select
    case TOK_NEWLINE
        line_count = line_count + 1
        column_count = 0
    case TOK_EOF
        exit do
    end select
    put #2, , token_content$
    token = next_token(token_content$)
loop
system

sub init
    open command$(1) for binary as #1
    open command$(2) for output as #2
    close #2
    open command$(2) for binary as #2

    input_content$ = space$(lof(1))
    get #1, , input_content$
    line_count = 1
    column_count = 0
    next_chr_idx = 1
    state = STATE_BEGIN

    input_content$ = input_content$ + chr$(ASCII_EOF)
end sub

function next_token(token_content$)
    dim c, return_token, unread
    token_content$ = ""
    do
        ' if next_chr_idx > len(input_content$) then
        '     next_token = TOK_EOF
        '     exit function
        ' end if
        c = asc(input_content$, next_chr_idx)
        next_chr_idx = next_chr_idx + 1
        column_count = column_count + 1
' print chr$(c); state
' sleep
        select case state
        case STATE_BEGIN
            select case c
            case asc("A") to asc("Z"), asc("a") to asc("z"), asc("_")
                state = STATE_ID
            case asc("0") to asc("9")
                state = STATE_LINENUM
            case asc("$")
                state = STATE_METACMD
            case asc(" "), ASCII_TAB, ASCII_VTAB, ASCII_FF
                state = STATE_WHITESPACE_LEADING
            case else
                state = STATE_GENERAL
                unread = TRUE
            end select
        case STATE_WHITESPACE_LEADING
            select case c
            case asc(" "), ASCII_TAB, ASCII_VTAB, ASCII_FF
                'Continue
            case else
                state = STATE_BEGIN
                return_token = TOK_WHITESPACE
                unread = TRUE
            end select
        case STATE_LINENUM
            select case c
            case asc("0") to asc("9")
                'Continue
            case asc(":")
                state = STATE_GENERAL
                return_token = TOK_LINENUM
            case else
                state = STATE_GENERAL
                return_token = TOK_LINENUM
                unread = TRUE
            end select
        case STATE_METACMD
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                state = STATE_NEWLINE
                return_token = TOK_METACMD
                unread = TRUE
            case else
                'Continue
            end select
        case STATE_ID
            select case c
            case asc("A") to asc("Z"), asc("a") to asc("z"), asc("_"), asc("0") to asc("9"), _
                 asc("`"), asc("~"), asc("!"), asc("#"), asc("$"), asc("%"), asc("&"), asc(".")
                'Continue
            case else
                state = STATE_GENERAL
                return_token = TOK_ID
                unread = TRUE
            end select
        case STATE_COMMENT
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                state = STATE_NEWLINE
                return_token = TOK_COMMENT
                unread = TRUE
            case else
                'Continue
            end select
        case STATE_STRING
            select case c
            case ASCII_QUOTE
                state = STATE_GENERAL
                return_token = TOK_STRING
            case ASCII_CR, ASCII_LF, ASCII_EOF
                state = STATE_NEWLINE
                return_token = TOK_STRING
                unread = TRUE
            case else
                'Continue
            end select
        case STATE_DATA
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                state = STATE_NEWLINE
                return_token = TOK_DATA
                unread = TRUE
            case else
                'Continue
            end select
        case STATE_GENERAL
            select case c
            case asc("A") to asc("Z"), asc("a") to asc("z"), asc("_")
                state = STATE_ID
            case asc("0") to asc("9"), asc("&"), asc(".")
                state = STATE_NUMBER
            case asc("?")
                state = STATE_GENERAL
                return_token = TOK_ID
            case asc("(")
                state = STATE_GENERAL
                return_token = TOK_OPAREN
            case asc(")")
                state = STATE_GENERAL
                return_token = TOK_CPAREN
            case asc(",")
                state = STATE_GENERAL
                return_token = TOK_COMMA
            case asc("^"), asc("*"), asc("-"), asc("+"), asc("="), asc("\"), asc("#"), _
                 asc(":"), asc(";"), asc("<"), asc(">"), asc("/")
                state = STATE_GENERAL
                return_token = TOK_PUNCTUATION
            case ASCII_QUOTE
                state = STATE_STRING
            case asc("'")
                state = STATE_COMMENT
            case asc(" "), ASCII_TAB, ASCII_VTAB, ASCII_FF
                state = STATE_WHITESPACE
            case ASCII_CR, ASCII_LF, ASCII_EOF
                state = STATE_NEWLINE
                unread = TRUE
            case else
                syntax_error chr$(c), token_content$
            end select
        case STATE_NUMBER
            select case c
            case asc("0") to asc("9"), asc("."), asc(","), asc("a") to asc("f"), asc("A") to asc("F"), _
                 asc("`"), asc("~"), asc("!"), asc("#"), asc("%"), asc("&")
                'Continue
            case else
                state = STATE_GENERAL
                return_token = TOK_NUMBER
                unread = TRUE
            end select
        case STATE_WHITESPACE
            select case c
            case asc(" "), ASCII_TAB, ASCII_VTAB, ASCII_FF
                'Continue
            case else
                state = STATE_GENERAL
                return_token = TOK_WHITESPACE
                unread = TRUE
            end select
        case STATE_NEWLINE
            select case c
            case ASCII_LF
                state = STATE_BEGIN
                return_token = TOK_NEWLINE
            case ASCII_CR
                state = STATE_NEWLINE_WIN
            case ASCII_EOF
                return_token = TOK_EOF
            case else
                'Should never happen
                syntax_error chr$(c), token_content$
            end select
        case STATE_NEWLINE_WIN
            select case c
            case ASCII_LF
                state = STATE_BEGIN
                return_token = TOK_NEWLINE
            case else
                state = STATE_BEGIN
                return_token = TOK_NEWLINE
                unread = TRUE
            end select
        end select

        if unread then
            next_chr_idx = next_chr_idx - 1
            unread = FALSE
        else
            token_content$ = token_content$ + chr$(c)
        end if

        if return_token then
            next_token = return_token
            exit function
        end if
    loop
end function

sub syntax_error(unexpected$, previous$)
    print "Line"; line_count; "column"; column_count;
    print "State"; state;
    print "Unexpected "; unexpected$; " coming after "; previous$
    system 1
end sub
option _explicit
deflng a-z
$console:only
_dest _console

'Removed leading @
'Line continutation formatting
'Removed all non-underscore items
'Removed all metacommands
'Removed _OFF (OFF appears to be just as valid)
'Removed _CLIP, _MIDDLE, _EXPLICITARRAY, _STRETCH, _SQUAREPIXELS, _BEHIND, _ONTOP, _ONLY
'Removed _SOFTWARE, _HARDWARE, _HARDWARE1, _ALL, _NONE, _SMOOTHSHRUNK, _SMOOTHSTRETCHED
'Removed _ANTICLOCKWISE, _SEAMLESS, _CLEAR, _HIDE, _DONTWAIT, _TOGGLE
'Would have removed _CLOCKWISE, _AUTO, _SHOW but not present
const KEYWORDS = "_ACOS@_ACOSH@_ALPHA@_ALPHA32@_ARCCOT@_ARCCSC@_ARCSEC@_ASIN@_ASINH@_ATAN2@_ATANH@_AUTODISPLAY@_AXIS@_BACKGROUNDCOLOR@_BIN$@_BIT@_BLEND@_BLINK@_BLUE@_BLUE32@_BUTTON@_BUTTONCHANGE@_BYTE@_CEIL@_CLEARCOLOR@_CLIPBOARD$@_CLIPBOARDIMAGE@_COMMANDCOUNT@_CONNECTED@_CONNECTIONADDRESS$@_CONNECTIONADDRESS@_CONSOLE@_CONSOLETITLE@_CONTINUE@_CONTROLCHR@_COPYIMAGE@_COPYPALETTE@_COSH@_COT@_COTH@_CSC@_CSCH@_CV@_CWD$@_D2G@_D2R@_DEFAULTCOLOR@_DEFINE@_DELAY@_DEPTHBUFFER@_DESKTOPHEIGHT@_DESKTOPWIDTH@_DEST@_DEVICE$@_DEVICEINPUT@_DEVICES@_DIR$@_DIREXISTS@_DISPLAY@_DISPLAYORDER@_DONTBLEND@" + _
    "_ERRORLINE@_ERRORMESSAGE$@_EXIT@_EXPLICIT@_FILEEXISTS@_FLOAT@_FONT@_FONTHEIGHT@_FONTWIDTH@_FREEFONT@_FREEIMAGE@_FREETIMER@_FULLSCREEN@_G2D@_G2R@_GLRENDER@_GREEN@_GREEN32@_HEIGHT@_HYPOT@_ICON@_INCLERRORFILE$@_INCLERRORLINE@_INTEGER64@_KEYCLEAR@_KEYDOWN@_KEYHIT@_LASTAXIS@_LASTBUTTON@_LASTWHEEL@_LIMIT@_LOADFONT@_LOADIMAGE@_MAPTRIANGLE@_MAPUNICODE@_MEM@_MEMCOPY@_MEMELEMENT@_MEMEXISTS@_MEMFILL@_MEMFREE@_MEMGET@_MEMIMAGE@_MEMSOUND@_MEMNEW@_MEMPUT@_MK$@_MOUSEBUTTON@_MOUSEHIDE@_MOUSEINPUT@_MOUSEMOVE@_MOUSEMOVEMENTX@_MOUSEMOVEMENTY@_MOUSEPIPEOPEN@_MOUSESHOW@_MOUSEWHEEL@_MOUSEX@_MOUSEY@_NEWIMAGE@_OFFSET@_OPENCLIENT@_OPENCONNECTION@_OPENHOST@_OS$@_PALETTECOLOR@_PI@_PIXELSIZE@_PRESERVE@_PRINTIMAGE@_PRINTMODE@_PRINTSTRING@_PRINTWIDTH@_PUTIMAGE@_R2D@_R2G@_RED@_RED32@_RESIZE@_RESIZEHEIGHT@_RESIZEWIDTH@_RGB@_RGB32@_RGBA@_RGBA32@_ROUND@_SCREENCLICK@_SCREENEXISTS@_SCREENHIDE@_SCREENICON@_SCREENIMAGE@_SCREENMOVE@_SCREENPRINT@_SCREENSHOW@_SCREENX@_SCREENY@_SEC@_SECH@_SETALPHA@_SHELLHIDE@_SINH@_SNDBAL@_SNDCLOSE@_SNDCOPY@_SNDGETPOS@_SNDLEN@_SNDLIMIT@_SNDLOOP@_SNDOPEN@_SNDOPENRAW@_SNDPAUSE@_SNDPAUSED@_SNDPLAY@_SNDPLAYCOPY@_SNDPLAYFILE@_SNDPLAYING@_SNDRATE@_SNDRAW@_SNDRAWDONE@_SNDRAWLEN@_SNDSETPOS@_SNDSTOP@_SNDVOL@_SOURCE@_STARTDIR$@_STRCMP@_STRICMP@_TANH@_TITLE@_TITLE$@_UNSIGNED@_WHEEL@_WIDTH@_WINDOWHANDLE@_WINDOWHASFOCUS@_GLACCUM@_GLALPHAFUNC@_GLARETEXTURESRESIDENT@_GLARRAYELEMENT@_GLBEGIN@_GLBINDTEXTURE@_GLBITMAP@_GLBLENDFUNC@_GLCALLLIST@_GLCALLLISTS@_GLCLEAR@_GLCLEARACCUM@_GLCLEARCOLOR@_GLCLEARDEPTH@_GLCLEARINDEX@_GLCLEARSTENCIL@_GLCLIPPLANE@_GLCOLOR3B@_GLCOLOR3BV@_GLCOLOR3D@_GLCOLOR3DV@_GLCOLOR3F@_GLCOLOR3FV@_GLCOLOR3I@_GLCOLOR3IV@_GLCOLOR3S@_GLCOLOR3SV@_GLCOLOR3UB@_GLCOLOR3UBV@_GLCOLOR3UI@_GLCOLOR3UIV@_GLCOLOR3US@_GLCOLOR3USV@_GLCOLOR4B@_GLCOLOR4BV@_GLCOLOR4D@_GLCOLOR4DV@_GLCOLOR4F@_GLCOLOR4FV@_GLCOLOR4I@_GLCOLOR4IV@_GLCOLOR4S@_GLCOLOR4SV@_GLCOLOR4UB@_GLCOLOR4UBV@_GLCOLOR4UI@_GLCOLOR4UIV@_GLCOLOR4US@_GLCOLOR4USV@_GLCOLORMASK@_GLCOLORMATERIAL@_GLCOLORPOINTER@_GLCOPYPIXELS@_GLCOPYTEXIMAGE1D@_GLCOPYTEXIMAGE2D@_GLCOPYTEXSUBIMAGE1D@" + _
    "_GLCOPYTEXSUBIMAGE2D@_GLCULLFACE@_GLDELETELISTS@_GLDELETETEXTURES@_GLDEPTHFUNC@_GLDEPTHMASK@_GLDEPTHRANGE@_GLDISABLE@_GLDISABLECLIENTSTATE@_GLDRAWARRAYS@_GLDRAWBUFFER@_GLDRAWELEMENTS@_GLDRAWPIXELS@_GLEDGEFLAG@_GLEDGEFLAGPOINTER@_GLEDGEFLAGV@_GLENABLE@_GLENABLECLIENTSTATE@_GLEND@_GLENDLIST@_GLEVALCOORD1D@_GLEVALCOORD1DV@_GLEVALCOORD1F@_GLEVALCOORD1FV@_GLEVALCOORD2D@_GLEVALCOORD2DV@_GLEVALCOORD2F@_GLEVALCOORD2FV@_GLEVALMESH1@_GLEVALMESH2@_GLEVALPOINT1@_GLEVALPOINT2@_GLFEEDBACKBUFFER@_GLFINISH@_GLFLUSH@_GLFOGF@_GLFOGFV@_GLFOGI@_GLFOGIV@_GLFRONTFACE@_GLFRUSTUM@_GLGENLISTS@_GLGENTEXTURES@_GLGETBOOLEANV@_GLGETCLIPPLANE@_GLGETDOUBLEV@_GLGETERROR@_GLGETFLOATV@_GLGETINTEGERV@_GLGETLIGHTFV@_GLGETLIGHTIV@_GLGETMAPDV@_GLGETMAPFV@_GLGETMAPIV@_GLGETMATERIALFV@_GLGETMATERIALIV@_GLGETPIXELMAPFV@_GLGETPIXELMAPUIV@_GLGETPIXELMAPUSV@_GLGETPOINTERV@_GLGETPOLYGONSTIPPLE@_GLGETSTRING@_GLGETTEXENVFV@_GLGETTEXENVIV@_GLGETTEXGENDV@_GLGETTEXGENFV@_GLGETTEXGENIV@_GLGETTEXIMAGE@_GLGETTEXLEVELPARAMETERFV@_GLGETTEXLEVELPARAMETERIV@_GLGETTEXPARAMETERFV@_GLGETTEXPARAMETERIV@_GLHINT@_GLINDEXMASK@_GLINDEXPOINTER@_GLINDEXD@_GLINDEXDV@_GLINDEXF@_GLINDEXFV@_GLINDEXI@_GLINDEXIV@_GLINDEXS@_GLINDEXSV@_GLINDEXUB@_GLINDEXUBV@_GLINITNAMES@_GLINTERLEAVEDARRAYS@_GLISENABLED@_GLISLIST@_GLISTEXTURE@_GLLIGHTMODELF@_GLLIGHTMODELFV@_GLLIGHTMODELI@_GLLIGHTMODELIV@_GLLIGHTF@_GLLIGHTFV@_GLLIGHTI@_GLLIGHTIV@_GLLINESTIPPLE@_GLLINEWIDTH@_GLLISTBASE@_GLLOADIDENTITY@_GLLOADMATRIXD@_GLLOADMATRIXF@_GLLOADNAME@_GLLOGICOP@_GLMAP1D@_GLMAP1F@_GLMAP2D@_GLMAP2F@_GLMAPGRID1D@_GLMAPGRID1F@_GLMAPGRID2D@_GLMAPGRID2F@_GLMATERIALF@_GLMATERIALFV@_GLMATERIALI@_GLMATERIALIV@_GLMATRIXMODE@_GLMULTMATRIXD@_GLMULTMATRIXF@_GLNEWLIST@_GLNORMAL3B@_GLNORMAL3BV@_GLNORMAL3D@_GLNORMAL3DV@_GLNORMAL3F@_GLNORMAL3FV@_GLNORMAL3I@_GLNORMAL3IV@_GLNORMAL3S@_GLNORMAL3SV@_GLNORMALPOINTER@_GLORTHO@_GLPASSTHROUGH@_GLPIXELMAPFV@_GLPIXELMAPUIV@_GLPIXELMAPUSV@_GLPIXELSTOREF@_GLPIXELSTOREI@_GLPIXELTRANSFERF@_GLPIXELTRANSFERI@_GLPIXELZOOM@_GLPOINTSIZE@_GLPOLYGONMODE@_GLPOLYGONOFFSET@_GLPOLYGONSTIPPLE@" + _
    "_GLPOPATTRIB@_GLPOPCLIENTATTRIB@_GLPOPMATRIX@_GLPOPNAME@_GLPRIORITIZETEXTURES@_GLPUSHATTRIB@_GLPUSHCLIENTATTRIB@_GLPUSHMATRIX@_GLPUSHNAME@_GLRASTERPOS2D@_GLRASTERPOS2DV@_GLRASTERPOS2F@_GLRASTERPOS2FV@_GLRASTERPOS2I@_GLRASTERPOS2IV@_GLRASTERPOS2S@_GLRASTERPOS2SV@_GLRASTERPOS3D@_GLRASTERPOS3DV@_GLRASTERPOS3F@_GLRASTERPOS3FV@_GLRASTERPOS3I@_GLRASTERPOS3IV@_GLRASTERPOS3S@_GLRASTERPOS3SV@_GLRASTERPOS4D@_GLRASTERPOS4DV@_GLRASTERPOS4F@_GLRASTERPOS4FV@_GLRASTERPOS4I@_GLRASTERPOS4IV@_GLRASTERPOS4S@_GLRASTERPOS4SV@_GLREADBUFFER@_GLREADPIXELS@_GLRECTD@_GLRECTDV@_GLRECTF@_GLRECTFV@_GLRECTI@_GLRECTIV@_GLRECTS@_GLRECTSV@_GLRENDERMODE@_GLROTATED@_GLROTATEF@_GLSCALED@_GLSCALEF@_GLSCISSOR@_GLSELECTBUFFER@_GLSHADEMODEL@_GLSTENCILFUNC@_GLSTENCILMASK@_GLSTENCILOP@_GLTEXCOORD1D@_GLTEXCOORD1DV@_GLTEXCOORD1F@_GLTEXCOORD1FV@_GLTEXCOORD1I@_GLTEXCOORD1IV@_GLTEXCOORD1S@_GLTEXCOORD1SV@_GLTEXCOORD2D@_GLTEXCOORD2DV@_GLTEXCOORD2F@_GLTEXCOORD2FV@_GLTEXCOORD2I@_GLTEXCOORD2IV@_GLTEXCOORD2S@_GLTEXCOORD2SV@_GLTEXCOORD3D@_GLTEXCOORD3DV@_GLTEXCOORD3F@_GLTEXCOORD3FV@_GLTEXCOORD3I@_GLTEXCOORD3IV@_GLTEXCOORD3S@_GLTEXCOORD3SV@_GLTEXCOORD4D@_GLTEXCOORD4DV@_GLTEXCOORD4F@_GLTEXCOORD4FV@_GLTEXCOORD4I@_GLTEXCOORD4IV@_GLTEXCOORD4S@_GLTEXCOORD4SV@_GLTEXCOORDPOINTER@_GLTEXENVF@_GLTEXENVFV@_GLTEXENVI@_GLTEXENVIV@_GLTEXGEND@_GLTEXGENDV@_GLTEXGENF@_GLTEXGENFV@_GLTEXGENI@_GLTEXGENIV@_GLTEXIMAGE1D@_GLTEXIMAGE2D@_GLTEXPARAMETERF@_GLTEXPARAMETERFV@_GLTEXPARAMETERI@_GLTEXPARAMETERIV@_GLTEXSUBIMAGE1D@_GLTEXSUBIMAGE2D@_GLTRANSLATED@_GLTRANSLATEF@_GLVERTEX2D@_GLVERTEX2DV@_GLVERTEX2F@_GLVERTEX2FV@_GLVERTEX2I@_GLVERTEX2IV@_GLVERTEX2S@_GLVERTEX2SV@_GLVERTEX3D@_GLVERTEX3DV@_GLVERTEX3F@_GLVERTEX3FV@_GLVERTEX3I@_GLVERTEX3IV@_GLVERTEX3S@_GLVERTEX3SV@_GLVERTEX4D@_GLVERTEX4DV@_GLVERTEX4F@_GLVERTEX4FV@_GLVERTEX4I@_GLVERTEX4IV@_GLVERTEX4S@_GLVERTEX4SV@_GLVERTEXPOINTER@_GLVIEWPORT@_FILLBACKGROUND@_GLUPERSPECTIVE@_KEEPBACKGROUND@_ONLYBACKGROUND@" + _
    "_ALLOWFULLSCREEN@_ECHO@_READFILE$@_WRITEFILE@_INSTRREV@_LASTHANDLER@_NEWHANDLER@_TRIM$@_ACCEPTFILEDROP@_FINISHDROP@_TOTALDROPPEDFILES@_DROPPEDFILE@_DROPPEDFILE$@_SHR@_SHL@_ROR@_ROL@" + _
    "_ADLER32@_CRC32@_MD5$@_DEFLATE$@_INFLATE$@_READBIT@_RESETBIT@_SETBIT@_TOGGLEBIT@_ASSERT@_CAPSLOCK@_NUMLOCK@_SCROLLLOCK@_CONSOLEFONT@_CONSOLECURSOR@_CONSOLEINPUT@_CINP@_EMBEDDED$@_ENVIRONCOUNT@_SMOOTH@"

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
const TOK_WORD = 3
const TOK_METACMD = 6
const TOK_COMMENT = 7
const TOK_STRING = 8
const TOK_DATA = 9
const TOK_PUNCTUATION = 11
const TOK_COLON = 15

const STATE_BEGIN = 1
const STATE_METACMD = 3
const STATE_WORD = 4
const STATE_COMMENT = 5
const STATE_STRING = 6
const STATE_DATA = 7
const STATE_NEWLINE = 12
const STATE_NEWLINE_WIN = 13

type token_t
    t as long 'TOK_ type
    c as string 'Content
    uc as string 'Content in UPPERCASE for comparisons
    spaces as string 'Any whitespace characters detected before the content
end type
dim shared token as token_t

redim shared prefix_keywords$(1) 'Stored without the prefix
dim shared input_content$
dim shared line_count, column_count
dim shared next_chr_idx, tk_state
dim shared noprefix_detected


build_keyword_list
load_file
do
    process_logical_line
loop


sub load_file
    open command$(2) for output as #2
    close #2
    open command$(2) for binary as #2
    input_content$ = _readfile$(command$(1)) + chr$(ASCII_EOF)
    line_count = 1
    column_count = 0
    next_chr_idx = 1
    tk_state = STATE_BEGIN
end sub

sub build_keyword_list
    dim i, j, keyword$
    i = 1
    for j = 1 to len(KEYWORDS)
        if asc(KEYWORDS, j) = asc("@") then
            if asc(keyword$) = asc("_") then
                if i > ubound(prefix_keywords$) then redim _preserve prefix_keywords$(ubound(prefix_keywords$) * 2)
                prefix_keywords$(i) = mid$(keyword$, 2)
                i = i + 1
            end if
            keyword$ = ""
        else
            keyword$ = keyword$ + mid$(KEYWORDS, j, 1)
        end if
    next j
    redim _preserve prefix_keywords$(i - 1)
end sub

sub process_logical_line
    next_token
    select case token.t
    case TOK_METACMD
        select case token.uc
        case "$NOPREFIX"
            noprefix_detected = TRUE
            'Keep remenant of $noprefix so line numbers are not changed
            token.c = "'" + token.c + " removed here"
        end select
    case TOK_WORD
        select case token.uc
        case "DATA"
            tk_state = STATE_DATA
        case "PUT"
            process_put
        case "SCREENMOVE", "_SCREENMOVE"
            process_screenmove
        case "OPTION"
            process_option
        case "FULLSCREEN", "_FULLSCREEN"
            process_fullscreen
        case "ALLOWFULLSCREEN", "_ALLOWFULLSCREEN"
            process_allowfullscreen
        case "RESIZE", "_RESIZE"
            process_resize
        case "GLRENDER", "_GLRENDER"
            process_glrender
        case "DISPLAYORDER", "_DISPLAYORDER"
            process_displayorder
        case "EXIT"
            next_token 'in statement position this is EXIT SUB etc.
        case "FPS", "_FPS"
            process_fps
        case "CLEARCOLOR", "_CLEARCOLOR"
            process_clearcolor
        case "MAPTRIANGLE", "_MAPTRIANGLE"
            process_maptriangle
        case "DEPTHBUFFER", "_DEPTHBUFFER"
            process_depthbuffer
        case "WIDTH"
            next_token 'in statement position this is the set-columns command
        case "SHELL"
            process_shell
        case "CAPSLOCK", "_CAPSLOCK", "SCROLLLOCK", "_SCROLLLOCK", "NUMLOCK", "_NUMLOCK"
            process_keylock
        case "CONSOLECURSOR", "_CONSOLECURSOR"
            process_consolecursor
        end select
    case else
    end select
    process_rest_of_line
end sub

sub process_put
    next_token
    if token.uc = "STEP" then next_token
    if token.c = "(" then
        skip_parens 'Coordinates
        next_token ' ,
        next_token 'Array name
        if line_end then exit sub
        skip_parens 'Array index
        if line_end then exit sub
        next_token ' ,
        if line_end then exit sub
        if token.uc = "CLIP" then add_prefix
    end if
end sub

sub process_screenmove
    add_prefix
    next_token
    if line_end then exit sub
    if token.uc = "MIDDLE" then add_prefix
end sub

sub process_option
    next_token
    if token.uc = "EXPLICITARRAY" then add_prefix
end sub

sub process_fullscreen
    add_prefix
    next_token
    if line_end then exit sub
    if token.c <> "," then
        add_prefix
        next_token
        if line_end then exit sub
    end if
    next_token ' ,
    add_prefix
end sub

sub process_allowfullscreen
    add_prefix
    next_token
    if line_end then exit sub
    if token.c <> "," then
        add_prefix
        next_token
        if line_end then exit sub
    end if
    next_token ' ,
    add_prefix
end sub

sub process_resize
    add_prefix
    next_token
    if token.c = "(" or line_end then exit sub
    if token.c <> "," then next_token
    if line_end then exit sub
    next_token
    add_prefix
end sub

sub process_glrender
    add_prefix
    next_token
    add_prefix
end sub

sub process_displayorder
    add_prefix
    next_token
    while not line_end
        if token.c <> "," then add_prefix
        next_token
    wend
end sub

sub process_fps
    add_prefix
    next_token
    if token.uc = "AUTO" then add_prefix
end sub

sub process_clearcolor
    add_prefix
    next_token
    if token.uc = "NONE" then add_prefix
end sub

sub process_maptriangle
    add_prefix
    next_token
    if token.uc = "CLOCKWISE" or token.uc = "ANTICLOCKWISE" then add_prefix
    if token.uc = "_CLOCKWISE" or token.uc = "_ANTICLOCKWISE" then next_token
    if token.uc = "SEAMLESS" then add_prefix
    if token.uc = "_SEAMLESS" then next_token
    do
        next_token
    loop while token.uc <> "TO"
    next_token
    skip_parens
    next_token ' -
    skip_parens
    next_token ' -
    skip_parens
    if line_end then exit sub
    next_token ' ,
    skip_expr
    if line_end then exit sub
    next_token ' ,
    add_prefix
end sub

sub process_depthbuffer
    add_prefix
    next_token
    if token.uc = "CLEAR" then add_prefix
end sub

sub process_shell
    next_token
    if line_end then exit sub
    if token.uc = "DONTWAIT" or token.uc = "HIDE" then
        add_prefix
        next_token
    end if
    if line_end then exit sub
    if token.uc = "DONTWAIT" or token.uc = "HIDE" then add_prefix
end sub

sub process_keylock
    add_prefix
    next_token
    if token.uc = "TOGGLE" then add_prefix
end sub

sub process_consolecursor
    add_prefix
    next_token
    if line_end then exit sub
    if token.uc = "SHOW" or token.uc = "HIDE" then add_prefix
end sub

sub skip_parens
    dim balance
    do
        if token.c = "(" then balance = balance + 1
        if token.c = ")" then balance = balance - 1
        next_token
    loop until balance = 0
end sub

sub skip_expr
    dim balance
    do until balance = 0 and (token.c = "," or line_end)
        if token.c = "(" then balance = balance + 1
        if token.c = ")" then balance = balance - 1
        next_token
    loop
end sub

sub add_prefix
    if asc(token.c) <> asc("_") then
        token.c = "_" + token.c
        token.uc = "_" + token.uc
    end if
end sub

function line_end
    select case token.t
        case TOK_WORD
            line_end = (token.uc = "REM")
        case TOK_COLON, TOK_COMMENT, TOK_NEWLINE
            line_end = TRUE
    end select
end function

sub process_rest_of_line
    dim i
    do
        select case token.t
        case TOK_WORD
            select case token.uc
            case "REM"
                tk_state = STATE_COMMENT
            case "THEN"
                exit sub
            case else
                if noprefix_detected and asc(token.c) <> asc("_") then
                    for i = 1 to ubound(prefix_keywords$)
                        if token.uc = prefix_keywords$(i) then
                            add_prefix
                            exit for
                        end if
                    next i
                end if
            end select
        case TOK_COLON
            exit sub
        case TOK_NEWLINE
            line_count = line_count + 1
            column_count = 0
            exit sub
        case TOK_EOF
            finish
        case else
        end select
        next_token
    loop
end sub

sub put_out
    put #2, , token.spaces
    put #2, , token.c
end sub

sub finish
    put_out
    if not noprefix_detected then print "Warning: file does not use $NOPREFIX"
    system
end sub

sub next_token
    if token.t > 0 then put_out
    next_token_raw
    while token.t = TOK_WORD and token.c = "_"
        put_out
        next_token_raw
        if token.t <> TOK_NEWLINE then exit sub
        line_count = line_count + 1
        column_count = 0
        put_out
        next_token_raw
    wend
end sub

sub next_token_raw
    dim c, return_token, token_content$, spaces$, unread
    do
        c = asc(input_content$, next_chr_idx)
        next_chr_idx = next_chr_idx + 1
        column_count = column_count + 1
        select case tk_state
        case STATE_BEGIN
            select case c
            case asc("A") to asc("Z"), asc("a") to asc("z"), asc("_"), asc("0") to asc("9"), _
                 asc("&"), asc("."), asc("?")
                tk_state = STATE_WORD
            case asc("$")
                tk_state = STATE_METACMD
            case asc(":")
                return_token = TOK_COLON
            case asc("^"), asc("*"), asc("-"), asc("+"), asc("="), asc("\"), asc("#"), _
                 asc(";"), asc("<"), asc(">"), asc("/"), asc("("), asc(")"), asc(",")
                return_token = TOK_PUNCTUATION
            case ASCII_QUOTE
                tk_state = STATE_STRING
            case asc("'")
                tk_state = STATE_COMMENT
            case asc(" "), ASCII_TAB, ASCII_VTAB
                spaces$ = spaces$ + chr$(c)
                _continue
            case ASCII_CR, ASCII_LF, ASCII_EOF
                tk_state = STATE_NEWLINE
                unread = TRUE
            case else
                'Likely non-ascii special character
                syntax_warning chr$(c)
                tk_state = STATE_WORD
            end select
        case STATE_METACMD
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                tk_state = STATE_NEWLINE
                return_token = TOK_METACMD
                unread = TRUE
            end select
        case STATE_WORD
            select case c
            case asc("A") to asc("Z"), asc("a") to asc("z"), asc("_"), asc("0") to asc("9"), _
                 asc("`"), asc("~"), asc("!"), asc("#"), asc("$"), asc("%"), asc("&"), asc("."), asc("?")
                'Continue
            case else
                tk_state = STATE_BEGIN
                return_token = TOK_WORD
                unread = TRUE
            end select
        case STATE_COMMENT
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                tk_state = STATE_NEWLINE
                return_token = TOK_COMMENT
                unread = TRUE
            end select
        case STATE_STRING
            select case c
            case ASCII_QUOTE
                tk_state = STATE_BEGIN
                return_token = TOK_STRING
            case ASCII_CR, ASCII_LF, ASCII_EOF
                tk_state = STATE_NEWLINE
                return_token = TOK_STRING
                unread = TRUE
            end select
        case STATE_DATA
            select case c
            case ASCII_CR, ASCII_LF, ASCII_EOF
                tk_state = STATE_NEWLINE
                return_token = TOK_DATA
                unread = TRUE
            end select
        case STATE_NEWLINE
            select case c
            case ASCII_LF
                tk_state = STATE_BEGIN
                return_token = TOK_NEWLINE
            case ASCII_CR
                tk_state = STATE_NEWLINE_WIN
            case ASCII_EOF
                return_token = TOK_EOF
                unread = TRUE 'Do not insert EOF character
            case else
                'Should never happen
                syntax_warning chr$(c)
                tk_state = STATE_BEGIN
                return_token = TOK_NEWLINE
                unread = TRUE
            end select
        case STATE_NEWLINE_WIN
            select case c
            case ASCII_LF
                tk_state = STATE_BEGIN
                return_token = TOK_NEWLINE
            case else
                tk_state = STATE_BEGIN
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
            token.t = return_token
            token.c = token_content$
            token.uc = ucase$(token_content$)
            token.spaces = spaces$
            exit function
        end if
    loop
end function

sub syntax_warning(unexpected$)
    print "Warning: Line"; line_count; "column"; column_count;
    print "State"; tk_state;
    print "Unexpected "; unexpected$
end sub
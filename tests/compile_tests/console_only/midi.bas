$CONSOLE:ONLY
_DEST _CONSOLE
CHDIR _STARTDIR$

_MIDISOUNDBANK "./test-soundfont.sf2"

handle = _SNDOPEN("./midi.mid")

PRINT handle;
SYSTEM

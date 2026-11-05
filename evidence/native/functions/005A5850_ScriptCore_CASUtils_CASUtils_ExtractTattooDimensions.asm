# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5850 (ScriptCore.CASUtils::CASUtils_ExtractTattooDimensions)
Paired Ghidra pseudocode: 005A5850_ScriptCore_CASUtils_CASUtils_ExtractTattooDimensions.c
Window: [0x005a5850, 0x005a5860) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5850: e9 ab 1b 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5850 <.text+0x1a4850>:
  5a5850:	e9 ab 1b 05 00                                  	jmp    0x5f7400
  5a5855:	cc                                              	int3
  5a5856:	cc                                              	int3
  5a5857:	cc                                              	int3
  5a5858:	cc                                              	int3
  5a5859:	cc                                              	int3
  5a585a:	cc                                              	int3
  5a585b:	cc                                              	int3
  5a585c:	cc                                              	int3
  5a585d:	cc                                              	int3
  5a585e:	cc                                              	int3
  5a585f:	cc                                              	int3

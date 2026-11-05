# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5810 (ScriptCore.CASUtils::CASUtils_ExtractEnabledLayerIndices)
Paired Ghidra pseudocode: 005A5810_ScriptCore_CASUtils_CASUtils_ExtractEnabledLayerIndices.c
Window: [0x005a5810, 0x005a5820) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5810: e9 2b 17 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5810 <.text+0x1a4810>:
  5a5810:	e9 2b 17 05 00                                  	jmp    0x5f6f40
  5a5815:	cc                                              	int3
  5a5816:	cc                                              	int3
  5a5817:	cc                                              	int3
  5a5818:	cc                                              	int3
  5a5819:	cc                                              	int3
  5a581a:	cc                                              	int3
  5a581b:	cc                                              	int3
  5a581c:	cc                                              	int3
  5a581d:	cc                                              	int3
  5a581e:	cc                                              	int3
  5a581f:	cc                                              	int3

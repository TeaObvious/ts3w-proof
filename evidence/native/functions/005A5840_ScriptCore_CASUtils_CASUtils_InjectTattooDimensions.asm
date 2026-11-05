# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5840 (ScriptCore.CASUtils::CASUtils_InjectTattooDimensions)
Paired Ghidra pseudocode: 005A5840_ScriptCore_CASUtils_CASUtils_InjectTattooDimensions.c
Window: [0x005a5840, 0x005a5850) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5840: e9 4b 1a 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5840 <.text+0x1a4840>:
  5a5840:	e9 4b 1a 05 00                                  	jmp    0x5f7290
  5a5845:	cc                                              	int3
  5a5846:	cc                                              	int3
  5a5847:	cc                                              	int3
  5a5848:	cc                                              	int3
  5a5849:	cc                                              	int3
  5a584a:	cc                                              	int3
  5a584b:	cc                                              	int3
  5a584c:	cc                                              	int3
  5a584d:	cc                                              	int3
  5a584e:	cc                                              	int3
  5a584f:	cc                                              	int3

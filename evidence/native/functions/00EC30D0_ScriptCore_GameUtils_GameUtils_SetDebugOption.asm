# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec30d0 (ScriptCore.GameUtils::GameUtils_SetDebugOption)
Paired Ghidra pseudocode: 00EC30D0_ScriptCore_GameUtils_GameUtils_SetDebugOption.c
Window: [0x00ec30d0, 0x00ec30e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec30e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec30d0: e9 ab f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec30d0 <.text+0xac20d0>:
  ec30d0:	e9 ab f8 ff ff                                  	jmp    0xec2980
  ec30d5:	cc                                              	int3
  ec30d6:	cc                                              	int3
  ec30d7:	cc                                              	int3
  ec30d8:	cc                                              	int3
  ec30d9:	cc                                              	int3
  ec30da:	cc                                              	int3
  ec30db:	cc                                              	int3
  ec30dc:	cc                                              	int3
  ec30dd:	cc                                              	int3
  ec30de:	cc                                              	int3
  ec30df:	cc                                              	int3

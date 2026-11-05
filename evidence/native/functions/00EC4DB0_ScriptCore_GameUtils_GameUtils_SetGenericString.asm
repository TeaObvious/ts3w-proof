# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4db0 (ScriptCore.GameUtils::GameUtils_SetGenericString)
Paired Ghidra pseudocode: 00EC4DB0_ScriptCore_GameUtils_GameUtils_SetGenericString.c
Window: [0x00ec4db0, 0x00ec4dc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec4dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4db0: e9 2b ff ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4db0 <.text+0xac3db0>:
  ec4db0:	e9 2b ff ff ff                                  	jmp    0xec4ce0
  ec4db5:	cc                                              	int3
  ec4db6:	cc                                              	int3
  ec4db7:	cc                                              	int3
  ec4db8:	cc                                              	int3
  ec4db9:	cc                                              	int3
  ec4dba:	cc                                              	int3
  ec4dbb:	cc                                              	int3
  ec4dbc:	cc                                              	int3
  ec4dbd:	cc                                              	int3
  ec4dbe:	cc                                              	int3
  ec4dbf:	cc                                              	int3

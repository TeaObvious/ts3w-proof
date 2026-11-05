# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec3990 (ScriptCore.GameUtils::GameUtils_GetGenericString)
Paired Ghidra pseudocode: 00EC3990_ScriptCore_GameUtils_GameUtils_GetGenericString.c
Window: [0x00ec3990, 0x00ec39a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec39a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec3990: e9 9b fc ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec3990 <.text+0xac2990>:
  ec3990:	e9 9b fc ff ff                                  	jmp    0xec3630
  ec3995:	cc                                              	int3
  ec3996:	cc                                              	int3
  ec3997:	cc                                              	int3
  ec3998:	cc                                              	int3
  ec3999:	cc                                              	int3
  ec399a:	cc                                              	int3
  ec399b:	cc                                              	int3
  ec399c:	cc                                              	int3
  ec399d:	cc                                              	int3
  ec399e:	cc                                              	int3
  ec399f:	cc                                              	int3

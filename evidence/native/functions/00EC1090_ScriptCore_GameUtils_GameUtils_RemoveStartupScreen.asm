# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1090 (ScriptCore.GameUtils::GameUtils_RemoveStartupScreen)
Paired Ghidra pseudocode: 00EC1090_ScriptCore_GameUtils_GameUtils_RemoveStartupScreen.c
Window: [0x00ec1090, 0x00ec10a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec10a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1090: e9 4b 6b 00 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1090 <.text+0xac0090>:
  ec1090:	e9 4b 6b 00 00                                  	jmp    0xec7be0
  ec1095:	cc                                              	int3
  ec1096:	cc                                              	int3
  ec1097:	cc                                              	int3
  ec1098:	cc                                              	int3
  ec1099:	cc                                              	int3
  ec109a:	cc                                              	int3
  ec109b:	cc                                              	int3
  ec109c:	cc                                              	int3
  ec109d:	cc                                              	int3
  ec109e:	cc                                              	int3
  ec109f:	cc                                              	int3

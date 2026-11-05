# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1370 (ScriptCore.GameUtils::GameUtils_StartLauncherImpl)
Paired Ghidra pseudocode: 00EC1370_ScriptCore_GameUtils_GameUtils_StartLauncherImpl.c
Window: [0x00ec1370, 0x00ec1380) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1370: 6a 01 e8 89 68 88 ff 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1370 <.text+0xac0370>:
  ec1370:	6a 01                                           	push   0x1
  ec1372:	e8 89 68 88 ff                                  	call   0x747c00
  ec1377:	59                                              	pop    ecx
  ec1378:	c3                                              	ret
  ec1379:	cc                                              	int3
  ec137a:	cc                                              	int3
  ec137b:	cc                                              	int3
  ec137c:	cc                                              	int3
  ec137d:	cc                                              	int3
  ec137e:	cc                                              	int3
  ec137f:	cc                                              	int3

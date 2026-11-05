# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1350 (ScriptCore.GameUtils::GameUtils_TransitionToQuitImpl)
Paired Ghidra pseudocode: 00EC1350_ScriptCore_GameUtils_GameUtils_TransitionToQuitImpl.c
Window: [0x00ec1350, 0x00ec1370) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1370
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1350: a1 ac 07 20 01 85 c0 74 07 50 e8 11 3e 00 00 59
00ec1360: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1350 <.text+0xac0350>:
  ec1350:	a1 ac 07 20 01                                  	mov    eax,ds:0x12007ac
  ec1355:	85 c0                                           	test   eax,eax
  ec1357:	74 07                                           	je     0xec1360
  ec1359:	50                                              	push   eax
  ec135a:	e8 11 3e 00 00                                  	call   0xec5170
  ec135f:	59                                              	pop    ecx
  ec1360:	c3                                              	ret
  ec1361:	cc                                              	int3
  ec1362:	cc                                              	int3
  ec1363:	cc                                              	int3
  ec1364:	cc                                              	int3
  ec1365:	cc                                              	int3
  ec1366:	cc                                              	int3
  ec1367:	cc                                              	int3
  ec1368:	cc                                              	int3
  ec1369:	cc                                              	int3
  ec136a:	cc                                              	int3
  ec136b:	cc                                              	int3
  ec136c:	cc                                              	int3
  ec136d:	cc                                              	int3
  ec136e:	cc                                              	int3
  ec136f:	cc                                              	int3

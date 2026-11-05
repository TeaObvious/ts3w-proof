# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1180 (ScriptCore.GameUtils::GameUtils_IsWorldInstalled)
Paired Ghidra pseudocode: 00EC1180_ScriptCore_GameUtils_GameUtils_IsWorldInstalled.c
Window: [0x00ec1180, 0x00ec11b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec11b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1180: e8 3b 88 be ff 85 c0 74 16 8b 4c 24 04 51 8b c8
00ec1190: e8 9b d2 be ff 84 c0 74 06 b8 01 00 00 00 c3 33
00ec11a0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1180 <.text+0xac0180>:
  ec1180:	e8 3b 88 be ff                                  	call   0xaa99c0
  ec1185:	85 c0                                           	test   eax,eax
  ec1187:	74 16                                           	je     0xec119f
  ec1189:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ec118d:	51                                              	push   ecx
  ec118e:	8b c8                                           	mov    ecx,eax
  ec1190:	e8 9b d2 be ff                                  	call   0xaae430
  ec1195:	84 c0                                           	test   al,al
  ec1197:	74 06                                           	je     0xec119f
  ec1199:	b8 01 00 00 00                                  	mov    eax,0x1
  ec119e:	c3                                              	ret
  ec119f:	33 c0                                           	xor    eax,eax
  ec11a1:	c3                                              	ret
  ec11a2:	cc                                              	int3
  ec11a3:	cc                                              	int3
  ec11a4:	cc                                              	int3
  ec11a5:	cc                                              	int3
  ec11a6:	cc                                              	int3
  ec11a7:	cc                                              	int3
  ec11a8:	cc                                              	int3
  ec11a9:	cc                                              	int3
  ec11aa:	cc                                              	int3
  ec11ab:	cc                                              	int3
  ec11ac:	cc                                              	int3
  ec11ad:	cc                                              	int3
  ec11ae:	cc                                              	int3
  ec11af:	cc                                              	int3

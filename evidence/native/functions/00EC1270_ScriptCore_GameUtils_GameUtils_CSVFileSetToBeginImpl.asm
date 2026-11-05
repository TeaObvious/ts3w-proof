# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1270 (ScriptCore.GameUtils::GameUtils_CSVFileSetToBeginImpl)
Paired Ghidra pseudocode: 00EC1270_ScriptCore_GameUtils_GameUtils_CSVFileSetToBeginImpl.c
Window: [0x00ec1270, 0x00ec12b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec12b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1270: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00ec1280: 40 75 20 e8 08 81 8a ff 8b 10 8b c8 8b 82 cc 00
00ec1290: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 14
00ec12a0: 5e ff e0 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1270 <.text+0xac0270>:
  ec1270:	56                                              	push   esi
  ec1271:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec1275:	8b c6                                           	mov    eax,esi
  ec1277:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec127c:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec1281:	75 20                                           	jne    0xec12a3
  ec1283:	e8 08 81 8a ff                                  	call   0x769390
  ec1288:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec128a:	8b c8                                           	mov    ecx,eax
  ec128c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec1292:	56                                              	push   esi
  ec1293:	ff d0                                           	call   eax
  ec1295:	85 c0                                           	test   eax,eax
  ec1297:	74 0a                                           	je     0xec12a3
  ec1299:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec129b:	8b c8                                           	mov    ecx,eax
  ec129d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  ec12a0:	5e                                              	pop    esi
  ec12a1:	ff e0                                           	jmp    eax
  ec12a3:	32 c0                                           	xor    al,al
  ec12a5:	5e                                              	pop    esi
  ec12a6:	c3                                              	ret
  ec12a7:	cc                                              	int3
  ec12a8:	cc                                              	int3
  ec12a9:	cc                                              	int3
  ec12aa:	cc                                              	int3
  ec12ab:	cc                                              	int3
  ec12ac:	cc                                              	int3
  ec12ad:	cc                                              	int3
  ec12ae:	cc                                              	int3
  ec12af:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1460 (ScriptCore.GameUtils::GameUtils_RenameSaveFileImpl)
Paired Ghidra pseudocode: 00EC1460_ScriptCore_GameUtils_GameUtils_RenameSaveFileImpl.c
Window: [0x00ec1460, 0x00ec14c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec14c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1460: 53 56 57 e8 58 85 be ff 8b d8 e8 21 7f 8a ff 85
00ec1470: db 8b f0 74 37 85 f6 74 33 8b 4c 24 10 8b 06 8b
00ec1480: 50 58 51 8b ce ff d2 8b 4c 24 14 8b f8 8b 06 8b
00ec1490: 50 58 51 8b ce ff d2 85 ff 74 11 85 c0 74 0d 50
00ec14a0: 57 8b cb e8 b8 86 be ff 5f 5e 5b c3 5f 5e 32 c0
00ec14b0: 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1460 <.text+0xac0460>:
  ec1460:	53                                              	push   ebx
  ec1461:	56                                              	push   esi
  ec1462:	57                                              	push   edi
  ec1463:	e8 58 85 be ff                                  	call   0xaa99c0
  ec1468:	8b d8                                           	mov    ebx,eax
  ec146a:	e8 21 7f 8a ff                                  	call   0x769390
  ec146f:	85 db                                           	test   ebx,ebx
  ec1471:	8b f0                                           	mov    esi,eax
  ec1473:	74 37                                           	je     0xec14ac
  ec1475:	85 f6                                           	test   esi,esi
  ec1477:	74 33                                           	je     0xec14ac
  ec1479:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec147d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec147f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec1482:	51                                              	push   ecx
  ec1483:	8b ce                                           	mov    ecx,esi
  ec1485:	ff d2                                           	call   edx
  ec1487:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec148b:	8b f8                                           	mov    edi,eax
  ec148d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec148f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec1492:	51                                              	push   ecx
  ec1493:	8b ce                                           	mov    ecx,esi
  ec1495:	ff d2                                           	call   edx
  ec1497:	85 ff                                           	test   edi,edi
  ec1499:	74 11                                           	je     0xec14ac
  ec149b:	85 c0                                           	test   eax,eax
  ec149d:	74 0d                                           	je     0xec14ac
  ec149f:	50                                              	push   eax
  ec14a0:	57                                              	push   edi
  ec14a1:	8b cb                                           	mov    ecx,ebx
  ec14a3:	e8 b8 86 be ff                                  	call   0xaa9b60
  ec14a8:	5f                                              	pop    edi
  ec14a9:	5e                                              	pop    esi
  ec14aa:	5b                                              	pop    ebx
  ec14ab:	c3                                              	ret
  ec14ac:	5f                                              	pop    edi
  ec14ad:	5e                                              	pop    esi
  ec14ae:	32 c0                                           	xor    al,al
  ec14b0:	5b                                              	pop    ebx
  ec14b1:	c3                                              	ret
  ec14b2:	cc                                              	int3
  ec14b3:	cc                                              	int3
  ec14b4:	cc                                              	int3
  ec14b5:	cc                                              	int3
  ec14b6:	cc                                              	int3
  ec14b7:	cc                                              	int3
  ec14b8:	cc                                              	int3
  ec14b9:	cc                                              	int3
  ec14ba:	cc                                              	int3
  ec14bb:	cc                                              	int3
  ec14bc:	cc                                              	int3
  ec14bd:	cc                                              	int3
  ec14be:	cc                                              	int3
  ec14bf:	cc                                              	int3

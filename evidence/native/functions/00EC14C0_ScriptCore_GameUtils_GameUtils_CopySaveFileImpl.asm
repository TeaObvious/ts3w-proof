# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec14c0 (ScriptCore.GameUtils::GameUtils_CopySaveFileImpl)
Paired Ghidra pseudocode: 00EC14C0_ScriptCore_GameUtils_GameUtils_CopySaveFileImpl.c
Window: [0x00ec14c0, 0x00ec1520) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec14c0: 53 56 57 e8 f8 84 be ff 8b d8 e8 c1 7e 8a ff 85
00ec14d0: db 8b f0 74 39 85 f6 74 35 8b 4c 24 10 8b 06 8b
00ec14e0: 50 58 51 8b ce ff d2 8b 4c 24 14 8b f8 8b 06 8b
00ec14f0: 50 58 51 8b ce ff d2 85 ff 74 13 85 c0 74 0f 6a
00ec1500: 01 50 57 8b cb e8 66 df be ff 5f 5e 5b c3 5f 5e
00ec1510: 32 c0 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec14c0 <.text+0xac04c0>:
  ec14c0:	53                                              	push   ebx
  ec14c1:	56                                              	push   esi
  ec14c2:	57                                              	push   edi
  ec14c3:	e8 f8 84 be ff                                  	call   0xaa99c0
  ec14c8:	8b d8                                           	mov    ebx,eax
  ec14ca:	e8 c1 7e 8a ff                                  	call   0x769390
  ec14cf:	85 db                                           	test   ebx,ebx
  ec14d1:	8b f0                                           	mov    esi,eax
  ec14d3:	74 39                                           	je     0xec150e
  ec14d5:	85 f6                                           	test   esi,esi
  ec14d7:	74 35                                           	je     0xec150e
  ec14d9:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec14dd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec14df:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec14e2:	51                                              	push   ecx
  ec14e3:	8b ce                                           	mov    ecx,esi
  ec14e5:	ff d2                                           	call   edx
  ec14e7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec14eb:	8b f8                                           	mov    edi,eax
  ec14ed:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec14ef:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec14f2:	51                                              	push   ecx
  ec14f3:	8b ce                                           	mov    ecx,esi
  ec14f5:	ff d2                                           	call   edx
  ec14f7:	85 ff                                           	test   edi,edi
  ec14f9:	74 13                                           	je     0xec150e
  ec14fb:	85 c0                                           	test   eax,eax
  ec14fd:	74 0f                                           	je     0xec150e
  ec14ff:	6a 01                                           	push   0x1
  ec1501:	50                                              	push   eax
  ec1502:	57                                              	push   edi
  ec1503:	8b cb                                           	mov    ecx,ebx
  ec1505:	e8 66 df be ff                                  	call   0xaaf470
  ec150a:	5f                                              	pop    edi
  ec150b:	5e                                              	pop    esi
  ec150c:	5b                                              	pop    ebx
  ec150d:	c3                                              	ret
  ec150e:	5f                                              	pop    edi
  ec150f:	5e                                              	pop    esi
  ec1510:	32 c0                                           	xor    al,al
  ec1512:	5b                                              	pop    ebx
  ec1513:	c3                                              	ret
  ec1514:	cc                                              	int3
  ec1515:	cc                                              	int3
  ec1516:	cc                                              	int3
  ec1517:	cc                                              	int3
  ec1518:	cc                                              	int3
  ec1519:	cc                                              	int3
  ec151a:	cc                                              	int3
  ec151b:	cc                                              	int3
  ec151c:	cc                                              	int3
  ec151d:	cc                                              	int3
  ec151e:	cc                                              	int3
  ec151f:	cc                                              	int3

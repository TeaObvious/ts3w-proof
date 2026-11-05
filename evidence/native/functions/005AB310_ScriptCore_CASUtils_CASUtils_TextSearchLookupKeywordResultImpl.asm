# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab310 (ScriptCore.CASUtils::CASUtils_TextSearchLookupKeywordResultImpl)
Paired Ghidra pseudocode: 005AB310_ScriptCore_CASUtils_CASUtils_TextSearchLookupKeywordResultImpl.c
Window: [0x005ab310, 0x005ab410) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab310: 83 ec 30 57 8b 7c 24 38 8b c7 25 00 00 00 ff 3d
005ab320: 00 00 00 35 74 07 33 c0 5f 83 c4 30 c3 56 e8 5d
005ab330: e0 1b 00 8b f0 8b 16 8b 82 cc 00 00 00 57 8b ce
005ab340: ff d0 33 ff 3b c7 75 08 5e 33 c0 5f 83 c4 30 c3
005ab350: 8b 4c 24 44 8b 54 24 40 51 52 8b c8 89 7c 24 10
005ab360: 89 7c 24 14 89 7c 24 18 c7 44 24 1c 18 f9 fd 00
005ab370: e8 0b fa ff ff 50 8d 4c 24 0c e8 11 02 e6 ff 6a
005ab380: 01 6a 10 8d 44 24 10 50 6a 09 6a 13 8d 4c 24 2c
005ab390: c7 44 24 2c 6c 88 00 01 66 c7 44 24 36 13 00 66
005ab3a0: c7 44 24 34 0b 00 e8 15 a6 f4 ff 8b 4c 24 10 8b
005ab3b0: 44 24 08 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74
005ab3c0: 09 50 e8 19 91 f3 ff 83 c4 04 8d 44 24 3c 89 7c
005ab3d0: 24 3c 8b 16 8b 52 50 50 8d 4c 24 1c 51 8b ce ff
005ab3e0: d2 f6 44 24 20 04 8b 74 24 3c c7 44 24 18 f4 a6
005ab3f0: fb 00 74 0a 57 8d 4c 24 1c e8 62 a3 f4 ff 8b c6
005ab400: 5e 5f 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab310 <.text+0x1aa310>:
  5ab310:	83 ec 30                                        	sub    esp,0x30
  5ab313:	57                                              	push   edi
  5ab314:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  5ab318:	8b c7                                           	mov    eax,edi
  5ab31a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab31f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab324:	74 07                                           	je     0x5ab32d
  5ab326:	33 c0                                           	xor    eax,eax
  5ab328:	5f                                              	pop    edi
  5ab329:	83 c4 30                                        	add    esp,0x30
  5ab32c:	c3                                              	ret
  5ab32d:	56                                              	push   esi
  5ab32e:	e8 5d e0 1b 00                                  	call   0x769390
  5ab333:	8b f0                                           	mov    esi,eax
  5ab335:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab337:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab33d:	57                                              	push   edi
  5ab33e:	8b ce                                           	mov    ecx,esi
  5ab340:	ff d0                                           	call   eax
  5ab342:	33 ff                                           	xor    edi,edi
  5ab344:	3b c7                                           	cmp    eax,edi
  5ab346:	75 08                                           	jne    0x5ab350
  5ab348:	5e                                              	pop    esi
  5ab349:	33 c0                                           	xor    eax,eax
  5ab34b:	5f                                              	pop    edi
  5ab34c:	83 c4 30                                        	add    esp,0x30
  5ab34f:	c3                                              	ret
  5ab350:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  5ab354:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  5ab358:	51                                              	push   ecx
  5ab359:	52                                              	push   edx
  5ab35a:	8b c8                                           	mov    ecx,eax
  5ab35c:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  5ab360:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  5ab364:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  5ab368:	c7 44 24 1c 18 f9 fd 00                         	mov    DWORD PTR [esp+0x1c],0xfdf918
  5ab370:	e8 0b fa ff ff                                  	call   0x5aad80
  5ab375:	50                                              	push   eax
  5ab376:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5ab37a:	e8 11 02 e6 ff                                  	call   0x40b590
  5ab37f:	6a 01                                           	push   0x1
  5ab381:	6a 10                                           	push   0x10
  5ab383:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5ab387:	50                                              	push   eax
  5ab388:	6a 09                                           	push   0x9
  5ab38a:	6a 13                                           	push   0x13
  5ab38c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5ab390:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  5ab398:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  5ab39f:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  5ab3a6:	e8 15 a6 f4 ff                                  	call   0x4f59c0
  5ab3ab:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5ab3af:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5ab3b3:	2b c8                                           	sub    ecx,eax
  5ab3b5:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab3b8:	83 f9 02                                        	cmp    ecx,0x2
  5ab3bb:	7e 0d                                           	jle    0x5ab3ca
  5ab3bd:	3b c7                                           	cmp    eax,edi
  5ab3bf:	74 09                                           	je     0x5ab3ca
  5ab3c1:	50                                              	push   eax
  5ab3c2:	e8 19 91 f3 ff                                  	call   0x4e44e0
  5ab3c7:	83 c4 04                                        	add    esp,0x4
  5ab3ca:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  5ab3ce:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  5ab3d2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab3d4:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ab3d7:	50                                              	push   eax
  5ab3d8:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ab3dc:	51                                              	push   ecx
  5ab3dd:	8b ce                                           	mov    ecx,esi
  5ab3df:	ff d2                                           	call   edx
  5ab3e1:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  5ab3e6:	8b 74 24 3c                                     	mov    esi,DWORD PTR [esp+0x3c]
  5ab3ea:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  5ab3f2:	74 0a                                           	je     0x5ab3fe
  5ab3f4:	57                                              	push   edi
  5ab3f5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ab3f9:	e8 62 a3 f4 ff                                  	call   0x4f5760
  5ab3fe:	8b c6                                           	mov    eax,esi
  5ab400:	5e                                              	pop    esi
  5ab401:	5f                                              	pop    edi
  5ab402:	83 c4 30                                        	add    esp,0x30
  5ab405:	c3                                              	ret
  5ab406:	cc                                              	int3
  5ab407:	cc                                              	int3
  5ab408:	cc                                              	int3
  5ab409:	cc                                              	int3
  5ab40a:	cc                                              	int3
  5ab40b:	cc                                              	int3
  5ab40c:	cc                                              	int3
  5ab40d:	cc                                              	int3
  5ab40e:	cc                                              	int3
  5ab40f:	cc                                              	int3

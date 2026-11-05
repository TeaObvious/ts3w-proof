# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f7290 (DirectTargetOf_CASUtils_CASUtils_InjectTattooDimensions)
Paired Ghidra pseudocode: 005F7290_DirectTargetOf_CASUtils_CASUtils_InjectTattooDimensions.c
Window: [0x005f7290, 0x005f7400) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f7400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f7290: 81 ec 9c 00 00 00 53 56 e8 f3 20 17 00 8b 8c 24
005f72a0: a8 00 00 00 8b d8 8b 03 8b 50 58 51 8b cb ff d2
005f72b0: 8b f0 85 f6 75 09 5e 5b 81 c4 9c 00 00 00 c3 8b
005f72c0: 03 55 8d 4c 24 0c 51 8b 8c 24 b4 00 00 00 8d 54
005f72d0: 24 28 52 8b 50 78 51 8b cb ff d2 bd 04 00 00 00
005f72e0: 39 6c 24 0c 73 0c 5d 5e 33 c0 5b 81 c4 9c 00 00
005f72f0: 00 c3 8d 4c 24 48 e8 c5 87 fc ff 56 8d 4c 24 4c
005f7300: e8 5b 8d fc ff 39 6c 24 0c 72 2e 57 bf 01 00 00
005f7310: 00 33 f6 8b 44 24 28 8d 0c 06 51 8d 54 24 50 57
005f7320: 52 e8 4a fd ff ff 83 c5 04 83 c4 0c 83 c6 10 83
005f7330: c7 01 3b 6c 24 10 76 db 5f b8 54 8e 1c 01 89 44
005f7340: 24 14 89 44 24 18 8d 44 24 14 50 8d 4c 24 4c c7
005f7350: 44 24 24 0c f9 fd 00 c7 44 24 20 56 8e 1c 01 e8
005f7360: bc 89 fc ff 6a 01 6a 10 8d 4c 24 1c 51 6a 09 6a
005f7370: 13 8d 4c 24 3c c7 44 24 3c 6c 88 00 01 66 c7 44
005f7380: 24 46 13 00 66 c7 44 24 44 0b 00 e8 30 e6 ef ff
005f7390: 8b 13 8b 52 50 8d 44 24 10 50 8d 4c 24 2c 51 8b
005f73a0: cb ff d2 f6 44 24 30 04 8b 74 24 10 c7 44 24 28
005f73b0: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 2c e8 9f e3 ef
005f73c0: ff 8b 4c 24 1c 8b 44 24 14 2b c8 83 e1 fe 83 f9
005f73d0: 02 7e 0d 85 c0 74 09 50 e8 03 d1 ee ff 83 c4 04
005f73e0: 8d 4c 24 48 e8 f7 88 fc ff 5d 8b c6 5e 5b 81 c4
005f73f0: 9c 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005f7290 <.text+0x1f6290>:
  5f7290:	81 ec 9c 00 00 00                               	sub    esp,0x9c
  5f7296:	53                                              	push   ebx
  5f7297:	56                                              	push   esi
  5f7298:	e8 f3 20 17 00                                  	call   0x769390
  5f729d:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
  5f72a4:	8b d8                                           	mov    ebx,eax
  5f72a6:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f72a8:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f72ab:	51                                              	push   ecx
  5f72ac:	8b cb                                           	mov    ecx,ebx
  5f72ae:	ff d2                                           	call   edx
  5f72b0:	8b f0                                           	mov    esi,eax
  5f72b2:	85 f6                                           	test   esi,esi
  5f72b4:	75 09                                           	jne    0x5f72bf
  5f72b6:	5e                                              	pop    esi
  5f72b7:	5b                                              	pop    ebx
  5f72b8:	81 c4 9c 00 00 00                               	add    esp,0x9c
  5f72be:	c3                                              	ret
  5f72bf:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f72c1:	55                                              	push   ebp
  5f72c2:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5f72c6:	51                                              	push   ecx
  5f72c7:	8b 8c 24 b4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb4]
  5f72ce:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  5f72d2:	52                                              	push   edx
  5f72d3:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  5f72d6:	51                                              	push   ecx
  5f72d7:	8b cb                                           	mov    ecx,ebx
  5f72d9:	ff d2                                           	call   edx
  5f72db:	bd 04 00 00 00                                  	mov    ebp,0x4
  5f72e0:	39 6c 24 0c                                     	cmp    DWORD PTR [esp+0xc],ebp
  5f72e4:	73 0c                                           	jae    0x5f72f2
  5f72e6:	5d                                              	pop    ebp
  5f72e7:	5e                                              	pop    esi
  5f72e8:	33 c0                                           	xor    eax,eax
  5f72ea:	5b                                              	pop    ebx
  5f72eb:	81 c4 9c 00 00 00                               	add    esp,0x9c
  5f72f1:	c3                                              	ret
  5f72f2:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f72f6:	e8 c5 87 fc ff                                  	call   0x5bfac0
  5f72fb:	56                                              	push   esi
  5f72fc:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5f7300:	e8 5b 8d fc ff                                  	call   0x5c0060
  5f7305:	39 6c 24 0c                                     	cmp    DWORD PTR [esp+0xc],ebp
  5f7309:	72 2e                                           	jb     0x5f7339
  5f730b:	57                                              	push   edi
  5f730c:	bf 01 00 00 00                                  	mov    edi,0x1
  5f7311:	33 f6                                           	xor    esi,esi
  5f7313:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  5f7317:	8d 0c 06                                        	lea    ecx,[esi+eax*1]
  5f731a:	51                                              	push   ecx
  5f731b:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  5f731f:	57                                              	push   edi
  5f7320:	52                                              	push   edx
  5f7321:	e8 4a fd ff ff                                  	call   0x5f7070
  5f7326:	83 c5 04                                        	add    ebp,0x4
  5f7329:	83 c4 0c                                        	add    esp,0xc
  5f732c:	83 c6 10                                        	add    esi,0x10
  5f732f:	83 c7 01                                        	add    edi,0x1
  5f7332:	3b 6c 24 10                                     	cmp    ebp,DWORD PTR [esp+0x10]
  5f7336:	76 db                                           	jbe    0x5f7313
  5f7338:	5f                                              	pop    edi
  5f7339:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5f733e:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5f7342:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5f7346:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5f734a:	50                                              	push   eax
  5f734b:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5f734f:	c7 44 24 24 0c f9 fd 00                         	mov    DWORD PTR [esp+0x24],0xfdf90c
  5f7357:	c7 44 24 20 56 8e 1c 01                         	mov    DWORD PTR [esp+0x20],0x11c8e56
  5f735f:	e8 bc 89 fc ff                                  	call   0x5bfd20
  5f7364:	6a 01                                           	push   0x1
  5f7366:	6a 10                                           	push   0x10
  5f7368:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5f736c:	51                                              	push   ecx
  5f736d:	6a 09                                           	push   0x9
  5f736f:	6a 13                                           	push   0x13
  5f7371:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  5f7375:	c7 44 24 3c 6c 88 00 01                         	mov    DWORD PTR [esp+0x3c],0x100886c
  5f737d:	66 c7 44 24 46 13 00                            	mov    WORD PTR [esp+0x46],0x13
  5f7384:	66 c7 44 24 44 0b 00                            	mov    WORD PTR [esp+0x44],0xb
  5f738b:	e8 30 e6 ef ff                                  	call   0x4f59c0
  5f7390:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5f7392:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5f7395:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5f7399:	50                                              	push   eax
  5f739a:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f739e:	51                                              	push   ecx
  5f739f:	8b cb                                           	mov    ecx,ebx
  5f73a1:	ff d2                                           	call   edx
  5f73a3:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  5f73a8:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5f73ac:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  5f73b4:	74 0b                                           	je     0x5f73c1
  5f73b6:	6a 00                                           	push   0x0
  5f73b8:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f73bc:	e8 9f e3 ef ff                                  	call   0x4f5760
  5f73c1:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5f73c5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5f73c9:	2b c8                                           	sub    ecx,eax
  5f73cb:	83 e1 fe                                        	and    ecx,0xfffffffe
  5f73ce:	83 f9 02                                        	cmp    ecx,0x2
  5f73d1:	7e 0d                                           	jle    0x5f73e0
  5f73d3:	85 c0                                           	test   eax,eax
  5f73d5:	74 09                                           	je     0x5f73e0
  5f73d7:	50                                              	push   eax
  5f73d8:	e8 03 d1 ee ff                                  	call   0x4e44e0
  5f73dd:	83 c4 04                                        	add    esp,0x4
  5f73e0:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f73e4:	e8 f7 88 fc ff                                  	call   0x5bfce0
  5f73e9:	5d                                              	pop    ebp
  5f73ea:	8b c6                                           	mov    eax,esi
  5f73ec:	5e                                              	pop    esi
  5f73ed:	5b                                              	pop    ebx
  5f73ee:	81 c4 9c 00 00 00                               	add    esp,0x9c
  5f73f4:	c3                                              	ret
  5f73f5:	cc                                              	int3
  5f73f6:	cc                                              	int3
  5f73f7:	cc                                              	int3
  5f73f8:	cc                                              	int3
  5f73f9:	cc                                              	int3
  5f73fa:	cc                                              	int3
  5f73fb:	cc                                              	int3
  5f73fc:	cc                                              	int3
  5f73fd:	cc                                              	int3
  5f73fe:	cc                                              	int3
  5f73ff:	cc                                              	int3

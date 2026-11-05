# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007803b0 (ScriptCore.UIManager::UIManager_GetWorldNameMetadataImpl)
Paired Ghidra pseudocode: 007803B0_ScriptCore_UIManager_UIManager_GetWorldNameMetadataImpl.c
Window: [0x007803b0, 0x00780510) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00780510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007803b0: 81 ec 0c 01 00 00 56 57 33 ff 89 7c 24 08 e8 cd
007803c0: 8f fe ff 8b f0 3b f7 0f 84 35 01 00 00 8b 8c 24
007803d0: 18 01 00 00 8b 06 8b 50 58 51 8b ce ff d2 50 8d
007803e0: 4c 24 14 89 7c 24 14 89 7c 24 18 89 7c 24 1c c7
007803f0: 44 24 20 54 fb 00 01 e8 94 b1 c8 ff 8b 4c 24 14
00780400: 8b 44 24 10 2b c8 d1 f9 0f 84 d9 00 00 00 53 e8
00780410: 5c 98 32 00 3b c7 0f 84 c6 00 00 00 8d 58 ec 3b
00780420: df 0f 84 bb 00 00 00 8d 54 24 10 52 8d 44 24 18
00780430: 50 8b cb e8 28 b0 32 00 84 c0 0f 84 a2 00 00 00
00780440: 8d 4c 24 78 e8 97 23 e2 ff 8b 54 24 10 8d 4c 24
00780450: 78 51 52 8b cb e8 d6 b8 32 00 84 c0 74 72 8b 8c
00780460: 24 f4 00 00 00 8d 44 24 24 50 51 8d 4c 24 50 c7
00780470: 44 24 2c 54 fb 00 01 e8 04 b4 c8 ff 50 8d 4c 24
00780480: 5c e8 aa 61 d7 ff 50 8d 4c 24 2c c7 44 24 2c f4
00780490: a6 fb 00 66 89 7c 24 34 66 89 7c 24 36 e8 0e 60
007804a0: d7 ff 8d 4c 24 58 e8 75 53 d7 ff 8d 4c 24 48 e8
007804b0: 3c f4 d6 ff 8b 16 8b 52 50 8d 44 24 0c 50 8d 4c
007804c0: 24 2c 51 8b ce ff d2 8d 4c 24 28 e8 50 53 d7 ff
007804d0: 8b 4c 24 10 e8 d7 9e d8 ff 8d 4c 24 78 e8 be 23
007804e0: e2 ff 8b 44 24 14 5b 8b 4c 24 18 2b c8 83 e1 fe
007804f0: 83 f9 02 7e 0d 3b c7 74 09 50 e8 e1 3f d6 ff 83
00780500: c4 04 8b 44 24 08 5f 5e 81 c4 0c 01 00 00 c3 cc

LINEAR DISASSEMBLY
007803b0 <.text+0x37f3b0>:
  7803b0:	81 ec 0c 01 00 00                               	sub    esp,0x10c
  7803b6:	56                                              	push   esi
  7803b7:	57                                              	push   edi
  7803b8:	33 ff                                           	xor    edi,edi
  7803ba:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
  7803be:	e8 cd 8f fe ff                                  	call   0x769390
  7803c3:	8b f0                                           	mov    esi,eax
  7803c5:	3b f7                                           	cmp    esi,edi
  7803c7:	0f 84 35 01 00 00                               	je     0x780502
  7803cd:	8b 8c 24 18 01 00 00                            	mov    ecx,DWORD PTR [esp+0x118]
  7803d4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7803d6:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  7803d9:	51                                              	push   ecx
  7803da:	8b ce                                           	mov    ecx,esi
  7803dc:	ff d2                                           	call   edx
  7803de:	50                                              	push   eax
  7803df:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7803e3:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7803e7:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7803eb:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  7803ef:	c7 44 24 20 54 fb 00 01                         	mov    DWORD PTR [esp+0x20],0x100fb54
  7803f7:	e8 94 b1 c8 ff                                  	call   0x40b590
  7803fc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  780400:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  780404:	2b c8                                           	sub    ecx,eax
  780406:	d1 f9                                           	sar    ecx,1
  780408:	0f 84 d9 00 00 00                               	je     0x7804e7
  78040e:	53                                              	push   ebx
  78040f:	e8 5c 98 32 00                                  	call   0xaa9c70
  780414:	3b c7                                           	cmp    eax,edi
  780416:	0f 84 c6 00 00 00                               	je     0x7804e2
  78041c:	8d 58 ec                                        	lea    ebx,[eax-0x14]
  78041f:	3b df                                           	cmp    ebx,edi
  780421:	0f 84 bb 00 00 00                               	je     0x7804e2
  780427:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78042b:	52                                              	push   edx
  78042c:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  780430:	50                                              	push   eax
  780431:	8b cb                                           	mov    ecx,ebx
  780433:	e8 28 b0 32 00                                  	call   0xaab460
  780438:	84 c0                                           	test   al,al
  78043a:	0f 84 a2 00 00 00                               	je     0x7804e2
  780440:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  780444:	e8 97 23 e2 ff                                  	call   0x5a27e0
  780449:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  78044d:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  780451:	51                                              	push   ecx
  780452:	52                                              	push   edx
  780453:	8b cb                                           	mov    ecx,ebx
  780455:	e8 d6 b8 32 00                                  	call   0xaabd30
  78045a:	84 c0                                           	test   al,al
  78045c:	74 72                                           	je     0x7804d0
  78045e:	8b 8c 24 f4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xf4]
  780465:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  780469:	50                                              	push   eax
  78046a:	51                                              	push   ecx
  78046b:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  78046f:	c7 44 24 2c 54 fb 00 01                         	mov    DWORD PTR [esp+0x2c],0x100fb54
  780477:	e8 04 b4 c8 ff                                  	call   0x40b880
  78047c:	50                                              	push   eax
  78047d:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  780481:	e8 aa 61 d7 ff                                  	call   0x4f6630
  780486:	50                                              	push   eax
  780487:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  78048b:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  780493:	66 89 7c 24 34                                  	mov    WORD PTR [esp+0x34],di
  780498:	66 89 7c 24 36                                  	mov    WORD PTR [esp+0x36],di
  78049d:	e8 0e 60 d7 ff                                  	call   0x4f64b0
  7804a2:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  7804a6:	e8 75 53 d7 ff                                  	call   0x4f5820
  7804ab:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  7804af:	e8 3c f4 d6 ff                                  	call   0x4ef8f0
  7804b4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7804b6:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7804b9:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  7804bd:	50                                              	push   eax
  7804be:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7804c2:	51                                              	push   ecx
  7804c3:	8b ce                                           	mov    ecx,esi
  7804c5:	ff d2                                           	call   edx
  7804c7:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  7804cb:	e8 50 53 d7 ff                                  	call   0x4f5820
  7804d0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7804d4:	e8 d7 9e d8 ff                                  	call   0x50a3b0
  7804d9:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  7804dd:	e8 be 23 e2 ff                                  	call   0x5a28a0
  7804e2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7804e6:	5b                                              	pop    ebx
  7804e7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7804eb:	2b c8                                           	sub    ecx,eax
  7804ed:	83 e1 fe                                        	and    ecx,0xfffffffe
  7804f0:	83 f9 02                                        	cmp    ecx,0x2
  7804f3:	7e 0d                                           	jle    0x780502
  7804f5:	3b c7                                           	cmp    eax,edi
  7804f7:	74 09                                           	je     0x780502
  7804f9:	50                                              	push   eax
  7804fa:	e8 e1 3f d6 ff                                  	call   0x4e44e0
  7804ff:	83 c4 04                                        	add    esp,0x4
  780502:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  780506:	5f                                              	pop    edi
  780507:	5e                                              	pop    esi
  780508:	81 c4 0c 01 00 00                               	add    esp,0x10c
  78050e:	c3                                              	ret
  78050f:	cc                                              	int3

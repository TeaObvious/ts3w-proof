# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107863c0 (DownloadContent_ExportResourceImpl)
Paired Ghidra pseudocode: 107863C0_DownloadContent_ExportResourceImpl.c
Window: [0x107863c0, 0x10786530) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x10786530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107863c0: 81 ec 84 01 00 00 56 e8 54 4d dd ff 8b f0 8d 44
107863d0: 24 30 50 8d 8c 24 90 01 00 00 e8 d1 77 dd ff 8d
107863e0: 4c 24 30 51 e8 a7 be ff ff 83 c4 04 83 f8 03 74
107863f0: 0a 32 c0 5e 81 c4 84 01 00 00 c3 8b 16 8b 84 24
10786400: 9c 01 00 00 8b 52 58 57 50 8b ce ff d2 8b 8c 24
10786410: a4 01 00 00 8b f8 8b 06 8b 50 58 51 8b ce ff d2
10786420: 85 ff 8b f0 75 0b 5f 32 c0 5e 81 c4 84 01 00 00
10786430: c3 8d 44 24 34 50 8d 8c 24 a8 00 00 00 e8 5e 78
10786440: 97 ff 57 8d 8c 24 b8 00 00 00 68 f4 8e b5 10 51
10786450: e8 2b 8c 88 ff 83 c4 0c 85 f6 74 16 56 8d 94 24
10786460: c8 00 00 00 68 f4 8e b5 10 52 e8 11 8c 88 ff 83
10786470: c4 0c 53 68 58 8d b5 10 6a 00 6a 00 8d 4c 24 18
10786480: e8 0b dc 18 00 d9 e8 83 44 24 18 01 51 d9 1c 24
10786490: 6a 01 8d 4c 24 14 e8 d5 d5 18 00 6a 00 6a 00 8d
107864a0: 4c 24 14 e8 38 da 18 00 6a 01 8d 44 24 10 50 8d
107864b0: 4c 24 50 e8 e8 5d e4 ff 8d 4c 24 48 6a 01 89 8c
107864c0: 24 dc 00 00 00 6a 00 8d 4c 24 68 e8 90 35 97 ff
107864d0: 6a 00 8d 54 24 64 52 8d 84 24 b0 00 00 00 50 e8
107864e0: 2c 6d 01 00 83 c4 0c 8d 4c 24 60 8a d8 e8 8e 37
107864f0: 97 ff 8d 4c 24 48 e8 05 44 e4 ff 8b 4c 24 10 85
10786500: c9 c7 44 24 0c 10 ad b8 10 74 05 e8 20 d5 18 00
10786510: 8d 8c 24 a8 00 00 00 c7 44 24 0c e4 fe aa 10 e8
10786520: bc 92 97 ff 8a c3 5b 5f 5e 81 c4 84 01 00 00 c3

LINEAR DISASSEMBLY
107863c0 <.text+0x7853c0>:
107863c0:	81 ec 84 01 00 00                               	sub    esp,0x184
107863c6:	56                                              	push   esi
107863c7:	e8 54 4d dd ff                                  	call   0x1055b120
107863cc:	8b f0                                           	mov    esi,eax
107863ce:	8d 44 24 30                                     	lea    eax,[esp+0x30]
107863d2:	50                                              	push   eax
107863d3:	8d 8c 24 90 01 00 00                            	lea    ecx,[esp+0x190]
107863da:	e8 d1 77 dd ff                                  	call   0x1055dbb0
107863df:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
107863e3:	51                                              	push   ecx
107863e4:	e8 a7 be ff ff                                  	call   0x10782290
107863e9:	83 c4 04                                        	add    esp,0x4
107863ec:	83 f8 03                                        	cmp    eax,0x3
107863ef:	74 0a                                           	je     0x107863fb
107863f1:	32 c0                                           	xor    al,al
107863f3:	5e                                              	pop    esi
107863f4:	81 c4 84 01 00 00                               	add    esp,0x184
107863fa:	c3                                              	ret
107863fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
107863fd:	8b 84 24 9c 01 00 00                            	mov    eax,DWORD PTR [esp+0x19c]
10786404:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10786407:	57                                              	push   edi
10786408:	50                                              	push   eax
10786409:	8b ce                                           	mov    ecx,esi
1078640b:	ff d2                                           	call   edx
1078640d:	8b 8c 24 a4 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1a4]
10786414:	8b f8                                           	mov    edi,eax
10786416:	8b 06                                           	mov    eax,DWORD PTR [esi]
10786418:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1078641b:	51                                              	push   ecx
1078641c:	8b ce                                           	mov    ecx,esi
1078641e:	ff d2                                           	call   edx
10786420:	85 ff                                           	test   edi,edi
10786422:	8b f0                                           	mov    esi,eax
10786424:	75 0b                                           	jne    0x10786431
10786426:	5f                                              	pop    edi
10786427:	32 c0                                           	xor    al,al
10786429:	5e                                              	pop    esi
1078642a:	81 c4 84 01 00 00                               	add    esp,0x184
10786430:	c3                                              	ret
10786431:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10786435:	50                                              	push   eax
10786436:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
1078643d:	e8 5e 78 97 ff                                  	call   0x100fdca0
10786442:	57                                              	push   edi
10786443:	8d 8c 24 b8 00 00 00                            	lea    ecx,[esp+0xb8]
1078644a:	68 f4 8e b5 10                                  	push   0x10b58ef4
1078644f:	51                                              	push   ecx
10786450:	e8 2b 8c 88 ff                                  	call   0x1000f080
10786455:	83 c4 0c                                        	add    esp,0xc
10786458:	85 f6                                           	test   esi,esi
1078645a:	74 16                                           	je     0x10786472
1078645c:	56                                              	push   esi
1078645d:	8d 94 24 c8 00 00 00                            	lea    edx,[esp+0xc8]
10786464:	68 f4 8e b5 10                                  	push   0x10b58ef4
10786469:	52                                              	push   edx
1078646a:	e8 11 8c 88 ff                                  	call   0x1000f080
1078646f:	83 c4 0c                                        	add    esp,0xc
10786472:	53                                              	push   ebx
10786473:	68 58 8d b5 10                                  	push   0x10b58d58
10786478:	6a 00                                           	push   0x0
1078647a:	6a 00                                           	push   0x0
1078647c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10786480:	e8 0b dc 18 00                                  	call   0x10914090
10786485:	d9 e8                                           	fld1
10786487:	83 44 24 18 01                                  	add    DWORD PTR [esp+0x18],0x1
1078648c:	51                                              	push   ecx
1078648d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10786490:	6a 01                                           	push   0x1
10786492:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10786496:	e8 d5 d5 18 00                                  	call   0x10913a70
1078649b:	6a 00                                           	push   0x0
1078649d:	6a 00                                           	push   0x0
1078649f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107864a3:	e8 38 da 18 00                                  	call   0x10913ee0
107864a8:	6a 01                                           	push   0x1
107864aa:	8d 44 24 10                                     	lea    eax,[esp+0x10]
107864ae:	50                                              	push   eax
107864af:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
107864b3:	e8 e8 5d e4 ff                                  	call   0x105cc2a0
107864b8:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
107864bc:	6a 01                                           	push   0x1
107864be:	89 8c 24 dc 00 00 00                            	mov    DWORD PTR [esp+0xdc],ecx
107864c5:	6a 00                                           	push   0x0
107864c7:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
107864cb:	e8 90 35 97 ff                                  	call   0x100f9a60
107864d0:	6a 00                                           	push   0x0
107864d2:	8d 54 24 64                                     	lea    edx,[esp+0x64]
107864d6:	52                                              	push   edx
107864d7:	8d 84 24 b0 00 00 00                            	lea    eax,[esp+0xb0]
107864de:	50                                              	push   eax
107864df:	e8 2c 6d 01 00                                  	call   0x1079d210
107864e4:	83 c4 0c                                        	add    esp,0xc
107864e7:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107864eb:	8a d8                                           	mov    bl,al
107864ed:	e8 8e 37 97 ff                                  	call   0x100f9c80
107864f2:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
107864f6:	e8 05 44 e4 ff                                  	call   0x105ca900
107864fb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
107864ff:	85 c9                                           	test   ecx,ecx
10786501:	c7 44 24 0c 10 ad b8 10                         	mov    DWORD PTR [esp+0xc],0x10b8ad10
10786509:	74 05                                           	je     0x10786510
1078650b:	e8 20 d5 18 00                                  	call   0x10913a30
10786510:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
10786517:	c7 44 24 0c e4 fe aa 10                         	mov    DWORD PTR [esp+0xc],0x10aafee4
1078651f:	e8 bc 92 97 ff                                  	call   0x100ff7e0
10786524:	8a c3                                           	mov    al,bl
10786526:	5b                                              	pop    ebx
10786527:	5f                                              	pop    edi
10786528:	5e                                              	pop    esi
10786529:	81 c4 84 01 00 00                               	add    esp,0x184
1078652f:	c3                                              	ret

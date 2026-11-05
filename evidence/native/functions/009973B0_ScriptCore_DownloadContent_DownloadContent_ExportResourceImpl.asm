# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009973b0 (ScriptCore.DownloadContent::DownloadContent_ExportResourceImpl)
Paired Ghidra pseudocode: 009973B0_ScriptCore_DownloadContent_DownloadContent_ExportResourceImpl.c
Window: [0x009973b0, 0x00997520) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x00997520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009973b0: 81 ec 84 01 00 00 56 e8 d4 1f dd ff 8b f0 8d 44
009973c0: 24 30 50 8d 8c 24 90 01 00 00 e8 11 4d dd ff 8d
009973d0: 4c 24 30 51 e8 37 c9 ff ff 83 c4 04 83 f8 03 74
009973e0: 0a 32 c0 5e 81 c4 84 01 00 00 c3 8b 16 8b 84 24
009973f0: 9c 01 00 00 8b 52 58 57 50 8b ce ff d2 8b 8c 24
00997400: a4 01 00 00 8b f8 8b 06 8b 50 58 51 8b ce ff d2
00997410: 85 ff 8b f0 75 0b 5f 32 c0 5e 81 c4 84 01 00 00
00997420: c3 8d 44 24 34 50 8d 8c 24 a8 00 00 00 e8 fe f8
00997430: c4 ff 57 8d 8c 24 b8 00 00 00 68 1c a2 04 01 51
00997440: e8 1b 9a bf ff 83 c4 0c 85 f6 74 16 56 8d 94 24
00997450: c8 00 00 00 68 1c a2 04 01 52 e8 01 9a bf ff 83
00997460: c4 0c 53 68 80 a0 04 01 6a 00 6a 00 8d 4c 24 18
00997470: e8 eb 7f b4 ff d9 e8 83 44 24 18 01 51 d9 1c 24
00997480: 6a 01 8d 4c 24 14 e8 b5 79 b4 ff 6a 00 6a 00 8d
00997490: 4c 24 14 e8 18 7e b4 ff 6a 01 8d 44 24 10 50 8d
009974a0: 4c 24 50 e8 38 1f e4 ff 8d 4c 24 48 6a 01 89 8c
009974b0: 24 dc 00 00 00 6a 00 8d 4c 24 68 e8 50 e7 c4 ff
009974c0: 6a 00 8d 54 24 64 52 8d 84 24 b0 00 00 00 50 e8
009974d0: 7c 6a 01 00 83 c4 0c 8d 4c 24 60 8a d8 e8 6e ea
009974e0: c4 ff 8d 4c 24 48 e8 a5 04 e4 ff 8b 4c 24 10 85
009974f0: c9 c7 44 24 0c 00 6c fb 00 74 05 e8 00 79 b4 ff
00997500: 8d 8c 24 a8 00 00 00 c7 44 24 0c 04 aa fa 00 e8
00997510: 4c 00 c5 ff 8a c3 5b 5f 5e 81 c4 84 01 00 00 c3

LINEAR DISASSEMBLY
009973b0 <.text+0x5963b0>:
  9973b0:	81 ec 84 01 00 00                               	sub    esp,0x184
  9973b6:	56                                              	push   esi
  9973b7:	e8 d4 1f dd ff                                  	call   0x769390
  9973bc:	8b f0                                           	mov    esi,eax
  9973be:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  9973c2:	50                                              	push   eax
  9973c3:	8d 8c 24 90 01 00 00                            	lea    ecx,[esp+0x190]
  9973ca:	e8 11 4d dd ff                                  	call   0x76c0e0
  9973cf:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  9973d3:	51                                              	push   ecx
  9973d4:	e8 37 c9 ff ff                                  	call   0x993d10
  9973d9:	83 c4 04                                        	add    esp,0x4
  9973dc:	83 f8 03                                        	cmp    eax,0x3
  9973df:	74 0a                                           	je     0x9973eb
  9973e1:	32 c0                                           	xor    al,al
  9973e3:	5e                                              	pop    esi
  9973e4:	81 c4 84 01 00 00                               	add    esp,0x184
  9973ea:	c3                                              	ret
  9973eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  9973ed:	8b 84 24 9c 01 00 00                            	mov    eax,DWORD PTR [esp+0x19c]
  9973f4:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  9973f7:	57                                              	push   edi
  9973f8:	50                                              	push   eax
  9973f9:	8b ce                                           	mov    ecx,esi
  9973fb:	ff d2                                           	call   edx
  9973fd:	8b 8c 24 a4 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1a4]
  997404:	8b f8                                           	mov    edi,eax
  997406:	8b 06                                           	mov    eax,DWORD PTR [esi]
  997408:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  99740b:	51                                              	push   ecx
  99740c:	8b ce                                           	mov    ecx,esi
  99740e:	ff d2                                           	call   edx
  997410:	85 ff                                           	test   edi,edi
  997412:	8b f0                                           	mov    esi,eax
  997414:	75 0b                                           	jne    0x997421
  997416:	5f                                              	pop    edi
  997417:	32 c0                                           	xor    al,al
  997419:	5e                                              	pop    esi
  99741a:	81 c4 84 01 00 00                               	add    esp,0x184
  997420:	c3                                              	ret
  997421:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  997425:	50                                              	push   eax
  997426:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  99742d:	e8 fe f8 c4 ff                                  	call   0x5e6d30
  997432:	57                                              	push   edi
  997433:	8d 8c 24 b8 00 00 00                            	lea    ecx,[esp+0xb8]
  99743a:	68 1c a2 04 01                                  	push   0x104a21c
  99743f:	51                                              	push   ecx
  997440:	e8 1b 9a bf ff                                  	call   0x590e60
  997445:	83 c4 0c                                        	add    esp,0xc
  997448:	85 f6                                           	test   esi,esi
  99744a:	74 16                                           	je     0x997462
  99744c:	56                                              	push   esi
  99744d:	8d 94 24 c8 00 00 00                            	lea    edx,[esp+0xc8]
  997454:	68 1c a2 04 01                                  	push   0x104a21c
  997459:	52                                              	push   edx
  99745a:	e8 01 9a bf ff                                  	call   0x590e60
  99745f:	83 c4 0c                                        	add    esp,0xc
  997462:	53                                              	push   ebx
  997463:	68 80 a0 04 01                                  	push   0x104a080
  997468:	6a 00                                           	push   0x0
  99746a:	6a 00                                           	push   0x0
  99746c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  997470:	e8 eb 7f b4 ff                                  	call   0x4df460
  997475:	d9 e8                                           	fld1
  997477:	83 44 24 18 01                                  	add    DWORD PTR [esp+0x18],0x1
  99747c:	51                                              	push   ecx
  99747d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  997480:	6a 01                                           	push   0x1
  997482:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  997486:	e8 b5 79 b4 ff                                  	call   0x4dee40
  99748b:	6a 00                                           	push   0x0
  99748d:	6a 00                                           	push   0x0
  99748f:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  997493:	e8 18 7e b4 ff                                  	call   0x4df2b0
  997498:	6a 01                                           	push   0x1
  99749a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  99749e:	50                                              	push   eax
  99749f:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  9974a3:	e8 38 1f e4 ff                                  	call   0x7d93e0
  9974a8:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  9974ac:	6a 01                                           	push   0x1
  9974ae:	89 8c 24 dc 00 00 00                            	mov    DWORD PTR [esp+0xdc],ecx
  9974b5:	6a 00                                           	push   0x0
  9974b7:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  9974bb:	e8 50 e7 c4 ff                                  	call   0x5e5c10
  9974c0:	6a 00                                           	push   0x0
  9974c2:	8d 54 24 64                                     	lea    edx,[esp+0x64]
  9974c6:	52                                              	push   edx
  9974c7:	8d 84 24 b0 00 00 00                            	lea    eax,[esp+0xb0]
  9974ce:	50                                              	push   eax
  9974cf:	e8 7c 6a 01 00                                  	call   0x9adf50
  9974d4:	83 c4 0c                                        	add    esp,0xc
  9974d7:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9974db:	8a d8                                           	mov    bl,al
  9974dd:	e8 6e ea c4 ff                                  	call   0x5e5f50
  9974e2:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  9974e6:	e8 a5 04 e4 ff                                  	call   0x7d7990
  9974eb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  9974ef:	85 c9                                           	test   ecx,ecx
  9974f1:	c7 44 24 0c 00 6c fb 00                         	mov    DWORD PTR [esp+0xc],0xfb6c00
  9974f9:	74 05                                           	je     0x997500
  9974fb:	e8 00 79 b4 ff                                  	call   0x4dee00
  997500:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  997507:	c7 44 24 0c 04 aa fa 00                         	mov    DWORD PTR [esp+0xc],0xfaaa04
  99750f:	e8 4c 00 c5 ff                                  	call   0x5e7560
  997514:	8a c3                                           	mov    al,bl
  997516:	5b                                              	pop    ebx
  997517:	5f                                              	pop    edi
  997518:	5e                                              	pop    esi
  997519:	81 c4 84 01 00 00                               	add    esp,0x184
  99751f:	c3                                              	ret

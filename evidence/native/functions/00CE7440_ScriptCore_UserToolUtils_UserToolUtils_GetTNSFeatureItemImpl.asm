# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce7440 (ScriptCore.UserToolUtils::UserToolUtils_GetTNSFeatureItemImpl)
Paired Ghidra pseudocode: 00CE7440_ScriptCore_UserToolUtils_UserToolUtils_GetTNSFeatureItemImpl.c
Window: [0x00ce7440, 0x00ce7570) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce7570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce7440: 83 ec 38 53 56 8b 35 34 e0 1e 01 33 db 3b f3 0f
00ce7450: 84 09 01 00 00 89 5c 24 08 e8 32 1f a8 ff 3b c3
00ce7460: 89 44 24 0c 0f 84 ea 00 00 00 57 8d 44 24 14 50
00ce7470: 8b ce 89 5c 24 18 89 5c 24 1c 89 5c 24 20 c7 44
00ce7480: 24 24 38 22 05 01 e8 d5 97 fa ff 8b 74 24 18 2b
00ce7490: 74 24 14 53 c1 fe 03 8d 0c f5 00 00 00 00 51 8b
00ce74a0: 0d 64 c8 1c 01 e8 76 fa 7f ff 8b f8 3b fb 0f 84
00ce74b0: 8e 00 00 00 33 c0 3b f3 76 1f 8d 9b 00 00 00 00
00ce74c0: 8b 4c 24 14 8b 14 c1 89 14 c7 8b 4c c1 04 89 4c
00ce74d0: c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44 24 24 f4
00ce74e0: a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e 8d 4c 24
00ce74f0: 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a 08 57 6a
00ce7500: 20 6a 0c e8 b8 e4 80 ff 8b 4c 24 10 8b 11 8b 52
00ce7510: 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2 8b 0d 64
00ce7520: c8 1c 01 57 e8 47 e9 7f ff f6 44 24 2c 04 c7 44
00ce7530: 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28 e8 1e e2
00ce7540: 80 ff 8b 44 24 14 3b c3 5f 74 09 50 e8 8f cf 7f
00ce7550: ff 83 c4 04 8b 44 24 08 5e 5b 83 c4 38 c3 5e 33
00ce7560: c0 5b 83 c4 38 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce7440 <.text+0x8e6440>:
  ce7440:	83 ec 38                                        	sub    esp,0x38
  ce7443:	53                                              	push   ebx
  ce7444:	56                                              	push   esi
  ce7445:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce744b:	33 db                                           	xor    ebx,ebx
  ce744d:	3b f3                                           	cmp    esi,ebx
  ce744f:	0f 84 09 01 00 00                               	je     0xce755e
  ce7455:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce7459:	e8 32 1f a8 ff                                  	call   0x769390
  ce745e:	3b c3                                           	cmp    eax,ebx
  ce7460:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce7464:	0f 84 ea 00 00 00                               	je     0xce7554
  ce746a:	57                                              	push   edi
  ce746b:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ce746f:	50                                              	push   eax
  ce7470:	8b ce                                           	mov    ecx,esi
  ce7472:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ce7476:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce747a:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  ce747e:	c7 44 24 24 38 22 05 01                         	mov    DWORD PTR [esp+0x24],0x1052238
  ce7486:	e8 d5 97 fa ff                                  	call   0xc90c60
  ce748b:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ce748f:	2b 74 24 14                                     	sub    esi,DWORD PTR [esp+0x14]
  ce7493:	53                                              	push   ebx
  ce7494:	c1 fe 03                                        	sar    esi,0x3
  ce7497:	8d 0c f5 00 00 00 00                            	lea    ecx,[esi*8+0x0]
  ce749e:	51                                              	push   ecx
  ce749f:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce74a5:	e8 76 fa 7f ff                                  	call   0x4e6f20
  ce74aa:	8b f8                                           	mov    edi,eax
  ce74ac:	3b fb                                           	cmp    edi,ebx
  ce74ae:	0f 84 8e 00 00 00                               	je     0xce7542
  ce74b4:	33 c0                                           	xor    eax,eax
  ce74b6:	3b f3                                           	cmp    esi,ebx
  ce74b8:	76 1f                                           	jbe    0xce74d9
  ce74ba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  ce74c0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce74c4:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce74c7:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce74ca:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce74ce:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce74d2:	83 c0 01                                        	add    eax,0x1
  ce74d5:	3b c6                                           	cmp    eax,esi
  ce74d7:	72 e7                                           	jb     0xce74c0
  ce74d9:	3b f3                                           	cmp    esi,ebx
  ce74db:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce74e3:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce74e8:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce74ed:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce74f1:	74 08                                           	je     0xce74fb
  ce74f3:	56                                              	push   esi
  ce74f4:	6a 08                                           	push   0x8
  ce74f6:	57                                              	push   edi
  ce74f7:	6a 18                                           	push   0x18
  ce74f9:	eb 06                                           	jmp    0xce7501
  ce74fb:	53                                              	push   ebx
  ce74fc:	6a 08                                           	push   0x8
  ce74fe:	57                                              	push   edi
  ce74ff:	6a 20                                           	push   0x20
  ce7501:	6a 0c                                           	push   0xc
  ce7503:	e8 b8 e4 80 ff                                  	call   0x4f59c0
  ce7508:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce750c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce750e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce7511:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce7515:	50                                              	push   eax
  ce7516:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce751a:	50                                              	push   eax
  ce751b:	ff d2                                           	call   edx
  ce751d:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce7523:	57                                              	push   edi
  ce7524:	e8 47 e9 7f ff                                  	call   0x4e5e70
  ce7529:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce752e:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7536:	74 0a                                           	je     0xce7542
  ce7538:	53                                              	push   ebx
  ce7539:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce753d:	e8 1e e2 80 ff                                  	call   0x4f5760
  ce7542:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce7546:	3b c3                                           	cmp    eax,ebx
  ce7548:	5f                                              	pop    edi
  ce7549:	74 09                                           	je     0xce7554
  ce754b:	50                                              	push   eax
  ce754c:	e8 8f cf 7f ff                                  	call   0x4e44e0
  ce7551:	83 c4 04                                        	add    esp,0x4
  ce7554:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce7558:	5e                                              	pop    esi
  ce7559:	5b                                              	pop    ebx
  ce755a:	83 c4 38                                        	add    esp,0x38
  ce755d:	c3                                              	ret
  ce755e:	5e                                              	pop    esi
  ce755f:	33 c0                                           	xor    eax,eax
  ce7561:	5b                                              	pop    ebx
  ce7562:	83 c4 38                                        	add    esp,0x38
  ce7565:	c3                                              	ret
  ce7566:	cc                                              	int3
  ce7567:	cc                                              	int3
  ce7568:	cc                                              	int3
  ce7569:	cc                                              	int3
  ce756a:	cc                                              	int3
  ce756b:	cc                                              	int3
  ce756c:	cc                                              	int3
  ce756d:	cc                                              	int3
  ce756e:	cc                                              	int3
  ce756f:	cc                                              	int3

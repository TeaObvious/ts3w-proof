# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce64d0 (ScriptCore.UserToolUtils::UserToolUtils_GetMoodletEffectTextIdsImpl)
Paired Ghidra pseudocode: 00CE64D0_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextIdsImpl.c
Window: [0x00ce64d0, 0x00ce6620) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce64d0: 83 ec 40 8b 0d 34 e0 1e 01 33 c0 85 c9 89 04 24
00ce64e0: 0f 84 1c 01 00 00 8b 44 24 48 8b 54 24 4c 89 44
00ce64f0: 24 10 8b 44 24 44 89 44 24 18 89 54 24 14 8b 54
00ce6500: 24 50 8d 44 24 10 50 89 54 24 20 e8 a0 86 fa ff
00ce6510: 85 c0 89 44 24 0c 0f 84 f4 00 00 00 55 57 8b c8
00ce6520: e8 ab 16 fb ff 8b f8 e8 64 2e a8 ff 85 ff 8b e8
00ce6530: 0f 86 d0 00 00 00 85 ed 0f 84 c8 00 00 00 53 6a
00ce6540: 00 8d 0c bd 00 00 00 00 51 8b 0d 64 c8 1c 01 e8
00ce6550: cc 09 80 ff 8b d8 85 db 0f 84 9d 00 00 00 56 33
00ce6560: c0 33 f6 3b f8 76 39 eb 07 8d a4 24 00 00 00 00
00ce6570: 8b 4c 24 1c 8d 54 24 18 89 44 24 14 89 44 24 18
00ce6580: 52 8d 44 24 18 50 56 e8 84 16 fb ff 84 c0 74 07
00ce6590: 8b 4c 24 14 89 0c b3 83 c6 01 33 c0 3b f7 72 d0
00ce65a0: 57 6a 04 53 6a 18 be f4 a6 fb 00 6a 0a 8d 4c 24
00ce65b0: 44 89 74 24 44 66 89 44 24 4c 66 89 44 24 4e e8
00ce65c0: fc f3 80 ff 8b 55 00 8b 52 50 8d 44 24 10 50 8d
00ce65d0: 4c 24 34 51 8b cd ff d2 8b 0d 64 c8 1c 01 53 e8
00ce65e0: 8c f8 7f ff f6 44 24 38 04 89 74 24 30 5e 74 0b
00ce65f0: 6a 00 8d 4c 24 30 e8 65 f1 80 ff 8b 44 24 0c 5b
00ce6600: 5f 5d 83 c4 40 c3 8b 44 24 08 5f 5d 83 c4 40 c3
00ce6610: 8b 04 24 83 c4 40 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce64d0 <.text+0x8e54d0>:
  ce64d0:	83 ec 40                                        	sub    esp,0x40
  ce64d3:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce64d9:	33 c0                                           	xor    eax,eax
  ce64db:	85 c9                                           	test   ecx,ecx
  ce64dd:	89 04 24                                        	mov    DWORD PTR [esp],eax
  ce64e0:	0f 84 1c 01 00 00                               	je     0xce6602
  ce64e6:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  ce64ea:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  ce64ee:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  ce64f2:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  ce64f6:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  ce64fa:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  ce64fe:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  ce6502:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce6506:	50                                              	push   eax
  ce6507:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  ce650b:	e8 a0 86 fa ff                                  	call   0xc8ebb0
  ce6510:	85 c0                                           	test   eax,eax
  ce6512:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce6516:	0f 84 f4 00 00 00                               	je     0xce6610
  ce651c:	55                                              	push   ebp
  ce651d:	57                                              	push   edi
  ce651e:	8b c8                                           	mov    ecx,eax
  ce6520:	e8 ab 16 fb ff                                  	call   0xc97bd0
  ce6525:	8b f8                                           	mov    edi,eax
  ce6527:	e8 64 2e a8 ff                                  	call   0x769390
  ce652c:	85 ff                                           	test   edi,edi
  ce652e:	8b e8                                           	mov    ebp,eax
  ce6530:	0f 86 d0 00 00 00                               	jbe    0xce6606
  ce6536:	85 ed                                           	test   ebp,ebp
  ce6538:	0f 84 c8 00 00 00                               	je     0xce6606
  ce653e:	53                                              	push   ebx
  ce653f:	6a 00                                           	push   0x0
  ce6541:	8d 0c bd 00 00 00 00                            	lea    ecx,[edi*4+0x0]
  ce6548:	51                                              	push   ecx
  ce6549:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce654f:	e8 cc 09 80 ff                                  	call   0x4e6f20
  ce6554:	8b d8                                           	mov    ebx,eax
  ce6556:	85 db                                           	test   ebx,ebx
  ce6558:	0f 84 9d 00 00 00                               	je     0xce65fb
  ce655e:	56                                              	push   esi
  ce655f:	33 c0                                           	xor    eax,eax
  ce6561:	33 f6                                           	xor    esi,esi
  ce6563:	3b f8                                           	cmp    edi,eax
  ce6565:	76 39                                           	jbe    0xce65a0
  ce6567:	eb 07                                           	jmp    0xce6570
  ce6569:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  ce6570:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  ce6574:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  ce6578:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  ce657c:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  ce6580:	52                                              	push   edx
  ce6581:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  ce6585:	50                                              	push   eax
  ce6586:	56                                              	push   esi
  ce6587:	e8 84 16 fb ff                                  	call   0xc97c10
  ce658c:	84 c0                                           	test   al,al
  ce658e:	74 07                                           	je     0xce6597
  ce6590:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce6594:	89 0c b3                                        	mov    DWORD PTR [ebx+esi*4],ecx
  ce6597:	83 c6 01                                        	add    esi,0x1
  ce659a:	33 c0                                           	xor    eax,eax
  ce659c:	3b f7                                           	cmp    esi,edi
  ce659e:	72 d0                                           	jb     0xce6570
  ce65a0:	57                                              	push   edi
  ce65a1:	6a 04                                           	push   0x4
  ce65a3:	53                                              	push   ebx
  ce65a4:	6a 18                                           	push   0x18
  ce65a6:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  ce65ab:	6a 0a                                           	push   0xa
  ce65ad:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ce65b1:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
  ce65b5:	66 89 44 24 4c                                  	mov    WORD PTR [esp+0x4c],ax
  ce65ba:	66 89 44 24 4e                                  	mov    WORD PTR [esp+0x4e],ax
  ce65bf:	e8 fc f3 80 ff                                  	call   0x4f59c0
  ce65c4:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  ce65c7:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce65ca:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce65ce:	50                                              	push   eax
  ce65cf:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce65d3:	51                                              	push   ecx
  ce65d4:	8b cd                                           	mov    ecx,ebp
  ce65d6:	ff d2                                           	call   edx
  ce65d8:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce65de:	53                                              	push   ebx
  ce65df:	e8 8c f8 7f ff                                  	call   0x4e5e70
  ce65e4:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ce65e9:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  ce65ed:	5e                                              	pop    esi
  ce65ee:	74 0b                                           	je     0xce65fb
  ce65f0:	6a 00                                           	push   0x0
  ce65f2:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ce65f6:	e8 65 f1 80 ff                                  	call   0x4f5760
  ce65fb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ce65ff:	5b                                              	pop    ebx
  ce6600:	5f                                              	pop    edi
  ce6601:	5d                                              	pop    ebp
  ce6602:	83 c4 40                                        	add    esp,0x40
  ce6605:	c3                                              	ret
  ce6606:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce660a:	5f                                              	pop    edi
  ce660b:	5d                                              	pop    ebp
  ce660c:	83 c4 40                                        	add    esp,0x40
  ce660f:	c3                                              	ret
  ce6610:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  ce6613:	83 c4 40                                        	add    esp,0x40
  ce6616:	c3                                              	ret
  ce6617:	cc                                              	int3
  ce6618:	cc                                              	int3
  ce6619:	cc                                              	int3
  ce661a:	cc                                              	int3
  ce661b:	cc                                              	int3
  ce661c:	cc                                              	int3
  ce661d:	cc                                              	int3
  ce661e:	cc                                              	int3
  ce661f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce7570 (ScriptCore.UserToolUtils::UserToolUtils_GetTNSListFeatureItemsImpl)
Paired Ghidra pseudocode: 00CE7570_ScriptCore_UserToolUtils_UserToolUtils_GetTNSListFeatureItemsImpl.c
Window: [0x00ce7570, 0x00ce76a0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce76a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce7570: 83 ec 38 53 56 8b 35 34 e0 1e 01 33 db 3b f3 0f
00ce7580: 84 09 01 00 00 89 5c 24 08 e8 02 1e a8 ff 3b c3
00ce7590: 89 44 24 0c 0f 84 ea 00 00 00 57 8d 44 24 14 50
00ce75a0: 8b ce 89 5c 24 18 89 5c 24 1c 89 5c 24 20 c7 44
00ce75b0: 24 24 38 22 05 01 e8 c5 97 fa ff 8b 74 24 18 2b
00ce75c0: 74 24 14 53 c1 fe 03 8d 0c f5 00 00 00 00 51 8b
00ce75d0: 0d 64 c8 1c 01 e8 46 f9 7f ff 8b f8 3b fb 0f 84
00ce75e0: 8e 00 00 00 33 c0 3b f3 76 1f 8d 9b 00 00 00 00
00ce75f0: 8b 4c 24 14 8b 14 c1 89 14 c7 8b 4c c1 04 89 4c
00ce7600: c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44 24 24 f4
00ce7610: a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e 8d 4c 24
00ce7620: 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a 08 57 6a
00ce7630: 20 6a 0c e8 88 e3 80 ff 8b 4c 24 10 8b 11 8b 52
00ce7640: 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2 8b 0d 64
00ce7650: c8 1c 01 57 e8 17 e8 7f ff f6 44 24 2c 04 c7 44
00ce7660: 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28 e8 ee e0
00ce7670: 80 ff 8b 44 24 14 3b c3 5f 74 09 50 e8 5f ce 7f
00ce7680: ff 83 c4 04 8b 44 24 08 5e 5b 83 c4 38 c3 5e 33
00ce7690: c0 5b 83 c4 38 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce7570 <.text+0x8e6570>:
  ce7570:	83 ec 38                                        	sub    esp,0x38
  ce7573:	53                                              	push   ebx
  ce7574:	56                                              	push   esi
  ce7575:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce757b:	33 db                                           	xor    ebx,ebx
  ce757d:	3b f3                                           	cmp    esi,ebx
  ce757f:	0f 84 09 01 00 00                               	je     0xce768e
  ce7585:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce7589:	e8 02 1e a8 ff                                  	call   0x769390
  ce758e:	3b c3                                           	cmp    eax,ebx
  ce7590:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce7594:	0f 84 ea 00 00 00                               	je     0xce7684
  ce759a:	57                                              	push   edi
  ce759b:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ce759f:	50                                              	push   eax
  ce75a0:	8b ce                                           	mov    ecx,esi
  ce75a2:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ce75a6:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce75aa:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  ce75ae:	c7 44 24 24 38 22 05 01                         	mov    DWORD PTR [esp+0x24],0x1052238
  ce75b6:	e8 c5 97 fa ff                                  	call   0xc90d80
  ce75bb:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ce75bf:	2b 74 24 14                                     	sub    esi,DWORD PTR [esp+0x14]
  ce75c3:	53                                              	push   ebx
  ce75c4:	c1 fe 03                                        	sar    esi,0x3
  ce75c7:	8d 0c f5 00 00 00 00                            	lea    ecx,[esi*8+0x0]
  ce75ce:	51                                              	push   ecx
  ce75cf:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce75d5:	e8 46 f9 7f ff                                  	call   0x4e6f20
  ce75da:	8b f8                                           	mov    edi,eax
  ce75dc:	3b fb                                           	cmp    edi,ebx
  ce75de:	0f 84 8e 00 00 00                               	je     0xce7672
  ce75e4:	33 c0                                           	xor    eax,eax
  ce75e6:	3b f3                                           	cmp    esi,ebx
  ce75e8:	76 1f                                           	jbe    0xce7609
  ce75ea:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  ce75f0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce75f4:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce75f7:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce75fa:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce75fe:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce7602:	83 c0 01                                        	add    eax,0x1
  ce7605:	3b c6                                           	cmp    eax,esi
  ce7607:	72 e7                                           	jb     0xce75f0
  ce7609:	3b f3                                           	cmp    esi,ebx
  ce760b:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7613:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce7618:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce761d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce7621:	74 08                                           	je     0xce762b
  ce7623:	56                                              	push   esi
  ce7624:	6a 08                                           	push   0x8
  ce7626:	57                                              	push   edi
  ce7627:	6a 18                                           	push   0x18
  ce7629:	eb 06                                           	jmp    0xce7631
  ce762b:	53                                              	push   ebx
  ce762c:	6a 08                                           	push   0x8
  ce762e:	57                                              	push   edi
  ce762f:	6a 20                                           	push   0x20
  ce7631:	6a 0c                                           	push   0xc
  ce7633:	e8 88 e3 80 ff                                  	call   0x4f59c0
  ce7638:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce763c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce763e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce7641:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce7645:	50                                              	push   eax
  ce7646:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce764a:	50                                              	push   eax
  ce764b:	ff d2                                           	call   edx
  ce764d:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce7653:	57                                              	push   edi
  ce7654:	e8 17 e8 7f ff                                  	call   0x4e5e70
  ce7659:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce765e:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7666:	74 0a                                           	je     0xce7672
  ce7668:	53                                              	push   ebx
  ce7669:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce766d:	e8 ee e0 80 ff                                  	call   0x4f5760
  ce7672:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce7676:	3b c3                                           	cmp    eax,ebx
  ce7678:	5f                                              	pop    edi
  ce7679:	74 09                                           	je     0xce7684
  ce767b:	50                                              	push   eax
  ce767c:	e8 5f ce 7f ff                                  	call   0x4e44e0
  ce7681:	83 c4 04                                        	add    esp,0x4
  ce7684:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce7688:	5e                                              	pop    esi
  ce7689:	5b                                              	pop    ebx
  ce768a:	83 c4 38                                        	add    esp,0x38
  ce768d:	c3                                              	ret
  ce768e:	5e                                              	pop    esi
  ce768f:	33 c0                                           	xor    eax,eax
  ce7691:	5b                                              	pop    ebx
  ce7692:	83 c4 38                                        	add    esp,0x38
  ce7695:	c3                                              	ret
  ce7696:	cc                                              	int3
  ce7697:	cc                                              	int3
  ce7698:	cc                                              	int3
  ce7699:	cc                                              	int3
  ce769a:	cc                                              	int3
  ce769b:	cc                                              	int3
  ce769c:	cc                                              	int3
  ce769d:	cc                                              	int3
  ce769e:	cc                                              	int3
  ce769f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x007766e0; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007766e0 (ScriptCore.StreamHost::StreamHost_ReadCharArrayUTF8)
Paired Ghidra pseudocode: 007766E0_ScriptCore_StreamHost_StreamHost_ReadCharArrayUTF8.c
Window: [0x007766e0, 0x00776910) (560 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007766e0: 81 ec 2c 01 00 00 55 56 8b b4 24 38 01 00 00 3b
007766f0: 35 38 78 1d 01 57 75 0c 8b 2d 3c 78 1d 01 89 6c
00776700: 24 10 eb 43 8b c6 25 00 00 00 ff 3d 00 00 00 60
00776710: 74 0e c7 44 24 10 00 00 00 00 8b 6c 24 10 eb 27
00776720: e8 6b 2c ff ff 8b 10 8b c8 8b 82 cc 00 00 00 56
00776730: ff d0 85 c0 74 0b a3 3c 78 1d 01 89 35 38 78 1d
00776740: 01 89 44 24 10 8b e8 33 ff 3b ef 75 0d 8d 47 fe
00776750: 5f 5e 5d 81 c4 2c 01 00 00 c3 8b b4 24 40 01 00
00776760: 00 3b f7 75 0f 5f 5e b8 fa ff ff ff 5d 81 c4 2c
00776770: 01 00 00 c3 e8 17 2c ff ff 8d 4c 24 20 51 8d 4c
00776780: 24 1c 89 7c 24 24 89 7c 24 1c 8b 10 8b 52 70 51
00776790: 56 8b c8 ff d2 8b 8c 24 44 01 00 00 3b cf 0f 8c
007767a0: 58 01 00 00 8b b4 24 48 01 00 00 3b f7 0f 8c 49
007767b0: 01 00 00 8b 44 24 20 3b c8 0f 8f 3d 01 00 00 2b
007767c0: c1 3b c6 0f 8c 33 01 00 00 3b f7 75 0c 5f 5e 33
007767d0: c0 5d 81 c4 2c 01 00 00 c3 8d 4c 24 24 e8 be 89
007767e0: fb ff c7 44 24 30 08 d8 00 01 53 eb 03 8d 49 00
007767f0: 8d 04 3e 50 8d 4c 24 2c e8 93 fb ff ff 8b 4c 24
00776800: 28 8b 55 00 8b 42 30 8d 1c 39 56 53 8b cd ff d0
00776810: 83 f8 ff 74 46 03 f8 3b c6 89 7c 24 18 7c 67 8b
00776820: ee 33 f6 33 ff 85 ed 7e 59 8d a4 24 00 00 00 00
00776830: 8a 0c 1f 8d 54 24 13 52 88 4c 24 17 e8 8f d8 d7
00776840: ff 83 c7 01 83 c4 04 03 f0 3b fd 7c e3 85 f6 74
00776850: 31 8b 7c 24 18 8b 6c 24 14 eb 95 8b 44 24 28 85
00776860: c0 74 0f 3b 44 24 38 74 09 50 e8 71 dc d6 ff 83
00776870: c4 04 5b 5f 5e b8 fd ff ff ff 5d 81 c4 2c 01 00
00776880: 00 c3 8b 7c 24 18 8b 54 24 1c 8b 84 24 4c 01 00
00776890: 00 6a 10 8d 4c 24 24 51 52 6a 08 89 44 24 30 8b
007768a0: 44 24 38 57 50 e8 46 d8 d7 ff 83 c4 18 3b c7 8b
007768b0: 44 24 28 73 23 85 c0 74 0f 3b 44 24 38 74 09 50
007768c0: e8 1b dc d6 ff 83 c4 04 5b 5f 5e b8 fc ff ff ff
007768d0: 5d 81 c4 2c 01 00 00 c3 85 c0 8b 74 24 20 74 0f
007768e0: 3b 44 24 38 74 09 50 e8 f4 db d6 ff 83 c4 04 5b
007768f0: 5f 8b c6 5e 5d 81 c4 2c 01 00 00 c3 5f 5e b8 f9
00776900: ff ff ff 5d 81 c4 2c 01 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007766e0 <.text+0x3756e0>:
  7766e0:	81 ec 2c 01 00 00                               	sub    esp,0x12c
  7766e6:	55                                              	push   ebp
  7766e7:	56                                              	push   esi
  7766e8:	8b b4 24 38 01 00 00                            	mov    esi,DWORD PTR [esp+0x138]
  7766ef:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  7766f5:	57                                              	push   edi
  7766f6:	75 0c                                           	jne    0x776704
  7766f8:	8b 2d 3c 78 1d 01                               	mov    ebp,DWORD PTR ds:0x11d783c
  7766fe:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  776702:	eb 43                                           	jmp    0x776747
  776704:	8b c6                                           	mov    eax,esi
  776706:	25 00 00 00 ff                                  	and    eax,0xff000000
  77670b:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  776710:	74 0e                                           	je     0x776720
  776712:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  77671a:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  77671e:	eb 27                                           	jmp    0x776747
  776720:	e8 6b 2c ff ff                                  	call   0x769390
  776725:	8b 10                                           	mov    edx,DWORD PTR [eax]
  776727:	8b c8                                           	mov    ecx,eax
  776729:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77672f:	56                                              	push   esi
  776730:	ff d0                                           	call   eax
  776732:	85 c0                                           	test   eax,eax
  776734:	74 0b                                           	je     0x776741
  776736:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  77673b:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  776741:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  776745:	8b e8                                           	mov    ebp,eax
  776747:	33 ff                                           	xor    edi,edi
  776749:	3b ef                                           	cmp    ebp,edi
  77674b:	75 0d                                           	jne    0x77675a
  77674d:	8d 47 fe                                        	lea    eax,[edi-0x2]
  776750:	5f                                              	pop    edi
  776751:	5e                                              	pop    esi
  776752:	5d                                              	pop    ebp
  776753:	81 c4 2c 01 00 00                               	add    esp,0x12c
  776759:	c3                                              	ret
  77675a:	8b b4 24 40 01 00 00                            	mov    esi,DWORD PTR [esp+0x140]
  776761:	3b f7                                           	cmp    esi,edi
  776763:	75 0f                                           	jne    0x776774
  776765:	5f                                              	pop    edi
  776766:	5e                                              	pop    esi
  776767:	b8 fa ff ff ff                                  	mov    eax,0xfffffffa
  77676c:	5d                                              	pop    ebp
  77676d:	81 c4 2c 01 00 00                               	add    esp,0x12c
  776773:	c3                                              	ret
  776774:	e8 17 2c ff ff                                  	call   0x769390
  776779:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77677d:	51                                              	push   ecx
  77677e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  776782:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  776786:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  77678a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77678c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  77678f:	51                                              	push   ecx
  776790:	56                                              	push   esi
  776791:	8b c8                                           	mov    ecx,eax
  776793:	ff d2                                           	call   edx
  776795:	8b 8c 24 44 01 00 00                            	mov    ecx,DWORD PTR [esp+0x144]
  77679c:	3b cf                                           	cmp    ecx,edi
  77679e:	0f 8c 58 01 00 00                               	jl     0x7768fc
  7767a4:	8b b4 24 48 01 00 00                            	mov    esi,DWORD PTR [esp+0x148]
  7767ab:	3b f7                                           	cmp    esi,edi
  7767ad:	0f 8c 49 01 00 00                               	jl     0x7768fc
  7767b3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  7767b7:	3b c8                                           	cmp    ecx,eax
  7767b9:	0f 8f 3d 01 00 00                               	jg     0x7768fc
  7767bf:	2b c1                                           	sub    eax,ecx
  7767c1:	3b c6                                           	cmp    eax,esi
  7767c3:	0f 8c 33 01 00 00                               	jl     0x7768fc
  7767c9:	3b f7                                           	cmp    esi,edi
  7767cb:	75 0c                                           	jne    0x7767d9
  7767cd:	5f                                              	pop    edi
  7767ce:	5e                                              	pop    esi
  7767cf:	33 c0                                           	xor    eax,eax
  7767d1:	5d                                              	pop    ebp
  7767d2:	81 c4 2c 01 00 00                               	add    esp,0x12c
  7767d8:	c3                                              	ret
  7767d9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7767dd:	e8 be 89 fb ff                                  	call   0x72f1a0
  7767e2:	c7 44 24 30 08 d8 00 01                         	mov    DWORD PTR [esp+0x30],0x100d808
  7767ea:	53                                              	push   ebx
  7767eb:	eb 03                                           	jmp    0x7767f0
  7767ed:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  7767f0:	8d 04 3e                                        	lea    eax,[esi+edi*1]
  7767f3:	50                                              	push   eax
  7767f4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  7767f8:	e8 93 fb ff ff                                  	call   0x776390
  7767fd:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  776801:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  776804:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  776807:	8d 1c 39                                        	lea    ebx,[ecx+edi*1]
  77680a:	56                                              	push   esi
  77680b:	53                                              	push   ebx
  77680c:	8b cd                                           	mov    ecx,ebp
  77680e:	ff d0                                           	call   eax
  776810:	83 f8 ff                                        	cmp    eax,0xffffffff
  776813:	74 46                                           	je     0x77685b
  776815:	03 f8                                           	add    edi,eax
  776817:	3b c6                                           	cmp    eax,esi
  776819:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  77681d:	7c 67                                           	jl     0x776886
  77681f:	8b ee                                           	mov    ebp,esi
  776821:	33 f6                                           	xor    esi,esi
  776823:	33 ff                                           	xor    edi,edi
  776825:	85 ed                                           	test   ebp,ebp
  776827:	7e 59                                           	jle    0x776882
  776829:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  776830:	8a 0c 1f                                        	mov    cl,BYTE PTR [edi+ebx*1]
  776833:	8d 54 24 13                                     	lea    edx,[esp+0x13]
  776837:	52                                              	push   edx
  776838:	88 4c 24 17                                     	mov    BYTE PTR [esp+0x17],cl
  77683c:	e8 8f d8 d7 ff                                  	call   0x4f40d0
  776841:	83 c7 01                                        	add    edi,0x1
  776844:	83 c4 04                                        	add    esp,0x4
  776847:	03 f0                                           	add    esi,eax
  776849:	3b fd                                           	cmp    edi,ebp
  77684b:	7c e3                                           	jl     0x776830
  77684d:	85 f6                                           	test   esi,esi
  77684f:	74 31                                           	je     0x776882
  776851:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  776855:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  776859:	eb 95                                           	jmp    0x7767f0
  77685b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  77685f:	85 c0                                           	test   eax,eax
  776861:	74 0f                                           	je     0x776872
  776863:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
  776867:	74 09                                           	je     0x776872
  776869:	50                                              	push   eax
  77686a:	e8 71 dc d6 ff                                  	call   0x4e44e0
  77686f:	83 c4 04                                        	add    esp,0x4
  776872:	5b                                              	pop    ebx
  776873:	5f                                              	pop    edi
  776874:	5e                                              	pop    esi
  776875:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  77687a:	5d                                              	pop    ebp
  77687b:	81 c4 2c 01 00 00                               	add    esp,0x12c
  776881:	c3                                              	ret
  776882:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  776886:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  77688a:	8b 84 24 4c 01 00 00                            	mov    eax,DWORD PTR [esp+0x14c]
  776891:	6a 10                                           	push   0x10
  776893:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  776897:	51                                              	push   ecx
  776898:	52                                              	push   edx
  776899:	6a 08                                           	push   0x8
  77689b:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  77689f:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7768a3:	57                                              	push   edi
  7768a4:	50                                              	push   eax
  7768a5:	e8 46 d8 d7 ff                                  	call   0x4f40f0
  7768aa:	83 c4 18                                        	add    esp,0x18
  7768ad:	3b c7                                           	cmp    eax,edi
  7768af:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  7768b3:	73 23                                           	jae    0x7768d8
  7768b5:	85 c0                                           	test   eax,eax
  7768b7:	74 0f                                           	je     0x7768c8
  7768b9:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
  7768bd:	74 09                                           	je     0x7768c8
  7768bf:	50                                              	push   eax
  7768c0:	e8 1b dc d6 ff                                  	call   0x4e44e0
  7768c5:	83 c4 04                                        	add    esp,0x4
  7768c8:	5b                                              	pop    ebx
  7768c9:	5f                                              	pop    edi
  7768ca:	5e                                              	pop    esi
  7768cb:	b8 fc ff ff ff                                  	mov    eax,0xfffffffc
  7768d0:	5d                                              	pop    ebp
  7768d1:	81 c4 2c 01 00 00                               	add    esp,0x12c
  7768d7:	c3                                              	ret
  7768d8:	85 c0                                           	test   eax,eax
  7768da:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  7768de:	74 0f                                           	je     0x7768ef
  7768e0:	3b 44 24 38                                     	cmp    eax,DWORD PTR [esp+0x38]
  7768e4:	74 09                                           	je     0x7768ef
  7768e6:	50                                              	push   eax
  7768e7:	e8 f4 db d6 ff                                  	call   0x4e44e0
  7768ec:	83 c4 04                                        	add    esp,0x4
  7768ef:	5b                                              	pop    ebx
  7768f0:	5f                                              	pop    edi
  7768f1:	8b c6                                           	mov    eax,esi
  7768f3:	5e                                              	pop    esi
  7768f4:	5d                                              	pop    ebp
  7768f5:	81 c4 2c 01 00 00                               	add    esp,0x12c
  7768fb:	c3                                              	ret
  7768fc:	5f                                              	pop    edi
  7768fd:	5e                                              	pop    esi
  7768fe:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
  776903:	5d                                              	pop    ebp
  776904:	81 c4 2c 01 00 00                               	add    esp,0x12c
  77690a:	c3                                              	ret
  77690b:	cc                                              	int3
  77690c:	cc                                              	int3
  77690d:	cc                                              	int3
  77690e:	cc                                              	int3
  77690f:	cc                                              	int3

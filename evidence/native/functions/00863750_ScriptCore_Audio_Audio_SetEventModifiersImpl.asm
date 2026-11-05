# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863750 (ScriptCore.Audio::Audio_SetEventModifiersImpl)
Paired Ghidra pseudocode: 00863750_ScriptCore_Audio_Audio_SetEventModifiersImpl.c
Window: [0x00863750, 0x00863930) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863750: a1 40 9c 1d 01 83 ec 1c 57 33 ff 3b c7 0f 84 b9
00863760: 01 00 00 53 8d 98 30 84 fd ff 3b df 0f 84 a9 01
00863770: 00 00 56 8b 74 24 2c 3b f7 74 30 57 57 57 57 68
00863780: 68 8f 02 01 6a 0c e8 75 0d c8 ff 83 c4 18 3b c7
00863790: 74 0a 56 8b c8 e8 16 85 00 00 eb 02 33 c0 50 68
008637a0: d4 1c 68 20 8b cb e8 e5 2d 00 00 8b 74 24 34 3b
008637b0: f7 74 30 57 57 57 57 68 4c 8f 02 01 6a 0c e8 3d
008637c0: 0d c8 ff 83 c4 18 3b c7 74 0a 56 8b c8 e8 0e 83
008637d0: 00 00 eb 02 33 c0 50 68 ef ac c4 51 8b cb e8 ad
008637e0: 2d 00 00 55 8b 6c 24 34 3b ef 0f 84 29 01 00 00
008637f0: 8b 03 8b 90 18 01 00 00 68 40 8f 02 01 8b cb ff
00863800: d2 89 44 24 1c 89 54 24 20 c7 44 24 24 62 f6 b9
00863810: 02 c7 44 24 28 ec 07 14 00 89 7c 24 10 e8 5e c6
00863820: c4 ff 8b 4c 24 10 3b cf 8b f0 74 0b 89 7c 24 10
00863830: 8b 01 8b 50 04 ff d2 8b 06 8b 40 0c 57 57 57 57
00863840: 8d 4c 24 20 51 8d 54 24 30 52 8b ce ff d0 84 c0
00863850: 0f 84 b4 00 00 00 8b 4c 24 10 85 c9 8b f9 89 7c
00863860: 24 14 74 06 8b 11 8b 02 ff d0 8b 57 28 8b 52 20
00863870: 8d 4f 28 8d 44 24 18 50 68 7c 35 99 c4 ff d2 84
00863880: c0 74 7e 8b 74 24 18 66 83 7e 0a 13 75 73 f6 46
00863890: 08 10 74 6d 8b ce e8 d5 1f c9 ff 8b ce 8b f8 e8
008638a0: ac 1f c9 ff 85 ff 76 55 8b f0 8d 9b 00 00 00 00
008638b0: 6a 00 6a 00 6a 00 6a 00 68 24 8f 02 01 6a 1c e8
008638c0: 3c 0c c8 ff 83 c4 18 85 c0 74 0d 8b 0e 51 55 8b
008638d0: c8 e8 9a 88 00 00 eb 02 33 c0 8b 0e 50 6a 01 68
008638e0: c5 9d 1c 81 51 e8 46 6f c9 ff 83 c4 0c 50 8b cb
008638f0: e8 9b 2c 00 00 83 c6 10 83 ef 01 75 b3 8b 7c 24
00863900: 14 8b 07 8b 50 04 8b cf ff d2 8b 4c 24 10 85 c9
00863910: 74 07 8b 01 8b 50 04 ff d2 5d 5e 5b 5f 83 c4 1c
00863920: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863750 <.text+0x462750>:
  863750:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  863755:	83 ec 1c                                        	sub    esp,0x1c
  863758:	57                                              	push   edi
  863759:	33 ff                                           	xor    edi,edi
  86375b:	3b c7                                           	cmp    eax,edi
  86375d:	0f 84 b9 01 00 00                               	je     0x86391c
  863763:	53                                              	push   ebx
  863764:	8d 98 30 84 fd ff                               	lea    ebx,[eax-0x27bd0]
  86376a:	3b df                                           	cmp    ebx,edi
  86376c:	0f 84 a9 01 00 00                               	je     0x86391b
  863772:	56                                              	push   esi
  863773:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  863777:	3b f7                                           	cmp    esi,edi
  863779:	74 30                                           	je     0x8637ab
  86377b:	57                                              	push   edi
  86377c:	57                                              	push   edi
  86377d:	57                                              	push   edi
  86377e:	57                                              	push   edi
  86377f:	68 68 8f 02 01                                  	push   0x1028f68
  863784:	6a 0c                                           	push   0xc
  863786:	e8 75 0d c8 ff                                  	call   0x4e4500
  86378b:	83 c4 18                                        	add    esp,0x18
  86378e:	3b c7                                           	cmp    eax,edi
  863790:	74 0a                                           	je     0x86379c
  863792:	56                                              	push   esi
  863793:	8b c8                                           	mov    ecx,eax
  863795:	e8 16 85 00 00                                  	call   0x86bcb0
  86379a:	eb 02                                           	jmp    0x86379e
  86379c:	33 c0                                           	xor    eax,eax
  86379e:	50                                              	push   eax
  86379f:	68 d4 1c 68 20                                  	push   0x20681cd4
  8637a4:	8b cb                                           	mov    ecx,ebx
  8637a6:	e8 e5 2d 00 00                                  	call   0x866590
  8637ab:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  8637af:	3b f7                                           	cmp    esi,edi
  8637b1:	74 30                                           	je     0x8637e3
  8637b3:	57                                              	push   edi
  8637b4:	57                                              	push   edi
  8637b5:	57                                              	push   edi
  8637b6:	57                                              	push   edi
  8637b7:	68 4c 8f 02 01                                  	push   0x1028f4c
  8637bc:	6a 0c                                           	push   0xc
  8637be:	e8 3d 0d c8 ff                                  	call   0x4e4500
  8637c3:	83 c4 18                                        	add    esp,0x18
  8637c6:	3b c7                                           	cmp    eax,edi
  8637c8:	74 0a                                           	je     0x8637d4
  8637ca:	56                                              	push   esi
  8637cb:	8b c8                                           	mov    ecx,eax
  8637cd:	e8 0e 83 00 00                                  	call   0x86bae0
  8637d2:	eb 02                                           	jmp    0x8637d6
  8637d4:	33 c0                                           	xor    eax,eax
  8637d6:	50                                              	push   eax
  8637d7:	68 ef ac c4 51                                  	push   0x51c4acef
  8637dc:	8b cb                                           	mov    ecx,ebx
  8637de:	e8 ad 2d 00 00                                  	call   0x866590
  8637e3:	55                                              	push   ebp
  8637e4:	8b 6c 24 34                                     	mov    ebp,DWORD PTR [esp+0x34]
  8637e8:	3b ef                                           	cmp    ebp,edi
  8637ea:	0f 84 29 01 00 00                               	je     0x863919
  8637f0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  8637f2:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  8637f8:	68 40 8f 02 01                                  	push   0x1028f40
  8637fd:	8b cb                                           	mov    ecx,ebx
  8637ff:	ff d2                                           	call   edx
  863801:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  863805:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  863809:	c7 44 24 24 62 f6 b9 02                         	mov    DWORD PTR [esp+0x24],0x2b9f662
  863811:	c7 44 24 28 ec 07 14 00                         	mov    DWORD PTR [esp+0x28],0x1407ec
  863819:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  86381d:	e8 5e c6 c4 ff                                  	call   0x4afe80
  863822:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  863826:	3b cf                                           	cmp    ecx,edi
  863828:	8b f0                                           	mov    esi,eax
  86382a:	74 0b                                           	je     0x863837
  86382c:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  863830:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  863832:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  863835:	ff d2                                           	call   edx
  863837:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863839:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  86383c:	57                                              	push   edi
  86383d:	57                                              	push   edi
  86383e:	57                                              	push   edi
  86383f:	57                                              	push   edi
  863840:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  863844:	51                                              	push   ecx
  863845:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  863849:	52                                              	push   edx
  86384a:	8b ce                                           	mov    ecx,esi
  86384c:	ff d0                                           	call   eax
  86384e:	84 c0                                           	test   al,al
  863850:	0f 84 b4 00 00 00                               	je     0x86390a
  863856:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  86385a:	85 c9                                           	test   ecx,ecx
  86385c:	8b f9                                           	mov    edi,ecx
  86385e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  863862:	74 06                                           	je     0x86386a
  863864:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  863866:	8b 02                                           	mov    eax,DWORD PTR [edx]
  863868:	ff d0                                           	call   eax
  86386a:	8b 57 28                                        	mov    edx,DWORD PTR [edi+0x28]
  86386d:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
  863870:	8d 4f 28                                        	lea    ecx,[edi+0x28]
  863873:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  863877:	50                                              	push   eax
  863878:	68 7c 35 99 c4                                  	push   0xc499357c
  86387d:	ff d2                                           	call   edx
  86387f:	84 c0                                           	test   al,al
  863881:	74 7e                                           	je     0x863901
  863883:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  863887:	66 83 7e 0a 13                                  	cmp    WORD PTR [esi+0xa],0x13
  86388c:	75 73                                           	jne    0x863901
  86388e:	f6 46 08 10                                     	test   BYTE PTR [esi+0x8],0x10
  863892:	74 6d                                           	je     0x863901
  863894:	8b ce                                           	mov    ecx,esi
  863896:	e8 d5 1f c9 ff                                  	call   0x4f5870
  86389b:	8b ce                                           	mov    ecx,esi
  86389d:	8b f8                                           	mov    edi,eax
  86389f:	e8 ac 1f c9 ff                                  	call   0x4f5850
  8638a4:	85 ff                                           	test   edi,edi
  8638a6:	76 55                                           	jbe    0x8638fd
  8638a8:	8b f0                                           	mov    esi,eax
  8638aa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  8638b0:	6a 00                                           	push   0x0
  8638b2:	6a 00                                           	push   0x0
  8638b4:	6a 00                                           	push   0x0
  8638b6:	6a 00                                           	push   0x0
  8638b8:	68 24 8f 02 01                                  	push   0x1028f24
  8638bd:	6a 1c                                           	push   0x1c
  8638bf:	e8 3c 0c c8 ff                                  	call   0x4e4500
  8638c4:	83 c4 18                                        	add    esp,0x18
  8638c7:	85 c0                                           	test   eax,eax
  8638c9:	74 0d                                           	je     0x8638d8
  8638cb:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  8638cd:	51                                              	push   ecx
  8638ce:	55                                              	push   ebp
  8638cf:	8b c8                                           	mov    ecx,eax
  8638d1:	e8 9a 88 00 00                                  	call   0x86c170
  8638d6:	eb 02                                           	jmp    0x8638da
  8638d8:	33 c0                                           	xor    eax,eax
  8638da:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  8638dc:	50                                              	push   eax
  8638dd:	6a 01                                           	push   0x1
  8638df:	68 c5 9d 1c 81                                  	push   0x811c9dc5
  8638e4:	51                                              	push   ecx
  8638e5:	e8 46 6f c9 ff                                  	call   0x4fa830
  8638ea:	83 c4 0c                                        	add    esp,0xc
  8638ed:	50                                              	push   eax
  8638ee:	8b cb                                           	mov    ecx,ebx
  8638f0:	e8 9b 2c 00 00                                  	call   0x866590
  8638f5:	83 c6 10                                        	add    esi,0x10
  8638f8:	83 ef 01                                        	sub    edi,0x1
  8638fb:	75 b3                                           	jne    0x8638b0
  8638fd:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  863901:	8b 07                                           	mov    eax,DWORD PTR [edi]
  863903:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  863906:	8b cf                                           	mov    ecx,edi
  863908:	ff d2                                           	call   edx
  86390a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  86390e:	85 c9                                           	test   ecx,ecx
  863910:	74 07                                           	je     0x863919
  863912:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  863914:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  863917:	ff d2                                           	call   edx
  863919:	5d                                              	pop    ebp
  86391a:	5e                                              	pop    esi
  86391b:	5b                                              	pop    ebx
  86391c:	5f                                              	pop    edi
  86391d:	83 c4 1c                                        	add    esp,0x1c
  863920:	c3                                              	ret
  863921:	cc                                              	int3
  863922:	cc                                              	int3
  863923:	cc                                              	int3
  863924:	cc                                              	int3
  863925:	cc                                              	int3
  863926:	cc                                              	int3
  863927:	cc                                              	int3
  863928:	cc                                              	int3
  863929:	cc                                              	int3
  86392a:	cc                                              	int3
  86392b:	cc                                              	int3
  86392c:	cc                                              	int3
  86392d:	cc                                              	int3
  86392e:	cc                                              	int3
  86392f:	cc                                              	int3

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536710 (Objects_SetPosition)
Paired Ghidra pseudocode: 10536710_Objects_SetPosition.c
Window: [0x10536710, 0x105368b0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x105368b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536710: 55 8b ec 83 e4 f0 83 ec 34 53 56 57 e8 7f 3a 1f
10536720: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 80 44 1f 00
10536730: 8b f0 85 f6 0f 84 6d 01 00 00 a1 c4 0c c8 10 50
10536740: 8b ce e8 59 06 1f 00 85 c0 74 0d 8b 50 08 8d 48
10536750: 08 8b 42 28 ff d0 eb 19 8b 0d 98 d9 c8 10 51 8b
10536760: ce e8 3a 06 1f 00 85 c0 74 07 8b c8 e8 df 1f 21
10536770: 00 8b 15 08 04 c7 10 52 8b ce c6 44 24 1f 00 e8
10536780: 1c 06 1f 00 8b d8 a1 98 d9 c8 10 50 8b ce e8 0d
10536790: 06 1f 00 8b f8 85 ff 74 75 8d 4c 24 30 51 8b cf
105367a0: e8 0b 3b 21 00 f3 0f 10 4d 18 f3 0f 10 45 10 f3
105367b0: 0f 11 4c 24 28 f3 0f 10 4d 14 f3 0f 11 44 24 2c
105367c0: f3 0f 11 4c 24 24 0f 28 4c 24 30 f3 0f 11 44 24
105367d0: 20 0f 28 44 24 20 0f c2 c1 00 0f 50 d0 83 e2 07
105367e0: 80 fa 07 0f 95 c0 84 c0 88 44 24 1b 74 0b 85 db
105367f0: 74 07 81 63 2c 7f ff ff ff 8d 44 24 20 50 8d 4d
10536800: 10 e8 1a 73 02 00 50 8b cf e8 22 44 21 00 8b 0d
10536810: 3c d9 c8 10 51 8b ce e8 84 05 1f 00 8b 15 78 d9
10536820: c8 10 52 8b ce 8b f8 e8 74 05 1f 00 85 ff 8b c8
10536830: 89 4c 24 1c 75 66 85 c9 74 0d e8 31 e2 20 00 84
10536840: c0 75 55 8b 4c 24 1c 85 db 74 51 80 7c 24 1b 00
10536850: 74 3d 8b ce e8 c7 0d 43 00 50 e8 d1 e7 ae ff 83
10536860: c4 04 6a 00 8b cb 8b f8 e8 d3 b1 d2 ff 8b ce e8
10536870: ac 0d 43 00 50 e8 b6 e7 ae ff 83 c4 04 85 c0 74
10536880: 17 3b f8 75 13 56 8b c8 e8 f3 c9 b5 ff eb 09 6a
10536890: 00 8b cb e8 a8 b1 d2 ff 8b 4c 24 1c 85 c9 74 07
105368a0: 8b 01 8b 50 34 ff d2 5f 5e 5b 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
10536710 <.text+0x535710>:
10536710:	55                                              	push   ebp
10536711:	8b ec                                           	mov    ebp,esp
10536713:	83 e4 f0                                        	and    esp,0xfffffff0
10536716:	83 ec 34                                        	sub    esp,0x34
10536719:	53                                              	push   ebx
1053671a:	56                                              	push   esi
1053671b:	57                                              	push   edi
1053671c:	e8 7f 3a 1f 00                                  	call   0x1072a1a0
10536721:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10536724:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10536727:	51                                              	push   ecx
10536728:	52                                              	push   edx
10536729:	8b c8                                           	mov    ecx,eax
1053672b:	e8 80 44 1f 00                                  	call   0x1072abb0
10536730:	8b f0                                           	mov    esi,eax
10536732:	85 f6                                           	test   esi,esi
10536734:	0f 84 6d 01 00 00                               	je     0x105368a7
1053673a:	a1 c4 0c c8 10                                  	mov    eax,ds:0x10c80cc4
1053673f:	50                                              	push   eax
10536740:	8b ce                                           	mov    ecx,esi
10536742:	e8 59 06 1f 00                                  	call   0x10726da0
10536747:	85 c0                                           	test   eax,eax
10536749:	74 0d                                           	je     0x10536758
1053674b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1053674e:	8d 48 08                                        	lea    ecx,[eax+0x8]
10536751:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10536754:	ff d0                                           	call   eax
10536756:	eb 19                                           	jmp    0x10536771
10536758:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
1053675e:	51                                              	push   ecx
1053675f:	8b ce                                           	mov    ecx,esi
10536761:	e8 3a 06 1f 00                                  	call   0x10726da0
10536766:	85 c0                                           	test   eax,eax
10536768:	74 07                                           	je     0x10536771
1053676a:	8b c8                                           	mov    ecx,eax
1053676c:	e8 df 1f 21 00                                  	call   0x10748750
10536771:	8b 15 08 04 c7 10                               	mov    edx,DWORD PTR ds:0x10c70408
10536777:	52                                              	push   edx
10536778:	8b ce                                           	mov    ecx,esi
1053677a:	c6 44 24 1f 00                                  	mov    BYTE PTR [esp+0x1f],0x0
1053677f:	e8 1c 06 1f 00                                  	call   0x10726da0
10536784:	8b d8                                           	mov    ebx,eax
10536786:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
1053678b:	50                                              	push   eax
1053678c:	8b ce                                           	mov    ecx,esi
1053678e:	e8 0d 06 1f 00                                  	call   0x10726da0
10536793:	8b f8                                           	mov    edi,eax
10536795:	85 ff                                           	test   edi,edi
10536797:	74 75                                           	je     0x1053680e
10536799:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1053679d:	51                                              	push   ecx
1053679e:	8b cf                                           	mov    ecx,edi
105367a0:	e8 0b 3b 21 00                                  	call   0x1074a2b0
105367a5:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
105367aa:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
105367af:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
105367b5:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
105367ba:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
105367c0:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
105367c6:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
105367cb:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
105367d1:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
105367d6:	0f c2 c1 00                                     	cmpeqps xmm0,xmm1
105367da:	0f 50 d0                                        	movmskps edx,xmm0
105367dd:	83 e2 07                                        	and    edx,0x7
105367e0:	80 fa 07                                        	cmp    dl,0x7
105367e3:	0f 95 c0                                        	setne  al
105367e6:	84 c0                                           	test   al,al
105367e8:	88 44 24 1b                                     	mov    BYTE PTR [esp+0x1b],al
105367ec:	74 0b                                           	je     0x105367f9
105367ee:	85 db                                           	test   ebx,ebx
105367f0:	74 07                                           	je     0x105367f9
105367f2:	81 63 2c 7f ff ff ff                            	and    DWORD PTR [ebx+0x2c],0xffffff7f
105367f9:	8d 44 24 20                                     	lea    eax,[esp+0x20]
105367fd:	50                                              	push   eax
105367fe:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
10536801:	e8 1a 73 02 00                                  	call   0x1055db20
10536806:	50                                              	push   eax
10536807:	8b cf                                           	mov    ecx,edi
10536809:	e8 22 44 21 00                                  	call   0x1074ac30
1053680e:	8b 0d 3c d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d93c
10536814:	51                                              	push   ecx
10536815:	8b ce                                           	mov    ecx,esi
10536817:	e8 84 05 1f 00                                  	call   0x10726da0
1053681c:	8b 15 78 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d978
10536822:	52                                              	push   edx
10536823:	8b ce                                           	mov    ecx,esi
10536825:	8b f8                                           	mov    edi,eax
10536827:	e8 74 05 1f 00                                  	call   0x10726da0
1053682c:	85 ff                                           	test   edi,edi
1053682e:	8b c8                                           	mov    ecx,eax
10536830:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10536834:	75 66                                           	jne    0x1053689c
10536836:	85 c9                                           	test   ecx,ecx
10536838:	74 0d                                           	je     0x10536847
1053683a:	e8 31 e2 20 00                                  	call   0x10744a70
1053683f:	84 c0                                           	test   al,al
10536841:	75 55                                           	jne    0x10536898
10536843:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10536847:	85 db                                           	test   ebx,ebx
10536849:	74 51                                           	je     0x1053689c
1053684b:	80 7c 24 1b 00                                  	cmp    BYTE PTR [esp+0x1b],0x0
10536850:	74 3d                                           	je     0x1053688f
10536852:	8b ce                                           	mov    ecx,esi
10536854:	e8 c7 0d 43 00                                  	call   0x10967620
10536859:	50                                              	push   eax
1053685a:	e8 d1 e7 ae ff                                  	call   0x10025030
1053685f:	83 c4 04                                        	add    esp,0x4
10536862:	6a 00                                           	push   0x0
10536864:	8b cb                                           	mov    ecx,ebx
10536866:	8b f8                                           	mov    edi,eax
10536868:	e8 d3 b1 d2 ff                                  	call   0x10261a40
1053686d:	8b ce                                           	mov    ecx,esi
1053686f:	e8 ac 0d 43 00                                  	call   0x10967620
10536874:	50                                              	push   eax
10536875:	e8 b6 e7 ae ff                                  	call   0x10025030
1053687a:	83 c4 04                                        	add    esp,0x4
1053687d:	85 c0                                           	test   eax,eax
1053687f:	74 17                                           	je     0x10536898
10536881:	3b f8                                           	cmp    edi,eax
10536883:	75 13                                           	jne    0x10536898
10536885:	56                                              	push   esi
10536886:	8b c8                                           	mov    ecx,eax
10536888:	e8 f3 c9 b5 ff                                  	call   0x10093280
1053688d:	eb 09                                           	jmp    0x10536898
1053688f:	6a 00                                           	push   0x0
10536891:	8b cb                                           	mov    ecx,ebx
10536893:	e8 a8 b1 d2 ff                                  	call   0x10261a40
10536898:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053689c:	85 c9                                           	test   ecx,ecx
1053689e:	74 07                                           	je     0x105368a7
105368a0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
105368a2:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
105368a5:	ff d2                                           	call   edx
105368a7:	5f                                              	pop    edi
105368a8:	5e                                              	pop    esi
105368a9:	5b                                              	pop    ebx
105368aa:	8b e5                                           	mov    esp,ebp
105368ac:	5d                                              	pop    ebp
105368ad:	c3                                              	ret
105368ae:	cc                                              	int3
105368af:	cc                                              	int3

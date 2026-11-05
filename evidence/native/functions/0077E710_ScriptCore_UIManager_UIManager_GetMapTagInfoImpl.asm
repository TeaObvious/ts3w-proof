# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077e710 (ScriptCore.UIManager::UIManager_GetMapTagInfoImpl)
Paired Ghidra pseudocode: 0077E710_ScriptCore_UIManager_UIManager_GetMapTagInfoImpl.c
Window: [0x0077e710, 0x0077e8c0) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077e8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077e710: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 0f 57 c0 53
0077e720: 56 57 f3 0f 11 44 24 18 e8 43 8e 1b 00 8b 7d 0c
0077e730: 8b 5d 08 57 53 8b c8 e8 44 98 1b 00 8b f0 85 f6
0077e740: 89 74 24 1c 74 47 8d 7e 04 8b c7 b9 01 00 00 00
0077e750: f0 0f c1 08 a1 c4 9f 1e 01 50 8b ce e8 ff 5a 1b
0077e760: 00 8b d8 85 db 75 4b 8b cf 83 ca ff f0 0f c1 11
0077e770: 4a 75 11 b8 01 00 00 00 87 07 8b 16 8b 02 6a 01
0077e780: 8b ce ff d0 32 c0 5f 5e 5b 8b e5 5d c3 8b 0d c4
0077e790: db 1e 01 85 c9 74 ed 6a 00 57 53 e8 70 40 4e 00
0077e7a0: 85 c0 74 e0 8d 54 24 30 52 8b c8 e8 00 da 33 00
0077e7b0: eb 5b 8b 0d 58 a1 1e 01 51 8b ce e8 a0 5a 1b 00
0077e7c0: 85 c0 75 12 8d 4c 24 1c e8 13 7b fc ff 32 c0 5f
0077e7d0: 5e 5b 8b e5 5d c3 8b 15 fc a0 1e 01 85 56 2c 74
0077e7e0: 0e f3 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 18 8d
0077e7f0: 4c 24 50 51 8b c8 e8 35 95 1d 00 50 8b cb e8 7d
0077e800: a0 1c 00 50 8d 4c 24 38 e8 a3 f3 f0 ff 85 f6 0f
0077e810: 28 44 24 30 8b 45 10 0f 29 44 24 20 f3 0f 10 4c
0077e820: 24 20 f3 0f 11 08 0f 29 44 24 20 f3 0f 10 4c 24
0077e830: 24 0f 29 44 24 20 f3 0f 10 44 24 28 f3 0f 11 48
0077e840: 04 f3 0f 11 40 08 0f 28 44 24 40 8b 45 14 0f 29
0077e850: 44 24 20 f3 0f 10 4c 24 20 f3 0f 11 08 f3 0f 10
0077e860: 4c 24 18 0f 28 d0 0f c6 d0 55 0f c6 c9 00 0f 58
0077e870: d1 0f 29 54 24 20 f3 0f 10 4c 24 20 0f 29 44 24
0077e880: 20 f3 0f 10 44 24 28 f3 0f 11 48 04 f3 0f 11 40
0077e890: 08 74 20 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a 49
0077e8a0: 75 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b
0077e8b0: ce ff d2 5f 5e b0 01 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0077e710 <.text+0x37d710>:
  77e710:	55                                              	push   ebp
  77e711:	8b ec                                           	mov    ebp,esp
  77e713:	83 e4 f0                                        	and    esp,0xfffffff0
  77e716:	81 ec 84 00 00 00                               	sub    esp,0x84
  77e71c:	0f 57 c0                                        	xorps  xmm0,xmm0
  77e71f:	53                                              	push   ebx
  77e720:	56                                              	push   esi
  77e721:	57                                              	push   edi
  77e722:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  77e728:	e8 43 8e 1b 00                                  	call   0x937570
  77e72d:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  77e730:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  77e733:	57                                              	push   edi
  77e734:	53                                              	push   ebx
  77e735:	8b c8                                           	mov    ecx,eax
  77e737:	e8 44 98 1b 00                                  	call   0x937f80
  77e73c:	8b f0                                           	mov    esi,eax
  77e73e:	85 f6                                           	test   esi,esi
  77e740:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  77e744:	74 47                                           	je     0x77e78d
  77e746:	8d 7e 04                                        	lea    edi,[esi+0x4]
  77e749:	8b c7                                           	mov    eax,edi
  77e74b:	b9 01 00 00 00                                  	mov    ecx,0x1
  77e750:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  77e754:	a1 c4 9f 1e 01                                  	mov    eax,ds:0x11e9fc4
  77e759:	50                                              	push   eax
  77e75a:	8b ce                                           	mov    ecx,esi
  77e75c:	e8 ff 5a 1b 00                                  	call   0x934260
  77e761:	8b d8                                           	mov    ebx,eax
  77e763:	85 db                                           	test   ebx,ebx
  77e765:	75 4b                                           	jne    0x77e7b2
  77e767:	8b cf                                           	mov    ecx,edi
  77e769:	83 ca ff                                        	or     edx,0xffffffff
  77e76c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  77e770:	4a                                              	dec    edx
  77e771:	75 11                                           	jne    0x77e784
  77e773:	b8 01 00 00 00                                  	mov    eax,0x1
  77e778:	87 07                                           	xchg   DWORD PTR [edi],eax
  77e77a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77e77c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77e77e:	6a 01                                           	push   0x1
  77e780:	8b ce                                           	mov    ecx,esi
  77e782:	ff d0                                           	call   eax
  77e784:	32 c0                                           	xor    al,al
  77e786:	5f                                              	pop    edi
  77e787:	5e                                              	pop    esi
  77e788:	5b                                              	pop    ebx
  77e789:	8b e5                                           	mov    esp,ebp
  77e78b:	5d                                              	pop    ebp
  77e78c:	c3                                              	ret
  77e78d:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  77e793:	85 c9                                           	test   ecx,ecx
  77e795:	74 ed                                           	je     0x77e784
  77e797:	6a 00                                           	push   0x0
  77e799:	57                                              	push   edi
  77e79a:	53                                              	push   ebx
  77e79b:	e8 70 40 4e 00                                  	call   0xc62810
  77e7a0:	85 c0                                           	test   eax,eax
  77e7a2:	74 e0                                           	je     0x77e784
  77e7a4:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  77e7a8:	52                                              	push   edx
  77e7a9:	8b c8                                           	mov    ecx,eax
  77e7ab:	e8 00 da 33 00                                  	call   0xabc1b0
  77e7b0:	eb 5b                                           	jmp    0x77e80d
  77e7b2:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  77e7b8:	51                                              	push   ecx
  77e7b9:	8b ce                                           	mov    ecx,esi
  77e7bb:	e8 a0 5a 1b 00                                  	call   0x934260
  77e7c0:	85 c0                                           	test   eax,eax
  77e7c2:	75 12                                           	jne    0x77e7d6
  77e7c4:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  77e7c8:	e8 13 7b fc ff                                  	call   0x7462e0
  77e7cd:	32 c0                                           	xor    al,al
  77e7cf:	5f                                              	pop    edi
  77e7d0:	5e                                              	pop    esi
  77e7d1:	5b                                              	pop    ebx
  77e7d2:	8b e5                                           	mov    esp,ebp
  77e7d4:	5d                                              	pop    ebp
  77e7d5:	c3                                              	ret
  77e7d6:	8b 15 fc a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0fc
  77e7dc:	85 56 2c                                        	test   DWORD PTR [esi+0x2c],edx
  77e7df:	74 0e                                           	je     0x77e7ef
  77e7e1:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  77e7e9:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  77e7ef:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  77e7f3:	51                                              	push   ecx
  77e7f4:	8b c8                                           	mov    ecx,eax
  77e7f6:	e8 35 95 1d 00                                  	call   0x957d30
  77e7fb:	50                                              	push   eax
  77e7fc:	8b cb                                           	mov    ecx,ebx
  77e7fe:	e8 7d a0 1c 00                                  	call   0x948880
  77e803:	50                                              	push   eax
  77e804:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  77e808:	e8 a3 f3 f0 ff                                  	call   0x68dbb0
  77e80d:	85 f6                                           	test   esi,esi
  77e80f:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  77e814:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  77e817:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e81c:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  77e822:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  77e826:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e82b:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  77e831:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e836:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  77e83c:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  77e841:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  77e846:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  77e84b:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  77e84e:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e853:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  77e859:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  77e85d:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  77e863:	0f 28 d0                                        	movaps xmm2,xmm0
  77e866:	0f c6 d0 55                                     	shufps xmm2,xmm0,0x55
  77e86a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  77e86e:	0f 58 d1                                        	addps  xmm2,xmm1
  77e871:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
  77e876:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  77e87c:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  77e881:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  77e887:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  77e88c:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  77e891:	74 20                                           	je     0x77e8b3
  77e893:	8d 46 04                                        	lea    eax,[esi+0x4]
  77e896:	8b d0                                           	mov    edx,eax
  77e898:	83 c9 ff                                        	or     ecx,0xffffffff
  77e89b:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  77e89f:	49                                              	dec    ecx
  77e8a0:	75 11                                           	jne    0x77e8b3
  77e8a2:	ba 01 00 00 00                                  	mov    edx,0x1
  77e8a7:	87 10                                           	xchg   DWORD PTR [eax],edx
  77e8a9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77e8ab:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77e8ad:	6a 01                                           	push   0x1
  77e8af:	8b ce                                           	mov    ecx,esi
  77e8b1:	ff d2                                           	call   edx
  77e8b3:	5f                                              	pop    edi
  77e8b4:	5e                                              	pop    esi
  77e8b5:	b0 01                                           	mov    al,0x1
  77e8b7:	5b                                              	pop    ebx
  77e8b8:	8b e5                                           	mov    esp,ebp
  77e8ba:	5d                                              	pop    ebp
  77e8bb:	c3                                              	ret
  77e8bc:	cc                                              	int3
  77e8bd:	cc                                              	int3
  77e8be:	cc                                              	int3
  77e8bf:	cc                                              	int3

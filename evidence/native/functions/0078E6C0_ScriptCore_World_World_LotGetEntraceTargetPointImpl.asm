# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e6c0 (ScriptCore.World::World_LotGetEntraceTargetPointImpl)
Paired Ghidra pseudocode: 0078E6C0_ScriptCore_World_World_LotGetEntraceTargetPointImpl.c
Window: [0x0078e6c0, 0x0078e7f0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e7f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e6c0: 55 8b ec 83 e4 f0 d9 ee 81 ec 84 00 00 00 53 56
0078e6d0: 8b 75 08 57 83 ec 0c d9 54 24 08 8b ce d9 54 24
0078e6e0: 04 d9 1c 24 e8 87 d8 fd ff e8 02 a6 09 00 85 c0
0078e6f0: 74 0f 8b c8 e8 c7 ae 09 00 85 c0 89 44 24 0c 75
0078e700: 09 8b c6 5f 5e 5b 8b e5 5d c3 8b 0d c4 db 1e 01
0078e710: 85 c9 0f 84 ca 00 00 00 8b 7d 10 8b 5d 0c 6a 00
0078e720: 57 53 e8 e9 40 4d 00 8b f0 85 f6 0f 84 b1 00 00
0078e730: 00 0f 57 c0 8b 4c 24 0c 8d 44 24 10 50 f3 0f 11
0078e740: 44 24 20 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3
0078e750: 0f 11 44 24 14 0f 28 44 24 14 57 53 0f 29 44 24
0078e760: 1c e8 9a 3a ea ff 84 c0 74 78 8d 4c 24 50 51 8b
0078e770: ce e8 ca 2d 32 00 0f 28 4c 24 10 0f 28 10 0f 28
0078e780: 58 10 8b 4d 08 0f 28 c1 0f c6 c1 00 0f 59 c2 0f
0078e790: 28 50 30 0f 58 c2 0f 28 d1 0f c6 d1 55 0f 59 d3
0078e7a0: 0f 58 c2 0f 28 d1 0f c6 d1 aa 0f 28 48 20 0f 59
0078e7b0: d1 0f 58 c2 0f 29 44 24 20 d9 44 24 28 83 ec 0c
0078e7c0: d9 5c 24 08 0f 29 44 24 4c d9 44 24 50 0f 29 44
0078e7d0: 24 3c d9 5c 24 04 d9 44 24 3c d9 1c 24 e8 8e d7
0078e7e0: fd ff 8b 45 08 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0078e6c0 <.text+0x38d6c0>:
  78e6c0:	55                                              	push   ebp
  78e6c1:	8b ec                                           	mov    ebp,esp
  78e6c3:	83 e4 f0                                        	and    esp,0xfffffff0
  78e6c6:	d9 ee                                           	fldz
  78e6c8:	81 ec 84 00 00 00                               	sub    esp,0x84
  78e6ce:	53                                              	push   ebx
  78e6cf:	56                                              	push   esi
  78e6d0:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  78e6d3:	57                                              	push   edi
  78e6d4:	83 ec 0c                                        	sub    esp,0xc
  78e6d7:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  78e6db:	8b ce                                           	mov    ecx,esi
  78e6dd:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  78e6e1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e6e4:	e8 87 d8 fd ff                                  	call   0x76bf70
  78e6e9:	e8 02 a6 09 00                                  	call   0x828cf0
  78e6ee:	85 c0                                           	test   eax,eax
  78e6f0:	74 0f                                           	je     0x78e701
  78e6f2:	8b c8                                           	mov    ecx,eax
  78e6f4:	e8 c7 ae 09 00                                  	call   0x8295c0
  78e6f9:	85 c0                                           	test   eax,eax
  78e6fb:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  78e6ff:	75 09                                           	jne    0x78e70a
  78e701:	8b c6                                           	mov    eax,esi
  78e703:	5f                                              	pop    edi
  78e704:	5e                                              	pop    esi
  78e705:	5b                                              	pop    ebx
  78e706:	8b e5                                           	mov    esp,ebp
  78e708:	5d                                              	pop    ebp
  78e709:	c3                                              	ret
  78e70a:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78e710:	85 c9                                           	test   ecx,ecx
  78e712:	0f 84 ca 00 00 00                               	je     0x78e7e2
  78e718:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
  78e71b:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  78e71e:	6a 00                                           	push   0x0
  78e720:	57                                              	push   edi
  78e721:	53                                              	push   ebx
  78e722:	e8 e9 40 4d 00                                  	call   0xc62810
  78e727:	8b f0                                           	mov    esi,eax
  78e729:	85 f6                                           	test   esi,esi
  78e72b:	0f 84 b1 00 00 00                               	je     0x78e7e2
  78e731:	0f 57 c0                                        	xorps  xmm0,xmm0
  78e734:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78e738:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78e73c:	50                                              	push   eax
  78e73d:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78e743:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  78e749:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  78e74f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78e755:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78e75a:	57                                              	push   edi
  78e75b:	53                                              	push   ebx
  78e75c:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  78e761:	e8 9a 3a ea ff                                  	call   0x632200
  78e766:	84 c0                                           	test   al,al
  78e768:	74 78                                           	je     0x78e7e2
  78e76a:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  78e76e:	51                                              	push   ecx
  78e76f:	8b ce                                           	mov    ecx,esi
  78e771:	e8 ca 2d 32 00                                  	call   0xab1540
  78e776:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
  78e77b:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  78e77e:	0f 28 58 10                                     	movaps xmm3,XMMWORD PTR [eax+0x10]
  78e782:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  78e785:	0f 28 c1                                        	movaps xmm0,xmm1
  78e788:	0f c6 c1 00                                     	shufps xmm0,xmm1,0x0
  78e78c:	0f 59 c2                                        	mulps  xmm0,xmm2
  78e78f:	0f 28 50 30                                     	movaps xmm2,XMMWORD PTR [eax+0x30]
  78e793:	0f 58 c2                                        	addps  xmm0,xmm2
  78e796:	0f 28 d1                                        	movaps xmm2,xmm1
  78e799:	0f c6 d1 55                                     	shufps xmm2,xmm1,0x55
  78e79d:	0f 59 d3                                        	mulps  xmm2,xmm3
  78e7a0:	0f 58 c2                                        	addps  xmm0,xmm2
  78e7a3:	0f 28 d1                                        	movaps xmm2,xmm1
  78e7a6:	0f c6 d1 aa                                     	shufps xmm2,xmm1,0xaa
  78e7aa:	0f 28 48 20                                     	movaps xmm1,XMMWORD PTR [eax+0x20]
  78e7ae:	0f 59 d1                                        	mulps  xmm2,xmm1
  78e7b1:	0f 58 c2                                        	addps  xmm0,xmm2
  78e7b4:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  78e7b9:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78e7bd:	83 ec 0c                                        	sub    esp,0xc
  78e7c0:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78e7c4:	0f 29 44 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm0
  78e7c9:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  78e7cd:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  78e7d2:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78e7d6:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  78e7da:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78e7dd:	e8 8e d7 fd ff                                  	call   0x76bf70
  78e7e2:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  78e7e5:	5f                                              	pop    edi
  78e7e6:	5e                                              	pop    esi
  78e7e7:	5b                                              	pop    ebx
  78e7e8:	8b e5                                           	mov    esp,ebp
  78e7ea:	5d                                              	pop    ebp
  78e7eb:	c3                                              	ret
  78e7ec:	cc                                              	int3
  78e7ed:	cc                                              	int3
  78e7ee:	cc                                              	int3
  78e7ef:	cc                                              	int3

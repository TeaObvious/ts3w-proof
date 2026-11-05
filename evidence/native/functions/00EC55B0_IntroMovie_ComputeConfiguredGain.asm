# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ec55b0 (IntroMovie_ComputeConfiguredGain)
Complete function body: 0x00ec55b0..0x00ec56a0 (exclusive end)
Ghidra body ranges: [[00ec55b0, 00ec569f]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec55b0 <.text+0xac45b0>:
  ec55b0:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  ec55b5:	83 ec 08                                        	sub    esp,0x8
  ec55b8:	6a 00                                           	push   0x0
  ec55ba:	68 70 95 02 01                                  	push   0x1029570
  ec55bf:	50                                              	push   eax
  ec55c0:	e8 6b 58 6c ff                                  	call   0x58ae30
  ec55c5:	83 c4 0c                                        	add    esp,0xc
  ec55c8:	84 c0                                           	test   al,al
  ec55ca:	74 06                                           	je     0xec55d2
  ec55cc:	d9 ee                                           	fldz
  ec55ce:	83 c4 08                                        	add    esp,0x8
  ec55d1:	c3                                              	ret
  ec55d2:	d9 05 34 41 fa 00                               	fld    DWORD PTR ds:0xfa4134
  ec55d8:	51                                              	push   ecx
  ec55d9:	8b 0d b0 0a 15 01                               	mov    ecx,DWORD PTR ds:0x1150ab0
  ec55df:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ec55e2:	68 e0 95 02 01                                  	push   0x10295e0
  ec55e7:	51                                              	push   ecx
  ec55e8:	e8 63 59 6c ff                                  	call   0x58af50
  ec55ed:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  ec55f1:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  ec55f7:	d9 e8                                           	fld1
  ec55f9:	f3 0f 59 05 64 e5 fa 00                         	mulss  xmm0,DWORD PTR ds:0xfae564
  ec5601:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  ec5605:	f3 0f 10 0d f0 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f0
  ec560d:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  ec5611:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  ec5617:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec561b:	0f 57 c9                                        	xorps  xmm1,xmm1
  ec561e:	c1 f8 1f                                        	sar    eax,0x1f
  ec5621:	8b d0                                           	mov    edx,eax
  ec5623:	f7 d2                                           	not    edx
  ec5625:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  ec562b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec562f:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  ec5637:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  ec563d:	23 54 24 0c                                     	and    edx,DWORD PTR [esp+0xc]
  ec5641:	23 c8                                           	and    ecx,eax
  ec5643:	0b d1                                           	or     edx,ecx
  ec5645:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  ec5649:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  ec564f:	0f 28 d0                                        	movaps xmm2,xmm0
  ec5652:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  ec5656:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  ec565c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec5660:	c1 f8 1f                                        	sar    eax,0x1f
  ec5663:	8b d0                                           	mov    edx,eax
  ec5665:	f7 d2                                           	not    edx
  ec5667:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  ec566d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ec5671:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  ec5677:	23 54 24 10                                     	and    edx,DWORD PTR [esp+0x10]
  ec567b:	23 c8                                           	and    ecx,eax
  ec567d:	0b d1                                           	or     edx,ecx
  ec567f:	83 c4 08                                        	add    esp,0x8
  ec5682:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  ec5686:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ec568a:	52                                              	push   edx
  ec568b:	68 34 4e 0f 01                                  	push   0x10f4e34
  ec5690:	e8 bb 58 6c ff                                  	call   0x58af50
  ec5695:	d8 4c 24 10                                     	fmul   DWORD PTR [esp+0x10]
  ec5699:	83 c4 0c                                        	add    esp,0xc
  ec569c:	83 c4 08                                        	add    esp,0x8
  ec569f:	c3                                              	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007ce750, 0x007ce8c3); analyst name Geometry_SegmentIntersectsPolygon.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007ce750 <.text+0x3cd750>:
  7ce750:	83 ec 10             	sub    esp,0x10
  7ce753:	53                   	push   ebx
  7ce754:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  7ce758:	55                   	push   ebp
  7ce759:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  7ce75d:	57                   	push   edi
  7ce75e:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  7ce762:	57                   	push   edi
  7ce763:	53                   	push   ebx
  7ce764:	55                   	push   ebp
  7ce765:	e8 76 f2 ff ff       	call   0x7cd9e0
  7ce76a:	83 c4 0c             	add    esp,0xc
  7ce76d:	84 c0                	test   al,al
  7ce76f:	74 09                	je     0x7ce77a
  7ce771:	5f                   	pop    edi
  7ce772:	5d                   	pop    ebp
  7ce773:	b0 01                	mov    al,0x1
  7ce775:	5b                   	pop    ebx
  7ce776:	83 c4 10             	add    esp,0x10
  7ce779:	c3                   	ret
  7ce77a:	56                   	push   esi
  7ce77b:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  7ce77f:	57                   	push   edi
  7ce780:	53                   	push   ebx
  7ce781:	56                   	push   esi
  7ce782:	e8 59 f2 ff ff       	call   0x7cd9e0
  7ce787:	83 c4 0c             	add    esp,0xc
  7ce78a:	84 c0                	test   al,al
  7ce78c:	0f 85 27 01 00 00    	jne    0x7ce8b9
  7ce792:	85 ff                	test   edi,edi
  7ce794:	0f 86 13 01 00 00    	jbe    0x7ce8ad
  7ce79a:	f3 0f 10 56 04       	movss  xmm2,DWORD PTR [esi+0x4]
  7ce79f:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  7ce7a5:	f3 0f 10 5d 00       	movss  xmm3,DWORD PTR [ebp+0x0]
  7ce7aa:	f3 0f 10 3e          	movss  xmm7,DWORD PTR [esi]
  7ce7ae:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  7ce7b4:	f3 0f 5c 55 04       	subss  xmm2,DWORD PTR [ebp+0x4]
  7ce7b9:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  7ce7bf:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  7ce7c5:	f3 0f 5c fb          	subss  xmm7,xmm3
  7ce7c9:	b9 01 00 00 00       	mov    ecx,0x1
  7ce7ce:	8b d3                	mov    edx,ebx
  7ce7d0:	3b cf                	cmp    ecx,edi
  7ce7d2:	8b c1                	mov    eax,ecx
  7ce7d4:	75 02                	jne    0x7ce7d8
  7ce7d6:	33 c0                	xor    eax,eax
  7ce7d8:	f3 0f 10 02          	movss  xmm0,DWORD PTR [edx]
  7ce7dc:	f3 0f 10 74 c3 04    	movss  xmm6,DWORD PTR [ebx+eax*8+0x4]
  7ce7e2:	f3 0f 10 4a 04       	movss  xmm1,DWORD PTR [edx+0x4]
  7ce7e7:	0f 28 e8             	movaps xmm5,xmm0
  7ce7ea:	f3 0f 5c 2c c3       	subss  xmm5,DWORD PTR [ebx+eax*8]
  7ce7ef:	f3 0f 5c ce          	subss  xmm1,xmm6
  7ce7f3:	0f 28 e5             	movaps xmm4,xmm5
  7ce7f6:	f3 0f 59 cf          	mulss  xmm1,xmm7
  7ce7fa:	f3 0f 59 e2          	mulss  xmm4,xmm2
  7ce7fe:	f3 0f 5c cc          	subss  xmm1,xmm4
  7ce802:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  7ce808:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  7ce80c:	d9 e1                	fabs
  7ce80e:	d9 c9                	fxch   st(1)
  7ce810:	db f1                	fcomi  st,st(1)
  7ce812:	dd d9                	fstp   st(1)
  7ce814:	0f 87 80 00 00 00    	ja     0x7ce89a
  7ce81a:	f3 0f 10 15 f8 98 f9 00 	movss  xmm2,DWORD PTR ds:0xf998f8
  7ce822:	f3 0f 10 65 04       	movss  xmm4,DWORD PTR [ebp+0x4]
  7ce827:	f3 0f 5e d1          	divss  xmm2,xmm1
  7ce82b:	f3 0f 10 4a 04       	movss  xmm1,DWORD PTR [edx+0x4]
  7ce830:	f3 0f 5c c3          	subss  xmm0,xmm3
  7ce834:	0f 28 d8             	movaps xmm3,xmm0
  7ce837:	0f 28 c1             	movaps xmm0,xmm1
  7ce83a:	f3 0f 5c ce          	subss  xmm1,xmm6
  7ce83e:	f3 0f 5c c4          	subss  xmm0,xmm4
  7ce842:	0f 28 f0             	movaps xmm6,xmm0
  7ce845:	f3 0f 59 f5          	mulss  xmm6,xmm5
  7ce849:	f3 0f 10 6c 24 14    	movss  xmm5,DWORD PTR [esp+0x14]
  7ce84f:	f3 0f 59 cb          	mulss  xmm1,xmm3
  7ce853:	f3 0f 59 c7          	mulss  xmm0,xmm7
  7ce857:	f3 0f 5c ec          	subss  xmm5,xmm4
  7ce85b:	f3 0f 59 eb          	mulss  xmm5,xmm3
  7ce85f:	f3 0f 5c ce          	subss  xmm1,xmm6
  7ce863:	f3 0f 59 ca          	mulss  xmm1,xmm2
  7ce867:	f3 0f 5c c5          	subss  xmm0,xmm5
  7ce86b:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7ce86f:	0f 57 d2             	xorps  xmm2,xmm2
  7ce872:	0f 2f ca             	comiss xmm1,xmm2
  7ce875:	72 17                	jb     0x7ce88e
  7ce877:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  7ce87f:	0f 2f d9             	comiss xmm3,xmm1
  7ce882:	72 0a                	jb     0x7ce88e
  7ce884:	0f 2f c2             	comiss xmm0,xmm2
  7ce887:	72 05                	jb     0x7ce88e
  7ce889:	0f 2f d8             	comiss xmm3,xmm0
  7ce88c:	73 29                	jae    0x7ce8b7
  7ce88e:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  7ce894:	f3 0f 10 54 24 1c    	movss  xmm2,DWORD PTR [esp+0x1c]
  7ce89a:	83 c1 01             	add    ecx,0x1
  7ce89d:	8d 41 ff             	lea    eax,[ecx-0x1]
  7ce8a0:	83 c2 08             	add    edx,0x8
  7ce8a3:	3b c7                	cmp    eax,edi
  7ce8a5:	0f 82 25 ff ff ff    	jb     0x7ce7d0
  7ce8ab:	dd d8                	fstp   st(0)
  7ce8ad:	5e                   	pop    esi
  7ce8ae:	5f                   	pop    edi
  7ce8af:	5d                   	pop    ebp
  7ce8b0:	32 c0                	xor    al,al
  7ce8b2:	5b                   	pop    ebx
  7ce8b3:	83 c4 10             	add    esp,0x10
  7ce8b6:	c3                   	ret
  7ce8b7:	dd d8                	fstp   st(0)
  7ce8b9:	5e                   	pop    esi
  7ce8ba:	5f                   	pop    edi
  7ce8bb:	5d                   	pop    ebp
  7ce8bc:	b0 01                	mov    al,0x1
  7ce8be:	5b                   	pop    ebx
  7ce8bf:	83 c4 10             	add    esp,0x10
  7ce8c2:	c3                   	ret

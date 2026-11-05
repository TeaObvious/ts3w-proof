# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0067b010, 0x0067b12f); analyst name Geometry_DiscOverlapsPolygon.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0067b010 <.text+0x27a010>:
  67b010:	56                   	push   esi
  67b011:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  67b015:	57                   	push   edi
  67b016:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  67b01a:	57                   	push   edi
  67b01b:	56                   	push   esi
  67b01c:	e8 af c1 ff ff       	call   0x6771d0
  67b021:	84 c0                	test   al,al
  67b023:	0f 85 ff 00 00 00    	jne    0x67b128
  67b029:	8b 0e                	mov    ecx,DWORD PTR [esi]
  67b02b:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  67b02e:	3b ce                	cmp    ecx,esi
  67b030:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  67b036:	f3 0f 59 c0          	mulss  xmm0,xmm0
  67b03a:	8d 56 f8             	lea    edx,[esi-0x8]
  67b03d:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  67b043:	0f 84 e1 00 00 00    	je     0x67b12a
  67b049:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  67b04d:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  67b053:	f3 0f 10 47 04       	movss  xmm0,DWORD PTR [edi+0x4]
  67b058:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  67b05e:	8b ff                	mov    edi,edi
  67b060:	f3 0f 10 31          	movss  xmm6,DWORD PTR [ecx]
  67b064:	f3 0f 10 12          	movss  xmm2,DWORD PTR [edx]
  67b068:	f3 0f 10 79 04       	movss  xmm7,DWORD PTR [ecx+0x4]
  67b06d:	f3 0f 10 6a 04       	movss  xmm5,DWORD PTR [edx+0x4]
  67b072:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  67b078:	f3 0f 10 5c 24 0c    	movss  xmm3,DWORD PTR [esp+0xc]
  67b07e:	0f 28 c6             	movaps xmm0,xmm6
  67b081:	0f 28 e7             	movaps xmm4,xmm7
  67b084:	f3 0f 5c ca          	subss  xmm1,xmm2
  67b088:	f3 0f 5c dd          	subss  xmm3,xmm5
  67b08c:	f3 0f 5c c2          	subss  xmm0,xmm2
  67b090:	f3 0f 5c e5          	subss  xmm4,xmm5
  67b094:	f3 0f 59 dc          	mulss  xmm3,xmm4
  67b098:	f3 0f 59 c8          	mulss  xmm1,xmm0
  67b09c:	f3 0f 58 cb          	addss  xmm1,xmm3
  67b0a0:	0f 57 db             	xorps  xmm3,xmm3
  67b0a3:	0f 2f d9             	comiss xmm3,xmm1
  67b0a6:	72 05                	jb     0x67b0ad
  67b0a8:	0f 28 c5             	movaps xmm0,xmm5
  67b0ab:	eb 38                	jmp    0x67b0e5
  67b0ad:	0f 28 d8             	movaps xmm3,xmm0
  67b0b0:	0f 28 ec             	movaps xmm5,xmm4
  67b0b3:	f3 0f 59 d8          	mulss  xmm3,xmm0
  67b0b7:	f3 0f 59 ec          	mulss  xmm5,xmm4
  67b0bb:	f3 0f 58 dd          	addss  xmm3,xmm5
  67b0bf:	0f 2f cb             	comiss xmm1,xmm3
  67b0c2:	76 08                	jbe    0x67b0cc
  67b0c4:	0f 28 d6             	movaps xmm2,xmm6
  67b0c7:	0f 28 c7             	movaps xmm0,xmm7
  67b0ca:	eb 19                	jmp    0x67b0e5
  67b0cc:	f3 0f 5e cb          	divss  xmm1,xmm3
  67b0d0:	f3 0f 59 c1          	mulss  xmm0,xmm1
  67b0d4:	f3 0f 58 d0          	addss  xmm2,xmm0
  67b0d8:	f3 0f 10 42 04       	movss  xmm0,DWORD PTR [edx+0x4]
  67b0dd:	f3 0f 59 cc          	mulss  xmm1,xmm4
  67b0e1:	f3 0f 58 c1          	addss  xmm0,xmm1
  67b0e5:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  67b0eb:	f3 0f 5c ca          	subss  xmm1,xmm2
  67b0ef:	f3 0f 10 54 24 0c    	movss  xmm2,DWORD PTR [esp+0xc]
  67b0f5:	f3 0f 5c d0          	subss  xmm2,xmm0
  67b0f9:	0f 28 c1             	movaps xmm0,xmm1
  67b0fc:	f3 0f 59 c1          	mulss  xmm0,xmm1
  67b100:	0f 28 ca             	movaps xmm1,xmm2
  67b103:	f3 0f 59 ca          	mulss  xmm1,xmm2
  67b107:	f3 0f 58 c1          	addss  xmm0,xmm1
  67b10b:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  67b111:	0f 2f c8             	comiss xmm1,xmm0
  67b114:	73 12                	jae    0x67b128
  67b116:	8b d1                	mov    edx,ecx
  67b118:	83 c1 08             	add    ecx,0x8
  67b11b:	3b ce                	cmp    ecx,esi
  67b11d:	0f 85 3d ff ff ff    	jne    0x67b060
  67b123:	5f                   	pop    edi
  67b124:	5e                   	pop    esi
  67b125:	c2 0c 00             	ret    0xc
  67b128:	b0 01                	mov    al,0x1
  67b12a:	5f                   	pop    edi
  67b12b:	5e                   	pop    esi
  67b12c:	c2 0c 00             	ret    0xc

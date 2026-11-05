# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00932f90, 0x00933177); analyst name FootprintPolygon_TransformXZAndRebuildBounds.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00932f90 <.text+0x531f90>:
  932f90:	55                   	push   ebp
  932f91:	8b ec                	mov    ebp,esp
  932f93:	83 e4 f0             	and    esp,0xfffffff0
  932f96:	f3 0f 10 05 64 3b 04 01 	movss  xmm0,DWORD PTR ds:0x1043b64
  932f9e:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
  932fa1:	8b 51 34             	mov    edx,DWORD PTR [ecx+0x34]
  932fa4:	83 ec 64             	sub    esp,0x64
  932fa7:	3b c2                	cmp    eax,edx
  932fa9:	f3 0f 11 41 20       	movss  DWORD PTR [ecx+0x20],xmm0
  932fae:	f3 0f 11 41 24       	movss  DWORD PTR [ecx+0x24],xmm0
  932fb3:	f3 0f 10 05 f0 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f0
  932fbb:	53                   	push   ebx
  932fbc:	0f 28 c8             	movaps xmm1,xmm0
  932fbf:	f3 0f 5c 49 20       	subss  xmm1,DWORD PTR [ecx+0x20]
  932fc4:	f3 0f 5c 41 24       	subss  xmm0,DWORD PTR [ecx+0x24]
  932fc9:	56                   	push   esi
  932fca:	57                   	push   edi
  932fcb:	f3 0f 11 49 28       	movss  DWORD PTR [ecx+0x28],xmm1
  932fd0:	f3 0f 11 41 2c       	movss  DWORD PTR [ecx+0x2c],xmm0
  932fd5:	0f 84 93 01 00 00    	je     0x93316e
  932fdb:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  932fde:	0f 57 db             	xorps  xmm3,xmm3
  932fe1:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  932fe5:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  932fea:	0f 28 16             	movaps xmm2,XMMWORD PTR [esi]
  932fed:	0f 28 66 10          	movaps xmm4,XMMWORD PTR [esi+0x10]
  932ff1:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  932ff7:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  932ffd:	f3 0f 11 4c 24 48    	movss  DWORD PTR [esp+0x48],xmm1
  933003:	f3 0f 11 5c 24 44    	movss  DWORD PTR [esp+0x44],xmm3
  933009:	0f 28 4c 24 40       	movaps xmm1,XMMWORD PTR [esp+0x40]
  93300e:	0f 28 c1             	movaps xmm0,xmm1
  933011:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  933015:	0f 59 c2             	mulps  xmm0,xmm2
  933018:	0f 28 56 30          	movaps xmm2,XMMWORD PTR [esi+0x30]
  93301c:	0f 58 c2             	addps  xmm0,xmm2
  93301f:	0f 28 d1             	movaps xmm2,xmm1
  933022:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  933026:	0f 59 d4             	mulps  xmm2,xmm4
  933029:	0f 58 c2             	addps  xmm0,xmm2
  93302c:	0f 28 d1             	movaps xmm2,xmm1
  93302f:	0f c6 d1 aa          	shufps xmm2,xmm1,0xaa
  933033:	0f 28 4e 20          	movaps xmm1,XMMWORD PTR [esi+0x20]
  933037:	0f 59 d1             	mulps  xmm2,xmm1
  93303a:	0f 58 c2             	addps  xmm0,xmm2
  93303d:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  933042:	f3 0f 10 4c 24 68    	movss  xmm1,DWORD PTR [esp+0x68]
  933048:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  93304d:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  933052:	f3 0f 10 44 24 50    	movss  xmm0,DWORD PTR [esp+0x50]
  933058:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  93305c:	f3 0f 10 49 24       	movss  xmm1,DWORD PTR [ecx+0x24]
  933061:	f3 0f 10 50 04       	movss  xmm2,DWORD PTR [eax+0x4]
  933066:	0f 28 e1             	movaps xmm4,xmm1
  933069:	f3 0f 5c e2          	subss  xmm4,xmm2
  93306d:	f3 0f 11 64 24 0c    	movss  DWORD PTR [esp+0xc],xmm4
  933073:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  933077:	c1 fa 1f             	sar    edx,0x1f
  93307a:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  933080:	8b fa                	mov    edi,edx
  933082:	f7 d7                	not    edi
  933084:	23 7c 24 10          	and    edi,DWORD PTR [esp+0x10]
  933088:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  93308e:	f3 0f 10 49 20       	movss  xmm1,DWORD PTR [ecx+0x20]
  933093:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  933097:	23 da                	and    ebx,edx
  933099:	0b fb                	or     edi,ebx
  93309b:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  93309f:	0f 28 d1             	movaps xmm2,xmm1
  9330a2:	f3 0f 5c d0          	subss  xmm2,xmm0
  9330a6:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  9330ac:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  9330b0:	c1 fa 1f             	sar    edx,0x1f
  9330b3:	8b fa                	mov    edi,edx
  9330b5:	f7 d7                	not    edi
  9330b7:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  9330bd:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  9330c1:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  9330c7:	23 7c 24 1c          	and    edi,DWORD PTR [esp+0x1c]
  9330cb:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  9330d1:	23 da                	and    ebx,edx
  9330d3:	0b fb                	or     edi,ebx
  9330d5:	89 79 20             	mov    DWORD PTR [ecx+0x20],edi
  9330d8:	f3 0f 11 41 24       	movss  DWORD PTR [ecx+0x24],xmm0
  9330dd:	f3 0f 10 41 2c       	movss  xmm0,DWORD PTR [ecx+0x2c]
  9330e2:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  9330e7:	0f 28 d0             	movaps xmm2,xmm0
  9330ea:	f3 0f 5c d1          	subss  xmm2,xmm1
  9330ee:	f3 0f 11 54 24 28    	movss  DWORD PTR [esp+0x28],xmm2
  9330f4:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  9330f8:	c1 fa 1f             	sar    edx,0x1f
  9330fb:	f3 0f 11 4c 24 30    	movss  DWORD PTR [esp+0x30],xmm1
  933101:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
  933105:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  933109:	8b fa                	mov    edi,edx
  93310b:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  933111:	f3 0f 10 41 28       	movss  xmm0,DWORD PTR [ecx+0x28]
  933116:	f7 d7                	not    edi
  933118:	23 7c 24 2c          	and    edi,DWORD PTR [esp+0x2c]
  93311c:	23 da                	and    ebx,edx
  93311e:	0b fb                	or     edi,ebx
  933120:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  933124:	0f 28 d0             	movaps xmm2,xmm0
  933127:	f3 0f 5c d1          	subss  xmm2,xmm1
  93312b:	f3 0f 11 54 24 34    	movss  DWORD PTR [esp+0x34],xmm2
  933131:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  933135:	c1 fa 1f             	sar    edx,0x1f
  933138:	8b fa                	mov    edi,edx
  93313a:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  933140:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  933146:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  93314c:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  933150:	f7 d7                	not    edi
  933152:	23 7c 24 38          	and    edi,DWORD PTR [esp+0x38]
  933156:	23 da                	and    ebx,edx
  933158:	0b fb                	or     edi,ebx
  93315a:	83 c0 08             	add    eax,0x8
  93315d:	3b 41 34             	cmp    eax,DWORD PTR [ecx+0x34]
  933160:	89 79 28             	mov    DWORD PTR [ecx+0x28],edi
  933163:	f3 0f 11 41 2c       	movss  DWORD PTR [ecx+0x2c],xmm0
  933168:	0f 85 73 fe ff ff    	jne    0x932fe1
  93316e:	5f                   	pop    edi
  93316f:	5e                   	pop    esi
  933170:	5b                   	pop    ebx
  933171:	8b e5                	mov    esp,ebp
  933173:	5d                   	pop    ebp
  933174:	c2 04 00             	ret    0x4

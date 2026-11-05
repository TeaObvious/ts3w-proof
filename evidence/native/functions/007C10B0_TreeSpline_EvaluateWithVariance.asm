# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c10b0 <.text+0x3c00b0>:
  7c10b0:	51                   	push   ecx
  7c10b1:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  7c10b7:	f3 0f 10 15 18 7c 01 	movss  xmm2,DWORD PTR ds:0x1017c18
  7c10be:	01 
  7c10bf:	0f 28 c8             	movaps xmm1,xmm0
  7c10c2:	f3 0f 59 ca          	mulss  xmm1,xmm2
  7c10c6:	f3 0f 2c c1          	cvttss2si eax,xmm1
  7c10ca:	3d f3 01 00 00       	cmp    eax,0x1f3
  7c10cf:	56                   	push   esi
  7c10d0:	8b f1                	mov    esi,ecx
  7c10d2:	75 0a                	jne    0x7c10de
  7c10d4:	f3 0f 10 86 9c 0f 00 	movss  xmm0,DWORD PTR [esi+0xf9c]
  7c10db:	00 
  7c10dc:	eb 2c                	jmp    0x7c110a
  7c10de:	f3 0f 10 4c c6 04    	movss  xmm1,DWORD PTR [esi+eax*8+0x4]
  7c10e4:	f3 0f 2a d8          	cvtsi2ss xmm3,eax
  7c10e8:	f3 0f 59 1d 14 7c 01 	mulss  xmm3,DWORD PTR ds:0x1017c14
  7c10ef:	01 
  7c10f0:	f3 0f 5c c3          	subss  xmm0,xmm3
  7c10f4:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7c10f8:	f3 0f 10 54 c6 0c    	movss  xmm2,DWORD PTR [esi+eax*8+0xc]
  7c10fe:	f3 0f 5c d1          	subss  xmm2,xmm1
  7c1102:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7c1106:	f3 0f 58 c1          	addss  xmm0,xmm1
  7c110a:	f3 0f 10 8e 8c 14 00 	movss  xmm1,DWORD PTR [esi+0x148c]
  7c1111:	00 
  7c1112:	f3 0f 10 96 90 14 00 	movss  xmm2,DWORD PTR [esi+0x1490]
  7c1119:	00 
  7c111a:	f3 0f 5c d1          	subss  xmm2,xmm1
  7c111e:	b8 01 00 00 00       	mov    eax,0x1
  7c1123:	84 05 7c 98 1d 01    	test   BYTE PTR ds:0x11d987c,al
  7c1129:	f3 0f 59 d0          	mulss  xmm2,xmm0
  7c112d:	f3 0f 58 d1          	addss  xmm2,xmm1
  7c1131:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  7c1137:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  7c113d:	75 1d                	jne    0x7c115c
  7c113f:	09 05 7c 98 1d 01    	or     DWORD PTR ds:0x11d987c,eax
  7c1145:	b9 78 98 1d 01       	mov    ecx,0x11d9878
  7c114a:	e8 91 fa ff ff       	call   0x7c0be0
  7c114f:	68 60 36 f9 00       	push   0xf93660
  7c1154:	e8 28 e2 7b 00       	call   0xf7f381
  7c1159:	83 c4 04             	add    esp,0x4
  7c115c:	f3 0f 10 86 88 14 00 	movss  xmm0,DWORD PTR [esi+0x1488]
  7c1163:	00 
  7c1164:	f3 0f 10 0d f0 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f0
  7c116b:	00 
  7c116c:	83 ec 08             	sub    esp,0x8
  7c116f:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  7c1174:	b9 78 98 1d 01       	mov    ecx,0x11d9878
  7c1179:	f3 0f 5c c8          	subss  xmm1,xmm0
  7c117d:	74 25                	je     0x7c11a4
  7c117f:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  7c1185:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  7c1189:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7c118d:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  7c1192:	e8 79 f9 ff ff       	call   0x7c0b10
  7c1197:	d8 4c 24 04          	fmul   DWORD PTR [esp+0x4]
  7c119b:	5e                   	pop    esi
  7c119c:	d8 44 24 08          	fadd   DWORD PTR [esp+0x8]
  7c11a0:	59                   	pop    ecx
  7c11a1:	c2 08 00             	ret    0x8
  7c11a4:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  7c11aa:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  7c11ae:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  7c11b2:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  7c11b7:	e8 54 f9 ff ff       	call   0x7c0b10
  7c11bc:	d8 44 24 0c          	fadd   DWORD PTR [esp+0xc]
  7c11c0:	5e                   	pop    esi
  7c11c1:	59                   	pop    ecx
  7c11c2:	c2 08 00             	ret    0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b5f0c0, 0x00b5f346); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b5f0c0 <.text+0x75e0c0>:
  b5f0c0:	55                   	push   ebp
  b5f0c1:	8b ec                	mov    ebp,esp
  b5f0c3:	83 e4 f0             	and    esp,0xfffffff0
  b5f0c6:	83 ec 4c             	sub    esp,0x4c
  b5f0c9:	56                   	push   esi
  b5f0ca:	8b f1                	mov    esi,ecx
  b5f0cc:	f3 0f 10 25 b4 b5 f9 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  b5f0d3:	00 
  b5f0d4:	f3 0f 10 55 0c       	movss  xmm2,DWORD PTR [ebp+0xc]
  b5f0d9:	f3 0f 10 05 78 45 fe 	movss  xmm0,DWORD PTR ds:0xfe4578
  b5f0e0:	00 
  b5f0e1:	f3 0f 10 2d 7c 45 fe 	movss  xmm5,DWORD PTR ds:0xfe457c
  b5f0e8:	00 
  b5f0e9:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b5f0ed:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  b5f0f1:	0f 58 d4             	addps  xmm2,xmm4
  b5f0f4:	0f 28 ca             	movaps xmm1,xmm2
  b5f0f7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5f0fb:	0f 28 d8             	movaps xmm3,xmm0
  b5f0fe:	0f 57 f6             	xorps  xmm6,xmm6
  b5f101:	0f c2 ce 01          	cmpltps xmm1,xmm6
  b5f105:	0f 54 d9             	andps  xmm3,xmm1
  b5f108:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  b5f10c:	0f 55 cd             	andnps xmm1,xmm5
  b5f10f:	0f 56 d9             	orps   xmm3,xmm1
  b5f112:	0f 28 ca             	movaps xmm1,xmm2
  b5f115:	0f 5c cb             	subps  xmm1,xmm3
  b5f118:	0f 58 cb             	addps  xmm1,xmm3
  b5f11b:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  b5f122:	00 
  b5f123:	0f c2 d1 01          	cmpltps xmm2,xmm1
  b5f127:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  b5f12b:	0f 54 d3             	andps  xmm2,xmm3
  b5f12e:	0f 5c ca             	subps  xmm1,xmm2
  b5f131:	f3 0f 10 55 10       	movss  xmm2,DWORD PTR [ebp+0x10]
  b5f136:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  b5f13b:	6a 00                	push   0x0
  b5f13d:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b5f141:	0f 58 d4             	addps  xmm2,xmm4
  b5f144:	0f 28 ca             	movaps xmm1,xmm2
  b5f147:	0f c2 ce 01          	cmpltps xmm1,xmm6
  b5f14b:	0f 54 c1             	andps  xmm0,xmm1
  b5f14e:	0f 55 cd             	andnps xmm1,xmm5
  b5f151:	0f 56 c1             	orps   xmm0,xmm1
  b5f154:	6a 01                	push   0x1
  b5f156:	6a 00                	push   0x0
  b5f158:	0f 28 ca             	movaps xmm1,xmm2
  b5f15b:	0f 5c c8             	subps  xmm1,xmm0
  b5f15e:	0f 58 c8             	addps  xmm1,xmm0
  b5f161:	f3 0f 10 05 7c 3f fb 	movss  xmm0,DWORD PTR ds:0xfb3f7c
  b5f168:	00 
  b5f169:	0f c2 d1 01          	cmpltps xmm2,xmm1
  b5f16d:	6a 00                	push   0x0
  b5f16f:	6a 00                	push   0x0
  b5f171:	0f 54 d3             	andps  xmm2,xmm3
  b5f174:	0f 5c ca             	subps  xmm1,xmm2
  b5f177:	0f 29 4c 24 34       	movaps XMMWORD PTR [esp+0x34],xmm1
  b5f17c:	f3 0f 10 4c 24 44    	movss  xmm1,DWORD PTR [esp+0x44]
  b5f182:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  b5f186:	6a 01                	push   0x1
  b5f188:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b5f18c:	f3 0f 2c c1          	cvttss2si eax,xmm1
  b5f190:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  b5f196:	6a 00                	push   0x0
  b5f198:	83 ec 08             	sub    esp,0x8
  b5f19b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b5f19f:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  b5f1a3:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b5f1a7:	f3 0f 2c c9          	cvttss2si ecx,xmm1
  b5f1ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  b5f1ae:	66 89 4c 24 3a       	mov    WORD PTR [esp+0x3a],cx
  b5f1b3:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  b5f1b9:	66 89 44 24 38       	mov    WORD PTR [esp+0x38],ax
  b5f1be:	e8 cd ae 10 00       	call   0xc6a090
  b5f1c3:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  b5f1c7:	f3 0f 10 86 90 00 00 	movss  xmm0,DWORD PTR [esi+0x90]
  b5f1ce:	00 
  b5f1cf:	f3 0f 5c 44 24 0c    	subss  xmm0,DWORD PTR [esp+0xc]
  b5f1d5:	f3 0f 10 0d dc f0 06 	movss  xmm1,DWORD PTR ds:0x106f0dc
  b5f1dc:	01 
  b5f1dd:	f3 0f 59 05 74 99 f9 	mulss  xmm0,DWORD PTR ds:0xf99974
  b5f1e4:	00 
  b5f1e5:	0f 28 d1             	movaps xmm2,xmm1
  b5f1e8:	f3 0f 5c d0          	subss  xmm2,xmm0
  b5f1ec:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  b5f1f2:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  b5f1f6:	c1 f8 1f             	sar    eax,0x1f
  b5f1f9:	8b d0                	mov    edx,eax
  b5f1fb:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  b5f201:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  b5f207:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  b5f20b:	f7 d2                	not    edx
  b5f20d:	23 54 24 0c          	and    edx,DWORD PTR [esp+0xc]
  b5f211:	f3 0f 10 05 d8 f0 06 	movss  xmm0,DWORD PTR ds:0x106f0d8
  b5f218:	01 
  b5f219:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  b5f21d:	23 c8                	and    ecx,eax
  b5f21f:	0b d1                	or     edx,ecx
  b5f221:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  b5f225:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  b5f22b:	0f 28 d0             	movaps xmm2,xmm0
  b5f22e:	f3 0f 5c d1          	subss  xmm2,xmm1
  b5f232:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  b5f238:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b5f23c:	c1 f8 1f             	sar    eax,0x1f
  b5f23f:	8b d0                	mov    edx,eax
  b5f241:	f7 d2                	not    edx
  b5f243:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  b5f249:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  b5f24d:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  b5f253:	23 54 24 10          	and    edx,DWORD PTR [esp+0x10]
  b5f257:	23 c8                	and    ecx,eax
  b5f259:	83 ec 08             	sub    esp,0x8
  b5f25c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b5f260:	0b d1                	or     edx,ecx
  b5f262:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  b5f266:	8b 8e 8c 00 00 00    	mov    ecx,DWORD PTR [esi+0x8c]
  b5f26c:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  b5f270:	d9 1c 24             	fstp   DWORD PTR [esp]
  b5f273:	f3 0f 2c 54 24 18    	cvttss2si edx,DWORD PTR [esp+0x18]
  b5f279:	8d 44 24 48          	lea    eax,[esp+0x48]
  b5f27d:	50                   	push   eax
  b5f27e:	66 89 54 24 24       	mov    WORD PTR [esp+0x24],dx
  b5f283:	66 c7 44 24 26 04 00 	mov    WORD PTR [esp+0x26],0x4
  b5f28a:	e8 41 b7 10 00       	call   0xc6a9d0
  b5f28f:	f3 0f 10 0d f0 47 fe 	movss  xmm1,DWORD PTR ds:0xfe47f0
  b5f296:	00 
  b5f297:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  b5f29d:	f3 0f 10 15 c0 d2 fc 	movss  xmm2,DWORD PTR ds:0xfcd2c0
  b5f2a4:	00 
  b5f2a5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5f2a9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b5f2ad:	0f 59 c1             	mulps  xmm0,xmm1
  b5f2b0:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  b5f2b4:	0f 58 c2             	addps  xmm0,xmm2
  b5f2b7:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b5f2bc:	f3 0f 2c 4c 24 30    	cvttss2si ecx,DWORD PTR [esp+0x30]
  b5f2c2:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  b5f2c8:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5f2cc:	0f 59 c1             	mulps  xmm0,xmm1
  b5f2cf:	0f 58 c2             	addps  xmm0,xmm2
  b5f2d2:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b5f2d7:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  b5f2dd:	f3 0f 2c 54 24 30    	cvttss2si edx,DWORD PTR [esp+0x30]
  b5f2e3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5f2e7:	0f 59 c1             	mulps  xmm0,xmm1
  b5f2ea:	0f 58 c2             	addps  xmm0,xmm2
  b5f2ed:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b5f2f2:	f3 0f 2c 44 24 30    	cvttss2si eax,DWORD PTR [esp+0x30]
  b5f2f8:	88 4c 24 1c          	mov    BYTE PTR [esp+0x1c],cl
  b5f2fc:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  b5f2ff:	88 44 24 1e          	mov    BYTE PTR [esp+0x1e],al
  b5f303:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  b5f306:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  b5f309:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  b5f30d:	73 25                	jae    0xb5f334
  b5f30f:	85 c0                	test   eax,eax
  b5f311:	8d 50 0c             	lea    edx,[eax+0xc]
  b5f314:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  b5f317:	74 26                	je     0xb5f33f
  b5f319:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  b5f31d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  b5f321:	89 08                	mov    DWORD PTR [eax],ecx
  b5f323:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  b5f327:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  b5f32a:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  b5f32d:	5e                   	pop    esi
  b5f32e:	8b e5                	mov    esp,ebp
  b5f330:	5d                   	pop    ebp
  b5f331:	c2 0c 00             	ret    0xc
  b5f334:	8d 54 24 14          	lea    edx,[esp+0x14]
  b5f338:	52                   	push   edx
  b5f339:	50                   	push   eax
  b5f33a:	e8 61 0d 21 00       	call   0xd700a0
  b5f33f:	5e                   	pop    esi
  b5f340:	8b e5                	mov    esp,ebp
  b5f342:	5d                   	pop    ebp
  b5f343:	c2 0c 00             	ret    0xc

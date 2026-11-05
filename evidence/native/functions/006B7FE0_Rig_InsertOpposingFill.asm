# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b7fe0 <.text+0x2b6fe0>:
  6b7fe0:	55                   	push   ebp
  6b7fe1:	8b ec                	mov    ebp,esp
  6b7fe3:	83 e4 f0             	and    esp,0xfffffff0
  6b7fe6:	83 ec 3c             	sub    esp,0x3c
  6b7fe9:	0f 57 c0             	xorps  xmm0,xmm0
  6b7fec:	a1 30 1e 1d 01       	mov    eax,ds:0x11d1e30
  6b7ff1:	a8 01                	test   al,0x1
  6b7ff3:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  6b7ffa:	00 
  6b7ffb:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6b8001:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6b8007:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6b800d:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6b8013:	0f 28 44 24 0c       	movaps xmm0,XMMWORD PTR [esp+0xc]
  6b8018:	56                   	push   esi
  6b8019:	8b f1                	mov    esi,ecx
  6b801b:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  6b8020:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  6b8025:	75 2c                	jne    0x6b8053
  6b8027:	83 c8 01             	or     eax,0x1
  6b802a:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  6b8030:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  6b8036:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  6b803c:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  6b8042:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6b8047:	a3 30 1e 1d 01       	mov    ds:0x11d1e30,eax
  6b804c:	0f 29 05 20 1e 1d 01 	movaps XMMWORD PTR ds:0x11d1e20,xmm0
  6b8053:	a8 02                	test   al,0x2
  6b8055:	75 34                	jne    0x6b808b
  6b8057:	f3 0f 10 05 1c e5 f9 	movss  xmm0,DWORD PTR ds:0xf9e51c
  6b805e:	00 
  6b805f:	83 c8 02             	or     eax,0x2
  6b8062:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6b8068:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  6b806e:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6b8074:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6b807a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  6b807f:	a3 30 1e 1d 01       	mov    ds:0x11d1e30,eax
  6b8084:	0f 29 05 10 1e 1d 01 	movaps XMMWORD PTR ds:0x11d1e10,xmm0
  6b808b:	b9 c0 1b 1d 01       	mov    ecx,0x11d1bc0
  6b8090:	e8 0b d1 12 00       	call   0x7e51a0
  6b8095:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6b8099:	b9 c8 1b 1d 01       	mov    ecx,0x11d1bc8
  6b809e:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6b80a4:	e8 f7 d0 12 00       	call   0x7e51a0
  6b80a9:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6b80ad:	b9 d0 1b 1d 01       	mov    ecx,0x11d1bd0
  6b80b2:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  6b80b8:	e8 e3 d0 12 00       	call   0x7e51a0
  6b80bd:	83 be d4 01 00 00 00 	cmp    DWORD PTR [esi+0x1d4],0x0
  6b80c4:	f3 0f 10 20          	movss  xmm4,DWORD PTR [eax]
  6b80c8:	75 06                	jne    0x6b80d0
  6b80ca:	f3 0f 10 64 24 04    	movss  xmm4,DWORD PTR [esp+0x4]
  6b80d0:	0f 28 1d 20 1e 1d 01 	movaps xmm3,XMMWORD PTR ds:0x11d1e20
  6b80d7:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  6b80dc:	8d 46 10             	lea    eax,[esi+0x10]
  6b80df:	b9 04 00 00 00       	mov    ecx,0x4
  6b80e4:	0f 28 40 40          	movaps xmm0,XMMWORD PTR [eax+0x40]
  6b80e8:	0f 59 c3             	mulps  xmm0,xmm3
  6b80eb:	0f 28 c8             	movaps xmm1,xmm0
  6b80ee:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  6b80f2:	0f 28 e8             	movaps xmm5,xmm0
  6b80f5:	0f c6 e8 01          	shufps xmm5,xmm0,0x1
  6b80f9:	0f 58 cd             	addps  xmm1,xmm5
  6b80fc:	0f 58 c8             	addps  xmm1,xmm0
  6b80ff:	0f 28 c1             	movaps xmm0,xmm1
  6b8102:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  6b8106:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6b8109:	0f 59 c1             	mulps  xmm0,xmm1
  6b810c:	83 c0 10             	add    eax,0x10
  6b810f:	83 e9 01             	sub    ecx,0x1
  6b8112:	0f 58 c2             	addps  xmm0,xmm2
  6b8115:	0f 28 d0             	movaps xmm2,xmm0
  6b8118:	75 ca                	jne    0x6b80e4
  6b811a:	8d 86 90 00 00 00    	lea    eax,[esi+0x90]
  6b8120:	b9 04 00 00 00       	mov    ecx,0x4
  6b8125:	0f 28 40 40          	movaps xmm0,XMMWORD PTR [eax+0x40]
  6b8129:	0f 59 c3             	mulps  xmm0,xmm3
  6b812c:	0f 28 c8             	movaps xmm1,xmm0
  6b812f:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  6b8133:	0f 28 e8             	movaps xmm5,xmm0
  6b8136:	0f c6 e8 01          	shufps xmm5,xmm0,0x1
  6b813a:	0f 58 cd             	addps  xmm1,xmm5
  6b813d:	0f 58 c8             	addps  xmm1,xmm0
  6b8140:	0f 28 c1             	movaps xmm0,xmm1
  6b8143:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  6b8147:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6b814a:	0f 59 c1             	mulps  xmm0,xmm1
  6b814d:	83 c0 10             	add    eax,0x10
  6b8150:	83 e9 01             	sub    ecx,0x1
  6b8153:	0f 58 c2             	addps  xmm0,xmm2
  6b8156:	0f 28 d0             	movaps xmm2,xmm0
  6b8159:	75 ca                	jne    0x6b8125
  6b815b:	0f 28 ca             	movaps xmm1,xmm2
  6b815e:	0f 59 ca             	mulps  xmm1,xmm2
  6b8161:	0f 28 c1             	movaps xmm0,xmm1
  6b8164:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  6b8168:	0f 28 d9             	movaps xmm3,xmm1
  6b816b:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  6b816f:	0f 58 c3             	addps  xmm0,xmm3
  6b8172:	0f 58 c1             	addps  xmm0,xmm1
  6b8175:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b8179:	0f 51 c8             	sqrtps xmm1,xmm0
  6b817c:	f3 0f 10 c4          	movss  xmm0,xmm4
  6b8180:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b8184:	0f 59 c8             	mulps  xmm1,xmm0
  6b8187:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  6b818c:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  6b8192:	f3 0f 10 0d f0 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f0
  6b8199:	00 
  6b819a:	f3 0f 5c c8          	subss  xmm1,xmm0
  6b819e:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  6b81a4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  6b81a8:	0f 57 c9             	xorps  xmm1,xmm1
  6b81ab:	c1 f8 1f             	sar    eax,0x1f
  6b81ae:	8b c8                	mov    ecx,eax
  6b81b0:	f7 d1                	not    ecx
  6b81b2:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  6b81b8:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  6b81bc:	23 d0                	and    edx,eax
  6b81be:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  6b81c4:	23 4c 24 04          	and    ecx,DWORD PTR [esp+0x4]
  6b81c8:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  6b81ce:	0b ca                	or     ecx,edx
  6b81d0:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  6b81d4:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  6b81da:	0f 28 d9             	movaps xmm3,xmm1
  6b81dd:	f3 0f 5c d8          	subss  xmm3,xmm0
  6b81e1:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  6b81e7:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  6b81eb:	c1 f8 1f             	sar    eax,0x1f
  6b81ee:	8b c8                	mov    ecx,eax
  6b81f0:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  6b81f6:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  6b81fa:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6b8200:	f7 d1                	not    ecx
  6b8202:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  6b8206:	23 d0                	and    edx,eax
  6b8208:	0b ca                	or     ecx,edx
  6b820a:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  6b820e:	f3 0f 10 74 24 0c    	movss  xmm6,DWORD PTR [esp+0xc]
  6b8214:	0f 2f 35 ec e6 06 01 	comiss xmm6,DWORD PTR ds:0x106e6ec
  6b821b:	0f 86 1e 01 00 00    	jbe    0x6b833f
  6b8221:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  6b8226:	f3 0f 10 0d b4 35 fb 	movss  xmm1,DWORD PTR ds:0xfb35b4
  6b822d:	00 
  6b822e:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  6b8233:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  6b8239:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  6b823e:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6b8244:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  6b824b:	00 
  6b824c:	0f 28 6c 24 10       	movaps xmm5,XMMWORD PTR [esp+0x10]
  6b8251:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b8255:	0f 59 c5             	mulps  xmm0,xmm5
  6b8258:	0f 5f c5             	maxps  xmm0,xmm5
  6b825b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6b825f:	0f c2 c1 02          	cmpleps xmm0,xmm1
  6b8263:	0f 50 c0             	movmskps eax,xmm0
  6b8266:	83 e0 07             	and    eax,0x7
  6b8269:	3c 07                	cmp    al,0x7
  6b826b:	0f 84 ce 00 00 00    	je     0x6b833f
  6b8271:	0f 28 cd             	movaps xmm1,xmm5
  6b8274:	0f 59 cd             	mulps  xmm1,xmm5
  6b8277:	0f 28 c1             	movaps xmm0,xmm1
  6b827a:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  6b827e:	0f 28 d1             	movaps xmm2,xmm1
  6b8281:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  6b8285:	0f 58 c2             	addps  xmm0,xmm2
  6b8288:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  6b828f:	00 
  6b8290:	0f 58 c1             	addps  xmm0,xmm1
  6b8293:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b8297:	0f 28 e0             	movaps xmm4,xmm0
  6b829a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6b82a1:	00 
  6b82a2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b82a6:	0f 52 dc             	rsqrtps xmm3,xmm4
  6b82a9:	0f 28 c8             	movaps xmm1,xmm0
  6b82ac:	0f 28 fb             	movaps xmm7,xmm3
  6b82af:	0f 59 fb             	mulps  xmm7,xmm3
  6b82b2:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  6b82b6:	0f 59 fc             	mulps  xmm7,xmm4
  6b82b9:	0f 5c cf             	subps  xmm1,xmm7
  6b82bc:	0f 28 fa             	movaps xmm7,xmm2
  6b82bf:	0f 59 fb             	mulps  xmm7,xmm3
  6b82c2:	0f 59 cf             	mulps  xmm1,xmm7
  6b82c5:	0f 58 cb             	addps  xmm1,xmm3
  6b82c8:	0f 28 d9             	movaps xmm3,xmm1
  6b82cb:	0f 59 d1             	mulps  xmm2,xmm1
  6b82ce:	0f 59 d9             	mulps  xmm3,xmm1
  6b82d1:	0f 59 dc             	mulps  xmm3,xmm4
  6b82d4:	0f 5c c3             	subps  xmm0,xmm3
  6b82d7:	0f 59 c2             	mulps  xmm0,xmm2
  6b82da:	0f 28 15 10 1e 1d 01 	movaps xmm2,XMMWORD PTR ds:0x11d1e10
  6b82e1:	0f 58 c1             	addps  xmm0,xmm1
  6b82e4:	0f 59 c5             	mulps  xmm0,xmm5
  6b82e7:	0f 57 c9             	xorps  xmm1,xmm1
  6b82ea:	0f 5c c8             	subps  xmm1,xmm0
  6b82ed:	f3 0f 10 c6          	movss  xmm0,xmm6
  6b82f1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b82f5:	0f 59 c2             	mulps  xmm0,xmm2
  6b82f8:	0f 28 96 80 00 00 00 	movaps xmm2,XMMWORD PTR [esi+0x80]
  6b82ff:	8d 86 80 00 00 00    	lea    eax,[esi+0x80]
  6b8305:	0f 29 96 00 01 00 00 	movaps XMMWORD PTR [esi+0x100],xmm2
  6b830c:	0f 28 56 40          	movaps xmm2,XMMWORD PTR [esi+0x40]
  6b8310:	0f 29 96 c0 00 00 00 	movaps XMMWORD PTR [esi+0xc0],xmm2
  6b8317:	b9 02 00 00 00       	mov    ecx,0x2
  6b831c:	8d 64 24 00          	lea    esp,[esp+0x0]
  6b8320:	0f 28 50 f0          	movaps xmm2,XMMWORD PTR [eax-0x10]
  6b8324:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  6b8327:	0f 28 50 b0          	movaps xmm2,XMMWORD PTR [eax-0x50]
  6b832b:	0f 29 50 c0          	movaps XMMWORD PTR [eax-0x40],xmm2
  6b832f:	83 e8 10             	sub    eax,0x10
  6b8332:	83 e9 01             	sub    ecx,0x1
  6b8335:	75 e9                	jne    0x6b8320
  6b8337:	0f 29 46 60          	movaps XMMWORD PTR [esi+0x60],xmm0
  6b833b:	0f 29 4e 20          	movaps XMMWORD PTR [esi+0x20],xmm1
  6b833f:	5e                   	pop    esi
  6b8340:	8b e5                	mov    esp,ebp
  6b8342:	5d                   	pop    ebp
  6b8343:	c3                   	ret

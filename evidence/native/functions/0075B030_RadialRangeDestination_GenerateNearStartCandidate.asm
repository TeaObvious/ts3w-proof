# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075b030, 0x0075b693); analyst name RadialRangeDestination_GenerateNearStartCandidate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075b030 <.text+0x35a030>:
  75b030:	55                   	push   ebp
  75b031:	8b ec                	mov    ebp,esp
  75b033:	83 e4 f0             	and    esp,0xfffffff0
  75b036:	81 ec 74 01 00 00    	sub    esp,0x174
  75b03c:	53                   	push   ebx
  75b03d:	56                   	push   esi
  75b03e:	57                   	push   edi
  75b03f:	6a 00                	push   0x0
  75b041:	6a 00                	push   0x0
  75b043:	8b f9                	mov    edi,ecx
  75b045:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  75b048:	68 00 00 00 01       	push   0x1000000
  75b04d:	e8 8e 14 0c 00       	call   0x81c4e0
  75b052:	84 c0                	test   al,al
  75b054:	0f 85 2e 06 00 00    	jne    0x75b688
  75b05a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  75b05d:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  75b060:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  75b063:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  75b066:	8b 5e 24             	mov    ebx,DWORD PTR [esi+0x24]
  75b069:	3b 5d 1c             	cmp    ebx,DWORD PTR [ebp+0x1c]
  75b06c:	0f 28 d1             	movaps xmm2,xmm1
  75b06f:	0f 5c d0             	subps  xmm2,xmm0
  75b072:	0f 29 54 24 20       	movaps XMMWORD PTR [esp+0x20],xmm2
  75b077:	0f 57 d2             	xorps  xmm2,xmm2
  75b07a:	0f 29 84 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  75b082:	0f 5c c1             	subps  xmm0,xmm1
  75b085:	0f 29 84 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  75b08d:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  75b093:	0f 28 6c 24 20       	movaps xmm5,XMMWORD PTR [esp+0x20]
  75b098:	f3 0f 11 94 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm2
  75b0a1:	0f 28 bc 24 b0 00 00 00 	movaps xmm7,XMMWORD PTR [esp+0xb0]
  75b0a9:	0f 29 8c 24 00 01 00 00 	movaps XMMWORD PTR [esp+0x100],xmm1
  75b0b1:	0f 28 e5             	movaps xmm4,xmm5
  75b0b4:	0f 28 f7             	movaps xmm6,xmm7
  75b0b7:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  75b0bc:	0f 85 c6 05 00 00    	jne    0x75b688
  75b0c2:	0f 28 cd             	movaps xmm1,xmm5
  75b0c5:	0f 59 cd             	mulps  xmm1,xmm5
  75b0c8:	0f 28 c1             	movaps xmm0,xmm1
  75b0cb:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  75b0cf:	0f 28 d9             	movaps xmm3,xmm1
  75b0d2:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  75b0d6:	0f 58 c3             	addps  xmm0,xmm3
  75b0d9:	0f 58 c1             	addps  xmm0,xmm1
  75b0dc:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75b0e0:	0f 51 c0             	sqrtps xmm0,xmm0
  75b0e3:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75b0e8:	f3 0f 10 47 60       	movss  xmm0,DWORD PTR [edi+0x60]
  75b0ed:	f3 0f 5c 05 b4 35 fb 00 	subss  xmm0,DWORD PTR ds:0xfb35b4
  75b0f5:	0f 2f c2             	comiss xmm0,xmm2
  75b0f8:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  75b0fe:	f3 0f 11 54 24 3c    	movss  DWORD PTR [esp+0x3c],xmm2
  75b104:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  75b108:	77 04                	ja     0x75b10e
  75b10a:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  75b10e:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  75b114:	0f 2f 00             	comiss xmm0,DWORD PTR [eax]
  75b117:	0f 82 6b 05 00 00    	jb     0x75b688
  75b11d:	f3 0f 10 47 64       	movss  xmm0,DWORD PTR [edi+0x64]
  75b122:	f3 0f 10 5f 60       	movss  xmm3,DWORD PTR [edi+0x60]
  75b127:	0f 2f d8             	comiss xmm3,xmm0
  75b12a:	76 03                	jbe    0x75b12f
  75b12c:	0f 28 c3             	movaps xmm0,xmm3
  75b12f:	f3 0f 58 05 b4 35 fb 00 	addss  xmm0,DWORD PTR ds:0xfb35b4
  75b137:	f3 0f 10 5c 24 40    	movss  xmm3,DWORD PTR [esp+0x40]
  75b13d:	0f 2f c3             	comiss xmm0,xmm3
  75b140:	0f 82 42 05 00 00    	jb     0x75b688
  75b146:	0f 2f da             	comiss xmm3,xmm2
  75b149:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75b14c:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  75b14f:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75b154:	f3 0f 11 54 24 44    	movss  DWORD PTR [esp+0x44],xmm2
  75b15a:	0f 86 ce 03 00 00    	jbe    0x75b52e
  75b160:	f3 0f 10 1d b4 b5 f9 00 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  75b168:	0f 28 c1             	movaps xmm0,xmm1
  75b16b:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  75b16f:	0f 28 d1             	movaps xmm2,xmm1
  75b172:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  75b176:	0f 58 c2             	addps  xmm0,xmm2
  75b179:	0f 58 c1             	addps  xmm0,xmm1
  75b17c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75b180:	0f 28 e0             	movaps xmm4,xmm0
  75b183:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75b18b:	0f 52 d4             	rsqrtps xmm2,xmm4
  75b18e:	0f 28 f2             	movaps xmm6,xmm2
  75b191:	0f 59 f2             	mulps  xmm6,xmm2
  75b194:	0f 59 f4             	mulps  xmm6,xmm4
  75b197:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75b19b:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  75b19f:	0f 28 c8             	movaps xmm1,xmm0
  75b1a2:	0f 5c ce             	subps  xmm1,xmm6
  75b1a5:	0f 28 f2             	movaps xmm6,xmm2
  75b1a8:	0f 59 f3             	mulps  xmm6,xmm3
  75b1ab:	0f 59 ce             	mulps  xmm1,xmm6
  75b1ae:	0f 58 ca             	addps  xmm1,xmm2
  75b1b1:	0f 28 d1             	movaps xmm2,xmm1
  75b1b4:	0f 59 d1             	mulps  xmm2,xmm1
  75b1b7:	0f 59 d4             	mulps  xmm2,xmm4
  75b1ba:	0f 28 e0             	movaps xmm4,xmm0
  75b1bd:	0f 5c e2             	subps  xmm4,xmm2
  75b1c0:	0f 28 d1             	movaps xmm2,xmm1
  75b1c3:	0f 59 d3             	mulps  xmm2,xmm3
  75b1c6:	0f 59 e2             	mulps  xmm4,xmm2
  75b1c9:	0f 58 e1             	addps  xmm4,xmm1
  75b1cc:	0f 59 e5             	mulps  xmm4,xmm5
  75b1cf:	0f 28 d7             	movaps xmm2,xmm7
  75b1d2:	0f 59 d7             	mulps  xmm2,xmm7
  75b1d5:	0f 28 ca             	movaps xmm1,xmm2
  75b1d8:	0f c6 ca 02          	shufps xmm1,xmm2,0x2
  75b1dc:	0f 28 ea             	movaps xmm5,xmm2
  75b1df:	0f c6 ea 01          	shufps xmm5,xmm2,0x1
  75b1e3:	0f 58 cd             	addps  xmm1,xmm5
  75b1e6:	0f 58 ca             	addps  xmm1,xmm2
  75b1e9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b1ed:	0f 52 e9             	rsqrtps xmm5,xmm1
  75b1f0:	0f 28 f5             	movaps xmm6,xmm5
  75b1f3:	0f 59 f5             	mulps  xmm6,xmm5
  75b1f6:	0f 59 f1             	mulps  xmm6,xmm1
  75b1f9:	0f 28 d0             	movaps xmm2,xmm0
  75b1fc:	0f 5c d6             	subps  xmm2,xmm6
  75b1ff:	0f 28 f5             	movaps xmm6,xmm5
  75b202:	0f 59 f3             	mulps  xmm6,xmm3
  75b205:	0f 59 d6             	mulps  xmm2,xmm6
  75b208:	0f 58 d5             	addps  xmm2,xmm5
  75b20b:	0f 28 ea             	movaps xmm5,xmm2
  75b20e:	0f 59 ea             	mulps  xmm5,xmm2
  75b211:	0f 59 e9             	mulps  xmm5,xmm1
  75b214:	0f 28 ca             	movaps xmm1,xmm2
  75b217:	0f 28 f0             	movaps xmm6,xmm0
  75b21a:	0f 5c f5             	subps  xmm6,xmm5
  75b21d:	0f 59 cb             	mulps  xmm1,xmm3
  75b220:	0f 59 f1             	mulps  xmm6,xmm1
  75b223:	f3 0f 10 4f 5c       	movss  xmm1,DWORD PTR [edi+0x5c]
  75b228:	0f 58 f2             	addps  xmm6,xmm2
  75b22b:	f3 0f 10 15 a8 51 00 01 	movss  xmm2,DWORD PTR ds:0x10051a8
  75b233:	0f 2f d1             	comiss xmm2,xmm1
  75b236:	0f 59 f7             	mulps  xmm6,xmm7
  75b239:	0f 29 a4 24 30 01 00 00 	movaps XMMWORD PTR [esp+0x130],xmm4
  75b241:	0f 29 b4 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm6
  75b249:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  75b24e:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  75b254:	0f 86 d1 02 00 00    	jbe    0x75b52b
  75b25a:	0f 28 6c 24 40       	movaps xmm5,XMMWORD PTR [esp+0x40]
  75b25f:	0f 28 d5             	movaps xmm2,xmm5
  75b262:	0f 59 d5             	mulps  xmm2,xmm5
  75b265:	0f 28 ca             	movaps xmm1,xmm2
  75b268:	0f c6 ca 02          	shufps xmm1,xmm2,0x2
  75b26c:	0f 28 fa             	movaps xmm7,xmm2
  75b26f:	0f c6 fa 01          	shufps xmm7,xmm2,0x1
  75b273:	0f 58 cf             	addps  xmm1,xmm7
  75b276:	0f 58 ca             	addps  xmm1,xmm2
  75b279:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b27d:	f3 0f 11 8c 24 f0 00 00 00 	movss  DWORD PTR [esp+0xf0],xmm1
  75b286:	f3 0f 10 0d cc 4c 0f 01 	movss  xmm1,DWORD PTR ds:0x10f4ccc
  75b28e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b292:	f3 0f 11 8c 24 c0 00 00 00 	movss  DWORD PTR [esp+0xc0],xmm1
  75b29b:	f3 0f 10 8c 24 f0 00 00 00 	movss  xmm1,DWORD PTR [esp+0xf0]
  75b2a4:	0f 2f 8c 24 c0 00 00 00 	comiss xmm1,DWORD PTR [esp+0xc0]
  75b2ac:	0f 86 79 02 00 00    	jbe    0x75b52b
  75b2b2:	0f 28 ca             	movaps xmm1,xmm2
  75b2b5:	0f c6 ca 02          	shufps xmm1,xmm2,0x2
  75b2b9:	0f 28 e2             	movaps xmm4,xmm2
  75b2bc:	0f c6 e2 01          	shufps xmm4,xmm2,0x1
  75b2c0:	0f 58 cc             	addps  xmm1,xmm4
  75b2c3:	0f 58 ca             	addps  xmm1,xmm2
  75b2c6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b2ca:	0f 52 e1             	rsqrtps xmm4,xmm1
  75b2cd:	0f 28 fc             	movaps xmm7,xmm4
  75b2d0:	0f 59 fc             	mulps  xmm7,xmm4
  75b2d3:	0f 59 f9             	mulps  xmm7,xmm1
  75b2d6:	0f 28 d0             	movaps xmm2,xmm0
  75b2d9:	0f 5c d7             	subps  xmm2,xmm7
  75b2dc:	0f 28 fc             	movaps xmm7,xmm4
  75b2df:	0f 59 fb             	mulps  xmm7,xmm3
  75b2e2:	0f 59 d7             	mulps  xmm2,xmm7
  75b2e5:	0f 58 d4             	addps  xmm2,xmm4
  75b2e8:	0f 28 e2             	movaps xmm4,xmm2
  75b2eb:	0f 59 e2             	mulps  xmm4,xmm2
  75b2ee:	0f 59 e1             	mulps  xmm4,xmm1
  75b2f1:	0f 28 c8             	movaps xmm1,xmm0
  75b2f4:	0f 5c cc             	subps  xmm1,xmm4
  75b2f7:	0f 28 e2             	movaps xmm4,xmm2
  75b2fa:	0f 59 e3             	mulps  xmm4,xmm3
  75b2fd:	0f 59 cc             	mulps  xmm1,xmm4
  75b300:	0f 58 ca             	addps  xmm1,xmm2
  75b303:	0f 59 cd             	mulps  xmm1,xmm5
  75b306:	0f 28 e6             	movaps xmm4,xmm6
  75b309:	0f 59 e6             	mulps  xmm4,xmm6
  75b30c:	0f 28 d4             	movaps xmm2,xmm4
  75b30f:	0f c6 d4 02          	shufps xmm2,xmm4,0x2
  75b313:	0f 28 ec             	movaps xmm5,xmm4
  75b316:	0f c6 ec 01          	shufps xmm5,xmm4,0x1
  75b31a:	0f 58 d5             	addps  xmm2,xmm5
  75b31d:	0f 58 d4             	addps  xmm2,xmm4
  75b320:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  75b324:	0f 52 e2             	rsqrtps xmm4,xmm2
  75b327:	0f 28 fc             	movaps xmm7,xmm4
  75b32a:	0f 59 fc             	mulps  xmm7,xmm4
  75b32d:	0f 59 fa             	mulps  xmm7,xmm2
  75b330:	0f 28 d4             	movaps xmm2,xmm4
  75b333:	0f 59 d3             	mulps  xmm2,xmm3
  75b336:	0f 28 e8             	movaps xmm5,xmm0
  75b339:	0f 5c ef             	subps  xmm5,xmm7
  75b33c:	0f 59 ea             	mulps  xmm5,xmm2
  75b33f:	0f 58 ec             	addps  xmm5,xmm4
  75b342:	0f 59 ee             	mulps  xmm5,xmm6
  75b345:	0f 28 e1             	movaps xmm4,xmm1
  75b348:	0f 59 e1             	mulps  xmm4,xmm1
  75b34b:	0f 28 d4             	movaps xmm2,xmm4
  75b34e:	0f c6 d4 02          	shufps xmm2,xmm4,0x2
  75b352:	0f 28 f4             	movaps xmm6,xmm4
  75b355:	0f c6 f4 01          	shufps xmm6,xmm4,0x1
  75b359:	0f 58 d6             	addps  xmm2,xmm6
  75b35c:	0f 58 d4             	addps  xmm2,xmm4
  75b35f:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  75b363:	0f 52 e2             	rsqrtps xmm4,xmm2
  75b366:	0f 28 f4             	movaps xmm6,xmm4
  75b369:	0f 59 f4             	mulps  xmm6,xmm4
  75b36c:	0f 59 f2             	mulps  xmm6,xmm2
  75b36f:	0f 28 d0             	movaps xmm2,xmm0
  75b372:	0f 5c d6             	subps  xmm2,xmm6
  75b375:	0f 28 f4             	movaps xmm6,xmm4
  75b378:	0f 59 f3             	mulps  xmm6,xmm3
  75b37b:	0f 59 d6             	mulps  xmm2,xmm6
  75b37e:	0f 58 d4             	addps  xmm2,xmm4
  75b381:	0f 59 d1             	mulps  xmm2,xmm1
  75b384:	0f 28 ca             	movaps xmm1,xmm2
  75b387:	0f 59 cd             	mulps  xmm1,xmm5
  75b38a:	0f 29 94 24 20 01 00 00 	movaps XMMWORD PTR [esp+0x120],xmm2
  75b392:	0f 28 d1             	movaps xmm2,xmm1
  75b395:	0f c6 d1 02          	shufps xmm2,xmm1,0x2
  75b399:	0f 28 d9             	movaps xmm3,xmm1
  75b39c:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  75b3a0:	0f 58 d3             	addps  xmm2,xmm3
  75b3a3:	0f 58 d1             	addps  xmm2,xmm1
  75b3a6:	f3 0f 10 0d 18 b2 fa 00 	movss  xmm1,DWORD PTR ds:0xfab218
  75b3ae:	0f 28 da             	movaps xmm3,xmm2
  75b3b1:	0f 29 ac 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm5
  75b3b9:	0f c6 da 00          	shufps xmm3,xmm2,0x0
  75b3bd:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b3c1:	0f 5f d9             	maxps  xmm3,xmm1
  75b3c4:	0f 5d d8             	minps  xmm3,xmm0
  75b3c7:	0f 29 5c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm3
  75b3cc:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  75b3d0:	e8 e9 43 82 00       	call   0xf7f7be
  75b3d5:	d9 5c 24 38          	fstp   DWORD PTR [esp+0x38]
  75b3d9:	0f 28 84 24 20 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x120]
  75b3e1:	0f 28 8c 24 10 01 00 00 	movaps xmm1,XMMWORD PTR [esp+0x110]
  75b3e9:	f3 0f 10 54 24 38    	movss  xmm2,DWORD PTR [esp+0x38]
  75b3ef:	0f 28 e1             	movaps xmm4,xmm1
  75b3f2:	0f c6 e1 12          	shufps xmm4,xmm1,0x12
  75b3f6:	0f 28 d8             	movaps xmm3,xmm0
  75b3f9:	0f c6 d8 09          	shufps xmm3,xmm0,0x9
  75b3fd:	0f c6 c9 09          	shufps xmm1,xmm1,0x9
  75b401:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  75b405:	0f 59 c1             	mulps  xmm0,xmm1
  75b408:	0f 57 c9             	xorps  xmm1,xmm1
  75b40b:	0f 59 dc             	mulps  xmm3,xmm4
  75b40e:	0f 5c c3             	subps  xmm0,xmm3
  75b411:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  75b419:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  75b41f:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  75b425:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  75b42b:	f3 0f 11 5c 24 24    	movss  DWORD PTR [esp+0x24],xmm3
  75b431:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  75b436:	0f 59 c1             	mulps  xmm0,xmm1
  75b439:	0f 28 c8             	movaps xmm1,xmm0
  75b43c:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  75b440:	0f 28 d8             	movaps xmm3,xmm0
  75b443:	0f c6 d8 01          	shufps xmm3,xmm0,0x1
  75b447:	0f 58 cb             	addps  xmm1,xmm3
  75b44a:	0f 58 c8             	addps  xmm1,xmm0
  75b44d:	0f 57 c0             	xorps  xmm0,xmm0
  75b450:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b454:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  75b45a:	f3 0f 10 44 24 50    	movss  xmm0,DWORD PTR [esp+0x50]
  75b460:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  75b466:	0f 2f 44 24 60       	comiss xmm0,DWORD PTR [esp+0x60]
  75b46b:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  75b46f:	76 11                	jbe    0x75b482
  75b471:	f3 0f 10 05 a8 51 00 01 	movss  xmm0,DWORD PTR ds:0x10051a8
  75b479:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75b47d:	0f 5c c2             	subps  xmm0,xmm2
  75b480:	eb 03                	jmp    0x75b485
  75b482:	0f 28 c2             	movaps xmm0,xmm2
  75b485:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  75b48a:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  75b48e:	d8 0d 20 24 fc 00    	fmul   DWORD PTR ds:0xfc2420
  75b494:	83 ec 08             	sub    esp,0x8
  75b497:	d9 54 24 24          	fst    DWORD PTR [esp+0x24]
  75b49b:	dd 1c 24             	fstp   QWORD PTR [esp]
  75b49e:	e8 2d 43 82 00       	call   0xf7f7d0
  75b4a3:	d8 6c 24 24          	fsubr  DWORD PTR [esp+0x24]
  75b4a7:	83 c4 08             	add    esp,0x8
  75b4aa:	d9 54 24 1c          	fst    DWORD PTR [esp+0x1c]
  75b4ae:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  75b4b4:	d9 05 b4 b5 f9 00    	fld    DWORD PTR ds:0xf9b5b4
  75b4ba:	d9 c9                	fxch   st(1)
  75b4bc:	df f1                	fcomip st,st(1)
  75b4be:	dd d8                	fstp   st(0)
  75b4c0:	76 08                	jbe    0x75b4ca
  75b4c2:	f3 0f 5c 05 f8 98 f9 00 	subss  xmm0,DWORD PTR ds:0xf998f8
  75b4ca:	f3 0f 10 0d a8 51 00 01 	movss  xmm1,DWORD PTR ds:0x10051a8
  75b4d2:	f3 0f 59 c1          	mulss  xmm0,xmm1
  75b4d6:	0f 2f 05 a4 51 00 01 	comiss xmm0,DWORD PTR ds:0x10051a4
  75b4dd:	76 04                	jbe    0x75b4e3
  75b4df:	f3 0f 5c c1          	subss  xmm0,xmm1
  75b4e3:	f3 0f 10 15 c0 56 00 01 	movss  xmm2,DWORD PTR ds:0x10056c0
  75b4eb:	0f 2f d0             	comiss xmm2,xmm0
  75b4ee:	76 04                	jbe    0x75b4f4
  75b4f0:	f3 0f 58 c1          	addss  xmm0,xmm1
  75b4f4:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  75b4fa:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  75b500:	81 64 24 1c ff ff ff 7f 	and    DWORD PTR [esp+0x1c],0x7fffffff
  75b508:	f3 0f 59 05 b4 b5 f9 00 	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  75b510:	0f 2f 44 24 1c       	comiss xmm0,DWORD PTR [esp+0x1c]
  75b515:	0f 82 6d 01 00 00    	jb     0x75b688
  75b51b:	0f 28 a4 24 30 01 00 00 	movaps xmm4,XMMWORD PTR [esp+0x130]
  75b523:	0f 28 b4 24 d0 00 00 00 	movaps xmm6,XMMWORD PTR [esp+0xd0]
  75b52b:	0f 57 d2             	xorps  xmm2,xmm2
  75b52e:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75b533:	0f 28 84 24 e0 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xe0]
  75b53b:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  75b53e:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  75b541:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  75b544:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  75b549:	f3 0f 10 47 2c       	movss  xmm0,DWORD PTR [edi+0x2c]
  75b54e:	f3 0f 59 05 f4 6b 0f 01 	mulss  xmm0,DWORD PTR ds:0x10f6bf4
  75b556:	f3 0f 11 84 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm0
  75b55f:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  75b565:	f3 0f 11 54 24 28    	movss  DWORD PTR [esp+0x28],xmm2
  75b56b:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  75b571:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  75b577:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  75b57c:	89 9c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ebx
  75b583:	89 94 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],edx
  75b58a:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
  75b591:	89 8c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ecx
  75b598:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  75b5a0:	74 1f                	je     0x75b5c1
  75b5a2:	8b 47 58             	mov    eax,DWORD PTR [edi+0x58]
  75b5a5:	83 e8 01             	sub    eax,0x1
  75b5a8:	74 0f                	je     0x75b5b9
  75b5aa:	83 e8 01             	sub    eax,0x1
  75b5ad:	75 12                	jne    0x75b5c1
  75b5af:	0f 29 b4 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm6
  75b5b7:	eb 08                	jmp    0x75b5c1
  75b5b9:	0f 29 a4 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm4
  75b5c1:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75b5c4:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  75b5c7:	0f 28 8c 24 00 01 00 00 	movaps xmm1,XMMWORD PTR [esp+0x100]
  75b5cf:	33 c0                	xor    eax,eax
  75b5d1:	89 84 24 68 01 00 00 	mov    DWORD PTR [esp+0x168],eax
  75b5d8:	89 84 24 6c 01 00 00 	mov    DWORD PTR [esp+0x16c],eax
  75b5df:	89 84 24 70 01 00 00 	mov    DWORD PTR [esp+0x170],eax
  75b5e6:	8d 44 24 30          	lea    eax,[esp+0x30]
  75b5ea:	50                   	push   eax
  75b5eb:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75b5ee:	51                   	push   ecx
  75b5ef:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  75b5f2:	89 94 24 6c 01 00 00 	mov    DWORD PTR [esp+0x16c],edx
  75b5f9:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  75b5fc:	52                   	push   edx
  75b5fd:	50                   	push   eax
  75b5fe:	51                   	push   ecx
  75b5ff:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  75b602:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  75b609:	52                   	push   edx
  75b60a:	8d 84 24 58 01 00 00 	lea    eax,[esp+0x158]
  75b611:	50                   	push   eax
  75b612:	0f 29 84 24 6c 01 00 00 	movaps XMMWORD PTR [esp+0x16c],xmm0
  75b61a:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75b622:	51                   	push   ecx
  75b623:	8b cf                	mov    ecx,edi
  75b625:	0f 29 8c 24 60 01 00 00 	movaps XMMWORD PTR [esp+0x160],xmm1
  75b62d:	f3 0f 11 84 24 80 01 00 00 	movss  DWORD PTR [esp+0x180],xmm0
  75b636:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  75b63c:	e8 6f e5 ff ff       	call   0x759bb0
  75b641:	84 c0                	test   al,al
  75b643:	75 30                	jne    0x75b675
  75b645:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  75b64b:	f3 0f 59 84 24 90 00 00 00 	mulss  xmm0,DWORD PTR [esp+0x90]
  75b654:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  75b657:	8d 54 24 70          	lea    edx,[esp+0x70]
  75b65b:	52                   	push   edx
  75b65c:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  75b665:	e8 16 93 ef ff       	call   0x654980
  75b66a:	b0 01                	mov    al,0x1
  75b66c:	5f                   	pop    edi
  75b66d:	5e                   	pop    esi
  75b66e:	5b                   	pop    ebx
  75b66f:	8b e5                	mov    esp,ebp
  75b671:	5d                   	pop    ebp
  75b672:	c2 2c 00             	ret    0x2c
  75b675:	8b 4d 30             	mov    ecx,DWORD PTR [ebp+0x30]
  75b678:	6a 01                	push   0x1
  75b67a:	8d 44 24 74          	lea    eax,[esp+0x74]
  75b67e:	50                   	push   eax
  75b67f:	51                   	push   ecx
  75b680:	e8 db 11 ff ff       	call   0x74c860
  75b685:	83 c4 0c             	add    esp,0xc
  75b688:	5f                   	pop    edi
  75b689:	5e                   	pop    esi
  75b68a:	32 c0                	xor    al,al
  75b68c:	5b                   	pop    ebx
  75b68d:	8b e5                	mov    esp,ebp
  75b68f:	5d                   	pop    ebp
  75b690:	c2 2c 00             	ret    0x2c

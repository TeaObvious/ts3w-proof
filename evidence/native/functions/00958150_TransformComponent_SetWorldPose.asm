# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958150, 0x0095832f); analyst name TransformComponent_SetWorldPose.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958150 <.text+0x557150>:
  958150:	55                   	push   ebp
  958151:	8b ec                	mov    ebp,esp
  958153:	83 e4 f0             	and    esp,0xfffffff0
  958156:	83 ec 4c             	sub    esp,0x4c
  958159:	56                   	push   esi
  95815a:	8b f1                	mov    esi,ecx
  95815c:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
  958160:	75 10                	jne    0x958172
  958162:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  958165:	50                   	push   eax
  958166:	e8 35 ff ff ff       	call   0x9580a0
  95816b:	5e                   	pop    esi
  95816c:	8b e5                	mov    esp,ebp
  95816e:	5d                   	pop    ebp
  95816f:	c2 04 00             	ret    0x4
  958172:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  958176:	51                   	push   ecx
  958177:	8b ce                	mov    ecx,esi
  958179:	e8 12 ee ff ff       	call   0x956f90
  95817e:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  958181:	f3 0f 10 15 88 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd88
  958189:	0f 28 c3             	movaps xmm0,xmm3
  95818c:	0f 59 c3             	mulps  xmm0,xmm3
  95818f:	0f 28 c8             	movaps xmm1,xmm0
  958192:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  958196:	0f 58 c8             	addps  xmm1,xmm0
  958199:	0f 28 c1             	movaps xmm0,xmm1
  95819c:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  9581a0:	0f 58 c1             	addps  xmm0,xmm1
  9581a3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9581a7:	0f 53 e0             	rcpps  xmm4,xmm0
  9581aa:	0f 28 ec             	movaps xmm5,xmm4
  9581ad:	0f 59 e8             	mulps  xmm5,xmm0
  9581b0:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9581b4:	0f 28 ca             	movaps xmm1,xmm2
  9581b7:	0f 5c cd             	subps  xmm1,xmm5
  9581ba:	0f 59 cc             	mulps  xmm1,xmm4
  9581bd:	0f 28 e1             	movaps xmm4,xmm1
  9581c0:	0f 59 e0             	mulps  xmm4,xmm0
  9581c3:	0f 28 c2             	movaps xmm0,xmm2
  9581c6:	0f 5c c4             	subps  xmm0,xmm4
  9581c9:	0f 59 c1             	mulps  xmm0,xmm1
  9581cc:	0f 57 c9             	xorps  xmm1,xmm1
  9581cf:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  9581d5:	c7 44 24 0c 00 00 00 80 	mov    DWORD PTR [esp+0xc],0x80000000
  9581dd:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  9581e3:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  9581e9:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  9581ef:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  9581f5:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  9581fa:	0f 57 cb             	xorps  xmm1,xmm3
  9581fd:	0f 28 58 10          	movaps xmm3,XMMWORD PTR [eax+0x10]
  958201:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  958204:	0f 59 c1             	mulps  xmm0,xmm1
  958207:	0f 28 cb             	movaps xmm1,xmm3
  95820a:	0f c6 cb 12          	shufps xmm1,xmm3,0x12
  95820e:	0f 28 fb             	movaps xmm7,xmm3
  958211:	0f c6 fb 09          	shufps xmm7,xmm3,0x9
  958215:	0f 28 e0             	movaps xmm4,xmm0
  958218:	0f c6 e0 12          	shufps xmm4,xmm0,0x12
  95821c:	0f 59 fc             	mulps  xmm7,xmm4
  95821f:	0f 28 e8             	movaps xmm5,xmm0
  958222:	0f c6 e8 09          	shufps xmm5,xmm0,0x9
  958226:	0f 59 cd             	mulps  xmm1,xmm5
  958229:	0f 5c cf             	subps  xmm1,xmm7
  95822c:	0f 28 f0             	movaps xmm6,xmm0
  95822f:	0f c6 f0 ff          	shufps xmm6,xmm0,0xff
  958233:	0f 29 74 24 10       	movaps XMMWORD PTR [esp+0x10],xmm6
  958238:	0f 59 f3             	mulps  xmm6,xmm3
  95823b:	0f 58 ce             	addps  xmm1,xmm6
  95823e:	0f 28 f1             	movaps xmm6,xmm1
  958241:	0f c6 f1 12          	shufps xmm6,xmm1,0x12
  958245:	0f 28 f9             	movaps xmm7,xmm1
  958248:	0f c6 f9 09          	shufps xmm7,xmm1,0x9
  95824c:	0f 59 f5             	mulps  xmm6,xmm5
  95824f:	0f 57 c9             	xorps  xmm1,xmm1
  958252:	0f 59 fc             	mulps  xmm7,xmm4
  958255:	0f 5c f7             	subps  xmm6,xmm7
  958258:	0f 59 f2             	mulps  xmm6,xmm2
  95825b:	0f 58 f3             	addps  xmm6,xmm3
  95825e:	0f 5c ce             	subps  xmm1,xmm6
  958261:	0f 28 70 10          	movaps xmm6,XMMWORD PTR [eax+0x10]
  958265:	0f 29 4c 24 40       	movaps XMMWORD PTR [esp+0x40],xmm1
  95826a:	0f 28 ce             	movaps xmm1,xmm6
  95826d:	0f c6 ce 12          	shufps xmm1,xmm6,0x12
  958271:	0f 28 de             	movaps xmm3,xmm6
  958274:	0f c6 de 09          	shufps xmm3,xmm6,0x9
  958278:	0f 59 dc             	mulps  xmm3,xmm4
  95827b:	0f 59 cd             	mulps  xmm1,xmm5
  95827e:	0f 5c cb             	subps  xmm1,xmm3
  958281:	0f 28 de             	movaps xmm3,xmm6
  958284:	0f 59 5c 24 10       	mulps  xmm3,XMMWORD PTR [esp+0x10]
  958289:	0f 58 cb             	addps  xmm1,xmm3
  95828c:	0f 28 d9             	movaps xmm3,xmm1
  95828f:	0f c6 d9 12          	shufps xmm3,xmm1,0x12
  958293:	0f 59 dd             	mulps  xmm3,xmm5
  958296:	0f 28 f9             	movaps xmm7,xmm1
  958299:	0f c6 f9 09          	shufps xmm7,xmm1,0x9
  95829d:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  9582a0:	0f 59 fc             	mulps  xmm7,xmm4
  9582a3:	0f 5c df             	subps  xmm3,xmm7
  9582a6:	0f 59 da             	mulps  xmm3,xmm2
  9582a9:	0f 28 d1             	movaps xmm2,xmm1
  9582ac:	0f c6 d1 12          	shufps xmm2,xmm1,0x12
  9582b0:	0f 59 d5             	mulps  xmm2,xmm5
  9582b3:	0f 28 e9             	movaps xmm5,xmm1
  9582b6:	0f c6 e9 09          	shufps xmm5,xmm1,0x9
  9582ba:	0f 59 ec             	mulps  xmm5,xmm4
  9582bd:	0f 28 64 24 10       	movaps xmm4,XMMWORD PTR [esp+0x10]
  9582c2:	0f 5c d5             	subps  xmm2,xmm5
  9582c5:	0f 58 de             	addps  xmm3,xmm6
  9582c8:	0f 58 5c 24 40       	addps  xmm3,XMMWORD PTR [esp+0x40]
  9582cd:	0f 28 e9             	movaps xmm5,xmm1
  9582d0:	0f 59 ec             	mulps  xmm5,xmm4
  9582d3:	0f 58 d5             	addps  xmm2,xmm5
  9582d6:	0f 28 f1             	movaps xmm6,xmm1
  9582d9:	0f c6 f1 ff          	shufps xmm6,xmm1,0xff
  9582dd:	0f 59 c8             	mulps  xmm1,xmm0
  9582e0:	0f 28 ee             	movaps xmm5,xmm6
  9582e3:	0f 59 e8             	mulps  xmm5,xmm0
  9582e6:	0f 58 d5             	addps  xmm2,xmm5
  9582e9:	0f 28 c1             	movaps xmm0,xmm1
  9582ec:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  9582f0:	0f 28 e9             	movaps xmm5,xmm1
  9582f3:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  9582f7:	0f 58 c5             	addps  xmm0,xmm5
  9582fa:	0f 58 c1             	addps  xmm0,xmm1
  9582fd:	0f 28 ca             	movaps xmm1,xmm2
  958300:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  958304:	0f 59 f4             	mulps  xmm6,xmm4
  958307:	0f 5c f0             	subps  xmm6,xmm0
  95830a:	8d 54 24 10          	lea    edx,[esp+0x10]
  95830e:	0f c6 ce 0a          	shufps xmm1,xmm6,0xa
  958312:	0f c6 d1 84          	shufps xmm2,xmm1,0x84
  958316:	52                   	push   edx
  958317:	8b ce                	mov    ecx,esi
  958319:	0f 29 54 24 14       	movaps XMMWORD PTR [esp+0x14],xmm2
  95831e:	0f 29 5c 24 24       	movaps XMMWORD PTR [esp+0x24],xmm3
  958323:	e8 78 fd ff ff       	call   0x9580a0
  958328:	5e                   	pop    esi
  958329:	8b e5                	mov    esp,ebp
  95832b:	5d                   	pop    ebp
  95832c:	c2 04 00             	ret    0x4

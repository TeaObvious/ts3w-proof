# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00970240, 0x009704a2).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00970240 <.text+0x56f240>:
  970240:	51                   	push   ecx
  970241:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  970248:	00
  970249:	f3 0f 10 54 24 14    	movss  xmm2,DWORD PTR [esp+0x14]
  97024f:	53                   	push   ebx
  970250:	b3 02                	mov    bl,0x2
  970252:	56                   	push   esi
  970253:	8a c3                	mov    al,bl
  970255:	eb 09                	jmp    0x970260
  970257:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  97025e:	8b ff                	mov    edi,edi
  970260:	0f b6 d0             	movzx  edx,al
  970263:	c1 e2 04             	shl    edx,0x4
  970266:	f3 0f 10 84 0a fc 08 	movss  xmm0,DWORD PTR [edx+ecx*1+0x8fc]
  97026d:	00 00
  97026f:	f3 0f 10 9c 0a ec 08 	movss  xmm3,DWORD PTR [edx+ecx*1+0x8ec]
  970276:	00 00
  970278:	03 d1                	add    edx,ecx
  97027a:	0f 2f c2             	comiss xmm0,xmm2
  97027d:	73 08                	jae    0x970287
  97027f:	04 01                	add    al,0x1
  970281:	3c 05                	cmp    al,0x5
  970283:	72 db                	jb     0x970260
  970285:	eb 13                	jmp    0x97029a
  970287:	2c 02                	sub    al,0x2
  970289:	f3 0f 5c d3          	subss  xmm2,xmm3
  97028d:	f3 0f 5c c3          	subss  xmm0,xmm3
  970291:	f3 0f 5e d0          	divss  xmm2,xmm0
  970295:	8a d8                	mov    bl,al
  970297:	0f 28 ca             	movaps xmm1,xmm2
  97029a:	f3 0f 10 35 88 fd 03 	movss  xmm6,DWORD PTR ds:0x103fd88
  9702a1:	01
  9702a2:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  9702a6:	0f b6 d3             	movzx  edx,bl
  9702a9:	0f 28 e1             	movaps xmm4,xmm1
  9702ac:	f3 0f 59 e1          	mulss  xmm4,xmm1
  9702b0:	0f 28 ec             	movaps xmm5,xmm4
  9702b3:	f3 0f 11 6c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm5
  9702b9:	0f 28 fd             	movaps xmm7,xmm5
  9702bc:	f3 0f 59 3d 88 fd 03 	mulss  xmm7,DWORD PTR ds:0x103fd88
  9702c3:	01
  9702c4:	f3 0f 59 2d 7c 3f fb 	mulss  xmm5,DWORD PTR ds:0xfb3f7c
  9702cb:	00
  9702cc:	0f 28 d4             	movaps xmm2,xmm4
  9702cf:	f3 0f 59 d1          	mulss  xmm2,xmm1
  9702d3:	f3 0f 5c fa          	subss  xmm7,xmm2
  9702d7:	f3 0f 5c f9          	subss  xmm7,xmm1
  9702db:	0f 28 c2             	movaps xmm0,xmm2
  9702de:	f3 0f 59 05 9c 2b fa 	mulss  xmm0,DWORD PTR ds:0xfa2b9c
  9702e5:	00
  9702e6:	f3 0f 5c e8          	subss  xmm5,xmm0
  9702ea:	f3 0f 58 e9          	addss  xmm5,xmm1
  9702ee:	8b c2                	mov    eax,edx
  9702f0:	c1 e0 04             	shl    eax,0x4
  9702f3:	f3 0f 59 bc 08 08 09 	mulss  xmm7,DWORD PTR [eax+ecx*1+0x908]
  9702fa:	00 00
  9702fc:	f3 0f 59 ac 08 28 09 	mulss  xmm5,DWORD PTR [eax+ecx*1+0x928]
  970303:	00 00
  970305:	f3 0f 58 fd          	addss  xmm7,xmm5
  970309:	03 c1                	add    eax,ecx
  97030b:	f3 0f 11 54 24 08    	movss  DWORD PTR [esp+0x8],xmm2
  970311:	f3 0f 5c d4          	subss  xmm2,xmm4
  970315:	0f 28 ec             	movaps xmm5,xmm4
  970318:	f3 0f 59 2d c8 2b 06 	mulss  xmm5,DWORD PTR ds:0x1062bc8
  97031f:	01
  970320:	f3 0f 5c c5          	subss  xmm0,xmm5
  970324:	0f 28 d9             	movaps xmm3,xmm1
  970327:	f3 0f 59 1d cc 4c 0f 	mulss  xmm3,DWORD PTR ds:0x10f4ccc
  97032e:	01
  97032f:	f3 0f 58 c3          	addss  xmm0,xmm3
  970333:	f3 0f 58 c6          	addss  xmm0,xmm6
  970337:	f3 0f 59 80 18 09 00 	mulss  xmm0,DWORD PTR [eax+0x918]
  97033e:	00
  97033f:	f3 0f 58 f8          	addss  xmm7,xmm0
  970343:	f3 0f 58 d3          	addss  xmm2,xmm3
  970347:	f3 0f 59 90 38 09 00 	mulss  xmm2,DWORD PTR [eax+0x938]
  97034e:	00
  97034f:	f3 0f 58 fa          	addss  xmm7,xmm2
  970353:	f3 0f 59 3d b4 b5 f9 	mulss  xmm7,DWORD PTR ds:0xf9b5b4
  97035a:	00
  97035b:	f3 0f 10 54 24 08    	movss  xmm2,DWORD PTR [esp+0x8]
  970361:	f3 0f 11 3e          	movss  DWORD PTR [esi],xmm7
  970365:	0f 28 c2             	movaps xmm0,xmm2
  970368:	f3 0f 59 05 9c 2b fa 	mulss  xmm0,DWORD PTR ds:0xfa2b9c
  97036f:	00
  970370:	0f 28 ec             	movaps xmm5,xmm4
  970373:	0f 28 fd             	movaps xmm7,xmm5
  970376:	f3 0f 59 fe          	mulss  xmm7,xmm6
  97037a:	f3 0f 5c fa          	subss  xmm7,xmm2
  97037e:	f3 0f 11 6c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm5
  970384:	f3 0f 59 2d 7c 3f fb 	mulss  xmm5,DWORD PTR ds:0xfb3f7c
  97038b:	00
  97038c:	f3 0f 5c e8          	subss  xmm5,xmm0
  970390:	f3 0f 5c f9          	subss  xmm7,xmm1
  970394:	f3 0f 59 b8 04 09 00 	mulss  xmm7,DWORD PTR [eax+0x904]
  97039b:	00
  97039c:	f3 0f 58 e9          	addss  xmm5,xmm1
  9703a0:	f3 0f 59 a8 24 09 00 	mulss  xmm5,DWORD PTR [eax+0x924]
  9703a7:	00
  9703a8:	f3 0f 58 fd          	addss  xmm7,xmm5
  9703ac:	0f 28 ec             	movaps xmm5,xmm4
  9703af:	f3 0f 59 2d c8 2b 06 	mulss  xmm5,DWORD PTR ds:0x1062bc8
  9703b6:	01
  9703b7:	f3 0f 5c c5          	subss  xmm0,xmm5
  9703bb:	0f 28 ee             	movaps xmm5,xmm6
  9703be:	f3 0f 58 c3          	addss  xmm0,xmm3
  9703c2:	f3 0f 58 c5          	addss  xmm0,xmm5
  9703c6:	f3 0f 59 80 14 09 00 	mulss  xmm0,DWORD PTR [eax+0x914]
  9703cd:	00
  9703ce:	f3 0f 58 f8          	addss  xmm7,xmm0
  9703d2:	f3 0f 5c d4          	subss  xmm2,xmm4
  9703d6:	f3 0f 58 d3          	addss  xmm2,xmm3
  9703da:	f3 0f 59 90 34 09 00 	mulss  xmm2,DWORD PTR [eax+0x934]
  9703e1:	00
  9703e2:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  9703e6:	f3 0f 58 fa          	addss  xmm7,xmm2
  9703ea:	f3 0f 59 3d b4 b5 f9 	mulss  xmm7,DWORD PTR ds:0xf9b5b4
  9703f1:	00
  9703f2:	f3 0f 10 54 24 08    	movss  xmm2,DWORD PTR [esp+0x8]
  9703f8:	f3 0f 11 38          	movss  DWORD PTR [eax],xmm7
  9703fc:	0f 28 f4             	movaps xmm6,xmm4
  9703ff:	f3 0f 59 f5          	mulss  xmm6,xmm5
  970403:	8d 82 90 00 00 00    	lea    eax,[edx+0x90]
  970409:	f3 0f 5c f2          	subss  xmm6,xmm2
  97040d:	c1 e0 04             	shl    eax,0x4
  970410:	0f 28 c2             	movaps xmm0,xmm2
  970413:	f3 0f 59 05 9c 2b fa 	mulss  xmm0,DWORD PTR ds:0xfa2b9c
  97041a:	00
  97041b:	f3 0f 5c f1          	subss  xmm6,xmm1
  97041f:	f3 0f 59 34 08       	mulss  xmm6,DWORD PTR [eax+ecx*1]
  970424:	0f 28 fc             	movaps xmm7,xmm4
  970427:	f3 0f 59 3d 7c 3f fb 	mulss  xmm7,DWORD PTR ds:0xfb3f7c
  97042e:	00
  97042f:	f3 0f 5c f8          	subss  xmm7,xmm0
  970433:	8d 82 92 00 00 00    	lea    eax,[edx+0x92]
  970439:	c1 e0 04             	shl    eax,0x4
  97043c:	f3 0f 58 f9          	addss  xmm7,xmm1
  970440:	f3 0f 59 3c 08       	mulss  xmm7,DWORD PTR [eax+ecx*1]
  970445:	8d 82 91 00 00 00    	lea    eax,[edx+0x91]
  97044b:	0f 28 cc             	movaps xmm1,xmm4
  97044e:	f3 0f 59 0d c8 2b 06 	mulss  xmm1,DWORD PTR ds:0x1062bc8
  970455:	01
  970456:	f3 0f 5c c1          	subss  xmm0,xmm1
  97045a:	f3 0f 58 c3          	addss  xmm0,xmm3
  97045e:	c1 e0 04             	shl    eax,0x4
  970461:	81 c2 93 00 00 00    	add    edx,0x93
  970467:	f3 0f 58 f7          	addss  xmm6,xmm7
  97046b:	f3 0f 5c d4          	subss  xmm2,xmm4
  97046f:	f3 0f 58 c5          	addss  xmm0,xmm5
  970473:	f3 0f 59 04 08       	mulss  xmm0,DWORD PTR [eax+ecx*1]
  970478:	c1 e2 04             	shl    edx,0x4
  97047b:	f3 0f 58 f0          	addss  xmm6,xmm0
  97047f:	f3 0f 58 d3          	addss  xmm2,xmm3
  970483:	f3 0f 59 14 0a       	mulss  xmm2,DWORD PTR [edx+ecx*1]
  970488:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  97048c:	f3 0f 58 f2          	addss  xmm6,xmm2
  970490:	f3 0f 59 35 b4 b5 f9 	mulss  xmm6,DWORD PTR ds:0xf9b5b4
  970497:	00
  970498:	5e                   	pop    esi
  970499:	f3 0f 11 31          	movss  DWORD PTR [ecx],xmm6
  97049d:	5b                   	pop    ebx
  97049e:	59                   	pop    ecx
  97049f:	c2 10 00             	ret    0x10

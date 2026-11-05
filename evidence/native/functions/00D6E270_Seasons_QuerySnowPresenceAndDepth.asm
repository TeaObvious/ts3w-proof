# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d6e270, 0x00d6e445).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_QuerySnowPresenceAndDepth (analyst-assigned)
Entry: 0x00d6e270
Ghidra body envelope: 0x00d6e270..0x00d6e444 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d6e270 <.text+0x96d270>:
  d6e270:	55                   	push   ebp
  d6e271:	8b ec                	mov    ebp,esp
  d6e273:	83 e4 f0             	and    esp,0xfffffff0
  d6e276:	83 ec 34             	sub    esp,0x34
  d6e279:	53                   	push   ebx
  d6e27a:	56                   	push   esi
  d6e27b:	57                   	push   edi
  d6e27c:	8b f9                	mov    edi,ecx
  d6e27e:	8d 87 80 09 00 00    	lea    eax,[edi+0x980]
  d6e284:	50                   	push   eax
  d6e285:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  d6e289:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  d6e28f:	80 bf e8 09 00 00 00 	cmp    BYTE PTR [edi+0x9e8],0x0
  d6e296:	8d 9f c8 08 00 00    	lea    ebx,[edi+0x8c8]
  d6e29c:	75 06                	jne    0xd6e2a4
  d6e29e:	8d 9f 24 09 00 00    	lea    ebx,[edi+0x924]
  d6e2a4:	f3 0f 10 43 18       	movss  xmm0,DWORD PTR [ebx+0x18]
  d6e2a9:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  d6e2b0:	00
  d6e2b1:	f3 0f 10 15 84 b2 08 	movss  xmm2,DWORD PTR ds:0x108b284
  d6e2b8:	01
  d6e2b9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6e2bd:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  d6e2c3:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  d6e2c8:	f3 0f 10 c0          	movss  xmm0,xmm0
  d6e2cc:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d6e2d0:	0f 59 c8             	mulps  xmm1,xmm0
  d6e2d3:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d6e2d7:	0f 5f c8             	maxps  xmm1,xmm0
  d6e2da:	0f c2 ca 02          	cmpleps xmm1,xmm2
  d6e2de:	0f 50 c1             	movmskps eax,xmm1
  d6e2e1:	83 f8 0f             	cmp    eax,0xf
  d6e2e4:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  d6e2e9:	75 12                	jne    0xd6e2fd
  d6e2eb:	f3 0f 10 43 08       	movss  xmm0,DWORD PTR [ebx+0x8]
  d6e2f0:	0f 2f 05 8c 2d 19 01 	comiss xmm0,DWORD PTR ds:0x1192d8c
  d6e2f7:	77 04                	ja     0xd6e2fd
  d6e2f9:	33 c0                	xor    eax,eax
  d6e2fb:	eb 05                	jmp    0xd6e302
  d6e2fd:	b8 01 00 00 00       	mov    eax,0x1
  d6e302:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  d6e305:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  d6e308:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
  d6e30c:	51                   	push   ecx
  d6e30d:	52                   	push   edx
  d6e30e:	88 06                	mov    BYTE PTR [esi],al
  d6e310:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  d6e315:	e8 86 4b d9 ff       	call   0xb02ea0
  d6e31a:	83 c4 08             	add    esp,0x8
  d6e31d:	84 c0                	test   al,al
  d6e31f:	75 22                	jne    0xd6e343
  d6e321:	38 06                	cmp    BYTE PTR [esi],al
  d6e323:	74 08                	je     0xd6e32d
  d6e325:	38 44 24 0f          	cmp    BYTE PTR [esp+0xf],al
  d6e329:	75 02                	jne    0xd6e32d
  d6e32b:	88 06                	mov    BYTE PTR [esi],al
  d6e32d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  d6e331:	50                   	push   eax
  d6e332:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d6e338:	d9 ee                	fldz
  d6e33a:	5f                   	pop    edi
  d6e33b:	5e                   	pop    esi
  d6e33c:	5b                   	pop    ebx
  d6e33d:	8b e5                	mov    esp,ebp
  d6e33f:	5d                   	pop    ebp
  d6e340:	c2 08 00             	ret    0x8
  d6e343:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  d6e34a:	00
  d6e34b:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  d6e351:	f3 0f 59 05 88 fd 03 	mulss  xmm0,DWORD PTR ds:0x103fd88
  d6e358:	01
  d6e359:	f3 0f 10 15 f0 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f0
  d6e360:	00
  d6e361:	f3 0f 5c c1          	subss  xmm0,xmm1
  d6e365:	f3 0f 5c d0          	subss  xmm2,xmm0
  d6e369:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d6e36f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d6e373:	0f 57 d2             	xorps  xmm2,xmm2
  d6e376:	c1 f8 1f             	sar    eax,0x1f
  d6e379:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  d6e37f:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  d6e383:	8b c8                	mov    ecx,eax
  d6e385:	f7 d1                	not    ecx
  d6e387:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d6e38d:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  d6e391:	23 d0                	and    edx,eax
  d6e393:	0b ca                	or     ecx,edx
  d6e395:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6e399:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  d6e39f:	0f 28 d1             	movaps xmm2,xmm1
  d6e3a2:	f3 0f 5c d0          	subss  xmm2,xmm0
  d6e3a6:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  d6e3ac:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6e3b0:	c1 f8 1f             	sar    eax,0x1f
  d6e3b3:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d6e3b9:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6e3bd:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  d6e3c3:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  d6e3c8:	8b c8                	mov    ecx,eax
  d6e3ca:	f7 d1                	not    ecx
  d6e3cc:	23 4c 24 1c          	and    ecx,DWORD PTR [esp+0x1c]
  d6e3d0:	23 d0                	and    edx,eax
  d6e3d2:	0b ca                	or     ecx,edx
  d6e3d4:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6e3d8:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  d6e3de:	f3 0f 59 0d 68 b2 08 	mulss  xmm1,DWORD PTR ds:0x108b268
  d6e3e5:	01
  d6e3e6:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  d6e3ec:	f3 0f 10 c9          	movss  xmm1,xmm1
  d6e3f0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6e3f4:	0f 59 c1             	mulps  xmm0,xmm1
  d6e3f7:	0f 5f c1             	maxps  xmm0,xmm1
  d6e3fa:	0f c2 44 24 30 02    	cmpleps xmm0,XMMWORD PTR [esp+0x30]
  d6e400:	0f 50 c0             	movmskps eax,xmm0
  d6e403:	83 f8 0f             	cmp    eax,0xf
  d6e406:	75 25                	jne    0xd6e42d
  d6e408:	80 3e 00             	cmp    BYTE PTR [esi],0x0
  d6e40b:	74 20                	je     0xd6e42d
  d6e40d:	80 7b 24 00          	cmp    BYTE PTR [ebx+0x24],0x0
  d6e411:	74 1a                	je     0xd6e42d
  d6e413:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  d6e417:	51                   	push   ecx
  d6e418:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  d6e41b:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6e41e:	51                   	push   ecx
  d6e41f:	8b cf                	mov    ecx,edi
  d6e421:	e8 aa f8 ff ff       	call   0xd6dcd0
  d6e426:	84 c0                	test   al,al
  d6e428:	74 03                	je     0xd6e42d
  d6e42a:	c6 06 00             	mov    BYTE PTR [esi],0x0
  d6e42d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d6e431:	52                   	push   edx
  d6e432:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  d6e438:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  d6e43c:	5f                   	pop    edi
  d6e43d:	5e                   	pop    esi
  d6e43e:	5b                   	pop    ebx
  d6e43f:	8b e5                	mov    esp,ebp
  d6e441:	5d                   	pop    ebp
  d6e442:	c2 08 00             	ret    0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x008ac150, 0x008ac888).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

008ac150 <.text+0x4ab150>:
  8ac150:	83 ec 1c             	sub    esp,0x1c
  8ac153:	56                   	push   esi
  8ac154:	57                   	push   edi
  8ac155:	8b f1                	mov    esi,ecx
  8ac157:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac15a:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac15c:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
  8ac15f:	8d be 38 03 00 00    	lea    edi,[esi+0x338]
  8ac165:	57                   	push   edi
  8ac166:	68 76 84 3f 89       	push   0x893f8476
  8ac16b:	ff d2                	call   edx
  8ac16d:	84 c0                	test   al,al
  8ac16f:	75 0e                	jne    0x8ac17f
  8ac171:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  8ac175:	f3 0f 58 44 24 2c    	addss  xmm0,DWORD PTR [esp+0x2c]
  8ac17b:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  8ac17f:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac181:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  8ac184:	53                   	push   ebx
  8ac185:	6a 01                	push   0x1
  8ac187:	6a ff                	push   0xffffffff
  8ac189:	8b ce                	mov    ecx,esi
  8ac18b:	ff d2                	call   edx
  8ac18d:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
  8ac191:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
  8ac195:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac197:	8b 90 8c 00 00 00    	mov    edx,DWORD PTR [eax+0x8c]
  8ac19d:	53                   	push   ebx
  8ac19e:	8b ce                	mov    ecx,esi
  8ac1a0:	ff d2                	call   edx
  8ac1a2:	84 db                	test   bl,bl
  8ac1a4:	5b                   	pop    ebx
  8ac1a5:	74 11                	je     0x8ac1b8
  8ac1a7:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac1a9:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  8ac1ad:	8b 50 64             	mov    edx,DWORD PTR [eax+0x64]
  8ac1b0:	51                   	push   ecx
  8ac1b1:	8b ce                	mov    ecx,esi
  8ac1b3:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac1b6:	ff d2                	call   edx
  8ac1b8:	8b 86 dc 0a 00 00    	mov    eax,DWORD PTR [esi+0xadc]
  8ac1be:	a9 00 04 00 00       	test   eax,0x400
  8ac1c3:	74 25                	je     0x8ac1ea
  8ac1c5:	84 c0                	test   al,al
  8ac1c7:	78 21                	js     0x8ac1ea
  8ac1c9:	f3 0f 10 86 30 03 00 	movss  xmm0,DWORD PTR [esi+0x330]
  8ac1d0:	00
  8ac1d1:	0f 2f 86 c8 0a 00 00 	comiss xmm0,DWORD PTR [esi+0xac8]
  8ac1d8:	72 10                	jb     0x8ac1ea
  8ac1da:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac1dc:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  8ac1e2:	6a 00                	push   0x0
  8ac1e4:	6a 00                	push   0x0
  8ac1e6:	8b ce                	mov    ecx,esi
  8ac1e8:	ff d2                	call   edx
  8ac1ea:	80 be cc 0a 00 00 00 	cmp    BYTE PTR [esi+0xacc],0x0
  8ac1f1:	74 6d                	je     0x8ac260
  8ac1f3:	f6 86 dc 0a 00 00 80 	test   BYTE PTR [esi+0xadc],0x80
  8ac1fa:	75 64                	jne    0x8ac260
  8ac1fc:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac1ff:	85 c9                	test   ecx,ecx
  8ac201:	74 5d                	je     0x8ac260
  8ac203:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac205:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
  8ac208:	8d 54 24 30          	lea    edx,[esp+0x30]
  8ac20c:	52                   	push   edx
  8ac20d:	68 ff 4a 4d d2       	push   0xd24d4aff
  8ac212:	ff d0                	call   eax
  8ac214:	84 c0                	test   al,al
  8ac216:	74 48                	je     0x8ac260
  8ac218:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  8ac21b:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  8ac21e:	8d 4e 04             	lea    ecx,[esi+0x4]
  8ac221:	8d 44 24 10          	lea    eax,[esp+0x10]
  8ac225:	50                   	push   eax
  8ac226:	68 b9 99 ab e8       	push   0xe8ab99b9
  8ac22b:	ff d2                	call   edx
  8ac22d:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  8ac233:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  8ac239:	0f 2f c1             	comiss xmm0,xmm1
  8ac23c:	76 06                	jbe    0x8ac244
  8ac23e:	f3 0f 5c c1          	subss  xmm0,xmm1
  8ac242:	eb 03                	jmp    0x8ac247
  8ac244:	0f 57 c0             	xorps  xmm0,xmm0
  8ac247:	f3 0f 10 0f          	movss  xmm1,DWORD PTR [edi]
  8ac24b:	0f 2f c8             	comiss xmm1,xmm0
  8ac24e:	72 10                	jb     0x8ac260
  8ac250:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac252:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  8ac258:	6a 00                	push   0x0
  8ac25a:	6a 00                	push   0x0
  8ac25c:	8b ce                	mov    ecx,esi
  8ac25e:	ff d2                	call   edx
  8ac260:	f3 0f 10 8e 74 18 00 	movss  xmm1,DWORD PTR [esi+0x1874]
  8ac267:	00
  8ac268:	f3 0f 10 86 70 18 00 	movss  xmm0,DWORD PTR [esi+0x1870]
  8ac26f:	00
  8ac270:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  8ac277:	00
  8ac278:	0f 2e c8             	ucomiss xmm1,xmm0
  8ac27b:	9f                   	lahf
  8ac27c:	f6 c4 44             	test   ah,0x44
  8ac27f:	7b 56                	jnp    0x8ac2d7
  8ac281:	f3 0f 5c c1          	subss  xmm0,xmm1
  8ac285:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  8ac28c:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac292:	72 05                	jb     0x8ac299
  8ac294:	0f 28 e2             	movaps xmm4,xmm2
  8ac297:	eb 08                	jmp    0x8ac2a1
  8ac299:	f3 0f 10 25 18 b2 fa 	movss  xmm4,DWORD PTR ds:0xfab218
  8ac2a0:	00
  8ac2a1:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac2a5:	f3 0f 10 86 78 18 00 	movss  xmm0,DWORD PTR [esi+0x1878]
  8ac2ac:	00
  8ac2ad:	f3 0f 59 44 24 2c    	mulss  xmm0,DWORD PTR [esp+0x2c]
  8ac2b3:	d9 e1                	fabs
  8ac2b5:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  8ac2b9:	f3 0f 10 5c 24 30    	movss  xmm3,DWORD PTR [esp+0x30]
  8ac2bf:	0f 2f c3             	comiss xmm0,xmm3
  8ac2c2:	76 03                	jbe    0x8ac2c7
  8ac2c4:	0f 28 c3             	movaps xmm0,xmm3
  8ac2c7:	f3 0f 59 c4          	mulss  xmm0,xmm4
  8ac2cb:	f3 0f 58 c1          	addss  xmm0,xmm1
  8ac2cf:	f3 0f 11 86 74 18 00 	movss  DWORD PTR [esi+0x1874],xmm0
  8ac2d6:	00
  8ac2d7:	f7 86 dc 0a 00 00 00 	test   DWORD PTR [esi+0xadc],0x800
  8ac2de:	08 00 00
  8ac2e1:	74 39                	je     0x8ac31c
  8ac2e3:	f3 0f 10 86 74 18 00 	movss  xmm0,DWORD PTR [esi+0x1874]
  8ac2ea:	00
  8ac2eb:	0f 2e 05 cc 4c 0f 01 	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8ac2f2:	9f                   	lahf
  8ac2f3:	f6 c4 44             	test   ah,0x44
  8ac2f6:	7a 24                	jp     0x8ac31c
  8ac2f8:	83 7e 58 00          	cmp    DWORD PTR [esi+0x58],0x0
  8ac2fc:	74 1e                	je     0x8ac31c
  8ac2fe:	81 a6 dc 0a 00 00 ff 	and    DWORD PTR [esi+0xadc],0xfffff7ff
  8ac305:	f7 ff ff
  8ac308:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac30b:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac30d:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  8ac310:	6a 01                	push   0x1
  8ac312:	ff d2                	call   edx
  8ac314:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  8ac31b:	00
  8ac31c:	f3 0f 10 86 80 18 00 	movss  xmm0,DWORD PTR [esi+0x1880]
  8ac323:	00
  8ac324:	0f 2e 86 7c 18 00 00 	ucomiss xmm0,DWORD PTR [esi+0x187c]
  8ac32b:	9f                   	lahf
  8ac32c:	f6 c4 44             	test   ah,0x44
  8ac32f:	7b 6a                	jnp    0x8ac39b
  8ac331:	0f 28 c8             	movaps xmm1,xmm0
  8ac334:	f3 0f 10 86 7c 18 00 	movss  xmm0,DWORD PTR [esi+0x187c]
  8ac33b:	00
  8ac33c:	0f 2e c8             	ucomiss xmm1,xmm0
  8ac33f:	9f                   	lahf
  8ac340:	f6 c4 44             	test   ah,0x44
  8ac343:	7b 56                	jnp    0x8ac39b
  8ac345:	f3 0f 5c c1          	subss  xmm0,xmm1
  8ac349:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  8ac350:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac356:	72 05                	jb     0x8ac35d
  8ac358:	0f 28 e2             	movaps xmm4,xmm2
  8ac35b:	eb 08                	jmp    0x8ac365
  8ac35d:	f3 0f 10 25 18 b2 fa 	movss  xmm4,DWORD PTR ds:0xfab218
  8ac364:	00
  8ac365:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac369:	f3 0f 10 86 84 18 00 	movss  xmm0,DWORD PTR [esi+0x1884]
  8ac370:	00
  8ac371:	f3 0f 59 44 24 2c    	mulss  xmm0,DWORD PTR [esp+0x2c]
  8ac377:	d9 e1                	fabs
  8ac379:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  8ac37d:	f3 0f 10 5c 24 30    	movss  xmm3,DWORD PTR [esp+0x30]
  8ac383:	0f 2f c3             	comiss xmm0,xmm3
  8ac386:	76 03                	jbe    0x8ac38b
  8ac388:	0f 28 c3             	movaps xmm0,xmm3
  8ac38b:	f3 0f 59 c4          	mulss  xmm0,xmm4
  8ac38f:	f3 0f 58 c1          	addss  xmm0,xmm1
  8ac393:	f3 0f 11 86 80 18 00 	movss  DWORD PTR [esi+0x1880],xmm0
  8ac39a:	00
  8ac39b:	80 be b0 00 00 00 00 	cmp    BYTE PTR [esi+0xb0],0x0
  8ac3a2:	75 15                	jne    0x8ac3b9
  8ac3a4:	8d 8e 88 0a 00 00    	lea    ecx,[esi+0xa88]
  8ac3aa:	e8 51 e6 ff ff       	call   0x8aaa00
  8ac3af:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  8ac3b3:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  8ac3b9:	f3 0f 10 4e 78       	movss  xmm1,DWORD PTR [esi+0x78]
  8ac3be:	f3 0f 10 86 80 18 00 	movss  xmm0,DWORD PTR [esi+0x1880]
  8ac3c5:	00
  8ac3c6:	f3 0f 59 86 74 18 00 	mulss  xmm0,DWORD PTR [esi+0x1874]
  8ac3cd:	00
  8ac3ce:	8a 86 d0 00 00 00    	mov    al,BYTE PTR [esi+0xd0]
  8ac3d4:	a8 08                	test   al,0x8
  8ac3d6:	f3 0f 59 c1          	mulss  xmm0,xmm1
  8ac3da:	f3 0f 59 c2          	mulss  xmm0,xmm2
  8ac3de:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  8ac3e4:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac3ea:	74 08                	je     0x8ac3f4
  8ac3ec:	3c 0f                	cmp    al,0xf
  8ac3ee:	0f 85 99 00 00 00    	jne    0x8ac48d
  8ac3f4:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac3f6:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  8ac3fa:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
  8ac400:	51                   	push   ecx
  8ac401:	8b ce                	mov    ecx,esi
  8ac403:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac406:	ff d2                	call   edx
  8ac408:	84 c0                	test   al,al
  8ac40a:	74 55                	je     0x8ac461
  8ac40c:	80 be ad 00 00 00 00 	cmp    BYTE PTR [esi+0xad],0x0
  8ac413:	75 09                	jne    0x8ac41e
  8ac415:	80 be cd 0a 00 00 00 	cmp    BYTE PTR [esi+0xacd],0x0
  8ac41c:	74 1f                	je     0x8ac43d
  8ac41e:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac420:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  8ac423:	6a 00                	push   0x0
  8ac425:	6a 02                	push   0x2
  8ac427:	8b ce                	mov    ecx,esi
  8ac429:	ff d2                	call   edx
  8ac42b:	84 c0                	test   al,al
  8ac42d:	75 58                	jne    0x8ac487
  8ac42f:	d9 ee                	fldz
  8ac431:	6a 01                	push   0x1
  8ac433:	51                   	push   ecx
  8ac434:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac437:	6a 02                	push   0x2
  8ac439:	6a 01                	push   0x1
  8ac43b:	eb 41                	jmp    0x8ac47e
  8ac43d:	80 be b0 00 00 00 00 	cmp    BYTE PTR [esi+0xb0],0x0
  8ac444:	74 09                	je     0x8ac44f
  8ac446:	f6 86 dc 0a 00 00 20 	test   BYTE PTR [esi+0xadc],0x20
  8ac44d:	74 38                	je     0x8ac487
  8ac44f:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac451:	8b 90 98 00 00 00    	mov    edx,DWORD PTR [eax+0x98]
  8ac457:	6a 00                	push   0x0
  8ac459:	6a 03                	push   0x3
  8ac45b:	8b ce                	mov    ecx,esi
  8ac45d:	ff d2                	call   edx
  8ac45f:	eb 26                	jmp    0x8ac487
  8ac461:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac463:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  8ac466:	6a 00                	push   0x0
  8ac468:	6a 02                	push   0x2
  8ac46a:	8b ce                	mov    ecx,esi
  8ac46c:	ff d2                	call   edx
  8ac46e:	84 c0                	test   al,al
  8ac470:	74 15                	je     0x8ac487
  8ac472:	d9 ee                	fldz
  8ac474:	6a 01                	push   0x1
  8ac476:	51                   	push   ecx
  8ac477:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac47a:	6a 02                	push   0x2
  8ac47c:	6a 00                	push   0x0
  8ac47e:	8b 06                	mov    eax,DWORD PTR [esi]
  8ac480:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  8ac483:	8b ce                	mov    ecx,esi
  8ac485:	ff d2                	call   edx
  8ac487:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  8ac48d:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac490:	85 c9                	test   ecx,ecx
  8ac492:	0f 84 e8 03 00 00    	je     0x8ac880
  8ac498:	80 7c 24 0b 00       	cmp    BYTE PTR [esp+0xb],0x0
  8ac49d:	0f 85 dd 03 00 00    	jne    0x8ac880
  8ac4a3:	f3 0f 10 4e 7c       	movss  xmm1,DWORD PTR [esi+0x7c]
  8ac4a8:	0f 2e c1             	ucomiss xmm0,xmm1
  8ac4ab:	9f                   	lahf
  8ac4ac:	f6 c4 44             	test   ah,0x44
  8ac4af:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  8ac4b5:	7b 6c                	jnp    0x8ac523
  8ac4b7:	f3 0f 10 56 74       	movss  xmm2,DWORD PTR [esi+0x74]
  8ac4bc:	0f 57 c0             	xorps  xmm0,xmm0
  8ac4bf:	0f 2f d0             	comiss xmm2,xmm0
  8ac4c2:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  8ac4c8:	76 3d                	jbe    0x8ac507
  8ac4ca:	0f 2f c8             	comiss xmm1,xmm0
  8ac4cd:	72 38                	jb     0x8ac507
  8ac4cf:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac4d3:	d8 64 24 10          	fsub   DWORD PTR [esp+0x10]
  8ac4d7:	d9 54 24 10          	fst    DWORD PTR [esp+0x10]
  8ac4db:	d9 e1                	fabs
  8ac4dd:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  8ac4e1:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  8ac4e5:	d9 c9                	fxch   st(1)
  8ac4e7:	df f1                	fcomip st,st(1)
  8ac4e9:	dd d8                	fstp   st(0)
  8ac4eb:	76 1a                	jbe    0x8ac507
  8ac4ed:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  8ac4f3:	f3 0f 5e 44 24 14    	divss  xmm0,DWORD PTR [esp+0x14]
  8ac4f9:	f3 0f 59 c2          	mulss  xmm0,xmm2
  8ac4fd:	f3 0f 58 c1          	addss  xmm0,xmm1
  8ac501:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac507:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac509:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac50d:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac510:	6a 01                	push   0x1
  8ac512:	51                   	push   ecx
  8ac513:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac516:	68 08 01 df 25       	push   0x25df0108
  8ac51b:	ff d2                	call   edx
  8ac51d:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  8ac523:	80 be ae 00 00 00 00 	cmp    BYTE PTR [esi+0xae],0x0
  8ac52a:	f3 0f 11 46 7c       	movss  DWORD PTR [esi+0x7c],xmm0
  8ac52f:	0f 84 f5 02 00 00    	je     0x8ac82a
  8ac535:	80 be d0 00 00 00 0f 	cmp    BYTE PTR [esi+0xd0],0xf
  8ac53c:	0f 85 e8 02 00 00    	jne    0x8ac82a
  8ac542:	80 be b0 00 00 00 00 	cmp    BYTE PTR [esi+0xb0],0x0
  8ac549:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac54c:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac54e:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac551:	6a 01                	push   0x1
  8ac553:	51                   	push   ecx
  8ac554:	74 5c                	je     0x8ac5b2
  8ac556:	d9 86 d4 00 00 00    	fld    DWORD PTR [esi+0xd4]
  8ac55c:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac55f:	68 67 5d 0c 05       	push   0x50c5d67
  8ac564:	ff d2                	call   edx
  8ac566:	d9 86 d8 00 00 00    	fld    DWORD PTR [esi+0xd8]
  8ac56c:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac56f:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac571:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac574:	6a 01                	push   0x1
  8ac576:	51                   	push   ecx
  8ac577:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac57a:	68 66 5d 0c 05       	push   0x50c5d66
  8ac57f:	ff d2                	call   edx
  8ac581:	d9 86 dc 00 00 00    	fld    DWORD PTR [esi+0xdc]
  8ac587:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac58a:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac58c:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac58f:	6a 01                	push   0x1
  8ac591:	51                   	push   ecx
  8ac592:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac595:	68 65 5d 0c 05       	push   0x50c5d65
  8ac59a:	ff d2                	call   edx
  8ac59c:	d9 86 e8 00 00 00    	fld    DWORD PTR [esi+0xe8]
  8ac5a2:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac5a5:	6a 01                	push   0x1
  8ac5a7:	51                   	push   ecx
  8ac5a8:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac5ab:	68 de 1e 34 26       	push   0x26341ede
  8ac5b0:	eb 3f                	jmp    0x8ac5f1
  8ac5b2:	d9 86 b8 00 00 00    	fld    DWORD PTR [esi+0xb8]
  8ac5b8:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac5bb:	68 67 5d 0c 05       	push   0x50c5d67
  8ac5c0:	ff d2                	call   edx
  8ac5c2:	d9 86 bc 00 00 00    	fld    DWORD PTR [esi+0xbc]
  8ac5c8:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac5cb:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac5cd:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac5d0:	6a 01                	push   0x1
  8ac5d2:	51                   	push   ecx
  8ac5d3:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac5d6:	68 66 5d 0c 05       	push   0x50c5d66
  8ac5db:	ff d2                	call   edx
  8ac5dd:	d9 86 c0 00 00 00    	fld    DWORD PTR [esi+0xc0]
  8ac5e3:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac5e6:	6a 01                	push   0x1
  8ac5e8:	51                   	push   ecx
  8ac5e9:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac5ec:	68 65 5d 0c 05       	push   0x50c5d65
  8ac5f1:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac5f3:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac5f6:	ff d2                	call   edx
  8ac5f8:	83 be 98 18 00 00 02 	cmp    DWORD PTR [esi+0x1898],0x2
  8ac5ff:	f3 0f 10 05 ec b8 03 	movss  xmm0,DWORD PTR ds:0x103b8ec
  8ac606:	01
  8ac607:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac60d:	0f 57 c0             	xorps  xmm0,xmm0
  8ac610:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  8ac616:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  8ac61c:	0f 8c b6 01 00 00    	jl     0x8ac7d8
  8ac622:	d9 46 5c             	fld    DWORD PTR [esi+0x5c]
  8ac625:	51                   	push   ecx
  8ac626:	8d 8e e0 0a 00 00    	lea    ecx,[esi+0xae0]
  8ac62c:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac62f:	e8 3c d5 ff ff       	call   0x8a9b70
  8ac634:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  8ac638:	d9 86 8c 00 00 00    	fld    DWORD PTR [esi+0x8c]
  8ac63e:	8d 8e 8c 00 00 00    	lea    ecx,[esi+0x8c]
  8ac644:	df f1                	fcomip st,st(1)
  8ac646:	dd d8                	fstp   st(0)
  8ac648:	8d 44 24 14          	lea    eax,[esp+0x14]
  8ac64c:	77 02                	ja     0x8ac650
  8ac64e:	8b c1                	mov    eax,ecx
  8ac650:	d9 46 5c             	fld    DWORD PTR [esi+0x5c]
  8ac653:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  8ac657:	51                   	push   ecx
  8ac658:	8d 8e 40 0e 00 00    	lea    ecx,[esi+0xe40]
  8ac65e:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac661:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  8ac667:	e8 04 d5 ff ff       	call   0x8a9b70
  8ac66c:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  8ac670:	d9 86 90 00 00 00    	fld    DWORD PTR [esi+0x90]
  8ac676:	8d 8e 90 00 00 00    	lea    ecx,[esi+0x90]
  8ac67c:	d9 c9                	fxch   st(1)
  8ac67e:	df f1                	fcomip st,st(1)
  8ac680:	dd d8                	fstp   st(0)
  8ac682:	76 04                	jbe    0x8ac688
  8ac684:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  8ac688:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  8ac68c:	d9 46 5c             	fld    DWORD PTR [esi+0x5c]
  8ac68f:	51                   	push   ecx
  8ac690:	8d 8e a0 11 00 00    	lea    ecx,[esi+0x11a0]
  8ac696:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac699:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  8ac69f:	e8 cc d4 ff ff       	call   0x8a9b70
  8ac6a4:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  8ac6a8:	d9 86 88 00 00 00    	fld    DWORD PTR [esi+0x88]
  8ac6ae:	8d 8e 88 00 00 00    	lea    ecx,[esi+0x88]
  8ac6b4:	d9 c9                	fxch   st(1)
  8ac6b6:	df f1                	fcomip st,st(1)
  8ac6b8:	dd d8                	fstp   st(0)
  8ac6ba:	76 04                	jbe    0x8ac6c0
  8ac6bc:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  8ac6c0:	f7 86 dc 0a 00 00 00 	test   DWORD PTR [esi+0xadc],0x4000
  8ac6c7:	40 00 00
  8ac6ca:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  8ac6ce:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  8ac6d4:	0f 84 fe 00 00 00    	je     0x8ac7d8
  8ac6da:	e8 21 37 00 00       	call   0x8afe00
  8ac6df:	8b 8e b4 00 00 00    	mov    ecx,DWORD PTR [esi+0xb4]
  8ac6e5:	8b 10                	mov    edx,DWORD PTR [eax]
  8ac6e7:	8b 92 90 00 00 00    	mov    edx,DWORD PTR [edx+0x90]
  8ac6ed:	51                   	push   ecx
  8ac6ee:	8b c8                	mov    ecx,eax
  8ac6f0:	ff d2                	call   edx
  8ac6f2:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  8ac6f6:	f3 0f 5c 86 b8 00 00 	subss  xmm0,DWORD PTR [esi+0xb8]
  8ac6fd:	00
  8ac6fe:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  8ac703:	f3 0f 5c 8e bc 00 00 	subss  xmm1,DWORD PTR [esi+0xbc]
  8ac70a:	00
  8ac70b:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [eax+0x8]
  8ac710:	f3 0f 5c 96 c0 00 00 	subss  xmm2,DWORD PTR [esi+0xc0]
  8ac717:	00
  8ac718:	0f 28 d8             	movaps xmm3,xmm0
  8ac71b:	f3 0f 5c 9e c4 00 00 	subss  xmm3,DWORD PTR [esi+0xc4]
  8ac722:	00
  8ac723:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  8ac729:	0f 28 d9             	movaps xmm3,xmm1
  8ac72c:	f3 0f 5c 9e c8 00 00 	subss  xmm3,DWORD PTR [esi+0xc8]
  8ac733:	00
  8ac734:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  8ac73a:	0f 28 da             	movaps xmm3,xmm2
  8ac73d:	f3 0f 5c 9e cc 00 00 	subss  xmm3,DWORD PTR [esi+0xcc]
  8ac744:	00
  8ac745:	f3 0f 11 5c 24 20    	movss  DWORD PTR [esp+0x20],xmm3
  8ac74b:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  8ac74f:	f3 0f 11 86 c4 00 00 	movss  DWORD PTR [esi+0xc4],xmm0
  8ac756:	00
  8ac757:	dc c8                	fmul   st(0),st
  8ac759:	f3 0f 11 8e c8 00 00 	movss  DWORD PTR [esi+0xc8],xmm1
  8ac760:	00
  8ac761:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  8ac765:	f3 0f 11 96 cc 00 00 	movss  DWORD PTR [esi+0xcc],xmm2
  8ac76c:	00
  8ac76d:	dc c8                	fmul   st(0),st
  8ac76f:	de c1                	faddp  st(1),st
  8ac771:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  8ac775:	dc c8                	fmul   st(0),st
  8ac777:	de c1                	faddp  st(1),st
  8ac779:	d9 fa                	fsqrt
  8ac77b:	d8 74 24 2c          	fdiv   DWORD PTR [esp+0x2c]
  8ac77f:	d8 0d 7c 48 04 01    	fmul   DWORD PTR ds:0x104487c
  8ac785:	d9 86 a0 00 00 00    	fld    DWORD PTR [esi+0xa0]
  8ac78b:	d8 0d 94 de fe 00    	fmul   DWORD PTR ds:0xfede94
  8ac791:	de c1                	faddp  st(1),st
  8ac793:	d9 96 a0 00 00 00    	fst    DWORD PTR [esi+0xa0]
  8ac799:	d9 ee                	fldz
  8ac79b:	df f1                	fcomip st,st(1)
  8ac79d:	76 0a                	jbe    0x8ac7a9
  8ac79f:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  8ac7a6:	00
  8ac7a7:	eb 08                	jmp    0x8ac7b1
  8ac7a9:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  8ac7b0:	00
  8ac7b1:	51                   	push   ecx
  8ac7b2:	d9 e1                	fabs
  8ac7b4:	8d 8e 00 15 00 00    	lea    ecx,[esi+0x1500]
  8ac7ba:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac7bd:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac7c3:	e8 a8 d3 ff ff       	call   0x8a9b70
  8ac7c8:	d8 4c 24 2c          	fmul   DWORD PTR [esp+0x2c]
  8ac7cc:	d8 05 f8 98 f9 00    	fadd   DWORD PTR ds:0xf998f8
  8ac7d2:	d9 9e 94 00 00 00    	fstp   DWORD PTR [esi+0x94]
  8ac7d8:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac7db:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac7df:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac7e1:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac7e4:	6a 01                	push   0x1
  8ac7e6:	51                   	push   ecx
  8ac7e7:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac7ea:	68 36 78 7a 64       	push   0x647a7836
  8ac7ef:	ff d2                	call   edx
  8ac7f1:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  8ac7f5:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac7f8:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac7fa:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac7fd:	6a 01                	push   0x1
  8ac7ff:	51                   	push   ecx
  8ac800:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac803:	68 5f 76 6a a2       	push   0xa26a765f
  8ac808:	ff d2                	call   edx
  8ac80a:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  8ac80e:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac811:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac813:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac816:	6a 01                	push   0x1
  8ac818:	51                   	push   ecx
  8ac819:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac81c:	68 db 68 eb 49       	push   0x49eb68db
  8ac821:	ff d2                	call   edx
  8ac823:	c6 86 ae 00 00 00 00 	mov    BYTE PTR [esi+0xae],0x0
  8ac82a:	f3 0f 10 8e 9c 00 00 	movss  xmm1,DWORD PTR [esi+0x9c]
  8ac831:	00
  8ac832:	0f 2e 8e a4 00 00 00 	ucomiss xmm1,DWORD PTR [esi+0xa4]
  8ac839:	9f                   	lahf
  8ac83a:	f6 c4 44             	test   ah,0x44
  8ac83d:	7b 41                	jnp    0x8ac880
  8ac83f:	f3 0f 10 86 98 00 00 	movss  xmm0,DWORD PTR [esi+0x98]
  8ac846:	00
  8ac847:	f3 0f 59 86 94 00 00 	mulss  xmm0,DWORD PTR [esi+0x94]
  8ac84e:	00
  8ac84f:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  8ac852:	8b 01                	mov    eax,DWORD PTR [ecx]
  8ac854:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  8ac857:	f3 0f 59 c1          	mulss  xmm0,xmm1
  8ac85b:	6a 01                	push   0x1
  8ac85d:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  8ac863:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  8ac867:	51                   	push   ecx
  8ac868:	d9 1c 24             	fstp   DWORD PTR [esp]
  8ac86b:	68 09 30 bc 71       	push   0x71bc3009
  8ac870:	ff d2                	call   edx
  8ac872:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  8ac878:	f3 0f 11 86 a4 00 00 	movss  DWORD PTR [esi+0xa4],xmm0
  8ac87f:	00
  8ac880:	5f                   	pop    edi
  8ac881:	5e                   	pop    esi
  8ac882:	83 c4 1c             	add    esp,0x1c
  8ac885:	c2 0c 00             	ret    0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00764350, 0x007644ac); analyst name RouteHost_PlanFromExplicitStart.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00764350 <.text+0x363350>:
  764350:	55                   	push   ebp
  764351:	8b ec                	mov    ebp,esp
  764353:	83 e4 f0             	and    esp,0xfffffff0
  764356:	81 ec d4 00 00 00    	sub    esp,0xd4
  76435c:	53                   	push   ebx
  76435d:	56                   	push   esi
  76435e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  764361:	57                   	push   edi
  764362:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  764366:	33 db                	xor    ebx,ebx
  764368:	50                   	push   eax
  764369:	56                   	push   esi
  76436a:	8b f9                	mov    edi,ecx
  76436c:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  764370:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  764374:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  764378:	c7 44 24 44 ec 59 00 01 	mov    DWORD PTR [esp+0x44],0x10059ec
  764380:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  764384:	e8 d7 7c fe ff       	call   0x74c060
  764389:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  76438c:	83 c4 08             	add    esp,0x8
  76438f:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  764394:	0f 57 c0             	xorps  xmm0,xmm0
  764397:	6a 01                	push   0x1
  764399:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  76439f:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  7643a5:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  7643ab:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  7643b1:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  7643b6:	53                   	push   ebx
  7643b7:	0f 29 44 24 58       	movaps XMMWORD PTR [esp+0x58],xmm0
  7643bc:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  7643c4:	8d b7 58 01 00 00    	lea    esi,[edi+0x158]
  7643ca:	68 00 02 00 00       	push   0x200
  7643cf:	8b ce                	mov    ecx,esi
  7643d1:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  7643d7:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  7643db:	89 5c 24 74          	mov    DWORD PTR [esp+0x74],ebx
  7643df:	89 5c 24 78          	mov    DWORD PTR [esp+0x78],ebx
  7643e3:	89 5c 24 7c          	mov    DWORD PTR [esp+0x7c],ebx
  7643e7:	e8 f4 80 0b 00       	call   0x81c4e0
  7643ec:	6a 01                	push   0x1
  7643ee:	53                   	push   ebx
  7643ef:	68 00 04 00 00       	push   0x400
  7643f4:	8b ce                	mov    ecx,esi
  7643f6:	88 44 24 27          	mov    BYTE PTR [esp+0x27],al
  7643fa:	e8 e1 80 0b 00       	call   0x81c4e0
  7643ff:	38 5c 24 1b          	cmp    BYTE PTR [esp+0x1b],bl
  764403:	75 04                	jne    0x764409
  764405:	3a c3                	cmp    al,bl
  764407:	74 69                	je     0x764472
  764409:	8d 8c 24 b8 00 00 00 	lea    ecx,[esp+0xb8]
  764410:	51                   	push   ecx
  764411:	8d 94 24 84 00 00 00 	lea    edx,[esp+0x84]
  764418:	52                   	push   edx
  764419:	8d 44 24 28          	lea    eax,[esp+0x28]
  76441d:	50                   	push   eax
  76441e:	8b cf                	mov    ecx,edi
  764420:	e8 2b e2 fe ff       	call   0x752650
  764425:	83 f8 01             	cmp    eax,0x1
  764428:	75 48                	jne    0x764472
  76442a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  76442d:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  764430:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  764435:	0f 5c c8             	subps  xmm1,xmm0
  764438:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  764440:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  764444:	0f 59 c1             	mulps  xmm0,xmm1
  764447:	0f 5f c1             	maxps  xmm0,xmm1
  76444a:	f3 0f 10 0d 9c 51 00 01 	movss  xmm1,DWORD PTR ds:0x100519c
  764452:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  764456:	0f c2 c1 02          	cmpleps xmm0,xmm1
  76445a:	0f 50 d0             	movmskps edx,xmm0
  76445d:	83 e2 07             	and    edx,0x7
  764460:	80 fa 07             	cmp    dl,0x7
  764463:	75 0d                	jne    0x764472
  764465:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  76446d:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  764472:	8d 44 24 40          	lea    eax,[esp+0x40]
  764476:	50                   	push   eax
  764477:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  76447b:	e8 00 05 ef ff       	call   0x654980
  764480:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  764483:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  764487:	51                   	push   ecx
  764488:	56                   	push   esi
  764489:	8b cf                	mov    ecx,edi
  76448b:	e8 e0 c2 ff ff       	call   0x760770
  764490:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  764494:	3b c3                	cmp    eax,ebx
  764496:	74 09                	je     0x7644a1
  764498:	50                   	push   eax
  764499:	e8 42 00 d8 ff       	call   0x4e44e0
  76449e:	83 c4 04             	add    esp,0x4
  7644a1:	5f                   	pop    edi
  7644a2:	8b c6                	mov    eax,esi
  7644a4:	5e                   	pop    esi
  7644a5:	5b                   	pop    ebx
  7644a6:	8b e5                	mov    esp,ebp
  7644a8:	5d                   	pop    ebp
  7644a9:	c2 08 00             	ret    0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009561a0, 0x009562fe); analyst name TransformComponent_NotifyLargePositionChange.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009561a0 <.text+0x5551a0>:
  9561a0:	55                   	push   ebp
  9561a1:	8b ec                	mov    ebp,esp
  9561a3:	83 e4 f0             	and    esp,0xfffffff0
  9561a6:	81 ec b4 00 00 00    	sub    esp,0xb4
  9561ac:	53                   	push   ebx
  9561ad:	56                   	push   esi
  9561ae:	8b f1                	mov    esi,ecx
  9561b0:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  9561b3:	85 c9                	test   ecx,ecx
  9561b5:	57                   	push   edi
  9561b6:	0f 84 39 01 00 00    	je     0x9562f5
  9561bc:	a1 fc a0 1e 01       	mov    eax,ds:0x11ea0fc
  9561c1:	50                   	push   eax
  9561c2:	e8 99 e0 fd ff       	call   0x934260
  9561c7:	85 c0                	test   eax,eax
  9561c9:	0f 84 26 01 00 00    	je     0x9562f5
  9561cf:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  9561d2:	0f 28 09             	movaps xmm1,XMMWORD PTR [ecx]
  9561d5:	0f 28 46 20          	movaps xmm0,XMMWORD PTR [esi+0x20]
  9561d9:	0f 5c c1             	subps  xmm0,xmm1
  9561dc:	0f 59 c0             	mulps  xmm0,xmm0
  9561df:	0f 28 c8             	movaps xmm1,xmm0
  9561e2:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  9561e6:	0f 28 d1             	movaps xmm2,xmm1
  9561e9:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  9561ed:	0f 58 c2             	addps  xmm0,xmm2
  9561f0:	0f 58 c1             	addps  xmm0,xmm1
  9561f3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9561f7:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  9561fc:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  956202:	0f 2f 05 f4 6b 0f 01 	comiss xmm0,DWORD PTR ds:0x10f6bf4
  956209:	0f 86 e6 00 00 00    	jbe    0x9562f5
  95620f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  956212:	85 c9                	test   ecx,ecx
  956214:	0f 84 db 00 00 00    	je     0x9562f5
  95621a:	8b 15 c4 9f 1e 01    	mov    edx,DWORD PTR ds:0x11e9fc4
  956220:	52                   	push   edx
  956221:	e8 3a e0 fd ff       	call   0x934260
  956226:	8b f8                	mov    edi,eax
  956228:	85 ff                	test   edi,edi
  95622a:	0f 84 c5 00 00 00    	je     0x9562f5
  956230:	8d 46 10             	lea    eax,[esi+0x10]
  956233:	50                   	push   eax
  956234:	8b cf                	mov    ecx,edi
  956236:	e8 45 26 ff ff       	call   0x948880
  95623b:	50                   	push   eax
  95623c:	e8 2f 95 02 00       	call   0x97f770
  956241:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  956244:	83 c4 08             	add    esp,0x8
  956247:	51                   	push   ecx
  956248:	8b cf                	mov    ecx,edi
  95624a:	8a d8                	mov    bl,al
  95624c:	e8 2f 26 ff ff       	call   0x948880
  956251:	50                   	push   eax
  956252:	e8 b9 94 02 00       	call   0x97f710
  956257:	83 c4 08             	add    esp,0x8
  95625a:	84 c0                	test   al,al
  95625c:	0f 94 c0             	sete   al
  95625f:	84 db                	test   bl,bl
  956261:	0f 84 8e 00 00 00    	je     0x9562f5
  956267:	84 c0                	test   al,al
  956269:	0f 84 86 00 00 00    	je     0x9562f5
  95626f:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  956272:	52                   	push   edx
  956273:	e8 b8 7d c0 ff       	call   0x55e030
  956278:	33 ff                	xor    edi,edi
  95627a:	83 c4 04             	add    esp,0x4
  95627d:	3b c7                	cmp    eax,edi
  95627f:	74 07                	je     0x956288
  956281:	81 48 2c 00 00 01 00 	or     DWORD PTR [eax+0x2c],0x10000
  956288:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95628b:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95628e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  956291:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  956295:	8d 44 24 20          	lea    eax,[esp+0x20]
  956299:	50                   	push   eax
  95629a:	c7 44 24 24 63 5d ff ec 	mov    DWORD PTR [esp+0x24],0xecff5d63
  9562a2:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  9562a6:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  9562aa:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  9562ae:	e8 cd d0 d3 ff       	call   0x693380
  9562b3:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  9562b6:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  9562b9:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  9562bc:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  9562c0:	51                   	push   ecx
  9562c1:	c7 44 24 78 2e ad 27 77 	mov    DWORD PTR [esp+0x78],0x7727ad2e
  9562c9:	89 7c 24 7c          	mov    DWORD PTR [esp+0x7c],edi
  9562cd:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  9562d4:	89 b4 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],esi
  9562db:	e8 a0 d0 d3 ff       	call   0x693380
  9562e0:	83 c4 08             	add    esp,0x8
  9562e3:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  9562e7:	e8 84 c7 c2 ff       	call   0x582a70
  9562ec:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  9562f0:	e8 7b c7 c2 ff       	call   0x582a70
  9562f5:	5f                   	pop    edi
  9562f6:	5e                   	pop    esi
  9562f7:	5b                   	pop    ebx
  9562f8:	8b e5                	mov    esp,ebp
  9562fa:	5d                   	pop    ebp
  9562fb:	c2 04 00             	ret    0x4

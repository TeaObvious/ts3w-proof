# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007021a0 (Renderer_RequestObjectOpacityTransition)
Full Ghidra function-body envelope: 0x007021a0..0x007023b5 (exclusive end)
Ghidra body ranges: [[007021a0, 007023b4]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007021a0 <.text+0x3011a0>:
  7021a0:	55                   	push   ebp
  7021a1:	8b ec                	mov    ebp,esp
  7021a3:	83 e4 f0             	and    esp,0xfffffff0
  7021a6:	83 ec 34             	sub    esp,0x34
  7021a9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  7021ac:	53                   	push   ebx
  7021ad:	56                   	push   esi
  7021ae:	57                   	push   edi
  7021af:	8b f9                	mov    edi,ecx
  7021b1:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  7021b4:	8d 54 24 18          	lea    edx,[esp+0x18]
  7021b8:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  7021bc:	52                   	push   edx
  7021bd:	8d 44 24 24          	lea    eax,[esp+0x24]
  7021c1:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  7021c5:	50                   	push   eax
  7021c6:	8d 4f 04             	lea    ecx,[edi+0x4]
  7021c9:	e8 92 bb ff ff       	call   0x6fdd60
  7021ce:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  7021d2:	3b 87 28 10 00 00    	cmp    eax,DWORD PTR [edi+0x1028]
  7021d8:	0f 84 cc 01 00 00    	je     0x7023aa
  7021de:	85 c0                	test   eax,eax
  7021e0:	0f 84 c4 01 00 00    	je     0x7023aa
  7021e6:	8d 70 f8             	lea    esi,[eax-0x8]
  7021e9:	85 f6                	test   esi,esi
  7021eb:	0f 84 b9 01 00 00    	je     0x7023aa
  7021f1:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  7021f9:	0f 2f 45 14          	comiss xmm0,DWORD PTR [ebp+0x14]
  7021fd:	0f 86 af 00 00 00    	jbe    0x7022b2
  702203:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  70220a:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  70220f:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  702214:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  702218:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  70221e:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  702223:	51                   	push   ecx
  702224:	8b ce                	mov    ecx,esi
  702226:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  70222b:	e8 30 b0 ff ff       	call   0x6fd260
  702230:	56                   	push   esi
  702231:	8b cf                	mov    ecx,edi
  702233:	e8 28 ba ff ff       	call   0x6fdc60
  702238:	8d 55 08             	lea    edx,[ebp+0x8]
  70223b:	52                   	push   edx
  70223c:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  702240:	50                   	push   eax
  702241:	8d 8f f0 10 00 00    	lea    ecx,[edi+0x10f0]
  702247:	e8 24 1b 50 00       	call   0xc03d70
  70224c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  702250:	81 c7 f4 10 00 00    	add    edi,0x10f4
  702256:	3b c7                	cmp    eax,edi
  702258:	74 4d                	je     0x7022a7
  70225a:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  70225e:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  702263:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  702268:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  70226e:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  702273:	0f 29 48 20          	movaps XMMWORD PTR [eax+0x20],xmm1
  702277:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  70227b:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  702280:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  702286:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  70228b:	0f 29 48 30          	movaps XMMWORD PTR [eax+0x30],xmm1
  70228f:	0f 28 48 40          	movaps xmm1,XMMWORD PTR [eax+0x40]
  702293:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  702298:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  70229e:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  7022a3:	0f 29 40 40          	movaps XMMWORD PTR [eax+0x40],xmm0
  7022a7:	b0 01                	mov    al,0x1
  7022a9:	5f                   	pop    edi
  7022aa:	5e                   	pop    esi
  7022ab:	5b                   	pop    ebx
  7022ac:	8b e5                	mov    esp,ebp
  7022ae:	5d                   	pop    ebp
  7022af:	c2 18 00             	ret    0x18
  7022b2:	8a 5d 18             	mov    bl,BYTE PTR [ebp+0x18]
  7022b5:	84 db                	test   bl,bl
  7022b7:	74 35                	je     0x7022ee
  7022b9:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  7022c0:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  7022c5:	f3 0f 10 45 1c       	movss  xmm0,DWORD PTR [ebp+0x1c]
  7022ca:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  7022ce:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  7022d4:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  7022d9:	51                   	push   ecx
  7022da:	8b ce                	mov    ecx,esi
  7022dc:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  7022e1:	e8 7a af ff ff       	call   0x6fd260
  7022e6:	56                   	push   esi
  7022e7:	8b cf                	mov    ecx,edi
  7022e9:	e8 72 b9 ff ff       	call   0x6fdc60
  7022ee:	c6 44 24 18 00       	mov    BYTE PTR [esp+0x18],0x0
  7022f3:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  7022f7:	52                   	push   edx
  7022f8:	8d 45 08             	lea    eax,[ebp+0x8]
  7022fb:	50                   	push   eax
  7022fc:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  702300:	51                   	push   ecx
  702301:	8d 8f f0 10 00 00    	lea    ecx,[edi+0x10f0]
  702307:	e8 04 f4 ff ff       	call   0x701710
  70230c:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  702311:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  702315:	0f 57 c0             	xorps  xmm0,xmm0
  702318:	0f 29 40 60          	movaps XMMWORD PTR [eax+0x60],xmm0
  70231c:	75 1d                	jne    0x70233b
  70231e:	84 db                	test   bl,bl
  702320:	75 19                	jne    0x70233b
  702322:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  702326:	0f 28 50 40          	movaps xmm2,XMMWORD PTR [eax+0x40]
  70232a:	0f 28 c8             	movaps xmm1,xmm0
  70232d:	0f c6 ca fa          	shufps xmm1,xmm2,0xfa
  702331:	0f c6 c1 84          	shufps xmm0,xmm1,0x84
  702335:	0f 29 40 30          	movaps XMMWORD PTR [eax+0x30],xmm0
  702339:	eb 2a                	jmp    0x702365
  70233b:	0f 28 8e d0 01 00 00 	movaps xmm1,XMMWORD PTR [esi+0x1d0]
  702342:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  70234a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  70234e:	0f 29 40 50          	movaps XMMWORD PTR [eax+0x50],xmm0
  702352:	0f 28 86 d0 01 00 00 	movaps xmm0,XMMWORD PTR [esi+0x1d0]
  702359:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  70235d:	0f 29 48 30          	movaps XMMWORD PTR [eax+0x30],xmm1
  702361:	0f 29 48 40          	movaps XMMWORD PTR [eax+0x40],xmm1
  702365:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  702369:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  70236e:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  702373:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  702379:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  70237e:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  702382:	0f 28 40 50          	movaps xmm0,XMMWORD PTR [eax+0x50]
  702386:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  70238b:	f3 0f 10 45 14       	movss  xmm0,DWORD PTR [ebp+0x14]
  702390:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  702396:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  70239b:	0f 29 40 50          	movaps XMMWORD PTR [eax+0x50],xmm0
  70239f:	b0 01                	mov    al,0x1
  7023a1:	5f                   	pop    edi
  7023a2:	5e                   	pop    esi
  7023a3:	5b                   	pop    ebx
  7023a4:	8b e5                	mov    esp,ebp
  7023a6:	5d                   	pop    ebp
  7023a7:	c2 18 00             	ret    0x18
  7023aa:	5f                   	pop    edi
  7023ab:	5e                   	pop    esi
  7023ac:	32 c0                	xor    al,al
  7023ae:	5b                   	pop    ebx
  7023af:	8b e5                	mov    esp,ebp
  7023b1:	5d                   	pop    ebp
  7023b2:	c2 18 00             	ret    0x18

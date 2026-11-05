# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00c66240, 0x00c66530).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: WorldManager_ReadManagerList.
Paired annotated Ghidra pseudocode: 00C66240_WorldManager_ReadManagerList.c
Instruction-verified function envelope [0x00c66240,0x00c66530); inferred boundaries.
Includes any internal alignment gaps; original instructions govern decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c66240 <.text+0x865240>:
  c66240:	83 ec 34             	sub    esp,0x34
  c66243:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  c66247:	53                   	push   ebx
  c66248:	33 db                	xor    ebx,ebx
  c6624a:	3b c3                	cmp    eax,ebx
  c6624c:	56                   	push   esi
  c6624d:	8b f1                	mov    esi,ecx
  c6624f:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c66253:	74 43                	je     0xc66298
  c66255:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  c66259:	51                   	push   ecx
  c6625a:	50                   	push   eax
  c6625b:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c6625f:	e8 bc 16 b7 ff       	call   0x7d7920
  c66264:	53                   	push   ebx
  c66265:	68 c0 53 18 01       	push   0x11853c0
  c6626a:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c6626e:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  c66272:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  c66276:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  c6627a:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  c6627e:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  c66282:	e8 39 22 b7 ff       	call   0x7d84c0
  c66287:	3a c3                	cmp    al,bl
  c66289:	88 44 24 40          	mov    BYTE PTR [esp+0x40],al
  c6628d:	75 13                	jne    0xc662a2
  c6628f:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c66293:	e8 f8 16 b7 ff       	call   0x7d7990
  c66298:	5e                   	pop    esi
  c66299:	32 c0                	xor    al,al
  c6629b:	5b                   	pop    ebx
  c6629c:	83 c4 34             	add    esp,0x34
  c6629f:	c2 08 00             	ret    0x8
  c662a2:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
  c662a6:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  c662aa:	52                   	push   edx
  c662ab:	8d 44 24 48          	lea    eax,[esp+0x48]
  c662af:	50                   	push   eax
  c662b0:	51                   	push   ecx
  c662b1:	e8 ca 76 87 ff       	call   0x4dd980
  c662b6:	83 c4 0c             	add    esp,0xc
  c662b9:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c662bd:	50                   	push   eax
  c662be:	e8 2d 17 b7 ff       	call   0x7d79f0
  c662c3:	38 5c 24 38          	cmp    BYTE PTR [esp+0x38],bl
  c662c7:	74 c6                	je     0xc6628f
  c662c9:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  c662cd:	55                   	push   ebp
  c662ce:	bd 02 00 00 00       	mov    ebp,0x2
  c662d3:	3b c5                	cmp    eax,ebp
  c662d5:	76 14                	jbe    0xc662eb
  c662d7:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  c662db:	e8 b0 16 b7 ff       	call   0x7d7990
  c662e0:	5d                   	pop    ebp
  c662e1:	5e                   	pop    esi
  c662e2:	32 c0                	xor    al,al
  c662e4:	5b                   	pop    ebx
  c662e5:	83 c4 34             	add    esp,0x34
  c662e8:	c2 08 00             	ret    0x8
  c662eb:	73 12                	jae    0xc662ff
  c662ed:	8d 54 24 10          	lea    edx,[esp+0x10]
  c662f1:	52                   	push   edx
  c662f2:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c662f6:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c662fa:	e8 b1 21 90 ff       	call   0x5684b0
  c662ff:	57                   	push   edi
  c66300:	8d 44 24 10          	lea    eax,[esp+0x10]
  c66304:	50                   	push   eax
  c66305:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  c66309:	e8 a2 21 90 ff       	call   0x5684b0
  c6630e:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c66312:	33 ff                	xor    edi,edi
  c66314:	3b c3                	cmp    eax,ebx
  c66316:	0f 86 d6 00 00 00    	jbe    0xc663f2
  c6631c:	8d 64 24 00          	lea    esp,[esp+0x0]
  c66320:	39 6c 24 4c          	cmp    DWORD PTR [esp+0x4c],ebp
  c66324:	73 33                	jae    0xc66359
  c66326:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  c6632a:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c6632e:	51                   	push   ecx
  c6632f:	8d 54 24 18          	lea    edx,[esp+0x18]
  c66333:	52                   	push   edx
  c66334:	50                   	push   eax
  c66335:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  c66339:	e8 42 76 87 ff       	call   0x4dd980
  c6633e:	83 c4 0c             	add    esp,0xc
  c66341:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c66345:	50                   	push   eax
  c66346:	e8 a5 16 b7 ff       	call   0x7d79f0
  c6634b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c6634f:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  c66353:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  c66357:	eb 21                	jmp    0xc6637a
  c66359:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  c6635d:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c66361:	52                   	push   edx
  c66362:	8d 44 24 28          	lea    eax,[esp+0x28]
  c66366:	50                   	push   eax
  c66367:	51                   	push   ecx
  c66368:	e8 43 77 87 ff       	call   0x4ddab0
  c6636d:	83 c4 0c             	add    esp,0xc
  c66370:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c66374:	50                   	push   eax
  c66375:	e8 76 16 b7 ff       	call   0x7d79f0
  c6637a:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  c6637e:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c66382:	52                   	push   edx
  c66383:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  c66387:	50                   	push   eax
  c66388:	51                   	push   ecx
  c66389:	e8 f2 75 87 ff       	call   0x4dd980
  c6638e:	83 c4 0c             	add    esp,0xc
  c66391:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c66395:	50                   	push   eax
  c66396:	e8 55 16 b7 ff       	call   0x7d79f0
  c6639b:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c6639f:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c663a3:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  c663a7:	52                   	push   edx
  c663a8:	50                   	push   eax
  c663a9:	53                   	push   ebx
  c663aa:	51                   	push   ecx
  c663ab:	8b ce                	mov    ecx,esi
  c663ad:	e8 4e dc ff ff       	call   0xc64000
  c663b2:	3b c3                	cmp    eax,ebx
  c663b4:	74 2b                	je     0xc663e1
  c663b6:	8b 10                	mov    edx,DWORD PTR [eax]
  c663b8:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c663bc:	8b c8                	mov    ecx,eax
  c663be:	8b 02                	mov    eax,DWORD PTR [edx]
  c663c0:	ff d0                	call   eax
  c663c2:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c663c6:	51                   	push   ecx
  c663c7:	8d 8e 9c 00 00 00    	lea    ecx,[esi+0x9c]
  c663cd:	e8 7e 10 ec ff       	call   0xb27450
  c663d2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c663d6:	3b cb                	cmp    ecx,ebx
  c663d8:	74 07                	je     0xc663e1
  c663da:	8b 11                	mov    edx,DWORD PTR [ecx]
  c663dc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c663df:	ff d0                	call   eax
  c663e1:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c663e5:	83 c7 01             	add    edi,0x1
  c663e8:	3b f8                	cmp    edi,eax
  c663ea:	0f 82 30 ff ff ff    	jb     0xc66320
  c663f0:	3b c3                	cmp    eax,ebx
  c663f2:	74 10                	je     0xc66404
  c663f4:	8b 86 9c 00 00 00    	mov    eax,DWORD PTR [esi+0x9c]
  c663fa:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c663fe:	8a 54 24 1c          	mov    dl,BYTE PTR [esp+0x1c]
  c66402:	eb 0f                	jmp    0xc66413
  c66404:	33 c9                	xor    ecx,ecx
  c66406:	ba 01 00 00 00       	mov    edx,0x1
  c6640b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c6640f:	8d 44 24 14          	lea    eax,[esp+0x14]
  c66413:	f6 c2 01             	test   dl,0x1
  c66416:	8b 00                	mov    eax,DWORD PTR [eax]
  c66418:	89 86 ac 00 00 00    	mov    DWORD PTR [esi+0xac],eax
  c6641e:	74 0b                	je     0xc6642b
  c66420:	3b cb                	cmp    ecx,ebx
  c66422:	74 07                	je     0xc6642b
  c66424:	8b 11                	mov    edx,DWORD PTR [ecx]
  c66426:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c66429:	ff d0                	call   eax
  c6642b:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c6642f:	e8 3c 16 b7 ff       	call   0x7d7a70
  c66434:	53                   	push   ebx
  c66435:	68 d0 53 18 01       	push   0x11853d0
  c6643a:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  c6643e:	e8 7d 20 b7 ff       	call   0x7d84c0
  c66443:	84 c0                	test   al,al
  c66445:	74 23                	je     0xc6646a
  c66447:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  c6644b:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c6644f:	51                   	push   ecx
  c66450:	8d 54 24 28          	lea    edx,[esp+0x28]
  c66454:	52                   	push   edx
  c66455:	50                   	push   eax
  c66456:	e8 55 76 87 ff       	call   0x4ddab0
  c6645b:	83 c4 0c             	add    esp,0xc
  c6645e:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c66462:	50                   	push   eax
  c66463:	e8 88 15 b7 ff       	call   0x7d79f0
  c66468:	eb 0d                	jmp    0xc66477
  c6646a:	c6 44 24 40 01       	mov    BYTE PTR [esp+0x40],0x1
  c6646f:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  c66473:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  c66477:	39 9e b0 00 00 00    	cmp    DWORD PTR [esi+0xb0],ebx
  c6647d:	8d ae b0 00 00 00    	lea    ebp,[esi+0xb0]
  c66483:	0f 85 8a 00 00 00    	jne    0xc66513
  c66489:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  c6648d:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  c66491:	8b 3d 40 53 18 01    	mov    edi,DWORD PTR ds:0x1185340
  c66497:	53                   	push   ebx
  c66498:	53                   	push   ebx
  c66499:	53                   	push   ebx
  c6649a:	53                   	push   ebx
  c6649b:	68 94 a1 07 01       	push   0x107a194
  c664a0:	53                   	push   ebx
  c664a1:	6a 08                	push   0x8
  c664a3:	68 b8 00 00 00       	push   0xb8
  c664a8:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  c664ac:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
  c664b0:	e8 6b e0 87 ff       	call   0x4e4520
  c664b5:	83 c4 20             	add    esp,0x20
  c664b8:	3b c3                	cmp    eax,ebx
  c664ba:	74 53                	je     0xc6650f
  c664bc:	56                   	push   esi
  c664bd:	8b c8                	mov    ecx,eax
  c664bf:	e8 ec 14 e4 ff       	call   0xaa79b0
  c664c4:	8b f0                	mov    esi,eax
  c664c6:	3b f3                	cmp    esi,ebx
  c664c8:	74 23                	je     0xc664ed
  c664ca:	8b 06                	mov    eax,DWORD PTR [esi]
  c664cc:	8b 50 60             	mov    edx,DWORD PTR [eax+0x60]
  c664cf:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c664d3:	51                   	push   ecx
  c664d4:	8b ce                	mov    ecx,esi
  c664d6:	ff d2                	call   edx
  c664d8:	3b fb                	cmp    edi,ebx
  c664da:	74 08                	je     0xc664e4
  c664dc:	57                   	push   edi
  c664dd:	8b ce                	mov    ecx,esi
  c664df:	e8 1c 8b 00 00       	call   0xc6f000
  c664e4:	56                   	push   esi
  c664e5:	e8 26 d9 ff ff       	call   0xc63e10
  c664ea:	83 c4 04             	add    esp,0x4
  c664ed:	56                   	push   esi
  c664ee:	8b cd                	mov    ecx,ebp
  c664f0:	e8 0b 28 c6 ff       	call   0x8c8d00
  c664f5:	39 5d 00             	cmp    DWORD PTR [ebp+0x0],ebx
  c664f8:	75 19                	jne    0xc66513
  c664fa:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c664fe:	e8 8d 14 b7 ff       	call   0x7d7990
  c66503:	5f                   	pop    edi
  c66504:	5d                   	pop    ebp
  c66505:	5e                   	pop    esi
  c66506:	32 c0                	xor    al,al
  c66508:	5b                   	pop    ebx
  c66509:	83 c4 34             	add    esp,0x34
  c6650c:	c2 08 00             	ret    0x8
  c6650f:	33 f6                	xor    esi,esi
  c66511:	eb da                	jmp    0xc664ed
  c66513:	8a 5c 24 40          	mov    bl,BYTE PTR [esp+0x40]
  c66517:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c6651b:	e8 70 14 b7 ff       	call   0x7d7990
  c66520:	5f                   	pop    edi
  c66521:	5d                   	pop    ebp
  c66522:	8a c3                	mov    al,bl
  c66524:	22 44 24 40          	and    al,BYTE PTR [esp+0x40]
  c66528:	5e                   	pop    esi
  c66529:	5b                   	pop    ebx
  c6652a:	83 c4 34             	add    esp,0x34
  c6652d:	c2 08 00             	ret    0x8

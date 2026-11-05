# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x009d6540 ObjectVideoManager_TryInitializeResources
# Complete current Ghidra body [009d6540, 009d66f0] inclusive: 141 instructions/433 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and stored-vs-inferred ABI limits: 009D6540_ObjectVideoManager_TryInitializeResources.c
# Existing instruction body only; preceding CC and15following CC bytes are excluded. Stored undefined(void)/parameter count0/unknown convention is unforced; C infers receiver/return, but AL-only instructions govern.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009d6540 <.text+0x5d5540>:
  9d6540:	83 ec 28                                        	sub    esp,0x28
  9d6543:	56                                              	push   esi
  9d6544:	8b f1                                           	mov    esi,ecx
  9d6546:	80 be 90 00 00 00 00                            	cmp    BYTE PTR [esi+0x90],0x0
  9d654d:	0f 85 86 01 00 00                               	jne    0x9d66d9
  9d6553:	e8 f8 d7 b3 ff                                  	call   0x513d50
  9d6558:	84 c0                                           	test   al,al
  9d655a:	75 07                                           	jne    0x9d6563
  9d655c:	32 c0                                           	xor    al,al
  9d655e:	5e                                              	pop    esi
  9d655f:	83 c4 28                                        	add    esp,0x28
  9d6562:	c3                                              	ret
  9d6563:	53                                              	push   ebx
  9d6564:	57                                              	push   edi
  9d6565:	68 98 25 18 01                                  	push   0x1182598
  9d656a:	c6 86 90 00 00 00 01                            	mov    BYTE PTR [esi+0x90],0x1
  9d6571:	89 35 98 a9 1e 01                               	mov    DWORD PTR ds:0x11ea998,esi
  9d6577:	e8 f4 6b 55 00                                  	call   0xf2d170
  9d657c:	83 c4 04                                        	add    esp,0x4
  9d657f:	e8 6c 5f a7 ff                                  	call   0x44c4f0
  9d6584:	8b f8                                           	mov    edi,eax
  9d6586:	85 ff                                           	test   edi,edi
  9d6588:	74 29                                           	je     0x9d65b3
  9d658a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9d658c:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9d658f:	6a 00                                           	push   0x0
  9d6591:	6a 00                                           	push   0x0
  9d6593:	68 0c f6 da ba                                  	push   0xbadaf60c
  9d6598:	8d 5e 10                                        	lea    ebx,[esi+0x10]
  9d659b:	53                                              	push   ebx
  9d659c:	8b cf                                           	mov    ecx,edi
  9d659e:	ff d2                                           	call   edx
  9d65a0:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9d65a2:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9d65a5:	6a 00                                           	push   0x0
  9d65a7:	6a 00                                           	push   0x0
  9d65a9:	68 9e 33 5a 63                                  	push   0x635a339e
  9d65ae:	53                                              	push   ebx
  9d65af:	8b cf                                           	mov    ecx,edi
  9d65b1:	ff d2                                           	call   edx
  9d65b3:	e8 e8 2d d9 ff                                  	call   0x7693a0
  9d65b8:	8b f8                                           	mov    edi,eax
  9d65ba:	85 ff                                           	test   edi,edi
  9d65bc:	74 29                                           	je     0x9d65e7
  9d65be:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9d65c0:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9d65c3:	6a 00                                           	push   0x0
  9d65c5:	6a 00                                           	push   0x0
  9d65c7:	68 e5 8b 16 06                                  	push   0x6168be5
  9d65cc:	8d 5e 10                                        	lea    ebx,[esi+0x10]
  9d65cf:	53                                              	push   ebx
  9d65d0:	8b cf                                           	mov    ecx,edi
  9d65d2:	ff d2                                           	call   edx
  9d65d4:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9d65d6:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9d65d9:	6a 00                                           	push   0x0
  9d65db:	6a 00                                           	push   0x0
  9d65dd:	68 f0 13 ab 1e                                  	push   0x1eab13f0
  9d65e2:	53                                              	push   ebx
  9d65e3:	8b cf                                           	mov    ecx,edi
  9d65e5:	ff d2                                           	call   edx
  9d65e7:	e8 24 83 c3 ff                                  	call   0x60e910
  9d65ec:	85 c0                                           	test   eax,eax
  9d65ee:	5f                                              	pop    edi
  9d65ef:	5b                                              	pop    ebx
  9d65f0:	74 0b                                           	je     0x9d65fd
  9d65f2:	8d 4e 14                                        	lea    ecx,[esi+0x14]
  9d65f5:	51                                              	push   ecx
  9d65f6:	8b c8                                           	mov    ecx,eax
  9d65f8:	e8 b3 a5 c3 ff                                  	call   0x610bb0
  9d65fd:	d9 86 94 00 00 00                               	fld    DWORD PTR [esi+0x94]
  9d6603:	8b 15 b0 0a 15 01                               	mov    edx,DWORD PTR ds:0x1150ab0
  9d6609:	51                                              	push   ecx
  9d660a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9d660d:	68 38 2c 05 01                                  	push   0x1052c38
  9d6612:	52                                              	push   edx
  9d6613:	e8 38 49 bb ff                                  	call   0x58af50
  9d6618:	d9 9e 94 00 00 00                               	fstp   DWORD PTR [esi+0x94]
  9d661e:	d9 86 98 00 00 00                               	fld    DWORD PTR [esi+0x98]
  9d6624:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  9d6629:	83 c4 08                                        	add    esp,0x8
  9d662c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9d662f:	68 10 2c 05 01                                  	push   0x1052c10
  9d6634:	50                                              	push   eax
  9d6635:	e8 16 49 bb ff                                  	call   0x58af50
  9d663a:	d9 9e 98 00 00 00                               	fstp   DWORD PTR [esi+0x98]
  9d6640:	83 c4 0c                                        	add    esp,0xc
  9d6643:	83 3d 9c a9 1e 01 00                            	cmp    DWORD PTR ds:0x11ea99c,0x0
  9d664a:	0f 85 89 00 00 00                               	jne    0x9d66d9
  9d6650:	6a 00                                           	push   0x0
  9d6652:	6a 00                                           	push   0x0
  9d6654:	6a 00                                           	push   0x0
  9d6656:	6a 00                                           	push   0x0
  9d6658:	68 fc 2b 05 01                                  	push   0x1052bfc
  9d665d:	6a 34                                           	push   0x34
  9d665f:	e8 9c de b0 ff                                  	call   0x4e4500
  9d6664:	83 c4 18                                        	add    esp,0x18
  9d6667:	85 c0                                           	test   eax,eax
  9d6669:	74 75                                           	je     0x9d66e0
  9d666b:	8b c8                                           	mov    ecx,eax
  9d666d:	e8 2e 3c c4 ff                                  	call   0x61a2a0
  9d6672:	85 c0                                           	test   eax,eax
  9d6674:	a3 9c a9 1e 01                                  	mov    ds:0x11ea99c,eax
  9d6679:	0f 84 dd fe ff ff                               	je     0x9d655c
  9d667f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9d6681:	8b c8                                           	mov    ecx,eax
  9d6683:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  9d6686:	ff d0                                           	call   eax
  9d6688:	8b 0d 9c a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea99c
  9d668e:	68 a4 cc ff 00                                  	push   0xffcca4
  9d6693:	6a 02                                           	push   0x2
  9d6695:	6a 10                                           	push   0x10
  9d6697:	6a 01                                           	push   0x1
  9d6699:	6a 01                                           	push   0x1
  9d669b:	6a 01                                           	push   0x1
  9d669d:	e8 be 3c c4 ff                                  	call   0x61a360
  9d66a2:	84 c0                                           	test   al,al
  9d66a4:	0f 84 b2 fe ff ff                               	je     0x9d655c
  9d66aa:	6a 00                                           	push   0x0
  9d66ac:	6a 00                                           	push   0x0
  9d66ae:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  9d66b2:	51                                              	push   ecx
  9d66b3:	8b 0d 9c a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea99c
  9d66b9:	e8 72 2e c4 ff                                  	call   0x619530
  9d66be:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  9d66c2:	85 c0                                           	test   eax,eax
  9d66c4:	74 13                                           	je     0x9d66d9
  9d66c6:	8b 0d 9c a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea99c
  9d66cc:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  9d66d0:	52                                              	push   edx
  9d66d1:	c6 00 00                                        	mov    BYTE PTR [eax],0x0
  9d66d4:	e8 c7 31 c4 ff                                  	call   0x6198a0
  9d66d9:	b0 01                                           	mov    al,0x1
  9d66db:	5e                                              	pop    esi
  9d66dc:	83 c4 28                                        	add    esp,0x28
  9d66df:	c3                                              	ret
  9d66e0:	c7 05 9c a9 1e 01 00 00 00 00                   	mov    DWORD PTR ds:0x11ea99c,0x0
  9d66ea:	32 c0                                           	xor    al,al
  9d66ec:	5e                                              	pop    esi
  9d66ed:	83 c4 28                                        	add    esp,0x28
  9d66f0:	c3                                              	ret

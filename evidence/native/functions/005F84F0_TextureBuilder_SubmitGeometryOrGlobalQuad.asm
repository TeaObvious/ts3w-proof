# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x005f84f0 (TextureBuilder_SubmitGeometryOrGlobalQuad)
Paired actual Ghidra pseudocode: 005F84F0_TextureBuilder_SubmitGeometryOrGlobalQuad.c
Envelope [0x005f84f0,0x005f85d2); 226 bytes; exact owned ranges: [0x005f84f0,0x005f85d2)
Owned: 226 original bytes / 86 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
005f84f0 <original>:
  5f84f0:	56                                              	push   esi
  5f84f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5f84f5:	83 7e 58 00                                     	cmp    DWORD PTR [esi+0x58],0x0
  5f84f9:	0f 84 c8 00 00 00                               	je     0x5f85c7
  5f84ff:	80 7e 5d 00                                     	cmp    BYTE PTR [esi+0x5d],0x0
  5f8503:	0f 84 be 00 00 00                               	je     0x5f85c7
  5f8509:	53                                              	push   ebx
  5f850a:	57                                              	push   edi
  5f850b:	8b 3d c8 fc 1c 01                               	mov    edi,DWORD PTR ds:0x11cfcc8
  5f8511:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5f8515:	50                                              	push   eax
  5f8516:	e8 85 be fd ff                                  	call   0x5d43a0
  5f851b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  5f851d:	83 c4 04                                        	add    esp,0x4
  5f8520:	51                                              	push   ecx
  5f8521:	8b cf                                           	mov    ecx,edi
  5f8523:	e8 c8 70 01 00                                  	call   0x60f5f0
  5f8528:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5f852c:	85 c9                                           	test   ecx,ecx
  5f852e:	74 07                                           	je     0x5f8537
  5f8530:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5f8532:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5f8535:	ff d0                                           	call   eax
  5f8537:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  5f853a:	51                                              	push   ecx
  5f853b:	8b cf                                           	mov    ecx,edi
  5f853d:	e8 ee 71 01 00                                  	call   0x60f730
  5f8542:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5f8546:	52                                              	push   edx
  5f8547:	e8 54 be fd ff                                  	call   0x5d43a0
  5f854c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5f854e:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  5f8551:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5f8553:	8b 46 54                                        	mov    eax,DWORD PTR [esi+0x54]
  5f8556:	83 c4 04                                        	add    esp,0x4
  5f8559:	52                                              	push   edx
  5f855a:	6a 00                                           	push   0x0
  5f855c:	50                                              	push   eax
  5f855d:	6a 00                                           	push   0x0
  5f855f:	8b cf                                           	mov    ecx,edi
  5f8561:	e8 fa 70 01 00                                  	call   0x60f660
  5f8566:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5f856a:	85 c9                                           	test   ecx,ecx
  5f856c:	74 07                                           	je     0x5f8575
  5f856e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5f8570:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5f8573:	ff d0                                           	call   eax
  5f8575:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  5f8578:	8b 56 54                                        	mov    edx,DWORD PTR [esi+0x54]
  5f857b:	8b 59 18                                        	mov    ebx,DWORD PTR [ecx+0x18]
  5f857e:	8b 72 18                                        	mov    esi,DWORD PTR [edx+0x18]
  5f8581:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5f8585:	50                                              	push   eax
  5f8586:	e8 15 be fd ff                                  	call   0x5d43a0
  5f858b:	8b c8                                           	mov    ecx,eax
  5f858d:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  5f858f:	8b 49 20                                        	mov    ecx,DWORD PTR [ecx+0x20]
  5f8592:	b8 ab aa aa aa                                  	mov    eax,0xaaaaaaab
  5f8597:	f7 e3                                           	mul    ebx
  5f8599:	83 c4 04                                        	add    esp,0x4
  5f859c:	d1 ea                                           	shr    edx,1
  5f859e:	52                                              	push   edx
  5f859f:	33 d2                                           	xor    edx,edx
  5f85a1:	8b c6                                           	mov    eax,esi
  5f85a3:	f7 31                                           	div    DWORD PTR [ecx]
  5f85a5:	6a 00                                           	push   0x0
  5f85a7:	8b cf                                           	mov    ecx,edi
  5f85a9:	50                                              	push   eax
  5f85aa:	6a 00                                           	push   0x0
  5f85ac:	6a 00                                           	push   0x0
  5f85ae:	6a 03                                           	push   0x3
  5f85b0:	e8 0b 72 01 00                                  	call   0x60f7c0
  5f85b5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5f85b9:	85 c9                                           	test   ecx,ecx
  5f85bb:	5f                                              	pop    edi
  5f85bc:	5b                                              	pop    ebx
  5f85bd:	74 11                                           	je     0x5f85d0
  5f85bf:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5f85c1:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5f85c4:	5e                                              	pop    esi
  5f85c5:	ff e0                                           	jmp    eax
  5f85c7:	56                                              	push   esi
  5f85c8:	e8 e3 f4 ff ff                                  	call   0x5f7ab0
  5f85cd:	83 c4 04                                        	add    esp,0x4
  5f85d0:	5e                                              	pop    esi
  5f85d1:	c3                                              	ret

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac61f0 (LotGrid_ReadHeaderAndResize)
Paired actual Ghidra pseudocode: 00AC61F0_LotGrid_ReadHeaderAndResize.c
Envelope [0x00ac61f0,0x00ac62d9); 233 bytes; exact owned ranges: [0x00ac61f0,0x00ac62d9)
Owned: 233 original bytes / 82 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac61f0 <original>:
  ac61f0:	83 ec 14                                        	sub    $0x14,%esp
  ac61f3:	8b 44 24 20                                     	mov    0x20(%esp),%eax
  ac61f7:	8b 54 24 1c                                     	mov    0x1c(%esp),%edx
  ac61fb:	56                                              	push   %esi
  ac61fc:	8b 74 24 1c                                     	mov    0x1c(%esp),%esi
  ac6200:	83 7e 04 00                                     	cmpl   $0x0,0x4(%esi)
  ac6204:	57                                              	push   %edi
  ac6205:	8b f9                                           	mov    %ecx,%edi
  ac6207:	8b 4c 24 2c                                     	mov    0x2c(%esp),%ecx
  ac620b:	89 44 24 0c                                     	mov    %eax,0xc(%esp)
  ac620f:	89 4c 24 10                                     	mov    %ecx,0x10(%esp)
  ac6213:	c7 44 24 14 3a 53 25 b1                         	movl   $0xb125533a,0x14(%esp)
  ac621b:	89 54 24 18                                     	mov    %edx,0x18(%esp)
  ac621f:	75 16                                           	jne    0xac6237
  ac6221:	6a 00                                           	push   $0x0
  ac6223:	8d 44 24 10                                     	lea    0x10(%esp),%eax
  ac6227:	50                                              	push   %eax
  ac6228:	8b ce                                           	mov    %esi,%ecx
  ac622a:	e8 91 22 d1 ff                                  	call   0x7d84c0
  ac622f:	84 c0                                           	test   %al,%al
  ac6231:	0f 84 97 00 00 00                               	je     0xac62ce
  ac6237:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  ac623a:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac623d:	51                                              	push   %ecx
  ac623e:	8d 54 24 0c                                     	lea    0xc(%esp),%edx
  ac6242:	52                                              	push   %edx
  ac6243:	50                                              	push   %eax
  ac6244:	e8 37 77 a1 ff                                  	call   0x4dd980
  ac6249:	83 c4 0c                                        	add    $0xc,%esp
  ac624c:	8b ce                                           	mov    %esi,%ecx
  ac624e:	50                                              	push   %eax
  ac624f:	e8 9c 17 d1 ff                                  	call   0x7d79f0
  ac6254:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  ac6257:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac625a:	51                                              	push   %ecx
  ac625b:	8d 54 24 2c                                     	lea    0x2c(%esp),%edx
  ac625f:	52                                              	push   %edx
  ac6260:	50                                              	push   %eax
  ac6261:	e8 1a 77 a1 ff                                  	call   0x4dd980
  ac6266:	83 c4 0c                                        	add    $0xc,%esp
  ac6269:	8b ce                                           	mov    %esi,%ecx
  ac626b:	50                                              	push   %eax
  ac626c:	e8 7f 17 d1 ff                                  	call   0x7d79f0
  ac6271:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  ac6274:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac6277:	51                                              	push   %ecx
  ac6278:	8d 54 24 24                                     	lea    0x24(%esp),%edx
  ac627c:	52                                              	push   %edx
  ac627d:	50                                              	push   %eax
  ac627e:	e8 fd 76 a1 ff                                  	call   0x4dd980
  ac6283:	83 c4 0c                                        	add    $0xc,%esp
  ac6286:	8b ce                                           	mov    %esi,%ecx
  ac6288:	50                                              	push   %eax
  ac6289:	e8 62 17 d1 ff                                  	call   0x7d79f0
  ac628e:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  ac6291:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac6294:	51                                              	push   %ecx
  ac6295:	8d 54 24 28                                     	lea    0x28(%esp),%edx
  ac6299:	52                                              	push   %edx
  ac629a:	50                                              	push   %eax
  ac629b:	e8 e0 76 a1 ff                                  	call   0x4dd980
  ac62a0:	83 c4 0c                                        	add    $0xc,%esp
  ac62a3:	8b ce                                           	mov    %esi,%ecx
  ac62a5:	50                                              	push   %eax
  ac62a6:	e8 45 17 d1 ff                                  	call   0x7d79f0
  ac62ab:	8b 4c 24 24                                     	mov    0x24(%esp),%ecx
  ac62af:	8b 54 24 20                                     	mov    0x20(%esp),%edx
  ac62b3:	8b 44 24 28                                     	mov    0x28(%esp),%eax
  ac62b7:	51                                              	push   %ecx
  ac62b8:	52                                              	push   %edx
  ac62b9:	50                                              	push   %eax
  ac62ba:	8b cf                                           	mov    %edi,%ecx
  ac62bc:	e8 4f d2 ff ff                                  	call   0xac3510
  ac62c1:	80 7e 14 00                                     	cmpb   $0x0,0x14(%esi)
  ac62c5:	75 07                                           	jne    0xac62ce
  ac62c7:	8b ce                                           	mov    %esi,%ecx
  ac62c9:	e8 a2 17 d1 ff                                  	call   0x7d7a70
  ac62ce:	8a 46 14                                        	mov    0x14(%esi),%al
  ac62d1:	5f                                              	pop    %edi
  ac62d2:	5e                                              	pop    %esi
  ac62d3:	83 c4 14                                        	add    $0x14,%esp
  ac62d6:	c2 10 00                                        	ret    $0x10

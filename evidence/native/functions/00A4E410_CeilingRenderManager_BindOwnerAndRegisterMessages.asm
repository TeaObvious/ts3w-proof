# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4e410 CeilingRenderManager_BindOwnerAndRegisterMessages
# Complete Ghidra body [00a4e410, 00a4e4ae] inclusive: 52 body instructions, 159 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 159 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4E410_CeilingRenderManager_BindOwnerAndRegisterMessages.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4e410 <.text+0x64d410>:
  a4e410:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a4e414:	53                                              	push   ebx
  a4e415:	56                                              	push   esi
  a4e416:	8b f1                                           	mov    esi,ecx
  a4e418:	89 46 18                                        	mov    DWORD PTR [esi+0x18],eax
  a4e41b:	8b 4e 64                                        	mov    ecx,DWORD PTR [esi+0x64]
  a4e41e:	57                                              	push   edi
  a4e41f:	8d 7e 64                                        	lea    edi,[esi+0x64]
  a4e422:	89 4f 04                                        	mov    DWORD PTR [edi+0x4],ecx
  a4e425:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  a4e428:	8b 5a 18                                        	mov    ebx,DWORD PTR [edx+0x18]
  a4e42b:	8b 83 b0 02 00 00                               	mov    eax,DWORD PTR [ebx+0x2b0]
  a4e431:	83 c0 20                                        	add    eax,0x20
  a4e434:	50                                              	push   eax
  a4e435:	8b ce                                           	mov    ecx,esi
  a4e437:	e8 14 fa ff ff                                  	call   0xa4de50
  a4e43c:	8b 8b 90 02 00 00                               	mov    ecx,DWORD PTR [ebx+0x290]
  a4e442:	83 c1 34                                        	add    ecx,0x34
  a4e445:	51                                              	push   ecx
  a4e446:	8b cf                                           	mov    ecx,edi
  a4e448:	e8 c3 a7 bb ff                                  	call   0x608c10
  a4e44d:	e8 9e e0 9f ff                                  	call   0x44c4f0
  a4e452:	8b d8                                           	mov    ebx,eax
  a4e454:	85 db                                           	test   ebx,ebx
  a4e456:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
  a4e459:	89 76 08                                        	mov    DWORD PTR [esi+0x8],esi
  a4e45c:	c7 46 0c 10 0c 06 01                            	mov    DWORD PTR [esi+0xc],0x1060c10
  a4e463:	c7 46 10 09 00 00 00                            	mov    DWORD PTR [esi+0x10],0x9
  a4e46a:	c7 46 14 00 00 00 00                            	mov    DWORD PTR [esi+0x14],0x0
  a4e471:	74 1f                                           	je     0xa4e492
  a4e473:	33 ff                                           	xor    edi,edi
  a4e475:	8b 87 10 0c 06 01                               	mov    eax,DWORD PTR [edi+0x1060c10]
  a4e47b:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  a4e47d:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  a4e480:	6a 00                                           	push   0x0
  a4e482:	6a 00                                           	push   0x0
  a4e484:	50                                              	push   eax
  a4e485:	56                                              	push   esi
  a4e486:	8b cb                                           	mov    ecx,ebx
  a4e488:	ff d2                                           	call   edx
  a4e48a:	83 c7 04                                        	add    edi,0x4
  a4e48d:	83 ff 24                                        	cmp    edi,0x24
  a4e490:	72 e3                                           	jb     0xa4e475
  a4e492:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  a4e497:	81 b8 58 01 00 00 2d 01 00 00                   	cmp    DWORD PTR [eax+0x158],0x12d
  a4e4a1:	5f                                              	pop    edi
  a4e4a2:	0f 95 c1                                        	setne  cl
  a4e4a5:	88 4e 60                                        	mov    BYTE PTR [esi+0x60],cl
  a4e4a8:	5e                                              	pop    esi
  a4e4a9:	b0 01                                           	mov    al,0x1
  a4e4ab:	5b                                              	pop    ebx
  a4e4ac:	c2 04 00                                        	ret    0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00562220 (Matrix4_InvertWithReplicatedDeterminant)
Paired actual Ghidra pseudocode: 00562220_Matrix4_InvertWithReplicatedDeterminant.c
Body [0x00562220,0x0056255c); 828 pristine original bytes / 196 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00562220 <original>:
  00562220:	55                                             	PUSH EBP
  00562221:	8b ec                                          	MOV EBP,ESP
  00562223:	83 e4 f0                                       	AND ESP,0xfffffff0
  00562226:	81 ec d0 00 00 00                              	SUB ESP,0xd0
  0056222c:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  0056222f:	0f 28 48 10                                    	MOVAPS XMM1,xmmword ptr [EAX + 0x10]
  00562233:	0f 28 00                                       	MOVAPS XMM0,xmmword ptr [EAX]
  00562236:	0f c6 c9 39                                    	SHUFPS XMM1,XMM1,0x39
  0056223a:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  0056223d:	0f 28 48 20                                    	MOVAPS XMM1,xmmword ptr [EAX + 0x20]
  00562241:	0f c6 c9 39                                    	SHUFPS XMM1,XMM1,0x39
  00562245:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00562248:	0f 28 48 30                                    	MOVAPS XMM1,xmmword ptr [EAX + 0x30]
  0056224c:	0f c6 c9 39                                    	SHUFPS XMM1,XMM1,0x39
  00562250:	0f 28 e1                                       	MOVAPS XMM4,XMM1
  00562253:	0f 29 84 24 80 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x80],XMM0
  0056225b:	0f c6 c0 39                                    	SHUFPS XMM0,XMM0,0x39
  0056225f:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  00562262:	0f c6 c8 39                                    	SHUFPS XMM1,XMM0,0x39
  00562266:	0f 29 4c 24 50                                 	MOVAPS xmmword ptr [ESP + 0x50],XMM1
  0056226b:	0f c6 c9 39                                    	SHUFPS XMM1,XMM1,0x39
  0056226f:	0f 29 4c 24 40                                 	MOVAPS xmmword ptr [ESP + 0x40],XMM1
  00562274:	0f 29 84 24 a0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xa0],XMM0
  0056227c:	0f 29 64 24 60                                 	MOVAPS xmmword ptr [ESP + 0x60],XMM4
  00562281:	0f c6 e4 39                                    	SHUFPS XMM4,XMM4,0x39
  00562285:	0f 28 c3                                       	MOVAPS XMM0,XMM3
  00562288:	0f c6 c3 39                                    	SHUFPS XMM0,XMM3,0x39
  0056228c:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  0056228f:	0f c6 e8 39                                    	SHUFPS XMM5,XMM0,0x39
  00562293:	0f 28 fd                                       	MOVAPS XMM7,XMM5
  00562296:	0f 29 ac 24 90 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x90],XMM5
  0056229e:	0f 59 6c 24 60                                 	MULPS XMM5,xmmword ptr [ESP + 0x60]
  005622a3:	0f 28 f4                                       	MOVAPS XMM6,XMM4
  005622a6:	0f c6 f4 39                                    	SHUFPS XMM6,XMM4,0x39
  005622aa:	0f 28 ce                                       	MOVAPS XMM1,XMM6
  005622ad:	0f 29 74 24 70                                 	MOVAPS xmmword ptr [ESP + 0x70],XMM6
  005622b2:	0f 59 c8                                       	MULPS XMM1,XMM0
  005622b5:	0f 29 9c 24 b0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xb0],XMM3
  005622bd:	0f 59 fc                                       	MULPS XMM7,XMM4
  005622c0:	0f 5c cf                                       	SUBPS XMM1,XMM7
  005622c3:	0f 28 bc 24 b0 00 00 00                        	MOVAPS XMM7,xmmword ptr [ESP + 0xb0]
  005622cb:	0f 59 f7                                       	MULPS XMM6,XMM7
  005622ce:	0f 5c ee                                       	SUBPS XMM5,XMM6
  005622d1:	0f 29 54 24 20                                 	MOVAPS xmmword ptr [ESP + 0x20],XMM2
  005622d6:	0f 59 4c 24 20                                 	MULPS XMM1,xmmword ptr [ESP + 0x20]
  005622db:	0f c6 d2 39                                    	SHUFPS XMM2,XMM2,0x39
  005622df:	0f 59 ea                                       	MULPS XMM5,XMM2
  005622e2:	0f 58 cd                                       	ADDPS XMM1,XMM5
  005622e5:	b8 00 00 00 80                                 	MOV EAX,0x80000000
  005622ea:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  005622ed:	0f 59 6c 24 60                                 	MULPS XMM5,xmmword ptr [ESP + 0x60]
  005622f2:	0f 28 f4                                       	MOVAPS XMM6,XMM4
  005622f5:	0f 59 f7                                       	MULPS XMM6,XMM7
  005622f8:	0f 5c f5                                       	SUBPS XMM6,XMM5
  005622fb:	0f 57 ed                                       	XORPS XMM5,XMM5
  005622fe:	f3 0f 11 6c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM5
  00562304:	f3 0f 11 2c 24                                 	MOVSS dword ptr [ESP],XMM5
  00562309:	0f 28 da                                       	MOVAPS XMM3,XMM2
  0056230c:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00562310:	0f c6 da 39                                    	SHUFPS XMM3,XMM2,0x39
  00562314:	0f 59 f3                                       	MULPS XMM6,XMM3
  00562317:	0f 58 ce                                       	ADDPS XMM1,XMM6
  0056231a:	f3 0f 10 74 24 1c                              	MOVSS XMM6,dword ptr [ESP + 0x1c]
  00562320:	f3 0f 11 74 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM6
  00562326:	f3 0f 11 74 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM6
  0056232c:	0f 28 2c 24                                    	MOVAPS XMM5,xmmword ptr [ESP]
  00562330:	0f 57 cd                                       	XORPS XMM1,XMM5
  00562333:	0f 28 ac 24 80 00 00 00                        	MOVAPS XMM5,xmmword ptr [ESP + 0x80]
  0056233b:	0f 59 e9                                       	MULPS XMM5,XMM1
  0056233e:	0f 28 f5                                       	MOVAPS XMM6,XMM5
  00562341:	0f c6 f5 0e                                    	SHUFPS XMM6,XMM5,0xe
  00562345:	0f 58 f5                                       	ADDPS XMM6,XMM5
  00562348:	0f 28 ee                                       	MOVAPS XMM5,XMM6
  0056234b:	0f c6 ee 01                                    	SHUFPS XMM5,XMM6,0x1
  0056234f:	0f 58 ee                                       	ADDPS XMM5,XMM6
  00562352:	0f c6 ed 00                                    	SHUFPS XMM5,XMM5,0x0
  00562356:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  0056235a:	89 44 24 38                                    	MOV dword ptr [ESP + 0x38],EAX
  0056235e:	89 44 24 3c                                    	MOV dword ptr [ESP + 0x3c],EAX
  00562362:	8b 45 10                                       	MOV EAX,dword ptr [EBP + 0x10]
  00562365:	0f 29 ac 24 80 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x80],XMM5
  0056236d:	0f 29 28                                       	MOVAPS xmmword ptr [EAX],XMM5
  00562370:	0f 28 6c 24 40                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x40]
  00562375:	0f 29 a4 24 c0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xc0],XMM4
  0056237d:	0f 59 ec                                       	MULPS XMM5,XMM4
  00562380:	0f 28 74 24 70                                 	MOVAPS XMM6,xmmword ptr [ESP + 0x70]
  00562385:	0f 59 74 24 50                                 	MULPS XMM6,xmmword ptr [ESP + 0x50]
  0056238a:	0f 5c ee                                       	SUBPS XMM5,XMM6
  0056238d:	0f 59 ef                                       	MULPS XMM5,XMM7
  00562390:	0f 28 b4 24 a0 00 00 00                        	MOVAPS XMM6,xmmword ptr [ESP + 0xa0]
  00562398:	0f 28 7c 24 70                                 	MOVAPS XMM7,xmmword ptr [ESP + 0x70]
  0056239d:	0f 29 2c 24                                    	MOVAPS xmmword ptr [ESP],XMM5
  005623a1:	0f 28 6c 24 40                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x40]
  005623a6:	0f 59 6c 24 60                                 	MULPS XMM5,xmmword ptr [ESP + 0x60]
  005623ab:	0f 59 fe                                       	MULPS XMM7,XMM6
  005623ae:	0f 5c fd                                       	SUBPS XMM7,XMM5
  005623b1:	0f 28 2c 24                                    	MOVAPS XMM5,xmmword ptr [ESP]
  005623b5:	0f 59 f8                                       	MULPS XMM7,XMM0
  005623b8:	0f 58 ef                                       	ADDPS XMM5,XMM7
  005623bb:	f3 0f 10 7c 24 1c                              	MOVSS XMM7,dword ptr [ESP + 0x1c]
  005623c1:	0f 29 2c 24                                    	MOVAPS xmmword ptr [ESP],XMM5
  005623c5:	0f 28 6c 24 50                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x50]
  005623ca:	0f 59 6c 24 60                                 	MULPS XMM5,xmmword ptr [ESP + 0x60]
  005623cf:	0f 59 e6                                       	MULPS XMM4,XMM6
  005623d2:	0f 5c ec                                       	SUBPS XMM5,XMM4
  005623d5:	0f 59 ac 24 90 00 00 00                        	MULPS XMM5,xmmword ptr [ESP + 0x90]
  005623dd:	0f 28 24 24                                    	MOVAPS XMM4,xmmword ptr [ESP]
  005623e1:	0f 58 e5                                       	ADDPS XMM4,XMM5
  005623e4:	0f 57 ed                                       	XORPS XMM5,XMM5
  005623e7:	f3 0f 11 6c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM5
  005623ed:	f3 0f 11 6c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM5
  005623f3:	f3 0f 11 7c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM7
  005623f9:	f3 0f 11 3c 24                                 	MOVSS dword ptr [ESP],XMM7
  005623fe:	0f 28 2c 24                                    	MOVAPS XMM5,xmmword ptr [ESP]
  00562402:	0f 57 e5                                       	XORPS XMM4,XMM5
  00562405:	0f 28 6c 24 40                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x40]
  0056240a:	0f 59 ea                                       	MULPS XMM5,XMM2
  0056240d:	0f 29 a4 24 a0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xa0],XMM4
  00562415:	0f 28 e3                                       	MOVAPS XMM4,XMM3
  00562418:	0f 59 64 24 50                                 	MULPS XMM4,xmmword ptr [ESP + 0x50]
  0056241d:	0f 5c e5                                       	SUBPS XMM4,XMM5
  00562420:	0f 28 6c 24 40                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x40]
  00562425:	0f 59 6c 24 20                                 	MULPS XMM5,xmmword ptr [ESP + 0x20]
  0056242a:	0f 59 64 24 60                                 	MULPS XMM4,xmmword ptr [ESP + 0x60]
  0056242f:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  00562432:	0f 59 fe                                       	MULPS XMM7,XMM6
  00562435:	0f 5c ef                                       	SUBPS XMM5,XMM7
  00562438:	0f 59 ac 24 c0 00 00 00                        	MULPS XMM5,xmmword ptr [ESP + 0xc0]
  00562440:	0f 58 e5                                       	ADDPS XMM4,XMM5
  00562443:	0f 28 6c 24 50                                 	MOVAPS XMM5,xmmword ptr [ESP + 0x50]
  00562448:	0f 59 6c 24 20                                 	MULPS XMM5,xmmword ptr [ESP + 0x20]
  0056244d:	0f 28 fa                                       	MOVAPS XMM7,XMM2
  00562450:	0f 59 fe                                       	MULPS XMM7,XMM6
  00562453:	0f 5c fd                                       	SUBPS XMM7,XMM5
  00562456:	0f 59 7c 24 70                                 	MULPS XMM7,xmmword ptr [ESP + 0x70]
  0056245b:	0f 57 ed                                       	XORPS XMM5,XMM5
  0056245e:	0f 58 e7                                       	ADDPS XMM4,XMM7
  00562461:	f3 0f 10 7c 24 38                              	MOVSS XMM7,dword ptr [ESP + 0x38]
  00562467:	f3 0f 11 6c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM5
  0056246d:	f3 0f 11 2c 24                                 	MOVSS dword ptr [ESP],XMM5
  00562472:	f3 0f 11 7c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM7
  00562478:	f3 0f 11 7c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM7
  0056247e:	0f 28 2c 24                                    	MOVAPS XMM5,xmmword ptr [ESP]
  00562482:	0f 57 e5                                       	XORPS XMM4,XMM5
  00562485:	0f 28 ac 24 90 00 00 00                        	MOVAPS XMM5,xmmword ptr [ESP + 0x90]
  0056248d:	0f 59 ea                                       	MULPS XMM5,XMM2
  00562490:	0f 59 94 24 b0 00 00 00                        	MULPS XMM2,xmmword ptr [ESP + 0xb0]
  00562498:	0f 28 fb                                       	MOVAPS XMM7,XMM3
  0056249b:	0f 59 9c 24 b0 00 00 00                        	MULPS XMM3,xmmword ptr [ESP + 0xb0]
  005624a3:	0f 59 f8                                       	MULPS XMM7,XMM0
  005624a6:	0f 5c ef                                       	SUBPS XMM5,XMM7
  005624a9:	0f 28 7c 24 20                                 	MOVAPS XMM7,xmmword ptr [ESP + 0x20]
  005624ae:	0f 59 ee                                       	MULPS XMM5,XMM6
  005624b1:	0f 28 b4 24 90 00 00 00                        	MOVAPS XMM6,xmmword ptr [ESP + 0x90]
  005624b9:	0f 59 c7                                       	MULPS XMM0,XMM7
  005624bc:	0f 59 f7                                       	MULPS XMM6,XMM7
  005624bf:	0f 5c c2                                       	SUBPS XMM0,XMM2
  005624c2:	0f 59 44 24 40                                 	MULPS XMM0,xmmword ptr [ESP + 0x40]
  005624c7:	f3 0f 10 54 24 3c                              	MOVSS XMM2,dword ptr [ESP + 0x3c]
  005624cd:	0f 5c de                                       	SUBPS XMM3,XMM6
  005624d0:	0f 59 5c 24 50                                 	MULPS XMM3,xmmword ptr [ESP + 0x50]
  005624d5:	0f 58 eb                                       	ADDPS XMM5,XMM3
  005624d8:	0f 58 e8                                       	ADDPS XMM5,XMM0
  005624db:	0f 57 c0                                       	XORPS XMM0,XMM0
  005624de:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  005624e4:	f3 0f 11 54 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM2
  005624ea:	0f 28 9c 24 80 00 00 00                        	MOVAPS XMM3,xmmword ptr [ESP + 0x80]
  005624f2:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  005624f5:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  005624fb:	f3 0f 11 54 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM2
  00562501:	0f 28 44 24 20                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x20]
  00562506:	0f 28 94 24 a0 00 00 00                        	MOVAPS XMM2,xmmword ptr [ESP + 0xa0]
  0056250e:	0f 57 e8                                       	XORPS XMM5,XMM0
  00562511:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00562514:	0f c6 c2 44                                    	SHUFPS XMM0,XMM2,0x44
  00562518:	0f c6 ca ee                                    	SHUFPS XMM1,XMM2,0xee
  0056251c:	0f 28 d4                                       	MOVAPS XMM2,XMM4
  0056251f:	0f c6 e5 ee                                    	SHUFPS XMM4,XMM5,0xee
  00562523:	0f c6 d5 44                                    	SHUFPS XMM2,XMM5,0x44
  00562527:	0f 28 e8                                       	MOVAPS XMM5,XMM0
  0056252a:	0f c6 c2 dd                                    	SHUFPS XMM0,XMM2,0xdd
  0056252e:	0f 5e c3                                       	DIVPS XMM0,XMM3
  00562531:	0f 29 40 10                                    	MOVAPS xmmword ptr [EAX + 0x10],XMM0
  00562535:	0f 28 c1                                       	MOVAPS XMM0,XMM1
  00562538:	0f c6 ea 88                                    	SHUFPS XMM5,XMM2,0x88
  0056253c:	0f c6 c4 88                                    	SHUFPS XMM0,XMM4,0x88
  00562540:	0f c6 cc dd                                    	SHUFPS XMM1,XMM4,0xdd
  00562544:	0f 5e eb                                       	DIVPS XMM5,XMM3
  00562547:	0f 5e c3                                       	DIVPS XMM0,XMM3
  0056254a:	0f 5e cb                                       	DIVPS XMM1,XMM3
  0056254d:	0f 29 28                                       	MOVAPS xmmword ptr [EAX],XMM5
  00562550:	0f 29 40 20                                    	MOVAPS xmmword ptr [EAX + 0x20],XMM0
  00562554:	0f 29 48 30                                    	MOVAPS xmmword ptr [EAX + 0x30],XMM1
  00562558:	8b e5                                          	MOV ESP,EBP
  0056255a:	5d                                             	POP EBP
  0056255b:	c3                                             	RET

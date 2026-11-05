# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00aa0420 (FloorRenderer_InitializeContainers)
Paired actual Ghidra pseudocode: 00AA0420_FloorRenderer_InitializeContainers.c
Envelope [0x00aa0420,0x00aa05ed); 461 bytes; exact owned ranges: [0x00aa0420,0x00aa05ed)
Owned: 461 original bytes / 89 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aa0420 <original>:
  00aa0420:	83 ec 0c                                       	SUB ESP,0xc
  00aa0423:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00aa042b:	f3 0f 10 0d 88 fd 03 01                        	MOVSS XMM1,dword ptr [0x0103fd88]
  00aa0433:	53                                             	PUSH EBX
  00aa0434:	33 db                                          	XOR EBX,EBX
  00aa0436:	56                                             	PUSH ESI
  00aa0437:	8b f1                                          	MOV ESI,ECX
  00aa0439:	c7 06 bc 48 06 01                              	MOV dword ptr [ESI],0x10648bc
  00aa043f:	89 5e 04                                       	MOV dword ptr [ESI + 0x4],EBX
  00aa0442:	88 5e 08                                       	MOV byte ptr [ESI + 0x8],BL
  00aa0445:	89 5e 14                                       	MOV dword ptr [ESI + 0x14],EBX
  00aa0448:	c6 46 18 01                                    	MOV byte ptr [ESI + 0x18],0x1
  00aa044c:	89 5e 28                                       	MOV dword ptr [ESI + 0x28],EBX
  00aa044f:	89 5e 2c                                       	MOV dword ptr [ESI + 0x2c],EBX
  00aa0452:	89 5e 30                                       	MOV dword ptr [ESI + 0x30],EBX
  00aa0455:	89 5e 34                                       	MOV dword ptr [ESI + 0x34],EBX
  00aa0458:	89 5e 38                                       	MOV dword ptr [ESI + 0x38],EBX
  00aa045b:	89 5e 3c                                       	MOV dword ptr [ESI + 0x3c],EBX
  00aa045e:	89 5e 40                                       	MOV dword ptr [ESI + 0x40],EBX
  00aa0461:	89 5e 44                                       	MOV dword ptr [ESI + 0x44],EBX
  00aa0464:	89 5e 48                                       	MOV dword ptr [ESI + 0x48],EBX
  00aa0467:	89 5e 4c                                       	MOV dword ptr [ESI + 0x4c],EBX
  00aa046a:	f3 0f 11 46 60                                 	MOVSS dword ptr [ESI + 0x60],XMM0
  00aa046f:	f3 0f 11 4e 64                                 	MOVSS dword ptr [ESI + 0x64],XMM1
  00aa0474:	c7 46 6c f0 48 06 01                           	MOV dword ptr [ESI + 0x6c],0x10648f0
  00aa047b:	c7 46 58 01 00 00 00                           	MOV dword ptr [ESI + 0x58],0x1
  00aa0482:	c7 46 54 00 d9 14 01                           	MOV dword ptr [ESI + 0x54],0x114d900
  00aa0489:	89 5e 5c                                       	MOV dword ptr [ESI + 0x5c],EBX
  00aa048c:	89 5e 68                                       	MOV dword ptr [ESI + 0x68],EBX
  00aa048f:	f3 0f 11 86 80 00 00 00                        	MOVSS dword ptr [ESI + 0x80],XMM0
  00aa0497:	f3 0f 11 8e 84 00 00 00                        	MOVSS dword ptr [ESI + 0x84],XMM1
  00aa049f:	c7 86 8c 00 00 00 10 46 06 01                  	MOV dword ptr [ESI + 0x8c],0x1064610
  00aa04a9:	c7 46 78 01 00 00 00                           	MOV dword ptr [ESI + 0x78],0x1
  00aa04b0:	c7 46 74 00 d9 14 01                           	MOV dword ptr [ESI + 0x74],0x114d900
  00aa04b7:	89 5e 7c                                       	MOV dword ptr [ESI + 0x7c],EBX
  00aa04ba:	89 9e 88 00 00 00                              	MOV dword ptr [ESI + 0x88],EBX
  00aa04c0:	88 9e 90 00 00 00                              	MOV byte ptr [ESI + 0x90],BL
  00aa04c6:	89 9e 94 00 00 00                              	MOV dword ptr [ESI + 0x94],EBX
  00aa04cc:	8d 8e a0 00 00 00                              	LEA ECX,[ESI + 0xa0]
  00aa04d2:	88 5c 24 08                                    	MOV byte ptr [ESP + 0x8],BL
  00aa04d6:	88 5c 24 09                                    	MOV byte ptr [ESP + 0x9],BL
  00aa04da:	88 5c 24 0a                                    	MOV byte ptr [ESP + 0xa],BL
  00aa04de:	88 5c 24 0b                                    	MOV byte ptr [ESP + 0xb],BL
  00aa04e2:	88 5c 24 0c                                    	MOV byte ptr [ESP + 0xc],BL
  00aa04e6:	88 5c 24 0d                                    	MOV byte ptr [ESP + 0xd],BL
  00aa04ea:	88 5c 24 0e                                    	MOV byte ptr [ESP + 0xe],BL
  00aa04ee:	88 5c 24 0f                                    	MOV byte ptr [ESP + 0xf],BL
  00aa04f2:	89 9e 98 00 00 00                              	MOV dword ptr [ESI + 0x98],EBX
  00aa04f8:	e8 a3 b6 05 00                                 	CALL 0x00afbba0
  00aa04fd:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  00aa0505:	f3 0f 10 0d 88 fd 03 01                        	MOVSS XMM1,dword ptr [0x0103fd88]
  00aa050d:	89 9e d0 00 00 00                              	MOV dword ptr [ESI + 0xd0],EBX
  00aa0513:	89 9e d4 00 00 00                              	MOV dword ptr [ESI + 0xd4],EBX
  00aa0519:	c7 86 d8 00 00 00 c4 48 06 01                  	MOV dword ptr [ESI + 0xd8],0x10648c4
  00aa0523:	c7 86 dc 00 00 00 58 00 00 00                  	MOV dword ptr [ESI + 0xdc],0x58
  00aa052d:	f3 0f 11 86 f0 00 00 00                        	MOVSS dword ptr [ESI + 0xf0],XMM0
  00aa0535:	f3 0f 11 8e f4 00 00 00                        	MOVSS dword ptr [ESI + 0xf4],XMM1
  00aa053d:	c7 86 e8 00 00 00 01 00 00 00                  	MOV dword ptr [ESI + 0xe8],0x1
  00aa0547:	c7 86 e4 00 00 00 00 d9 14 01                  	MOV dword ptr [ESI + 0xe4],0x114d900
  00aa0551:	89 9e ec 00 00 00                              	MOV dword ptr [ESI + 0xec],EBX
  00aa0557:	89 9e f8 00 00 00                              	MOV dword ptr [ESI + 0xf8],EBX
  00aa055d:	8d 86 d0 00 00 00                              	LEA EAX,[ESI + 0xd0]
  00aa0563:	89 86 fc 00 00 00                              	MOV dword ptr [ESI + 0xfc],EAX
  00aa0569:	89 9e 00 01 00 00                              	MOV dword ptr [ESI + 0x100],EBX
  00aa056f:	89 9e 04 01 00 00                              	MOV dword ptr [ESI + 0x104],EBX
  00aa0575:	89 9e 08 01 00 00                              	MOV dword ptr [ESI + 0x108],EBX
  00aa057b:	89 9e 0c 01 00 00                              	MOV dword ptr [ESI + 0x10c],EBX
  00aa0581:	89 9e 10 01 00 00                              	MOV dword ptr [ESI + 0x110],EBX
  00aa0587:	89 9e 18 01 00 00                              	MOV dword ptr [ESI + 0x118],EBX
  00aa058d:	f3 0f 11 86 1c 01 00 00                        	MOVSS dword ptr [ESI + 0x11c],XMM0
  00aa0595:	c7 86 20 01 00 00 90 01 00 00                  	MOV dword ptr [ESI + 0x120],0x190
  00aa059f:	88 9e 24 01 00 00                              	MOV byte ptr [ESI + 0x124],BL
  00aa05a5:	88 9e 25 01 00 00                              	MOV byte ptr [ESI + 0x125],BL
  00aa05ab:	88 9e 26 01 00 00                              	MOV byte ptr [ESI + 0x126],BL
  00aa05b1:	88 5c 24 10                                    	MOV byte ptr [ESP + 0x10],BL
  00aa05b5:	88 5c 24 11                                    	MOV byte ptr [ESP + 0x11],BL
  00aa05b9:	88 5c 24 12                                    	MOV byte ptr [ESP + 0x12],BL
  00aa05bd:	88 5c 24 13                                    	MOV byte ptr [ESP + 0x13],BL
  00aa05c1:	89 9e 28 01 00 00                              	MOV dword ptr [ESI + 0x128],EBX
  00aa05c7:	89 9e 2c 01 00 00                              	MOV dword ptr [ESI + 0x12c],EBX
  00aa05cd:	89 9e 30 01 00 00                              	MOV dword ptr [ESI + 0x130],EBX
  00aa05d3:	89 9e 34 01 00 00                              	MOV dword ptr [ESI + 0x134],EBX
  00aa05d9:	89 9e 38 01 00 00                              	MOV dword ptr [ESI + 0x138],EBX
  00aa05df:	89 9e 3c 01 00 00                              	MOV dword ptr [ESI + 0x13c],EBX
  00aa05e5:	8b c6                                          	MOV EAX,ESI
  00aa05e7:	5e                                             	POP ESI
  00aa05e8:	5b                                             	POP EBX
  00aa05e9:	83 c4 0c                                       	ADD ESP,0xc
  00aa05ec:	c3                                             	RET

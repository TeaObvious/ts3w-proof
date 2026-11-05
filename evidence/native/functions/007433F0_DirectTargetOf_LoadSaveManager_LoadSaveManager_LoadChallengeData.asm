# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007433f0 (DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData)
Paired actual Ghidra pseudocode: 007433F0_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData.c
Envelope [0x007433f0,0x0074351a); 298 bytes; exact owned ranges: [0x007433f0,0x0074351a)
Owned: 298 original bytes / 111 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007433f0 <original>:
  007433f0:	83 ec 34                                       	SUB ESP,0x34
  007433f3:	53                                             	PUSH EBX
  007433f4:	56                                             	PUSH ESI
  007433f5:	e8 96 5f 02 00                                 	CALL 0x00769390
  007433fa:	8b f0                                          	MOV ESI,EAX
  007433fc:	33 db                                          	XOR EBX,EBX
  007433fe:	3b f3                                          	CMP ESI,EBX
  00743400:	75 08                                          	JNZ 0x0074340a
  00743402:	5e                                             	POP ESI
  00743403:	33 c0                                          	XOR EAX,EAX
  00743405:	5b                                             	POP EBX
  00743406:	83 c4 34                                       	ADD ESP,0x34
  00743409:	c3                                             	RET
  0074340a:	57                                             	PUSH EDI
  0074340b:	e8 b0 65 36 00                                 	CALL 0x00aa99c0
  00743410:	8b f8                                          	MOV EDI,EAX
  00743412:	3b fb                                          	CMP EDI,EBX
  00743414:	0f 84 80 00 00 00                              	JZ 0x0074349a
  0074341a:	68 84 26 00 01                                 	PUSH 0x1002684
  0074341f:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00743423:	89 5c 24 14                                    	MOV dword ptr [ESP + 0x14],EBX
  00743427:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  0074342b:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  0074342f:	c7 44 24 20 6c 26 00 01                        	MOV dword ptr [ESP + 0x20],0x100266c
  00743437:	e8 54 81 cc ff                                 	CALL 0x0040b590
  0074343c:	8b 4c 24 44                                    	MOV ECX,dword ptr [ESP + 0x44]
  00743440:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00743442:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00743445:	51                                             	PUSH ECX
  00743446:	8b ce                                          	MOV ECX,ESI
  00743448:	ff d2                                          	CALL EDX
  0074344a:	3b c3                                          	CMP EAX,EBX
  0074344c:	75 28                                          	JNZ 0x00743476
  0074344e:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00743452:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00743456:	2b c8                                          	SUB ECX,EAX
  00743458:	83 e1 fe                                       	AND ECX,0xfffffffe
  0074345b:	83 f9 02                                       	CMP ECX,0x2
  0074345e:	7e 3a                                          	JLE 0x0074349a
  00743460:	3b c3                                          	CMP EAX,EBX
  00743462:	74 36                                          	JZ 0x0074349a
  00743464:	50                                             	PUSH EAX
  00743465:	e8 76 10 da ff                                 	CALL 0x004e44e0
  0074346a:	83 c4 04                                       	ADD ESP,0x4
  0074346d:	5f                                             	POP EDI
  0074346e:	5e                                             	POP ESI
  0074346f:	33 c0                                          	XOR EAX,EAX
  00743471:	5b                                             	POP EBX
  00743472:	83 c4 34                                       	ADD ESP,0x34
  00743475:	c3                                             	RET
  00743476:	66 39 18                                       	CMP word ptr [EAX],BX
  00743479:	75 28                                          	JNZ 0x007434a3
  0074347b:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  0074347f:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00743483:	2b d0                                          	SUB EDX,EAX
  00743485:	83 e2 fe                                       	AND EDX,0xfffffffe
  00743488:	83 fa 02                                       	CMP EDX,0x2
  0074348b:	7e 0d                                          	JLE 0x0074349a
  0074348d:	3b c3                                          	CMP EAX,EBX
  0074348f:	74 09                                          	JZ 0x0074349a
  00743491:	50                                             	PUSH EAX
  00743492:	e8 49 10 da ff                                 	CALL 0x004e44e0
  00743497:	83 c4 04                                       	ADD ESP,0x4
  0074349a:	5f                                             	POP EDI
  0074349b:	5e                                             	POP ESI
  0074349c:	33 c0                                          	XOR EAX,EAX
  0074349e:	5b                                             	POP EBX
  0074349f:	83 c4 34                                       	ADD ESP,0x34
  007434a2:	c3                                             	RET
  007434a3:	50                                             	PUSH EAX
  007434a4:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  007434a8:	50                                             	PUSH EAX
  007434a9:	8b cf                                          	MOV ECX,EDI
  007434ab:	e8 10 8b 36 00                                 	CALL 0x00aabfc0
  007434b0:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  007434b4:	51                                             	PUSH ECX
  007434b5:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  007434b9:	89 5c 24 10                                    	MOV dword ptr [ESP + 0x10],EBX
  007434bd:	e8 6e 31 db ff                                 	CALL 0x004f6630
  007434c2:	8b 16                                          	MOV EDX,dword ptr [ESI]
  007434c4:	8b 52 50                                       	MOV EDX,dword ptr [EDX + 0x50]
  007434c7:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  007434cb:	50                                             	PUSH EAX
  007434cc:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  007434d0:	51                                             	PUSH ECX
  007434d1:	8b ce                                          	MOV ECX,ESI
  007434d3:	ff d2                                          	CALL EDX
  007434d5:	f6 44 24 28 04                                 	TEST byte ptr [ESP + 0x28],0x4
  007434da:	c7 44 24 20 f4 a6 fb 00                        	MOV dword ptr [ESP + 0x20],0xfba6f4
  007434e2:	74 0a                                          	JZ 0x007434ee
  007434e4:	53                                             	PUSH EBX
  007434e5:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  007434e9:	e8 72 22 db ff                                 	CALL 0x004f5760
  007434ee:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  007434f2:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  007434f6:	8b 74 24 0c                                    	MOV ESI,dword ptr [ESP + 0xc]
  007434fa:	2b c8                                          	SUB ECX,EAX
  007434fc:	83 e1 fe                                       	AND ECX,0xfffffffe
  007434ff:	83 f9 02                                       	CMP ECX,0x2
  00743502:	7e 0d                                          	JLE 0x00743511
  00743504:	3b c3                                          	CMP EAX,EBX
  00743506:	74 09                                          	JZ 0x00743511
  00743508:	50                                             	PUSH EAX
  00743509:	e8 d2 0f da ff                                 	CALL 0x004e44e0
  0074350e:	83 c4 04                                       	ADD ESP,0x4
  00743511:	5f                                             	POP EDI
  00743512:	8b c6                                          	MOV EAX,ESI
  00743514:	5e                                             	POP ESI
  00743515:	5b                                             	POP EBX
  00743516:	83 c4 34                                       	ADD ESP,0x34
  00743519:	c3                                             	RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b69350 (PoolManager_ReadRoomObjectMap)
Paired actual Ghidra pseudocode: 00B69350_PoolManager_ReadRoomObjectMap.c
Envelope [0x00b69350,0x00b69469); 281 bytes; exact owned ranges: [0x00b69350,0x00b69469)
Owned: 281 original bytes / 95 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b69350 <original>:
  00b69350:	83 ec 20                                       	SUB ESP,0x20
  00b69353:	8b 44 24 2c                                    	MOV EAX,dword ptr [ESP + 0x2c]
  00b69357:	8b 54 24 34                                    	MOV EDX,dword ptr [ESP + 0x34]
  00b6935b:	55                                             	PUSH EBP
  00b6935c:	56                                             	PUSH ESI
  00b6935d:	8b 74 24 2c                                    	MOV ESI,dword ptr [ESP + 0x2c]
  00b69361:	8b e9                                          	MOV EBP,ECX
  00b69363:	8b 4c 24 38                                    	MOV ECX,dword ptr [ESP + 0x38]
  00b69367:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  00b6936b:	6a 00                                          	PUSH 0x0
  00b6936d:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  00b69371:	89 4c 24 20                                    	MOV dword ptr [ESP + 0x20],ECX
  00b69375:	50                                             	PUSH EAX
  00b69376:	8b ce                                          	MOV ECX,ESI
  00b69378:	c7 44 24 28 38 8b 5b 06                        	MOV dword ptr [ESP + 0x28],0x65b8b38
  00b69380:	89 54 24 2c                                    	MOV dword ptr [ESP + 0x2c],EDX
  00b69384:	e8 37 f1 c6 ff                                 	CALL 0x007d84c0
  00b69389:	84 c0                                          	TEST AL,AL
  00b6938b:	0f 84 cd 00 00 00                              	JZ 0x00b6945e
  00b69391:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00b69394:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  00b69397:	51                                             	PUSH ECX
  00b69398:	8d 54 24 38                                    	LEA EDX,[ESP + 0x38]
  00b6939c:	52                                             	PUSH EDX
  00b6939d:	50                                             	PUSH EAX
  00b6939e:	e8 dd 45 97 ff                                 	CALL 0x004dd980
  00b693a3:	83 c4 0c                                       	ADD ESP,0xc
  00b693a6:	8b ce                                          	MOV ECX,ESI
  00b693a8:	50                                             	PUSH EAX
  00b693a9:	e8 42 e6 c6 ff                                 	CALL 0x007d79f0
  00b693ae:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00b693b1:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  00b693b4:	51                                             	PUSH ECX
  00b693b5:	8d 54 24 30                                    	LEA EDX,[ESP + 0x30]
  00b693b9:	52                                             	PUSH EDX
  00b693ba:	50                                             	PUSH EAX
  00b693bb:	e8 c0 45 97 ff                                 	CALL 0x004dd980
  00b693c0:	83 c4 0c                                       	ADD ESP,0xc
  00b693c3:	8b ce                                          	MOV ECX,ESI
  00b693c5:	50                                             	PUSH EAX
  00b693c6:	e8 25 e6 c6 ff                                 	CALL 0x007d79f0
  00b693cb:	80 7e 14 00                                    	CMP byte ptr [ESI + 0x14],0x0
  00b693cf:	74 61                                          	JZ 0x00b69432
  00b693d1:	57                                             	PUSH EDI
  00b693d2:	33 ff                                          	XOR EDI,EDI
  00b693d4:	39 7c 24 30                                    	CMP dword ptr [ESP + 0x30],EDI
  00b693d8:	76 57                                          	JBE 0x00b69431
  00b693da:	53                                             	PUSH EBX
  00b693db:	80 cb ff                                       	OR BL,0xff
  00b693de:	8b ff                                          	MOV EDI,EDI
  00b693e0:	56                                             	PUSH ESI
  00b693e1:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00b693e5:	88 5c 24 1c                                    	MOV byte ptr [ESP + 0x1c],BL
  00b693e9:	88 5c 24 1d                                    	MOV byte ptr [ESP + 0x1d],BL
  00b693ed:	c6 44 24 1e 00                                 	MOV byte ptr [ESP + 0x1e],0x0
  00b693f2:	88 5c 24 1f                                    	MOV byte ptr [ESP + 0x1f],BL
  00b693f6:	e8 85 af fe ff                                 	CALL 0x00b54380
  00b693fb:	84 c0                                          	TEST AL,AL
  00b693fd:	74 31                                          	JZ 0x00b69430
  00b693ff:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00b69403:	51                                             	PUSH ECX
  00b69404:	8d 4d 08                                       	LEA ECX,[EBP + 0x8]
  00b69407:	e8 74 fe ff ff                                 	CALL 0x00b69280
  00b6940c:	8b 54 24 10                                    	MOV EDX,dword ptr [ESP + 0x10]
  00b69410:	8b 4c 24 14                                    	MOV ECX,dword ptr [ESP + 0x14]
  00b69414:	89 10                                          	MOV dword ptr [EAX],EDX
  00b69416:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  00b6941a:	89 48 04                                       	MOV dword ptr [EAX + 0x4],ECX
  00b6941d:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00b69421:	89 50 08                                       	MOV dword ptr [EAX + 0x8],EDX
  00b69424:	83 c7 01                                       	ADD EDI,0x1
  00b69427:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  00b6942a:	3b 7c 24 34                                    	CMP EDI,dword ptr [ESP + 0x34]
  00b6942e:	72 b0                                          	JC 0x00b693e0
  00b69430:	5b                                             	POP EBX
  00b69431:	5f                                             	POP EDI
  00b69432:	83 7c 24 34 06                                 	CMP dword ptr [ESP + 0x34],0x6
  00b69437:	75 1e                                          	JNZ 0x00b69457
  00b69439:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  00b6943c:	8d 54 24 3c                                    	LEA EDX,[ESP + 0x3c]
  00b69440:	52                                             	PUSH EDX
  00b69441:	50                                             	PUSH EAX
  00b69442:	c6 44 24 44 01                                 	MOV byte ptr [ESP + 0x44],0x1
  00b69447:	e8 14 44 97 ff                                 	CALL 0x004dd860
  00b6944c:	83 c4 08                                       	ADD ESP,0x8
  00b6944f:	8b ce                                          	MOV ECX,ESI
  00b69451:	50                                             	PUSH EAX
  00b69452:	e8 99 e5 c6 ff                                 	CALL 0x007d79f0
  00b69457:	8b ce                                          	MOV ECX,ESI
  00b69459:	e8 12 e6 c6 ff                                 	CALL 0x007d7a70
  00b6945e:	8a 46 14                                       	MOV AL,byte ptr [ESI + 0x14]
  00b69461:	5e                                             	POP ESI
  00b69462:	5d                                             	POP EBP
  00b69463:	83 c4 20                                       	ADD ESP,0x20
  00b69466:	c2 14 00                                       	RET 0x14

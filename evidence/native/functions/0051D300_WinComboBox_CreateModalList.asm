# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051d300 (WinComboBox_CreateModalList)
Paired actual Ghidra pseudocode: 0051D300_WinComboBox_CreateModalList.c
Envelope [0x0051d300,0x0051dab0); 1968 pristine bytes.
Owned: 1968 original bytes / 617 actual saved Listing instructions.
Saved body: [[0051d300, 0051daaf]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051d300 <original>:
  0051d300:	83 ec 60                                       	SUB ESP,0x60
  0051d303:	53                                             	PUSH EBX
  0051d304:	55                                             	PUSH EBP
  0051d305:	56                                             	PUSH ESI
  0051d306:	57                                             	PUSH EDI
  0051d307:	8b f9                                          	MOV EDI,ECX
  0051d309:	8b 87 94 02 00 00                              	MOV EAX,dword ptr [EDI + 0x294]
  0051d30f:	3b 87 98 02 00 00                              	CMP EAX,dword ptr [EDI + 0x298]
  0051d315:	0f 84 8d 07 00 00                              	JZ 0x0051daa8
  0051d31b:	83 7f 30 00                                    	CMP dword ptr [EDI + 0x30],0x0
  0051d31f:	0f 84 83 07 00 00                              	JZ 0x0051daa8
  0051d325:	8b 4f 30                                       	MOV ECX,dword ptr [EDI + 0x30]
  0051d328:	8b 11                                          	MOV EDX,dword ptr [ECX]
  0051d32a:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  0051d32d:	ff d0                                          	CALL EAX
  0051d32f:	85 c0                                          	TEST EAX,EAX
  0051d331:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  0051d335:	0f 84 6d 07 00 00                              	JZ 0x0051daa8
  0051d33b:	6a 00                                          	PUSH 0x0
  0051d33d:	68 34 cd fb 00                                 	PUSH 0xfbcd34
  0051d342:	6a 10                                          	PUSH 0x10
  0051d344:	68 00 05 00 00                                 	PUSH 0x500
  0051d349:	e8 62 7d fe ff                                 	CALL 0x005050b0
  0051d34e:	83 c4 10                                       	ADD ESP,0x10
  0051d351:	85 c0                                          	TEST EAX,EAX
  0051d353:	0f 84 4f 07 00 00                              	JZ 0x0051daa8
  0051d359:	8b c8                                          	MOV ECX,EAX
  0051d35b:	e8 70 e3 00 00                                 	CALL 0x0052b6d0
  0051d360:	85 c0                                          	TEST EAX,EAX
  0051d362:	0f 84 40 07 00 00                              	JZ 0x0051daa8
  0051d368:	8d b0 50 02 00 00                              	LEA ESI,[EAX + 0x250]
  0051d36e:	85 f6                                          	TEST ESI,ESI
  0051d370:	0f 84 32 07 00 00                              	JZ 0x0051daa8
  0051d376:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d378:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d37b:	6a 00                                          	PUSH 0x0
  0051d37d:	6a 01                                          	PUSH 0x1
  0051d37f:	8b ce                                          	MOV ECX,ESI
  0051d381:	ff d0                                          	CALL EAX
  0051d383:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d385:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d388:	6a 00                                          	PUSH 0x0
  0051d38a:	6a 02                                          	PUSH 0x2
  0051d38c:	8b ce                                          	MOV ECX,ESI
  0051d38e:	ff d0                                          	CALL EAX
  0051d390:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d392:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d395:	6a 00                                          	PUSH 0x0
  0051d397:	6a 08                                          	PUSH 0x8
  0051d399:	8b ce                                          	MOV ECX,ESI
  0051d39b:	ff d0                                          	CALL EAX
  0051d39d:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d39f:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d3a2:	6a 00                                          	PUSH 0x0
  0051d3a4:	6a 10                                          	PUSH 0x10
  0051d3a6:	8b ce                                          	MOV ECX,ESI
  0051d3a8:	ff d0                                          	CALL EAX
  0051d3aa:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d3ac:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d3af:	6a 00                                          	PUSH 0x0
  0051d3b1:	6a 20                                          	PUSH 0x20
  0051d3b3:	8b ce                                          	MOV ECX,ESI
  0051d3b5:	ff d0                                          	CALL EAX
  0051d3b7:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d3b9:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d3bc:	6a 00                                          	PUSH 0x0
  0051d3be:	6a 40                                          	PUSH 0x40
  0051d3c0:	8b ce                                          	MOV ECX,ESI
  0051d3c2:	ff d0                                          	CALL EAX
  0051d3c4:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d3c6:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051d3c9:	6a 01                                          	PUSH 0x1
  0051d3cb:	68 80 00 00 00                                 	PUSH 0x80
  0051d3d0:	8b ce                                          	MOV ECX,ESI
  0051d3d2:	ff d0                                          	CALL EAX
  0051d3d4:	0f b6 87 88 02 00 00                           	MOVZX EAX,byte ptr [EDI + 0x288]
  0051d3db:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d3dd:	8b 52 2c                                       	MOV EDX,dword ptr [EDX + 0x2c]
  0051d3e0:	25 01 ff ff ff                                 	AND EAX,0xffffff01
  0051d3e5:	50                                             	PUSH EAX
  0051d3e6:	68 00 02 00 00                                 	PUSH 0x200
  0051d3eb:	8b ce                                          	MOV ECX,ESI
  0051d3ed:	ff d2                                          	CALL EDX
  0051d3ef:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d3f1:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d3f4:	6a 00                                          	PUSH 0x0
  0051d3f6:	68 00 04 00 00                                 	PUSH 0x400
  0051d3fb:	8b ce                                          	MOV ECX,ESI
  0051d3fd:	ff d2                                          	CALL EDX
  0051d3ff:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d401:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d404:	6a 00                                          	PUSH 0x0
  0051d406:	68 00 08 00 00                                 	PUSH 0x800
  0051d40b:	8b ce                                          	MOV ECX,ESI
  0051d40d:	ff d2                                          	CALL EDX
  0051d40f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d411:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d414:	6a 01                                          	PUSH 0x1
  0051d416:	68 00 20 00 00                                 	PUSH 0x2000
  0051d41b:	8b ce                                          	MOV ECX,ESI
  0051d41d:	ff d2                                          	CALL EDX
  0051d41f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d421:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d424:	6a 01                                          	PUSH 0x1
  0051d426:	68 00 20 00 00                                 	PUSH 0x2000
  0051d42b:	8b ce                                          	MOV ECX,ESI
  0051d42d:	ff d2                                          	CALL EDX
  0051d42f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d431:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d434:	6a 00                                          	PUSH 0x0
  0051d436:	68 00 40 00 00                                 	PUSH 0x4000
  0051d43b:	8b ce                                          	MOV ECX,ESI
  0051d43d:	ff d2                                          	CALL EDX
  0051d43f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d441:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d444:	6a 00                                          	PUSH 0x0
  0051d446:	68 00 10 00 00                                 	PUSH 0x1000
  0051d44b:	8b ce                                          	MOV ECX,ESI
  0051d44d:	ff d2                                          	CALL EDX
  0051d44f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d451:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d454:	6a 00                                          	PUSH 0x0
  0051d456:	68 00 80 00 00                                 	PUSH 0x8000
  0051d45b:	8b ce                                          	MOV ECX,ESI
  0051d45d:	ff d2                                          	CALL EDX
  0051d45f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d461:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d464:	6a 00                                          	PUSH 0x0
  0051d466:	68 00 00 01 00                                 	PUSH 0x10000
  0051d46b:	8b ce                                          	MOV ECX,ESI
  0051d46d:	ff d2                                          	CALL EDX
  0051d46f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d471:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051d474:	6a 00                                          	PUSH 0x0
  0051d476:	68 00 00 02 00                                 	PUSH 0x20000
  0051d47b:	8b ce                                          	MOV ECX,ESI
  0051d47d:	ff d2                                          	CALL EDX
  0051d47f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d481:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  0051d484:	83 ec 10                                       	SUB ESP,0x10
  0051d487:	f6 87 88 02 00 00 01                           	TEST byte ptr [EDI + 0x288],0x1
  0051d48e:	8b ce                                          	MOV ECX,ESI
  0051d490:	74 51                                          	JZ 0x0051d4e3
  0051d492:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  0051d49a:	f3 0f 10 8f e8 02 00 00                        	MOVSS XMM1,dword ptr [EDI + 0x2e8]
  0051d4a2:	f3 0f 58 c8                                    	ADDSS XMM1,XMM0
  0051d4a6:	f3 0f 11 4c 24 0c                              	MOVSS dword ptr [ESP + 0xc],XMM1
  0051d4ac:	f3 0f 10 8f e4 02 00 00                        	MOVSS XMM1,dword ptr [EDI + 0x2e4]
  0051d4b4:	f3 0f 58 c8                                    	ADDSS XMM1,XMM0
  0051d4b8:	f3 0f 11 4c 24 08                              	MOVSS dword ptr [ESP + 0x8],XMM1
  0051d4be:	f3 0f 10 8f e0 02 00 00                        	MOVSS XMM1,dword ptr [EDI + 0x2e0]
  0051d4c6:	f3 0f 58 c8                                    	ADDSS XMM1,XMM0
  0051d4ca:	f3 0f 11 4c 24 04                              	MOVSS dword ptr [ESP + 0x4],XMM1
  0051d4d0:	f3 0f 10 8f dc 02 00 00                        	MOVSS XMM1,dword ptr [EDI + 0x2dc]
  0051d4d8:	f3 0f 58 c8                                    	ADDSS XMM1,XMM0
  0051d4dc:	f3 0f 11 0c 24                                 	MOVSS dword ptr [ESP],XMM1
  0051d4e1:	eb 27                                          	JMP 0x0051d50a
  0051d4e3:	d9 87 e8 02 00 00                              	FLD float ptr [EDI + 0x2e8]
  0051d4e9:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  0051d4ed:	d9 87 e4 02 00 00                              	FLD float ptr [EDI + 0x2e4]
  0051d4f3:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  0051d4f7:	d9 87 e0 02 00 00                              	FLD float ptr [EDI + 0x2e0]
  0051d4fd:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0051d501:	d9 87 dc 02 00 00                              	FLD float ptr [EDI + 0x2dc]
  0051d507:	d9 1c 24                                       	FSTP float ptr [ESP]
  0051d50a:	ff d2                                          	CALL EDX
  0051d50c:	d9 05 88 fd 03 01                              	FLD float ptr [0x0103fd88]
  0051d512:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d514:	8b 50 68                                       	MOV EDX,dword ptr [EAX + 0x68]
  0051d517:	83 ec 10                                       	SUB ESP,0x10
  0051d51a:	d9 54 24 0c                                    	FST float ptr [ESP + 0xc]
  0051d51e:	8b ce                                          	MOV ECX,ESI
  0051d520:	d9 54 24 08                                    	FST float ptr [ESP + 0x8]
  0051d524:	d9 54 24 04                                    	FST float ptr [ESP + 0x4]
  0051d528:	d9 1c 24                                       	FSTP float ptr [ESP]
  0051d52b:	ff d2                                          	CALL EDX
  0051d52d:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d52f:	8b 90 f0 00 00 00                              	MOV EDX,dword ptr [EAX + 0xf0]
  0051d535:	6a 00                                          	PUSH 0x0
  0051d537:	6a 01                                          	PUSH 0x1
  0051d539:	8b ce                                          	MOV ECX,ESI
  0051d53b:	ff d2                                          	CALL EDX
  0051d53d:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d53f:	8b 90 cc 00 00 00                              	MOV EDX,dword ptr [EAX + 0xcc]
  0051d545:	6a 01                                          	PUSH 0x1
  0051d547:	6a 01                                          	PUSH 0x1
  0051d549:	8b ce                                          	MOV ECX,ESI
  0051d54b:	ff d2                                          	CALL EDX
  0051d54d:	d9 ee                                          	FLDZ
  0051d54f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d551:	8b 90 18 01 00 00                              	MOV EDX,dword ptr [EAX + 0x118]
  0051d557:	51                                             	PUSH ECX
  0051d558:	8b ce                                          	MOV ECX,ESI
  0051d55a:	d9 1c 24                                       	FSTP float ptr [ESP]
  0051d55d:	ff d2                                          	CALL EDX
  0051d55f:	d9 87 14 03 00 00                              	FLD float ptr [EDI + 0x314]
  0051d565:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d567:	8b 50 6c                                       	MOV EDX,dword ptr [EAX + 0x6c]
  0051d56a:	83 ec 10                                       	SUB ESP,0x10
  0051d56d:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  0051d571:	8b ce                                          	MOV ECX,ESI
  0051d573:	d9 87 10 03 00 00                              	FLD float ptr [EDI + 0x310]
  0051d579:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  0051d57d:	d9 87 0c 03 00 00                              	FLD float ptr [EDI + 0x30c]
  0051d583:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0051d587:	d9 87 08 03 00 00                              	FLD float ptr [EDI + 0x308]
  0051d58d:	d9 1c 24                                       	FSTP float ptr [ESP]
  0051d590:	ff d2                                          	CALL EDX
  0051d592:	8b 87 a4 02 00 00                              	MOV EAX,dword ptr [EDI + 0x2a4]
  0051d598:	85 c0                                          	TEST EAX,EAX
  0051d59a:	74 0d                                          	JZ 0x0051d5a9
  0051d59c:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d59e:	50                                             	PUSH EAX
  0051d59f:	8b 82 40 02 00 00                              	MOV EAX,dword ptr [EDX + 0x240]
  0051d5a5:	8b ce                                          	MOV ECX,ESI
  0051d5a7:	ff d0                                          	CALL EAX
  0051d5a9:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d5ab:	8b 87 8c 00 00 00                              	MOV EAX,dword ptr [EDI + 0x8c]
  0051d5b1:	8b 52 34                                       	MOV EDX,dword ptr [EDX + 0x34]
  0051d5b4:	50                                             	PUSH EAX
  0051d5b5:	8b ce                                          	MOV ECX,ESI
  0051d5b7:	ff d2                                          	CALL EDX
  0051d5b9:	8b 8f 68 02 00 00                              	MOV ECX,dword ptr [EDI + 0x268]
  0051d5bf:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d5c1:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d5c4:	6a 00                                          	PUSH 0x0
  0051d5c6:	51                                             	PUSH ECX
  0051d5c7:	8b ce                                          	MOV ECX,ESI
  0051d5c9:	ff d2                                          	CALL EDX
  0051d5cb:	8b 8f 6c 02 00 00                              	MOV ECX,dword ptr [EDI + 0x26c]
  0051d5d1:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d5d3:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d5d6:	6a 01                                          	PUSH 0x1
  0051d5d8:	51                                             	PUSH ECX
  0051d5d9:	8b ce                                          	MOV ECX,ESI
  0051d5db:	ff d2                                          	CALL EDX
  0051d5dd:	8b 8f 74 02 00 00                              	MOV ECX,dword ptr [EDI + 0x274]
  0051d5e3:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d5e5:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d5e8:	6a 05                                          	PUSH 0x5
  0051d5ea:	51                                             	PUSH ECX
  0051d5eb:	8b ce                                          	MOV ECX,ESI
  0051d5ed:	ff d2                                          	CALL EDX
  0051d5ef:	8b 8f 70 02 00 00                              	MOV ECX,dword ptr [EDI + 0x270]
  0051d5f5:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d5f7:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d5fa:	6a 04                                          	PUSH 0x4
  0051d5fc:	51                                             	PUSH ECX
  0051d5fd:	8b ce                                          	MOV ECX,ESI
  0051d5ff:	ff d2                                          	CALL EDX
  0051d601:	8b 8f 7c 02 00 00                              	MOV ECX,dword ptr [EDI + 0x27c]
  0051d607:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d609:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d60c:	6a 07                                          	PUSH 0x7
  0051d60e:	51                                             	PUSH ECX
  0051d60f:	8b ce                                          	MOV ECX,ESI
  0051d611:	ff d2                                          	CALL EDX
  0051d613:	8b 8f 78 02 00 00                              	MOV ECX,dword ptr [EDI + 0x278]
  0051d619:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d61b:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d61e:	6a 06                                          	PUSH 0x6
  0051d620:	51                                             	PUSH ECX
  0051d621:	8b ce                                          	MOV ECX,ESI
  0051d623:	ff d2                                          	CALL EDX
  0051d625:	8b 8f 80 02 00 00                              	MOV ECX,dword ptr [EDI + 0x280]
  0051d62b:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d62d:	8b 50 3c                                       	MOV EDX,dword ptr [EAX + 0x3c]
  0051d630:	6a 02                                          	PUSH 0x2
  0051d632:	51                                             	PUSH ECX
  0051d633:	8b ce                                          	MOV ECX,ESI
  0051d635:	ff d2                                          	CALL EDX
  0051d637:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d639:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051d63c:	8b ce                                          	MOV ECX,ESI
  0051d63e:	ff d2                                          	CALL EDX
  0051d640:	8b 8f 6c 02 00 00                              	MOV ECX,dword ptr [EDI + 0x26c]
  0051d646:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051d648:	8b 92 b0 00 00 00                              	MOV EDX,dword ptr [EDX + 0xb0]
  0051d64e:	51                                             	PUSH ECX
  0051d64f:	8b c8                                          	MOV ECX,EAX
  0051d651:	ff d2                                          	CALL EDX
  0051d653:	8b 8f 98 02 00 00                              	MOV ECX,dword ptr [EDI + 0x298]
  0051d659:	2b 8f 94 02 00 00                              	SUB ECX,dword ptr [EDI + 0x294]
  0051d65f:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d661:	8b 40 2c                                       	MOV EAX,dword ptr [EAX + 0x2c]
  0051d664:	c1 f9 04                                       	SAR ECX,0x4
  0051d667:	3b 8f 84 02 00 00                              	CMP ECX,dword ptr [EDI + 0x284]
  0051d66d:	8b ce                                          	MOV ECX,ESI
  0051d66f:	0f 97 c2                                       	SETA DL
  0051d672:	52                                             	PUSH EDX
  0051d673:	6a 04                                          	PUSH 0x4
  0051d675:	ff d0                                          	CALL EAX
  0051d677:	8b 9f 98 02 00 00                              	MOV EBX,dword ptr [EDI + 0x298]
  0051d67d:	2b 9f 94 02 00 00                              	SUB EBX,dword ptr [EDI + 0x294]
  0051d683:	33 ed                                          	XOR EBP,EBP
  0051d685:	c1 fb 04                                       	SAR EBX,0x4
  0051d688:	74 6f                                          	JZ 0x0051d6f9
  0051d68a:	89 6c 24 10                                    	MOV dword ptr [ESP + 0x10],EBP
  0051d68e:	8b ff                                          	MOV EDI,EDI
  0051d690:	8b 87 94 02 00 00                              	MOV EAX,dword ptr [EDI + 0x294]
  0051d696:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  0051d69a:	8b 04 01                                       	MOV EAX,dword ptr [ECX + EAX*0x1]
  0051d69d:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d69f:	8b 92 dc 01 00 00                              	MOV EDX,dword ptr [EDX + 0x1dc]
  0051d6a5:	6a 00                                          	PUSH 0x0
  0051d6a7:	6a 01                                          	PUSH 0x1
  0051d6a9:	6a 00                                          	PUSH 0x0
  0051d6ab:	50                                             	PUSH EAX
  0051d6ac:	55                                             	PUSH EBP
  0051d6ad:	6a 00                                          	PUSH 0x0
  0051d6af:	8b ce                                          	MOV ECX,ESI
  0051d6b1:	ff d2                                          	CALL EDX
  0051d6b3:	8d 4c 24 40                                    	LEA ECX,[ESP + 0x40]
  0051d6b7:	e8 64 65 00 00                                 	CALL 0x00523c20
  0051d6bc:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d6be:	8b 90 68 01 00 00                              	MOV EDX,dword ptr [EAX + 0x168]
  0051d6c4:	8d 4c 24 40                                    	LEA ECX,[ESP + 0x40]
  0051d6c8:	51                                             	PUSH ECX
  0051d6c9:	55                                             	PUSH EBP
  0051d6ca:	6a 00                                          	PUSH 0x0
  0051d6cc:	8b ce                                          	MOV ECX,ESI
  0051d6ce:	ff d2                                          	CALL EDX
  0051d6d0:	84 c0                                          	TEST AL,AL
  0051d6d2:	74 19                                          	JZ 0x0051d6ed
  0051d6d4:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d6d6:	8b 90 6c 01 00 00                              	MOV EDX,dword ptr [EAX + 0x16c]
  0051d6dc:	8d 4c 24 40                                    	LEA ECX,[ESP + 0x40]
  0051d6e0:	51                                             	PUSH ECX
  0051d6e1:	55                                             	PUSH EBP
  0051d6e2:	6a 00                                          	PUSH 0x0
  0051d6e4:	8b ce                                          	MOV ECX,ESI
  0051d6e6:	c6 44 24 70 00                                 	MOV byte ptr [ESP + 0x70],0x0
  0051d6eb:	ff d2                                          	CALL EDX
  0051d6ed:	83 44 24 10 10                                 	ADD dword ptr [ESP + 0x10],0x10
  0051d6f2:	83 c5 01                                       	ADD EBP,0x1
  0051d6f5:	3b eb                                          	CMP EBP,EBX
  0051d6f7:	72 97                                          	JC 0x0051d690
  0051d6f9:	8b 8f 60 02 00 00                              	MOV ECX,dword ptr [EDI + 0x260]
  0051d6ff:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d701:	8b 90 dc 00 00 00                              	MOV EDX,dword ptr [EAX + 0xdc]
  0051d707:	51                                             	PUSH ECX
  0051d708:	6a 00                                          	PUSH 0x0
  0051d70a:	8b ce                                          	MOV ECX,ESI
  0051d70c:	ff d2                                          	CALL EDX
  0051d70e:	83 bf a8 02 00 00 00                           	CMP dword ptr [EDI + 0x2a8],0x0
  0051d715:	74 5f                                          	JZ 0x0051d776
  0051d717:	6a 00                                          	PUSH 0x0
  0051d719:	68 b0 b4 fb 00                                 	PUSH 0xfbb4b0
  0051d71e:	6a 10                                          	PUSH 0x10
  0051d720:	68 50 02 00 00                                 	PUSH 0x250
  0051d725:	e8 86 79 fe ff                                 	CALL 0x005050b0
  0051d72a:	83 c4 10                                       	ADD ESP,0x10
  0051d72d:	85 c0                                          	TEST EAX,EAX
  0051d72f:	74 10                                          	JZ 0x0051d741
  0051d731:	8b c8                                          	MOV ECX,EAX
  0051d733:	e8 58 89 ff ff                                 	CALL 0x00516090
  0051d738:	85 c0                                          	TEST EAX,EAX
  0051d73a:	74 05                                          	JZ 0x0051d741
  0051d73c:	8d 68 04                                       	LEA EBP,[EAX + 0x4]
  0051d73f:	eb 02                                          	JMP 0x0051d743
  0051d741:	33 ed                                          	XOR EBP,EBP
  0051d743:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051d746:	8b 90 b0 00 00 00                              	MOV EDX,dword ptr [EAX + 0xb0]
  0051d74c:	6a 00                                          	PUSH 0x0
  0051d74e:	8b cd                                          	MOV ECX,EBP
  0051d750:	ff d2                                          	CALL EDX
  0051d752:	8b 8f a8 02 00 00                              	MOV ECX,dword ptr [EDI + 0x2a8]
  0051d758:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051d75b:	8b 90 b4 00 00 00                              	MOV EDX,dword ptr [EAX + 0xb4]
  0051d761:	51                                             	PUSH ECX
  0051d762:	8b cd                                          	MOV ECX,EBP
  0051d764:	ff d2                                          	CALL EDX
  0051d766:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051d769:	8b 50 74                                       	MOV EDX,dword ptr [EAX + 0x74]
  0051d76c:	6a 01                                          	PUSH 0x1
  0051d76e:	6a 10                                          	PUSH 0x10
  0051d770:	8b cd                                          	MOV ECX,EBP
  0051d772:	ff d2                                          	CALL EDX
  0051d774:	eb 0b                                          	JMP 0x0051d781
  0051d776:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d778:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051d77b:	8b ce                                          	MOV ECX,ESI
  0051d77d:	ff d2                                          	CALL EDX
  0051d77f:	8b e8                                          	MOV EBP,EAX
  0051d781:	8b 5c 24 18                                    	MOV EBX,dword ptr [ESP + 0x18]
  0051d785:	8b 03                                          	MOV EAX,dword ptr [EBX]
  0051d787:	8b 90 dc 00 00 00                              	MOV EDX,dword ptr [EAX + 0xdc]
  0051d78d:	55                                             	PUSH EBP
  0051d78e:	8b cb                                          	MOV ECX,EBX
  0051d790:	ff d2                                          	CALL EDX
  0051d792:	84 c0                                          	TEST AL,AL
  0051d794:	0f 84 0e 03 00 00                              	JZ 0x0051daa8
  0051d79a:	83 bf a8 02 00 00 00                           	CMP dword ptr [EDI + 0x2a8],0x0
  0051d7a1:	74 20                                          	JZ 0x0051d7c3
  0051d7a3:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051d7a6:	05 dc 00 00 00                                 	ADD EAX,0xdc
  0051d7ab:	89 44 24 18                                    	MOV dword ptr [ESP + 0x18],EAX
  0051d7af:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d7b1:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051d7b4:	8b ce                                          	MOV ECX,ESI
  0051d7b6:	ff d2                                          	CALL EDX
  0051d7b8:	50                                             	PUSH EAX
  0051d7b9:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  0051d7bd:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051d7bf:	8b cd                                          	MOV ECX,EBP
  0051d7c1:	ff d2                                          	CALL EDX
  0051d7c3:	8b 87 88 02 00 00                              	MOV EAX,dword ptr [EDI + 0x288]
  0051d7c9:	f3 0f 10 47 40                                 	MOVSS XMM0,dword ptr [EDI + 0x40]
  0051d7ce:	8b 13                                          	MOV EDX,dword ptr [EBX]
  0051d7d0:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  0051d7d6:	f3 0f 10 47 4c                                 	MOVSS XMM0,dword ptr [EDI + 0x4c]
  0051d7db:	83 e0 01                                       	AND EAX,0x1
  0051d7de:	f3 0f 2a c8                                    	CVTSI2SS XMM1,EAX
  0051d7e2:	8b 42 34                                       	MOV EAX,dword ptr [EDX + 0x34]
  0051d7e5:	f3 0f 5c c1                                    	SUBSS XMM0,XMM1
  0051d7e9:	f3 0f 58 87 ec 02 00 00                        	ADDSS XMM0,dword ptr [EDI + 0x2ec]
  0051d7f1:	8b cb                                          	MOV ECX,EBX
  0051d7f3:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  0051d7f9:	ff d0                                          	CALL EAX
  0051d7fb:	f3 0f 10 40 04                                 	MOVSS XMM0,dword ptr [EAX + 0x4]
  0051d800:	f3 0f 11 44 24 34                              	MOVSS dword ptr [ESP + 0x34],XMM0
  0051d806:	f3 0f 10 40 0c                                 	MOVSS XMM0,dword ptr [EAX + 0xc]
  0051d80b:	83 ec 08                                       	SUB ESP,0x8
  0051d80e:	8b c4                                          	MOV EAX,ESP
  0051d810:	f3 0f 11 44 24 44                              	MOVSS dword ptr [ESP + 0x44],XMM0
  0051d816:	f3 0f 10 44 24 20                              	MOVSS XMM0,dword ptr [ESP + 0x20]
  0051d81c:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  0051d820:	f3 0f 10 44 24 24                              	MOVSS XMM0,dword ptr [ESP + 0x24]
  0051d826:	f3 0f 11 40 04                                 	MOVSS dword ptr [EAX + 0x4],XMM0
  0051d82b:	8b 4f 2c                                       	MOV ECX,dword ptr [EDI + 0x2c]
  0051d82e:	8b 51 04                                       	MOV EDX,dword ptr [ECX + 0x4]
  0051d831:	8b 92 c4 00 00 00                              	MOV EDX,dword ptr [EDX + 0xc4]
  0051d837:	83 c1 04                                       	ADD ECX,0x4
  0051d83a:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  0051d83e:	50                                             	PUSH EAX
  0051d83f:	ff d2                                          	CALL EDX
  0051d841:	f3 0f 10 00                                    	MOVSS XMM0,dword ptr [EAX]
  0051d845:	f3 0f 10 48 04                                 	MOVSS XMM1,dword ptr [EAX + 0x4]
  0051d84a:	83 ec 08                                       	SUB ESP,0x8
  0051d84d:	8b c4                                          	MOV EAX,ESP
  0051d84f:	f3 0f 11 00                                    	MOVSS dword ptr [EAX],XMM0
  0051d853:	f3 0f 11 48 04                                 	MOVSS dword ptr [EAX + 0x4],XMM1
  0051d858:	8b 03                                          	MOV EAX,dword ptr [EBX]
  0051d85a:	8b 90 c8 00 00 00                              	MOV EDX,dword ptr [EAX + 0xc8]
  0051d860:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  0051d864:	51                                             	PUSH ECX
  0051d865:	8b cb                                          	MOV ECX,EBX
  0051d867:	ff d2                                          	CALL EDX
  0051d869:	d9 ee                                          	FLDZ
  0051d86b:	f3 0f 10 00                                    	MOVSS XMM0,dword ptr [EAX]
  0051d86f:	8b 8f 84 02 00 00                              	MOV ECX,dword ptr [EDI + 0x284]
  0051d875:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  0051d87b:	f3 0f 10 40 04                                 	MOVSS XMM0,dword ptr [EAX + 0x4]
  0051d880:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d882:	8b 50 18                                       	MOV EDX,dword ptr [EAX + 0x18]
  0051d885:	83 ec 08                                       	SUB ESP,0x8
  0051d888:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  0051d88e:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0051d892:	f3 0f 10 47 48                                 	MOVSS XMM0,dword ptr [EDI + 0x48]
  0051d897:	f3 0f 5c 47 40                                 	SUBSS XMM0,dword ptr [EDI + 0x40]
  0051d89c:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  0051d8a1:	51                                             	PUSH ECX
  0051d8a2:	6a ff                                          	PUSH -0x1
  0051d8a4:	8b ce                                          	MOV ECX,ESI
  0051d8a6:	ff d2                                          	CALL EDX
  0051d8a8:	8b 8f 60 02 00 00                              	MOV ECX,dword ptr [EDI + 0x260]
  0051d8ae:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d8b0:	8b 90 bc 01 00 00                              	MOV EDX,dword ptr [EAX + 0x1bc]
  0051d8b6:	51                                             	PUSH ECX
  0051d8b7:	6a 00                                          	PUSH 0x0
  0051d8b9:	8b ce                                          	MOV ECX,ESI
  0051d8bb:	ff d2                                          	CALL EDX
  0051d8bd:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d8bf:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051d8c2:	8b ce                                          	MOV ECX,ESI
  0051d8c4:	ff d2                                          	CALL EDX
  0051d8c6:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051d8c8:	8b c8                                          	MOV ECX,EAX
  0051d8ca:	8b 42 34                                       	MOV EAX,dword ptr [EDX + 0x34]
  0051d8cd:	ff d0                                          	CALL EAX
  0051d8cf:	f3 0f 10 10                                    	MOVSS XMM2,dword ptr [EAX]
  0051d8d3:	f3 0f 11 54 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM2
  0051d8d9:	f3 0f 10 58 04                                 	MOVSS XMM3,dword ptr [EAX + 0x4]
  0051d8de:	f3 0f 11 5c 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM3
  0051d8e4:	f3 0f 10 40 08                                 	MOVSS XMM0,dword ptr [EAX + 0x8]
  0051d8e9:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0051d8ef:	f3 0f 10 48 0c                                 	MOVSS XMM1,dword ptr [EAX + 0xc]
  0051d8f4:	f3 0f 10 64 24 18                              	MOVSS XMM4,dword ptr [ESP + 0x18]
  0051d8fa:	f3 0f 5c cb                                    	SUBSS XMM1,XMM3
  0051d8fe:	f3 0f 10 5c 24 1c                              	MOVSS XMM3,dword ptr [ESP + 0x1c]
  0051d904:	f3 0f 5c c2                                    	SUBSS XMM0,XMM2
  0051d908:	f3 0f 10 54 24 3c                              	MOVSS XMM2,dword ptr [ESP + 0x3c]
  0051d90e:	f3 0f 5c 54 24 34                              	SUBSS XMM2,dword ptr [ESP + 0x34]
  0051d914:	f3 0f 58 cb                                    	ADDSS XMM1,XMM3
  0051d918:	0f 28 e9                                       	MOVAPS XMM5,XMM1
  0051d91b:	f3 0f 5c eb                                    	SUBSS XMM5,XMM3
  0051d91f:	0f 2f ea                                       	COMISS XMM5,XMM2
  0051d922:	f3 0f 58 c4                                    	ADDSS XMM0,XMM4
  0051d926:	f3 0f 11 64 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM4
  0051d92c:	f3 0f 11 5c 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM3
  0051d932:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0051d938:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  0051d93e:	72 0d                                          	JC 0x0051d94d
  0051d940:	0f 28 ca                                       	MOVAPS XMM1,XMM2
  0051d943:	f3 0f 58 cb                                    	ADDSS XMM1,XMM3
  0051d947:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  0051d94d:	f3 0f 5c cb                                    	SUBSS XMM1,XMM3
  0051d951:	0f 28 e9                                       	MOVAPS XMM5,XMM1
  0051d954:	f3 0f 58 eb                                    	ADDSS XMM5,XMM3
  0051d958:	0f 2f ea                                       	COMISS XMM5,XMM2
  0051d95b:	76 28                                          	JBE 0x0051d985
  0051d95d:	f3 0f 5c d1                                    	SUBSS XMM2,XMM1
  0051d961:	f3 0f 5c c4                                    	SUBSS XMM0,XMM4
  0051d965:	f3 0f 58 c4                                    	ADDSS XMM0,XMM4
  0051d969:	f3 0f 58 ca                                    	ADDSS XMM1,XMM2
  0051d96d:	f3 0f 11 64 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM4
  0051d973:	f3 0f 11 54 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM2
  0051d979:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0051d97f:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  0051d985:	8b 55 00                                       	MOV EDX,dword ptr [EBP]
  0051d988:	8b 52 64                                       	MOV EDX,dword ptr [EDX + 0x64]
  0051d98b:	8d 44 24 20                                    	LEA EAX,[ESP + 0x20]
  0051d98f:	50                                             	PUSH EAX
  0051d990:	8b cd                                          	MOV ECX,EBP
  0051d992:	ff d2                                          	CALL EDX
  0051d994:	83 bf a8 02 00 00 00                           	CMP dword ptr [EDI + 0x2a8],0x0
  0051d99b:	74 4a                                          	JZ 0x0051d9e7
  0051d99d:	f3 0f 10 44 24 28                              	MOVSS XMM0,dword ptr [ESP + 0x28]
  0051d9a3:	f3 0f 10 4c 24 2c                              	MOVSS XMM1,dword ptr [ESP + 0x2c]
  0051d9a9:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051d9ab:	f3 0f 5c 44 24 20                              	SUBSS XMM0,dword ptr [ESP + 0x20]
  0051d9b1:	f3 0f 5c 4c 24 24                              	SUBSS XMM1,dword ptr [ESP + 0x24]
  0051d9b7:	0f 57 d2                                       	XORPS XMM2,XMM2
  0051d9ba:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051d9bd:	8b ce                                          	MOV ECX,ESI
  0051d9bf:	f3 0f 11 54 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM2
  0051d9c5:	f3 0f 11 54 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM2
  0051d9cb:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  0051d9d1:	f3 0f 11 4c 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM1
  0051d9d7:	ff d2                                          	CALL EDX
  0051d9d9:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051d9db:	8b 52 64                                       	MOV EDX,dword ptr [EDX + 0x64]
  0051d9de:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  0051d9e2:	51                                             	PUSH ECX
  0051d9e3:	8b c8                                          	MOV ECX,EAX
  0051d9e5:	ff d2                                          	CALL EDX
  0051d9e7:	f6 87 88 02 00 00 04                           	TEST byte ptr [EDI + 0x288],0x4
  0051d9ee:	8b 47 30                                       	MOV EAX,dword ptr [EDI + 0x30]
  0051d9f1:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051d9f3:	8b 18                                          	MOV EBX,dword ptr [EAX]
  0051d9f5:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0051d9f8:	75 1b                                          	JNZ 0x0051da15
  0051d9fa:	8d 8f 54 02 00 00                              	LEA ECX,[EDI + 0x254]
  0051da00:	51                                             	PUSH ECX
  0051da01:	8b ce                                          	MOV ECX,ESI
  0051da03:	81 c3 80 00 00 00                              	ADD EBX,0x80
  0051da09:	ff d0                                          	CALL EAX
  0051da0b:	8b 4f 30                                       	MOV ECX,dword ptr [EDI + 0x30]
  0051da0e:	8b 13                                          	MOV EDX,dword ptr [EBX]
  0051da10:	50                                             	PUSH EAX
  0051da11:	ff d2                                          	CALL EDX
  0051da13:	eb 30                                          	JMP 0x0051da45
  0051da15:	6a 01                                          	PUSH 0x1
  0051da17:	8b ce                                          	MOV ECX,ESI
  0051da19:	83 c3 64                                       	ADD EBX,0x64
  0051da1c:	ff d0                                          	CALL EAX
  0051da1e:	8b 4f 30                                       	MOV ECX,dword ptr [EDI + 0x30]
  0051da21:	8b 13                                          	MOV EDX,dword ptr [EBX]
  0051da23:	50                                             	PUSH EAX
  0051da24:	6a 01                                          	PUSH 0x1
  0051da26:	ff d2                                          	CALL EDX
  0051da28:	8b 06                                          	MOV EAX,dword ptr [ESI]
  0051da2a:	8b 50 10                                       	MOV EDX,dword ptr [EAX + 0x10]
  0051da2d:	8b af 54 02 00 00                              	MOV EBP,dword ptr [EDI + 0x254]
  0051da33:	8d 9f 54 02 00 00                              	LEA EBX,[EDI + 0x254]
  0051da39:	8b ce                                          	MOV ECX,ESI
  0051da3b:	ff d2                                          	CALL EDX
  0051da3d:	50                                             	PUSH EAX
  0051da3e:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  0051da41:	8b cb                                          	MOV ECX,EBX
  0051da43:	ff d0                                          	CALL EAX
  0051da45:	6a 00                                          	PUSH 0x0
  0051da47:	68 18 cd fb 00                                 	PUSH 0xfbcd18
  0051da4c:	6a 04                                          	PUSH 0x4
  0051da4e:	6a 14                                          	PUSH 0x14
  0051da50:	e8 5b 76 fe ff                                 	CALL 0x005050b0
  0051da55:	83 c4 10                                       	ADD ESP,0x10
  0051da58:	85 c0                                          	TEST EAX,EAX
  0051da5a:	74 24                                          	JZ 0x0051da80
  0051da5c:	c7 40 04 fc b1 fb 00                           	MOV dword ptr [EAX + 0x4],0xfbb1fc
  0051da63:	c7 40 08 00 00 00 00                           	MOV dword ptr [EAX + 0x8],0x0
  0051da6a:	c6 40 0c 00                                    	MOV byte ptr [EAX + 0xc],0x0
  0051da6e:	c7 00 b0 c9 fb 00                              	MOV dword ptr [EAX],0xfbc9b0
  0051da74:	c7 40 04 94 c9 fb 00                           	MOV dword ptr [EAX + 0x4],0xfbc994
  0051da7b:	89 78 10                                       	MOV dword ptr [EAX + 0x10],EDI
  0051da7e:	eb 02                                          	JMP 0x0051da82
  0051da80:	33 c0                                          	XOR EAX,EAX
  0051da82:	81 c7 04 03 00 00                              	ADD EDI,0x304
  0051da88:	50                                             	PUSH EAX
  0051da89:	8b cf                                          	MOV ECX,EDI
  0051da8b:	e8 70 b2 3a 00                                 	CALL 0x008c8d00
  0051da90:	8b 16                                          	MOV EDX,dword ptr [ESI]
  0051da92:	8b 42 10                                       	MOV EAX,dword ptr [EDX + 0x10]
  0051da95:	8b ce                                          	MOV ECX,ESI
  0051da97:	ff d0                                          	CALL EAX
  0051da99:	8b 0f                                          	MOV ECX,dword ptr [EDI]
  0051da9b:	8b 10                                          	MOV EDX,dword ptr [EAX]
  0051da9d:	8b 92 08 01 00 00                              	MOV EDX,dword ptr [EDX + 0x108]
  0051daa3:	51                                             	PUSH ECX
  0051daa4:	8b c8                                          	MOV ECX,EAX
  0051daa6:	ff d2                                          	CALL EDX
  0051daa8:	5f                                             	POP EDI
  0051daa9:	5e                                             	POP ESI
  0051daaa:	5d                                             	POP EBP
  0051daab:	5b                                             	POP EBX
  0051daac:	83 c4 60                                       	ADD ESP,0x60
  0051daaf:	c3                                             	RET

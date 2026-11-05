# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d4760 (PersistWriter_IndexNativeObject)
Paired actual Ghidra pseudocode: 007D4760_PersistWriter_IndexNativeObject.c
Envelope [0x007d4760,0x007d4805); 165 bytes; exact owned ranges: [0x007d4760,0x007d4805)
Owned: 165 original bytes / 63 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d4760 <original>:
  007d4760:	83 ec 14                                       	SUB ESP,0x14
  007d4763:	57                                             	PUSH EDI
  007d4764:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  007d4768:	85 ff                                          	TEST EDI,EDI
  007d476a:	75 0a                                          	JNZ 0x007d4776
  007d476c:	83 c8 ff                                       	OR EAX,0xffffffff
  007d476f:	5f                                             	POP EDI
  007d4770:	83 c4 14                                       	ADD ESP,0x14
  007d4773:	c2 04 00                                       	RET 0x4
  007d4776:	8b 41 20                                       	MOV EAX,dword ptr [ECX + 0x20]
  007d4779:	2b 41 1c                                       	SUB EAX,dword ptr [ECX + 0x1c]
  007d477c:	56                                             	PUSH ESI
  007d477d:	8d 71 1c                                       	LEA ESI,[ECX + 0x1c]
  007d4780:	c1 f8 02                                       	SAR EAX,0x2
  007d4783:	c6 44 24 20 00                                 	MOV byte ptr [ESP + 0x20],0x0
  007d4788:	8b 54 24 20                                    	MOV EDX,dword ptr [ESP + 0x20]
  007d478c:	52                                             	PUSH EDX
  007d478d:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  007d4791:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  007d4795:	50                                             	PUSH EAX
  007d4796:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  007d479a:	52                                             	PUSH EDX
  007d479b:	83 c1 2c                                       	ADD ECX,0x2c
  007d479e:	89 7c 24 14                                    	MOV dword ptr [ESP + 0x14],EDI
  007d47a2:	e8 c9 fa 01 00                                 	CALL 0x007f4270
  007d47a7:	80 7c 24 18 00                                 	CMP byte ptr [ESP + 0x18],0x0
  007d47ac:	74 48                                          	JZ 0x007d47f6
  007d47ae:	8b 07                                          	MOV EAX,dword ptr [EDI]
  007d47b0:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007d47b2:	8b cf                                          	MOV ECX,EDI
  007d47b4:	89 7c 24 20                                    	MOV dword ptr [ESP + 0x20],EDI
  007d47b8:	ff d2                                          	CALL EDX
  007d47ba:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  007d47bd:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  007d47c0:	73 16                                          	JNC 0x007d47d8
  007d47c2:	85 c0                                          	TEST EAX,EAX
  007d47c4:	8d 48 04                                       	LEA ECX,[EAX + 0x4]
  007d47c7:	89 4e 04                                       	MOV dword ptr [ESI + 0x4],ECX
  007d47ca:	74 1d                                          	JZ 0x007d47e9
  007d47cc:	89 38                                          	MOV dword ptr [EAX],EDI
  007d47ce:	8b 17                                          	MOV EDX,dword ptr [EDI]
  007d47d0:	8b 02                                          	MOV EAX,dword ptr [EDX]
  007d47d2:	8b cf                                          	MOV ECX,EDI
  007d47d4:	ff d0                                          	CALL EAX
  007d47d6:	eb 11                                          	JMP 0x007d47e9
  007d47d8:	8d 4c 24 20                                    	LEA ECX,[ESP + 0x20]
  007d47dc:	51                                             	PUSH ECX
  007d47dd:	50                                             	PUSH EAX
  007d47de:	8b ce                                          	MOV ECX,ESI
  007d47e0:	e8 eb 12 49 00                                 	CALL 0x00c65ad0
  007d47e5:	8b 7c 24 20                                    	MOV EDI,dword ptr [ESP + 0x20]
  007d47e9:	85 ff                                          	TEST EDI,EDI
  007d47eb:	74 09                                          	JZ 0x007d47f6
  007d47ed:	8b 17                                          	MOV EDX,dword ptr [EDI]
  007d47ef:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  007d47f2:	8b cf                                          	MOV ECX,EDI
  007d47f4:	ff d0                                          	CALL EAX
  007d47f6:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  007d47fa:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  007d47fd:	5e                                             	POP ESI
  007d47fe:	5f                                             	POP EDI
  007d47ff:	83 c4 14                                       	ADD ESP,0x14
  007d4802:	c2 04 00                                       	RET 0x4

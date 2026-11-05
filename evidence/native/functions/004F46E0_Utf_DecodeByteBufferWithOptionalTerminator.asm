# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x004f46e0 (Utf_DecodeByteBufferWithOptionalTerminator)
Paired actual Ghidra pseudocode: 004F46E0_Utf_DecodeByteBufferWithOptionalTerminator.c
Envelope [0x004f46e0,0x004f472b); 75 bytes; exact owned ranges: [0x004f46e0,0x004f472b)
Owned: 75 original bytes / 30 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
004f46e0 <original>:
  004f46e0:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  004f46e4:	83 f8 ff                                       	CMP EAX,-0x1
  004f46e7:	53                                             	PUSH EBX
  004f46e8:	8b 5c 24 10                                    	MOV EBX,dword ptr [ESP + 0x10]
  004f46ec:	56                                             	PUSH ESI
  004f46ed:	57                                             	PUSH EDI
  004f46ee:	8b 7c 24 14                                    	MOV EDI,dword ptr [ESP + 0x14]
  004f46f2:	75 09                                          	JNZ 0x004f46fd
  004f46f4:	53                                             	PUSH EBX
  004f46f5:	e8 a6 9b 00 00                                 	CALL 0x004fe2a0
  004f46fa:	83 c4 04                                       	ADD ESP,0x4
  004f46fd:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  004f4701:	6a 10                                          	PUSH 0x10
  004f4703:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  004f4707:	51                                             	PUSH ECX
  004f4708:	56                                             	PUSH ESI
  004f4709:	6a 08                                          	PUSH 0x8
  004f470b:	50                                             	PUSH EAX
  004f470c:	53                                             	PUSH EBX
  004f470d:	e8 de f9 ff ff                                 	CALL 0x004f40f0
  004f4712:	8b 44 24 2c                                    	MOV EAX,dword ptr [ESP + 0x2c]
  004f4716:	83 c4 18                                       	ADD ESP,0x18
  004f4719:	3b f8                                          	CMP EDI,EAX
  004f471b:	76 0a                                          	JBE 0x004f4727
  004f471d:	66 c7 04 46 00 00                              	MOV word ptr [ESI + EAX*0x2],0x0
  004f4723:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  004f4727:	5f                                             	POP EDI
  004f4728:	5e                                             	POP ESI
  004f4729:	5b                                             	POP EBX
  004f472a:	c3                                             	RET

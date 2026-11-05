# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x004f4690 (Utf_EncodeWideBufferReportedLength)
Paired actual Ghidra pseudocode: 004F4690_Utf_EncodeWideBufferReportedLength.c
Envelope [0x004f4690,0x004f46d2); 66 bytes; exact owned ranges: [0x004f4690,0x004f46d2)
Owned: 66 original bytes / 27 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
004f4690 <original>:
  004f4690:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  004f4694:	83 f8 ff                                       	CMP EAX,-0x1
  004f4697:	56                                             	PUSH ESI
  004f4698:	8b 74 24 10                                    	MOV ESI,dword ptr [ESP + 0x10]
  004f469c:	75 0c                                          	JNZ 0x004f46aa
  004f469e:	56                                             	PUSH ESI
  004f469f:	e8 1c 9c 00 00                                 	CALL 0x004fe2c0
  004f46a4:	83 c4 04                                       	ADD ESP,0x4
  004f46a7:	83 c0 01                                       	ADD EAX,0x1
  004f46aa:	8b 54 24 08                                    	MOV EDX,dword ptr [ESP + 0x8]
  004f46ae:	6a 08                                          	PUSH 0x8
  004f46b0:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  004f46b4:	51                                             	PUSH ECX
  004f46b5:	52                                             	PUSH EDX
  004f46b6:	6a 10                                          	PUSH 0x10
  004f46b8:	50                                             	PUSH EAX
  004f46b9:	56                                             	PUSH ESI
  004f46ba:	e8 31 fa ff ff                                 	CALL 0x004f40f0
  004f46bf:	8b 44 24 24                                    	MOV EAX,dword ptr [ESP + 0x24]
  004f46c3:	83 c4 18                                       	ADD ESP,0x18
  004f46c6:	85 c0                                          	TEST EAX,EAX
  004f46c8:	5e                                             	POP ESI
  004f46c9:	76 04                                          	JBE 0x004f46cf
  004f46cb:	83 c0 ff                                       	ADD EAX,-0x1
  004f46ce:	c3                                             	RET
  004f46cf:	33 c0                                          	XOR EAX,EAX
  004f46d1:	c3                                             	RET

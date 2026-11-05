# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00686f10 (CollisionQuery_ExpandTypeMask)
Paired actual Ghidra pseudocode: 00686F10_CollisionQuery_ExpandTypeMask.c
Body [0x00686f10,0x00686f4f); 63 pristine original bytes / 20 actual saved Listing instructions.
Original instruction bytes and actual saved Listing text; inferred prototypes are retained.
Physical registers, AL results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00686f10 <original>:
  00686f10:	8b 4c 24 04                                    	MOV ECX,dword ptr [ESP + 0x4]
  00686f14:	8d 41 f5                                       	LEA EAX,[ECX + -0xb]
  00686f17:	83 f8 05                                       	CMP EAX,0x5
  00686f1a:	77 2b                                          	JA 0x00686f47
  00686f1c:	ff 24 85 50 6f 68 00                           	JMP dword ptr [EAX*0x4 + 0x686f50]
  00686f23:	b8 ff ff 00 00                                 	MOV EAX,0xffff
  00686f28:	c3                                             	RET
  00686f29:	b8 70 00 00 00                                 	MOV EAX,0x70
  00686f2e:	c3                                             	RET
  00686f2f:	b8 03 00 00 00                                 	MOV EAX,0x3
  00686f34:	c3                                             	RET
  00686f35:	b8 04 01 00 00                                 	MOV EAX,0x104
  00686f3a:	c3                                             	RET
  00686f3b:	b8 ff ff 08 00                                 	MOV EAX,0x8ffff
  00686f40:	c3                                             	RET
  00686f41:	b8 06 00 00 00                                 	MOV EAX,0x6
  00686f46:	c3                                             	RET
  00686f47:	b8 01 00 00 00                                 	MOV EAX,0x1
  00686f4c:	d3 e0                                          	SHL EAX,CL
  00686f4e:	c3                                             	RET

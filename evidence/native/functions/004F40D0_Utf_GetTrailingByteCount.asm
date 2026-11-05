# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x004f40d0 (Utf_GetTrailingByteCount)
Paired actual Ghidra pseudocode: 004F40D0_Utf_GetTrailingByteCount.c
Envelope [0x004f40d0,0x004f40e7); 23 bytes; exact owned ranges: [0x004f40d0,0x004f40e7)
Owned: 23 original bytes / 8 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
004f40d0 <original>:
  004f40d0:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  004f40d4:	0f b6 08                                       	MOVZX ECX,byte ptr [EAX]
  004f40d7:	0f b6 81 88 a5 fb 00                           	MOVZX EAX,byte ptr [ECX + 0xfba588]
  004f40de:	85 c0                                          	TEST EAX,EAX
  004f40e0:	75 01                                          	JNZ 0x004f40e3
  004f40e2:	c3                                             	RET
  004f40e3:	83 c0 ff                                       	ADD EAX,-0x1
  004f40e6:	c3                                             	RET

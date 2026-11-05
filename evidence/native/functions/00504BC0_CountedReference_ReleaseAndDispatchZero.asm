# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x00504bc0 (CountedReference_ReleaseAndDispatchZero)
Paired actual Ghidra pseudocode: 00504BC0_CountedReference_ReleaseAndDispatchZero.c
Envelope [0x00504bc0,0x00504bd7); 23 pristine bytes.
Owned: 23 original bytes / 11 actual saved Listing instructions; no body gaps.
Saved body: [[00504bc0, 00504bd6]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00504bc0 <original>:
  00504bc0:	83 41 08 ff                                    	ADD dword ptr [ECX + 0x8],-0x1
  00504bc4:	56                                             	PUSH ESI
  00504bc5:	8b 71 08                                       	MOV ESI,dword ptr [ECX + 0x8]
  00504bc8:	75 09                                          	JNZ 0x00504bd3
  00504bca:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00504bcc:	8b 50 08                                       	MOV EDX,dword ptr [EAX + 0x8]
  00504bcf:	6a 01                                          	PUSH 0x1
  00504bd1:	ff d2                                          	CALL EDX
  00504bd3:	8b c6                                          	MOV EAX,ESI
  00504bd5:	5e                                             	POP ESI
  00504bd6:	c3                                             	RET

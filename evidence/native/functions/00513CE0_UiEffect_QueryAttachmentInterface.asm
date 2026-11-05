# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x00513ce0 (UiEffect_QueryAttachmentInterface)
Paired actual Ghidra pseudocode: 00513CE0_UiEffect_QueryAttachmentInterface.c
Envelope [0x00513ce0,0x00513cf8); 24 pristine bytes.
Owned: 24 original bytes / 10 actual saved Listing instructions; no body gaps.
Saved body: [[00513ce0, 00513cf7]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00513ce0 <original>:
  00513ce0:	8b 4c 24 04                                    	MOV ECX,dword ptr [ESP + 0x4]
  00513ce4:	85 c9                                          	TEST ECX,ECX
  00513ce6:	74 0d                                          	JZ 0x00513cf5
  00513ce8:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00513cea:	8b 50 0c                                       	MOV EDX,dword ptr [EAX + 0xc]
  00513ced:	68 d0 9d 00 2f                                 	PUSH 0x2f009dd0
  00513cf2:	ff d2                                          	CALL EDX
  00513cf4:	c3                                             	RET
  00513cf5:	33 c0                                          	XOR EAX,EAX
  00513cf7:	c3                                             	RET

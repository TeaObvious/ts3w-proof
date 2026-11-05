# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x009de7f0 (FUN_009de7f0)
Paired actual Ghidra pseudocode: 009DE7F0_FUN_009de7f0.c
Envelope [0x009de7f0,0x009de7f4); 4 pristine bytes.
Owned: 4 original bytes / 2 actual saved Listing instructions.
Saved body: [[009de7f0, 009de7f3]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
009de7f0 <original>:
  009de7f0:	8b 41 10                                       	MOV EAX,dword ptr [ECX + 0x10]
  009de7f3:	c3                                             	RET

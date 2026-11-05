# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0040a300 (CountedReference_Retain)
Paired actual Ghidra pseudocode: 0040A300_CountedReference_Retain.c
Envelope [0x0040a300,0x0040a308); 8 pristine bytes.
Owned: 8 original bytes / 3 actual saved Listing instructions; no body gaps.
Saved body: [[0040a300, 0040a307]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0040a300 <original>:
  0040a300:	83 41 08 01                                    	ADD dword ptr [ECX + 0x8],0x1
  0040a304:	8b 41 08                                       	MOV EAX,dword ptr [ECX + 0x8]
  0040a307:	c3                                             	RET

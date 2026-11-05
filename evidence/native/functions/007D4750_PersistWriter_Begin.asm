# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d4750 (PersistWriter_Begin)
Paired actual Ghidra pseudocode: 007D4750_PersistWriter_Begin.c
Envelope [0x007d4750,0x007d4758); 8 bytes; exact owned ranges: [0x007d4750,0x007d4758)
Owned: 8 original bytes / 3 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d4750 <original>:
  007d4750:	e8 fb fd ff ff                                 	CALL 0x007d4550
  007d4755:	b0 01                                          	MOV AL,0x1
  007d4757:	c3                                             	RET

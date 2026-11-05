# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00948880 (ModelComponent_GetBoundsStorage)
Paired actual Ghidra pseudocode: 00948880_ModelComponent_GetBoundsStorage.c
Envelope [0x00948880,0x00948884); 4 bytes. Exact owned ranges: [0x00948880,0x00948884)
Owned: 4 pristine PE bytes / 2 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00948880 <original>:
  00948880:	8d 41 60                                       	LEA EAX,[ECX + 0x60]
  00948883:	c3                                             	RET

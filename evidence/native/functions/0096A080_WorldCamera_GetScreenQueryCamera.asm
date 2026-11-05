# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x0096a080 (WorldCamera_GetScreenQueryCamera)
Paired actual Ghidra pseudocode: 0096A080_WorldCamera_GetScreenQueryCamera.c
Envelope [0x0096a080,0x0096a0b3); 51 bytes. Exact owned ranges: [0x0096a080,0x0096a0b3)
Owned: 51 pristine PE bytes / 20 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0096a080 <original>:
  0096a080:	a1 00 a4 1e 01                                 	MOV EAX,[0x011ea400]
  0096a085:	85 c0                                          	TEST EAX,EAX
  0096a087:	74 05                                          	JZ 0x0096a08e
  0096a089:	8b 40 14                                       	MOV EAX,dword ptr [EAX + 0x14]
  0096a08c:	eb 02                                          	JMP 0x0096a090
  0096a08e:	33 c0                                          	XOR EAX,EAX
  0096a090:	85 c0                                          	TEST EAX,EAX
  0096a092:	74 1c                                          	JZ 0x0096a0b0
  0096a094:	8b 80 8c 00 00 00                              	MOV EAX,dword ptr [EAX + 0x8c]
  0096a09a:	85 c0                                          	TEST EAX,EAX
  0096a09c:	74 05                                          	JZ 0x0096a0a3
  0096a09e:	8b 40 0c                                       	MOV EAX,dword ptr [EAX + 0xc]
  0096a0a1:	eb 02                                          	JMP 0x0096a0a5
  0096a0a3:	33 c0                                          	XOR EAX,EAX
  0096a0a5:	85 c0                                          	TEST EAX,EAX
  0096a0a7:	74 07                                          	JZ 0x0096a0b0
  0096a0a9:	8b c8                                          	MOV ECX,EAX
  0096a0ab:	e9 e0 5c ff ff                                 	JMP 0x0095fd90
  0096a0b0:	33 c0                                          	XOR EAX,EAX
  0096a0b2:	c3                                             	RET

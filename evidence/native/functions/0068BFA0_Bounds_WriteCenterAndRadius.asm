# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x0068bfa0 (Bounds_WriteCenterAndRadius)
Paired actual Ghidra pseudocode: 0068BFA0_Bounds_WriteCenterAndRadius.c
Envelope [0x0068bfa0,0x0068c00f); 111 bytes. Exact owned ranges: [0x0068bfa0,0x0068c00f)
Owned: 111 pristine PE bytes / 34 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0068bfa0 <original>:
  0068bfa0:	55                                             	PUSH EBP
  0068bfa1:	8b ec                                          	MOV EBP,ESP
  0068bfa3:	83 e4 f0                                       	AND ESP,0xfffffff0
  0068bfa6:	83 ec 10                                       	SUB ESP,0x10
  0068bfa9:	0f 28 51 10                                    	MOVAPS XMM2,xmmword ptr [ECX + 0x10]
  0068bfad:	0f 28 01                                       	MOVAPS XMM0,xmmword ptr [ECX]
  0068bfb0:	f3 0f 10 0d b4 b5 f9 00                        	MOVSS XMM1,dword ptr [0x00f9b5b4]
  0068bfb8:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0068bfbb:	0f 58 c2                                       	ADDPS XMM0,XMM2
  0068bfbe:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  0068bfc2:	0f 59 c1                                       	MULPS XMM0,XMM1
  0068bfc5:	0f 29 00                                       	MOVAPS xmmword ptr [EAX],XMM0
  0068bfc8:	0f 28 11                                       	MOVAPS XMM2,xmmword ptr [ECX]
  0068bfcb:	0f 28 41 10                                    	MOVAPS XMM0,xmmword ptr [ECX + 0x10]
  0068bfcf:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  0068bfd2:	0f 5c c2                                       	SUBPS XMM0,XMM2
  0068bfd5:	0f 59 c1                                       	MULPS XMM0,XMM1
  0068bfd8:	0f 57 c9                                       	XORPS XMM1,XMM1
  0068bfdb:	0f 5f c1                                       	MAXPS XMM0,XMM1
  0068bfde:	0f 59 c0                                       	MULPS XMM0,XMM0
  0068bfe1:	0f 28 c8                                       	MOVAPS XMM1,XMM0
  0068bfe4:	0f c6 c8 02                                    	SHUFPS XMM1,XMM0,0x2
  0068bfe8:	0f 28 d0                                       	MOVAPS XMM2,XMM0
  0068bfeb:	0f c6 d0 01                                    	SHUFPS XMM2,XMM0,0x1
  0068bfef:	0f 58 ca                                       	ADDPS XMM1,XMM2
  0068bff2:	0f 58 c8                                       	ADDPS XMM1,XMM0
  0068bff5:	0f c6 c9 00                                    	SHUFPS XMM1,XMM1,0x0
  0068bff9:	0f 51 c1                                       	SQRTPS XMM0,XMM1
  0068bffc:	0f 29 04 24                                    	MOVAPS xmmword ptr [ESP],XMM0
  0068c000:	f3 0f 10 04 24                                 	MOVSS XMM0,dword ptr [ESP]
  0068c005:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  0068c009:	8b e5                                          	MOV ESP,EBP
  0068c00b:	5d                                             	POP EBP
  0068c00c:	c2 08 00                                       	RET 0x8

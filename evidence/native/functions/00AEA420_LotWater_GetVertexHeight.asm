# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00aea420 (LotWater_GetVertexHeight)
Paired actual Ghidra pseudocode: 00AEA420_LotWater_GetVertexHeight.c
Envelope [0x00aea420,0x00aea462); 66 bytes. Exact owned ranges: [0x00aea420,0x00aea462)
Owned: 66 pristine PE bytes / 23 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00aea420 <original>:
  00aea420:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00aea423:	56                                             	PUSH ESI
  00aea424:	8b 74 24 08                                    	MOV ESI,dword ptr [ESP + 0x8]
  00aea428:	85 f6                                          	TEST ESI,ESI
  00aea42a:	7c 18                                          	JL 0x00aea444
  00aea42c:	3b b0 74 01 00 00                              	CMP ESI,dword ptr [EAX + 0x174]
  00aea432:	7f 10                                          	JG 0x00aea444
  00aea434:	8b 54 24 0c                                    	MOV EDX,dword ptr [ESP + 0xc]
  00aea438:	85 d2                                          	TEST EDX,EDX
  00aea43a:	7c 08                                          	JL 0x00aea444
  00aea43c:	3b 90 78 01 00 00                              	CMP EDX,dword ptr [EAX + 0x178]
  00aea442:	7e 06                                          	JLE 0x00aea44a
  00aea444:	d9 ee                                          	FLDZ
  00aea446:	5e                                             	POP ESI
  00aea447:	c2 08 00                                       	RET 0x8
  00aea44a:	8b 81 c8 00 00 00                              	MOV EAX,dword ptr [ECX + 0xc8]
  00aea450:	8b 48 08                                       	MOV ECX,dword ptr [EAX + 0x8]
  00aea453:	0f af ce                                       	IMUL ECX,ESI
  00aea456:	03 ca                                          	ADD ECX,EDX
  00aea458:	8b 50 0c                                       	MOV EDX,dword ptr [EAX + 0xc]
  00aea45b:	5e                                             	POP ESI
  00aea45c:	d9 04 8a                                       	FLD float ptr [EDX + ECX*0x4]
  00aea45f:	c2 08 00                                       	RET 0x8

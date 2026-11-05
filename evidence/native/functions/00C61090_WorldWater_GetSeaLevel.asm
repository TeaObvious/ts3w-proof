# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00c61090 (WorldWater_GetSeaLevel)
Paired actual Ghidra pseudocode: 00C61090_WorldWater_GetSeaLevel.c
Envelope [0x00c61090,0x00c610b4); 36 bytes. Exact owned ranges: [0x00c61090,0x00c610b4)
Owned: 36 pristine PE bytes / 11 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00c61090 <original>:
  00c61090:	51                                             	PUSH ECX
  00c61091:	8b 41 60                                       	MOV EAX,dword ptr [ECX + 0x60]
  00c61094:	85 c0                                          	TEST EAX,EAX
  00c61096:	f3 0f 10 05 74 96 07 01                        	MOVSS XMM0,dword ptr [0x01079674]
  00c6109e:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00c610a3:	74 0a                                          	JZ 0x00c610af
  00c610a5:	f3 0f 10 40 14                                 	MOVSS XMM0,dword ptr [EAX + 0x14]
  00c610aa:	f3 0f 11 04 24                                 	MOVSS dword ptr [ESP],XMM0
  00c610af:	d9 04 24                                       	FLD float ptr [ESP]
  00c610b2:	59                                             	POP ECX
  00c610b3:	c3                                             	RET

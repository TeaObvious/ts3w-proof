# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00c608f0 (WorldPonds_FindFirstContainingIndex)
Paired actual Ghidra pseudocode: 00C608F0_WorldPonds_FindFirstContainingIndex.c
Envelope [0x00c608f0,0x00c6094f); 95 bytes. Exact owned ranges: [0x00c608f0,0x00c6094f)
Owned: 95 pristine PE bytes / 39 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00c608f0 <original>:
  00c608f0:	53                                             	PUSH EBX
  00c608f1:	55                                             	PUSH EBP
  00c608f2:	56                                             	PUSH ESI
  00c608f3:	8b d9                                          	MOV EBX,ECX
  00c608f5:	8b b3 04 01 00 00                              	MOV ESI,dword ptr [EBX + 0x104]
  00c608fb:	2b b3 00 01 00 00                              	SUB ESI,dword ptr [EBX + 0x100]
  00c60901:	57                                             	PUSH EDI
  00c60902:	c1 fe 02                                       	SAR ESI,0x2
  00c60905:	33 ff                                          	XOR EDI,EDI
  00c60907:	85 f6                                          	TEST ESI,ESI
  00c60909:	7e 31                                          	JLE 0x00c6093c
  00c6090b:	8b 6c 24 1c                                    	MOV EBP,dword ptr [ESP + 0x1c]
  00c6090f:	90                                             	NOP
  00c60910:	d9 44 24 18                                    	FLD float ptr [ESP + 0x18]
  00c60914:	8b 83 00 01 00 00                              	MOV EAX,dword ptr [EBX + 0x100]
  00c6091a:	8b 0c b8                                       	MOV ECX,dword ptr [EAX + EDI*0x4]
  00c6091d:	55                                             	PUSH EBP
  00c6091e:	83 ec 08                                       	SUB ESP,0x8
  00c60921:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00c60925:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00c60929:	d9 1c 24                                       	FSTP float ptr [ESP]
  00c6092c:	e8 5f da ef ff                                 	CALL 0x00b5e390
  00c60931:	84 c0                                          	TEST AL,AL
  00c60933:	75 11                                          	JNZ 0x00c60946
  00c60935:	83 c7 01                                       	ADD EDI,0x1
  00c60938:	3b fe                                          	CMP EDI,ESI
  00c6093a:	7c d4                                          	JL 0x00c60910
  00c6093c:	5f                                             	POP EDI
  00c6093d:	5e                                             	POP ESI
  00c6093e:	5d                                             	POP EBP
  00c6093f:	83 c8 ff                                       	OR EAX,0xffffffff
  00c60942:	5b                                             	POP EBX
  00c60943:	c2 0c 00                                       	RET 0xc
  00c60946:	8b c7                                          	MOV EAX,EDI
  00c60948:	5f                                             	POP EDI
  00c60949:	5e                                             	POP ESI
  00c6094a:	5d                                             	POP EBP
  00c6094b:	5b                                             	POP EBX
  00c6094c:	c2 0c 00                                       	RET 0xc

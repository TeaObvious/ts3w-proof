# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b636b0 (LotPonds_TryWriteInfoForId)
Paired actual Ghidra pseudocode: 00B636B0_LotPonds_TryWriteInfoForId.c
Envelope [0x00b636b0,0x00b636e3); 51 bytes. Exact owned ranges: [0x00b636b0,0x00b636e3)
Owned: 51 pristine PE bytes / 21 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b636b0 <original>:
  00b636b0:	8b 41 0c                                       	MOV EAX,dword ptr [ECX + 0xc]
  00b636b3:	8b 51 10                                       	MOV EDX,dword ptr [ECX + 0x10]
  00b636b6:	3b c2                                          	CMP EAX,EDX
  00b636b8:	56                                             	PUSH ESI
  00b636b9:	74 11                                          	JZ 0x00b636cc
  00b636bb:	0f bf 74 24 08                                 	MOVSX ESI,word ptr [ESP + 0x8]
  00b636c0:	39 70 18                                       	CMP dword ptr [EAX + 0x18],ESI
  00b636c3:	74 0d                                          	JZ 0x00b636d2
  00b636c5:	83 c0 60                                       	ADD EAX,0x60
  00b636c8:	3b c2                                          	CMP EAX,EDX
  00b636ca:	75 f4                                          	JNZ 0x00b636c0
  00b636cc:	32 c0                                          	XOR AL,AL
  00b636ce:	5e                                             	POP ESI
  00b636cf:	c2 08 00                                       	RET 0x8
  00b636d2:	8b 54 24 0c                                    	MOV EDX,dword ptr [ESP + 0xc]
  00b636d6:	52                                             	PUSH EDX
  00b636d7:	50                                             	PUSH EAX
  00b636d8:	e8 f3 f7 ff ff                                 	CALL 0x00b62ed0
  00b636dd:	b0 01                                          	MOV AL,0x1
  00b636df:	5e                                             	POP ESI
  00b636e0:	c2 08 00                                       	RET 0x8

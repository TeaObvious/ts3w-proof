# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b5e200 (WorldPonds_ContainsWaterPoint)
Paired actual Ghidra pseudocode: 00B5E200_WorldPonds_ContainsWaterPoint.c
Envelope [0x00b5e200,0x00b5e27b); 123 bytes. Exact owned ranges: [0x00b5e200,0x00b5e27b)
Owned: 123 pristine PE bytes / 40 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b5e200 <original>:
  00b5e200:	55                                             	PUSH EBP
  00b5e201:	8b ec                                          	MOV EBP,ESP
  00b5e203:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b5e206:	83 ec 1c                                       	SUB ESP,0x1c
  00b5e209:	f3 0f 10 45 08                                 	MOVSS XMM0,dword ptr [EBP + 0x8]
  00b5e20e:	f3 0f 10 4d 0c                                 	MOVSS XMM1,dword ptr [EBP + 0xc]
  00b5e213:	56                                             	PUSH ESI
  00b5e214:	8b f1                                          	MOV ESI,ECX
  00b5e216:	80 be a0 00 00 00 00                           	CMP byte ptr [ESI + 0xa0],0x0
  00b5e21d:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  00b5e223:	f3 0f 11 44 24 18                              	MOVSS dword ptr [ESP + 0x18],XMM0
  00b5e229:	f3 0f 11 4c 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM1
  00b5e22f:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00b5e235:	0f 28 44 24 10                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x10]
  00b5e23a:	0f 29 44 24 10                                 	MOVAPS xmmword ptr [ESP + 0x10],XMM0
  00b5e23f:	74 20                                          	JZ 0x00b5e261
  00b5e241:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00b5e245:	50                                             	PUSH EAX
  00b5e246:	e8 45 e8 ff ff                                 	CALL 0x00b5ca90
  00b5e24b:	85 c0                                          	TEST EAX,EAX
  00b5e24d:	7c 12                                          	JL 0x00b5e261
  00b5e24f:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b5e253:	51                                             	PUSH ECX
  00b5e254:	50                                             	PUSH EAX
  00b5e255:	8b ce                                          	MOV ECX,ESI
  00b5e257:	e8 94 e7 ff ff                                 	CALL 0x00b5c9f0
  00b5e25c:	83 f8 ff                                       	CMP EAX,-0x1
  00b5e25f:	75 09                                          	JNZ 0x00b5e26a
  00b5e261:	32 c0                                          	XOR AL,AL
  00b5e263:	5e                                             	POP ESI
  00b5e264:	8b e5                                          	MOV ESP,EBP
  00b5e266:	5d                                             	POP EBP
  00b5e267:	c2 08 00                                       	RET 0x8
  00b5e26a:	8d 14 80                                       	LEA EDX,[EAX + EAX*0x4]
  00b5e26d:	8b 46 5c                                       	MOV EAX,dword ptr [ESI + 0x5c]
  00b5e270:	8a 44 d0 11                                    	MOV AL,byte ptr [EAX + EDX*0x8 + 0x11]
  00b5e274:	5e                                             	POP ESI
  00b5e275:	8b e5                                          	MOV ESP,EBP
  00b5e277:	5d                                             	POP EBP
  00b5e278:	c2 08 00                                       	RET 0x8

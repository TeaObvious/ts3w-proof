# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x0062fbd0 (LotRouting_ResolvePortalWorldPosition)
Paired actual Ghidra pseudocode: 0062FBD0_LotRouting_ResolvePortalWorldPosition.c
Envelope [0x0062fbd0,0x0062fc83); 179 bytes. Exact owned ranges: [0x0062fbd0,0x0062fc83)
Owned: 179 pristine PE bytes / 53 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope alignment bytes; they are not Listing instructions or function-body bytes.
Inferred stored prototypes remain unchanged; physical register/stack/AL and original managed evidence govern ABI interpretation.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0062fbd0 <original>:
  0062fbd0:	55                                             	PUSH EBP
  0062fbd1:	8b ec                                          	MOV EBP,ESP
  0062fbd3:	83 e4 f0                                       	AND ESP,0xfffffff0
  0062fbd6:	8b 55 18                                       	MOV EDX,dword ptr [EBP + 0x18]
  0062fbd9:	83 ec 30                                       	SUB ESP,0x30
  0062fbdc:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  0062fbe0:	50                                             	PUSH EAX
  0062fbe1:	8b 45 14                                       	MOV EAX,dword ptr [EBP + 0x14]
  0062fbe4:	52                                             	PUSH EDX
  0062fbe5:	8b 55 10                                       	MOV EDX,dword ptr [EBP + 0x10]
  0062fbe8:	50                                             	PUSH EAX
  0062fbe9:	52                                             	PUSH EDX
  0062fbea:	e8 71 f7 ff ff                                 	CALL 0x0062f360
  0062fbef:	80 7d 20 00                                    	CMP byte ptr [EBP + 0x20],0x0
  0062fbf3:	74 1b                                          	JZ 0x0062fc10
  0062fbf5:	83 7c 24 1c 00                                 	CMP dword ptr [ESP + 0x1c],0x0
  0062fbfa:	c7 44 24 0c 00 00 00 00                        	MOV dword ptr [ESP + 0xc],0x0
  0062fc02:	8d 44 24 0c                                    	LEA EAX,[ESP + 0xc]
  0062fc06:	7c 04                                          	JL 0x0062fc0c
  0062fc08:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  0062fc0c:	8b 00                                          	MOV EAX,dword ptr [EAX]
  0062fc0e:	eb 04                                          	JMP 0x0062fc14
  0062fc10:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  0062fc14:	f3 0f 10 44 24 14                              	MOVSS XMM0,dword ptr [ESP + 0x14]
  0062fc1a:	d9 44 24 18                                    	FLD float ptr [ESP + 0x18]
  0062fc1e:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  0062fc21:	6a 01                                          	PUSH 0x1
  0062fc23:	6a 00                                          	PUSH 0x0
  0062fc25:	6a 00                                          	PUSH 0x0
  0062fc27:	6a 00                                          	PUSH 0x0
  0062fc29:	6a 00                                          	PUSH 0x0
  0062fc2b:	6a 01                                          	PUSH 0x1
  0062fc2d:	50                                             	PUSH EAX
  0062fc2e:	83 ec 08                                       	SUB ESP,0x8
  0062fc31:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  0062fc35:	f3 0f 11 44 24 50                              	MOVSS dword ptr [ESP + 0x50],XMM0
  0062fc3b:	f3 0f 10 44 24 3c                              	MOVSS XMM0,dword ptr [ESP + 0x3c]
  0062fc41:	d9 44 24 38                                    	FLD float ptr [ESP + 0x38]
  0062fc45:	d9 1c 24                                       	FSTP float ptr [ESP]
  0062fc48:	f3 0f 11 44 24 4c                              	MOVSS dword ptr [ESP + 0x4c],XMM0
  0062fc4e:	e8 3d a4 63 00                                 	CALL 0x00c6a090
  0062fc53:	d8 45 1c                                       	FADD float ptr [EBP + 0x1c]
  0062fc56:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  0062fc59:	d9 5c 24 10                                    	FSTP float ptr [ESP + 0x10]
  0062fc5d:	f3 0f 10 44 24 10                              	MOVSS XMM0,dword ptr [ESP + 0x10]
  0062fc63:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  0062fc69:	f3 0f 10 44 24 14                              	MOVSS XMM0,dword ptr [ESP + 0x14]
  0062fc6f:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  0062fc75:	0f 28 44 24 20                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x20]
  0062fc7a:	0f 29 00                                       	MOVAPS xmmword ptr [EAX],XMM0
  0062fc7d:	8b e5                                          	MOV ESP,EBP
  0062fc7f:	5d                                             	POP EBP
  0062fc80:	c2 1c 00                                       	RET 0x1c

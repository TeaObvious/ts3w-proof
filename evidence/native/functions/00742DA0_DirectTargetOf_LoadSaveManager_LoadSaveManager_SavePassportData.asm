# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00742da0 (DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData)
Paired actual Ghidra pseudocode: 00742DA0_DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData.c
Envelope [0x00742da0,0x00742e04); 100 bytes; exact owned ranges: [0x00742da0,0x00742e04)
Owned: 100 original bytes / 50 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00742da0 <original>:
  00742da0:	56                                             	PUSH ESI
  00742da1:	e8 ea 65 02 00                                 	CALL 0x00769390
  00742da6:	8b f0                                          	MOV ESI,EAX
  00742da8:	85 f6                                          	TEST ESI,ESI
  00742daa:	75 02                                          	JNZ 0x00742dae
  00742dac:	5e                                             	POP ESI
  00742dad:	c3                                             	RET
  00742dae:	53                                             	PUSH EBX
  00742daf:	e8 0c 6c 36 00                                 	CALL 0x00aa99c0
  00742db4:	8b d8                                          	MOV EBX,EAX
  00742db6:	85 db                                          	TEST EBX,EBX
  00742db8:	75 03                                          	JNZ 0x00742dbd
  00742dba:	5b                                             	POP EBX
  00742dbb:	5e                                             	POP ESI
  00742dbc:	c3                                             	RET
  00742dbd:	8b 4c 24 0c                                    	MOV ECX,dword ptr [ESP + 0xc]
  00742dc1:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00742dc3:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00742dc6:	57                                             	PUSH EDI
  00742dc7:	51                                             	PUSH ECX
  00742dc8:	8b ce                                          	MOV ECX,ESI
  00742dca:	ff d2                                          	CALL EDX
  00742dcc:	8b f8                                          	MOV EDI,EAX
  00742dce:	85 ff                                          	TEST EDI,EDI
  00742dd0:	74 1a                                          	JZ 0x00742dec
  00742dd2:	66 83 3f 00                                    	CMP word ptr [EDI],0x0
  00742dd6:	74 14                                          	JZ 0x00742dec
  00742dd8:	8b 4c 24 18                                    	MOV ECX,dword ptr [ESP + 0x18]
  00742ddc:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00742dde:	8b 50 58                                       	MOV EDX,dword ptr [EAX + 0x58]
  00742de1:	51                                             	PUSH ECX
  00742de2:	8b ce                                          	MOV ECX,ESI
  00742de4:	ff d2                                          	CALL EDX
  00742de6:	66 83 3f 00                                    	CMP word ptr [EDI],0x0
  00742dea:	75 06                                          	JNZ 0x00742df2
  00742dec:	5f                                             	POP EDI
  00742ded:	5b                                             	POP EBX
  00742dee:	33 c0                                          	XOR EAX,EAX
  00742df0:	5e                                             	POP ESI
  00742df1:	c3                                             	RET
  00742df2:	50                                             	PUSH EAX
  00742df3:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00742df7:	50                                             	PUSH EAX
  00742df8:	57                                             	PUSH EDI
  00742df9:	8b cb                                          	MOV ECX,EBX
  00742dfb:	e8 80 be 36 00                                 	CALL 0x00aaec80
  00742e00:	5f                                             	POP EDI
  00742e01:	5b                                             	POP EBX
  00742e02:	5e                                             	POP ESI
  00742e03:	c3                                             	RET

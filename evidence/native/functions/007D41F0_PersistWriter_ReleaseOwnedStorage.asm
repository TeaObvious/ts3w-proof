# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d41f0 (PersistWriter_ReleaseOwnedStorage)
Paired actual Ghidra pseudocode: 007D41F0_PersistWriter_ReleaseOwnedStorage.c
Envelope [0x007d41f0,0x007d429d); 173 bytes; exact owned ranges: [0x007d41f0,0x007d429d)
Owned: 173 original bytes / 58 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d41f0 <original>:
  007d41f0:	56                                             	PUSH ESI
  007d41f1:	57                                             	PUSH EDI
  007d41f2:	8b f9                                          	MOV EDI,ECX
  007d41f4:	8d 77 7c                                       	LEA ESI,[EDI + 0x7c]
  007d41f7:	c7 07 90 b2 01 01                              	MOV dword ptr [EDI],0x101b290
  007d41fd:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  007d4200:	8b 4e 04                                       	MOV ECX,dword ptr [ESI + 0x4]
  007d4203:	50                                             	PUSH EAX
  007d4204:	51                                             	PUSH ECX
  007d4205:	8b ce                                          	MOV ECX,ESI
  007d4207:	e8 d4 a9 f6 ff                                 	CALL 0x0073ebe0
  007d420c:	83 7e 08 01                                    	CMP dword ptr [ESI + 0x8],0x1
  007d4210:	c7 46 0c 00 00 00 00                           	MOV dword ptr [ESI + 0xc],0x0
  007d4217:	76 0c                                          	JBE 0x007d4225
  007d4219:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  007d421c:	52                                             	PUSH EDX
  007d421d:	e8 be 02 d1 ff                                 	CALL 0x004e44e0
  007d4222:	83 c4 04                                       	ADD ESP,0x4
  007d4225:	8b 47 64                                       	MOV EAX,dword ptr [EDI + 0x64]
  007d4228:	8b 4f 60                                       	MOV ECX,dword ptr [EDI + 0x60]
  007d422b:	8d 77 5c                                       	LEA ESI,[EDI + 0x5c]
  007d422e:	50                                             	PUSH EAX
  007d422f:	51                                             	PUSH ECX
  007d4230:	8b ce                                          	MOV ECX,ESI
  007d4232:	e8 b9 25 20 00                                 	CALL 0x009d67f0
  007d4237:	83 7e 08 01                                    	CMP dword ptr [ESI + 0x8],0x1
  007d423b:	c7 46 0c 00 00 00 00                           	MOV dword ptr [ESI + 0xc],0x0
  007d4242:	76 0c                                          	JBE 0x007d4250
  007d4244:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  007d4247:	52                                             	PUSH EDX
  007d4248:	e8 93 02 d1 ff                                 	CALL 0x004e44e0
  007d424d:	83 c4 04                                       	ADD ESP,0x4
  007d4250:	8b 47 4c                                       	MOV EAX,dword ptr [EDI + 0x4c]
  007d4253:	85 c0                                          	TEST EAX,EAX
  007d4255:	74 09                                          	JZ 0x007d4260
  007d4257:	50                                             	PUSH EAX
  007d4258:	e8 83 02 d1 ff                                 	CALL 0x004e44e0
  007d425d:	83 c4 04                                       	ADD ESP,0x4
  007d4260:	8b 47 34                                       	MOV EAX,dword ptr [EDI + 0x34]
  007d4263:	8b 4f 30                                       	MOV ECX,dword ptr [EDI + 0x30]
  007d4266:	8d 77 2c                                       	LEA ESI,[EDI + 0x2c]
  007d4269:	50                                             	PUSH EAX
  007d426a:	51                                             	PUSH ECX
  007d426b:	8b ce                                          	MOV ECX,ESI
  007d426d:	e8 6e a9 f6 ff                                 	CALL 0x0073ebe0
  007d4272:	83 7e 08 01                                    	CMP dword ptr [ESI + 0x8],0x1
  007d4276:	c7 46 0c 00 00 00 00                           	MOV dword ptr [ESI + 0xc],0x0
  007d427d:	76 0c                                          	JBE 0x007d428b
  007d427f:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  007d4282:	52                                             	PUSH EDX
  007d4283:	e8 58 02 d1 ff                                 	CALL 0x004e44e0
  007d4288:	83 c4 04                                       	ADD ESP,0x4
  007d428b:	8d 4f 1c                                       	LEA ECX,[EDI + 0x1c]
  007d428e:	e8 bd 2b e5 ff                                 	CALL 0x00626e50
  007d4293:	8d 4f 04                                       	LEA ECX,[EDI + 0x4]
  007d4296:	5f                                             	POP EDI
  007d4297:	5e                                             	POP ESI
  007d4298:	e9 f3 36 00 00                                 	JMP 0x007d7990

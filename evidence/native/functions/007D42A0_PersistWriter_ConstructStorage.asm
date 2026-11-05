# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007d42a0 (PersistWriter_ConstructStorage)
Paired actual Ghidra pseudocode: 007D42A0_PersistWriter_ConstructStorage.c
Envelope [0x007d42a0,0x007d4355); 181 bytes; exact owned ranges: [0x007d42a0,0x007d4355)
Owned: 181 original bytes / 42 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
007d42a0 <original>:
  007d42a0:	56                                             	PUSH ESI
  007d42a1:	8b f1                                          	MOV ESI,ECX
  007d42a3:	8d 4e 04                                       	LEA ECX,[ESI + 0x4]
  007d42a6:	c7 06 90 b2 01 01                              	MOV dword ptr [ESI],0x101b290
  007d42ac:	e8 4f 36 00 00                                 	CALL 0x007d7900
  007d42b1:	f3 0f 10 05 f8 98 f9 00                        	MOVSS XMM0,dword ptr [0x00f998f8]
  007d42b9:	f3 0f 10 0d 88 fd 03 01                        	MOVSS XMM1,dword ptr [0x0103fd88]
  007d42c1:	33 c0                                          	XOR EAX,EAX
  007d42c3:	89 46 1c                                       	MOV dword ptr [ESI + 0x1c],EAX
  007d42c6:	89 46 20                                       	MOV dword ptr [ESI + 0x20],EAX
  007d42c9:	89 46 24                                       	MOV dword ptr [ESI + 0x24],EAX
  007d42cc:	b9 a4 b2 01 01                                 	MOV ECX,0x101b2a4
  007d42d1:	89 4e 28                                       	MOV dword ptr [ESI + 0x28],ECX
  007d42d4:	f3 0f 11 46 3c                                 	MOVSS dword ptr [ESI + 0x3c],XMM0
  007d42d9:	f3 0f 11 4e 40                                 	MOVSS dword ptr [ESI + 0x40],XMM1
  007d42de:	89 4e 48                                       	MOV dword ptr [ESI + 0x48],ECX
  007d42e1:	89 46 38                                       	MOV dword ptr [ESI + 0x38],EAX
  007d42e4:	89 46 44                                       	MOV dword ptr [ESI + 0x44],EAX
  007d42e7:	c7 46 34 01 00 00 00                           	MOV dword ptr [ESI + 0x34],0x1
  007d42ee:	ba 00 d9 14 01                                 	MOV EDX,0x114d900
  007d42f3:	89 56 30                                       	MOV dword ptr [ESI + 0x30],EDX
  007d42f6:	89 46 4c                                       	MOV dword ptr [ESI + 0x4c],EAX
  007d42f9:	89 46 50                                       	MOV dword ptr [ESI + 0x50],EAX
  007d42fc:	89 46 54                                       	MOV dword ptr [ESI + 0x54],EAX
  007d42ff:	89 4e 58                                       	MOV dword ptr [ESI + 0x58],ECX
  007d4302:	f3 0f 11 46 6c                                 	MOVSS dword ptr [ESI + 0x6c],XMM0
  007d4307:	f3 0f 11 4e 70                                 	MOVSS dword ptr [ESI + 0x70],XMM1
  007d430c:	89 4e 78                                       	MOV dword ptr [ESI + 0x78],ECX
  007d430f:	89 46 68                                       	MOV dword ptr [ESI + 0x68],EAX
  007d4312:	89 46 74                                       	MOV dword ptr [ESI + 0x74],EAX
  007d4315:	c7 46 64 01 00 00 00                           	MOV dword ptr [ESI + 0x64],0x1
  007d431c:	89 56 60                                       	MOV dword ptr [ESI + 0x60],EDX
  007d431f:	f3 0f 11 86 8c 00 00 00                        	MOVSS dword ptr [ESI + 0x8c],XMM0
  007d4327:	f3 0f 11 8e 90 00 00 00                        	MOVSS dword ptr [ESI + 0x90],XMM1
  007d432f:	89 8e 98 00 00 00                              	MOV dword ptr [ESI + 0x98],ECX
  007d4335:	89 86 88 00 00 00                              	MOV dword ptr [ESI + 0x88],EAX
  007d433b:	89 86 94 00 00 00                              	MOV dword ptr [ESI + 0x94],EAX
  007d4341:	c7 86 84 00 00 00 01 00 00 00                  	MOV dword ptr [ESI + 0x84],0x1
  007d434b:	89 96 80 00 00 00                              	MOV dword ptr [ESI + 0x80],EDX
  007d4351:	8b c6                                          	MOV EAX,ESI
  007d4353:	5e                                             	POP ESI
  007d4354:	c3                                             	RET

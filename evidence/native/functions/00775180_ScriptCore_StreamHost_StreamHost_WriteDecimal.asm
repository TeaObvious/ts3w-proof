# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775180 (ScriptCore.StreamHost::StreamHost_WriteDecimal)
Paired actual Ghidra pseudocode: 00775180_ScriptCore_StreamHost_StreamHost_WriteDecimal.c
Envelope [0x00775180,0x00775215); 149 bytes; exact owned ranges: [0x00775180,0x00775215)
Owned: 149 original bytes / 50 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00775180 <original>:
  00775180:	83 ec 10                                       	SUB ESP,0x10
  00775183:	56                                             	PUSH ESI
  00775184:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  00775188:	3b 35 38 78 1d 01                              	CMP ESI,dword ptr [0x011d7838]
  0077518e:	75 07                                          	JNZ 0x00775197
  00775190:	a1 3c 78 1d 01                                 	MOV EAX,[0x011d783c]
  00775195:	eb 33                                          	JMP 0x007751ca
  00775197:	8b c6                                          	MOV EAX,ESI
  00775199:	25 00 00 00 ff                                 	AND EAX,0xff000000
  0077519e:	3d 00 00 00 60                                 	CMP EAX,0x60000000
  007751a3:	74 04                                          	JZ 0x007751a9
  007751a5:	33 c0                                          	XOR EAX,EAX
  007751a7:	eb 21                                          	JMP 0x007751ca
  007751a9:	e8 e2 41 ff ff                                 	CALL 0x00769390
  007751ae:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007751b0:	8b c8                                          	MOV ECX,EAX
  007751b2:	8b 82 cc 00 00 00                              	MOV EAX,dword ptr [EDX + 0xcc]
  007751b8:	56                                             	PUSH ESI
  007751b9:	ff d0                                          	CALL EAX
  007751bb:	85 c0                                          	TEST EAX,EAX
  007751bd:	74 0b                                          	JZ 0x007751ca
  007751bf:	a3 3c 78 1d 01                                 	MOV [0x011d783c],EAX
  007751c4:	89 35 38 78 1d 01                              	MOV dword ptr [0x011d7838],ESI
  007751ca:	85 c0                                          	TEST EAX,EAX
  007751cc:	5e                                             	POP ESI
  007751cd:	75 09                                          	JNZ 0x007751d8
  007751cf:	b8 fe ff ff ff                                 	MOV EAX,0xfffffffe
  007751d4:	83 c4 10                                       	ADD ESP,0x10
  007751d7:	c3                                             	RET
  007751d8:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  007751dc:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  007751e0:	89 0c 24                                       	MOV dword ptr [ESP],ECX
  007751e3:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  007751e7:	89 54 24 04                                    	MOV dword ptr [ESP + 0x4],EDX
  007751eb:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  007751ef:	89 4c 24 08                                    	MOV dword ptr [ESP + 0x8],ECX
  007751f3:	89 54 24 0c                                    	MOV dword ptr [ESP + 0xc],EDX
  007751f7:	8b 10                                          	MOV EDX,dword ptr [EAX]
  007751f9:	8b 52 38                                       	MOV EDX,dword ptr [EDX + 0x38]
  007751fc:	6a 10                                          	PUSH 0x10
  007751fe:	8d 4c 24 04                                    	LEA ECX,[ESP + 0x4]
  00775202:	51                                             	PUSH ECX
  00775203:	8b c8                                          	MOV ECX,EAX
  00775205:	ff d2                                          	CALL EDX
  00775207:	f6 d8                                          	NEG AL
  00775209:	1b c0                                          	SBB EAX,EAX
  0077520b:	83 e0 03                                       	AND EAX,0x3
  0077520e:	83 c0 fd                                       	ADD EAX,-0x3
  00775211:	83 c4 10                                       	ADD ESP,0x10
  00775214:	c3                                             	RET

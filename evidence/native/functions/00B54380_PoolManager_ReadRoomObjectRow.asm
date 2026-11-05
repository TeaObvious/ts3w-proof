# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b54380 (PoolManager_ReadRoomObjectRow)
Paired actual Ghidra pseudocode: 00B54380_PoolManager_ReadRoomObjectRow.c
Envelope [0x00b54380,0x00b54436); 182 bytes; exact owned ranges: [0x00b54380,0x00b54436)
Owned: 182 original bytes / 67 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b54380 <original>:
  00b54380:	83 ec 0c                                       	SUB ESP,0xc
  00b54383:	53                                             	PUSH EBX
  00b54384:	56                                             	PUSH ESI
  00b54385:	8b 74 24 18                                    	MOV ESI,dword ptr [ESP + 0x18]
  00b54389:	8b 46 10                                       	MOV EAX,dword ptr [ESI + 0x10]
  00b5438c:	8b 56 08                                       	MOV EDX,dword ptr [ESI + 0x8]
  00b5438f:	57                                             	PUSH EDI
  00b54390:	8b f9                                          	MOV EDI,ECX
  00b54392:	50                                             	PUSH EAX
  00b54393:	8d 4c 24 10                                    	LEA ECX,[ESP + 0x10]
  00b54397:	51                                             	PUSH ECX
  00b54398:	33 db                                          	XOR EBX,EBX
  00b5439a:	52                                             	PUSH EDX
  00b5439b:	89 5c 24 18                                    	MOV dword ptr [ESP + 0x18],EBX
  00b5439f:	e8 3c 95 98 ff                                 	CALL 0x004dd8e0
  00b543a4:	83 c4 0c                                       	ADD ESP,0xc
  00b543a7:	8b ce                                          	MOV ECX,ESI
  00b543a9:	50                                             	PUSH EAX
  00b543aa:	e8 41 36 c8 ff                                 	CALL 0x007d79f0
  00b543af:	66 8b 44 24 0c                                 	MOV AX,word ptr [ESP + 0xc]
  00b543b4:	66 89 47 0c                                    	MOV word ptr [EDI + 0xc],AX
  00b543b8:	8b 4e 10                                       	MOV ECX,dword ptr [ESI + 0x10]
  00b543bb:	8b 46 08                                       	MOV EAX,dword ptr [ESI + 0x8]
  00b543be:	51                                             	PUSH ECX
  00b543bf:	8d 54 24 20                                    	LEA EDX,[ESP + 0x20]
  00b543c3:	52                                             	PUSH EDX
  00b543c4:	50                                             	PUSH EAX
  00b543c5:	89 5c 24 28                                    	MOV dword ptr [ESP + 0x28],EBX
  00b543c9:	e8 b2 95 98 ff                                 	CALL 0x004dd980
  00b543ce:	83 c4 0c                                       	ADD ESP,0xc
  00b543d1:	8b ce                                          	MOV ECX,ESI
  00b543d3:	50                                             	PUSH EAX
  00b543d4:	e8 17 36 c8 ff                                 	CALL 0x007d79f0
  00b543d9:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b543dd:	8b c8                                          	MOV ECX,EAX
  00b543df:	c1 e9 18                                       	SHR ECX,0x18
  00b543e2:	88 4f 0a                                       	MOV byte ptr [EDI + 0xa],CL
  00b543e5:	8b d0                                          	MOV EDX,EAX
  00b543e7:	8b c8                                          	MOV ECX,EAX
  00b543e9:	c1 ea 10                                       	SHR EDX,0x10
  00b543ec:	c1 e9 08                                       	SHR ECX,0x8
  00b543ef:	88 47 08                                       	MOV byte ptr [EDI + 0x8],AL
  00b543f2:	88 57 0b                                       	MOV byte ptr [EDI + 0xb],DL
  00b543f5:	88 4f 09                                       	MOV byte ptr [EDI + 0x9],CL
  00b543f8:	8b 56 10                                       	MOV EDX,dword ptr [ESI + 0x10]
  00b543fb:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00b543fe:	52                                             	PUSH EDX
  00b543ff:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00b54403:	50                                             	PUSH EAX
  00b54404:	51                                             	PUSH ECX
  00b54405:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  00b54409:	89 5c 24 20                                    	MOV dword ptr [ESP + 0x20],EBX
  00b5440d:	e8 9e 96 98 ff                                 	CALL 0x004ddab0
  00b54412:	83 c4 0c                                       	ADD ESP,0xc
  00b54415:	8b ce                                          	MOV ECX,ESI
  00b54417:	50                                             	PUSH EAX
  00b54418:	e8 d3 35 c8 ff                                 	CALL 0x007d79f0
  00b5441d:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b54421:	8b 54 24 10                                    	MOV EDX,dword ptr [ESP + 0x10]
  00b54425:	89 17                                          	MOV dword ptr [EDI],EDX
  00b54427:	89 47 04                                       	MOV dword ptr [EDI + 0x4],EAX
  00b5442a:	8a 46 14                                       	MOV AL,byte ptr [ESI + 0x14]
  00b5442d:	5f                                             	POP EDI
  00b5442e:	5e                                             	POP ESI
  00b5442f:	5b                                             	POP EBX
  00b54430:	83 c4 0c                                       	ADD ESP,0xc
  00b54433:	c2 04 00                                       	RET 0x4

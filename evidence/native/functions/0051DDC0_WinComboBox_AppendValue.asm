# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x0051ddc0 (WinComboBox_AppendValue)
Paired actual Ghidra pseudocode: 0051DDC0_WinComboBox_AppendValue.c
Envelope [0x0051ddc0,0x0051de45); 133 pristine bytes.
Owned: 133 original bytes / 42 actual saved Listing instructions.
Saved body: [[0051ddc0, 0051de44]]; inclusive ranges above, exclusive envelope end.
Any nonowned alignment bytes are explicit .byte records, not Listing instructions.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
0051ddc0 <original>:
  0051ddc0:	83 ec 10                                       	SUB ESP,0x10
  0051ddc3:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  0051ddc7:	56                                             	PUSH ESI
  0051ddc8:	8b f1                                          	MOV ESI,ECX
  0051ddca:	50                                             	PUSH EAX
  0051ddcb:	8d 4c 24 08                                    	LEA ECX,[ESP + 0x8]
  0051ddcf:	c7 44 24 08 00 00 00 00                        	MOV dword ptr [ESP + 0x8],0x0
  0051ddd7:	c7 44 24 0c 00 00 00 00                        	MOV dword ptr [ESP + 0xc],0x0
  0051dddf:	c7 44 24 10 00 00 00 00                        	MOV dword ptr [ESP + 0x10],0x0
  0051dde7:	c7 44 24 14 74 cd fb 00                        	MOV dword ptr [ESP + 0x14],0xfbcd74
  0051ddef:	e8 9c d7 ee ff                                 	CALL 0x0040b590
  0051ddf4:	8b 4e 48                                       	MOV ECX,dword ptr [ESI + 0x48]
  0051ddf7:	3b 4e 4c                                       	CMP ECX,dword ptr [ESI + 0x4c]
  0051ddfa:	8d 46 44                                       	LEA EAX,[ESI + 0x44]
  0051ddfd:	5e                                             	POP ESI
  0051ddfe:	73 15                                          	JNC 0x0051de15
  0051de00:	85 c9                                          	TEST ECX,ECX
  0051de02:	8d 51 10                                       	LEA EDX,[ECX + 0x10]
  0051de05:	89 50 04                                       	MOV dword ptr [EAX + 0x4],EDX
  0051de08:	74 17                                          	JZ 0x0051de21
  0051de0a:	8d 04 24                                       	LEA EAX,[ESP]
  0051de0d:	50                                             	PUSH EAX
  0051de0e:	e8 dd af ee ff                                 	CALL 0x00408df0
  0051de13:	eb 0c                                          	JMP 0x0051de21
  0051de15:	8d 14 24                                       	LEA EDX,[ESP]
  0051de18:	52                                             	PUSH EDX
  0051de19:	51                                             	PUSH ECX
  0051de1a:	8b c8                                          	MOV ECX,EAX
  0051de1c:	e8 af fd ff ff                                 	CALL 0x0051dbd0
  0051de21:	8b 4c 24 08                                    	MOV ECX,dword ptr [ESP + 0x8]
  0051de25:	8b 04 24                                       	MOV EAX,dword ptr [ESP]
  0051de28:	2b c8                                          	SUB ECX,EAX
  0051de2a:	83 e1 fe                                       	AND ECX,0xfffffffe
  0051de2d:	83 f9 02                                       	CMP ECX,0x2
  0051de30:	7e 0d                                          	JLE 0x0051de3f
  0051de32:	85 c0                                          	TEST EAX,EAX
  0051de34:	74 09                                          	JZ 0x0051de3f
  0051de36:	50                                             	PUSH EAX
  0051de37:	e8 a4 66 fc ff                                 	CALL 0x004e44e0
  0051de3c:	83 c4 04                                       	ADD ESP,0x4
  0051de3f:	83 c4 10                                       	ADD ESP,0x10
  0051de42:	c2 04 00                                       	RET 0x4

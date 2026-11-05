# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x00522a40 (UiFade_ApplyShadeAlpha)
Paired actual Ghidra pseudocode: 00522A40_UiFade_ApplyShadeAlpha.c
Envelope [0x00522a40,0x00522ab3); 115 pristine bytes.
Owned: 115 original bytes / 40 actual saved Listing instructions; no body gaps.
Saved body: [[00522a40, 00522ab2]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00522a40 <original>:
  00522a40:	83 ec 08                                       	SUB ESP,0x8
  00522a43:	53                                             	PUSH EBX
  00522a44:	56                                             	PUSH ESI
  00522a45:	57                                             	PUSH EDI
  00522a46:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  00522a4a:	8b 1f                                          	MOV EBX,dword ptr [EDI]
  00522a4c:	8b 43 30                                       	MOV EAX,dword ptr [EBX + 0x30]
  00522a4f:	8b f1                                          	MOV ESI,ECX
  00522a51:	d9 46 70                                       	FLD float ptr [ESI + 0x70]
  00522a54:	8b cf                                          	MOV ECX,EDI
  00522a56:	d9 5c 24 18                                    	FSTP float ptr [ESP + 0x18]
  00522a5a:	ff d0                                          	CALL EAX
  00522a5c:	d9 46 74                                       	FLD float ptr [ESI + 0x74]
  00522a5f:	8b c8                                          	MOV ECX,EAX
  00522a61:	d9 44 24 18                                    	FLD float ptr [ESP + 0x18]
  00522a65:	81 e1 ff ff ff 00                              	AND ECX,0xffffff
  00522a6b:	dc e9                                          	FSUB ST1,ST0
  00522a6d:	d9 c9                                          	FXCH
  00522a6f:	d9 7c 24 18                                    	FNSTCW word ptr [ESP + 0x18]
  00522a73:	d8 4c 24 1c                                    	FMUL float ptr [ESP + 0x1c]
  00522a77:	0f b7 44 24 18                                 	MOVZX EAX,word ptr [ESP + 0x18]
  00522a7c:	0d 00 0c 00 00                                 	OR EAX,0xc00
  00522a81:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00522a85:	8b 43 60                                       	MOV EAX,dword ptr [EBX + 0x60]
  00522a88:	de c1                                          	FADDP
  00522a8a:	d8 0d 14 d8 fb 00                              	FMUL float ptr [0x00fbd814]
  00522a90:	d9 6c 24 1c                                    	FLDCW word ptr [ESP + 0x1c]
  00522a94:	df 7c 24 0c                                    	FISTP qword ptr [ESP + 0xc]
  00522a98:	8b 54 24 0c                                    	MOV EDX,dword ptr [ESP + 0xc]
  00522a9c:	c1 e2 18                                       	SHL EDX,0x18
  00522a9f:	2b ca                                          	SUB ECX,EDX
  00522aa1:	d9 6c 24 18                                    	FLDCW word ptr [ESP + 0x18]
  00522aa5:	51                                             	PUSH ECX
  00522aa6:	8b cf                                          	MOV ECX,EDI
  00522aa8:	ff d0                                          	CALL EAX
  00522aaa:	5f                                             	POP EDI
  00522aab:	5e                                             	POP ESI
  00522aac:	5b                                             	POP EBX
  00522aad:	83 c4 08                                       	ADD ESP,0x8
  00522ab0:	c2 08 00                                       	RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00d5c970 (UIThumbnail_AllocateImageAndPublishCommand)
Paired actual Ghidra pseudocode: 00D5C970_UIThumbnail_AllocateImageAndPublishCommand.c
Body [0x00d5c970,0x00d5cb8c); 540 pristine original bytes / 196 actual saved Listing instructions.
Every byte belongs to the contiguous saved body; no padding or neighboring code is included.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00d5c970 <original>:
  00d5c970:	55                                             	PUSH EBP
  00d5c971:	8b ec                                          	MOV EBP,ESP
  00d5c973:	83 e4 f0                                       	AND ESP,0xfffffff0
  00d5c976:	83 ec 64                                       	SUB ESP,0x64
  00d5c979:	53                                             	PUSH EBX
  00d5c97a:	56                                             	PUSH ESI
  00d5c97b:	8b 75 08                                       	MOV ESI,dword ptr [EBP + 0x8]
  00d5c97e:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00d5c980:	3b 46 04                                       	CMP EAX,dword ptr [ESI + 0x4]
  00d5c983:	57                                             	PUSH EDI
  00d5c984:	8b f9                                          	MOV EDI,ECX
  00d5c986:	75 0b                                          	JNZ 0x00d5c993
  00d5c988:	32 c0                                          	XOR AL,AL
  00d5c98a:	5f                                             	POP EDI
  00d5c98b:	5e                                             	POP ESI
  00d5c98c:	5b                                             	POP EBX
  00d5c98d:	8b e5                                          	MOV ESP,EBP
  00d5c98f:	5d                                             	POP EBP
  00d5c990:	c2 0c 00                                       	RET 0xc
  00d5c993:	6a 00                                          	PUSH 0x0
  00d5c995:	6a 00                                          	PUSH 0x0
  00d5c997:	6a 00                                          	PUSH 0x0
  00d5c999:	6a 00                                          	PUSH 0x0
  00d5c99b:	68 e0 a3 08 01                                 	PUSH 0x108a3e0
  00d5c9a0:	6a 0c                                          	PUSH 0xc
  00d5c9a2:	e8 59 7b 78 ff                                 	CALL 0x004e4500
  00d5c9a7:	83 c4 18                                       	ADD ESP,0x18
  00d5c9aa:	85 c0                                          	TEST EAX,EAX
  00d5c9ac:	0f 84 52 01 00 00                              	JZ 0x00d5cb04
  00d5c9b2:	8b c8                                          	MOV ECX,EAX
  00d5c9b4:	e8 a7 f5 a7 ff                                 	CALL 0x007dbf60
  00d5c9b9:	85 c0                                          	TEST EAX,EAX
  00d5c9bb:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00d5c9bf:	74 08                                          	JZ 0x00d5c9c9
  00d5c9c1:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00d5c9c3:	8b c8                                          	MOV ECX,EAX
  00d5c9c5:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00d5c9c7:	ff d0                                          	CALL EAX
  00d5c9c9:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00d5c9cb:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00d5c9cf:	51                                             	PUSH ECX
  00d5c9d0:	8b 48 10                                       	MOV ECX,dword ptr [EAX + 0x10]
  00d5c9d3:	8d 54 24 1c                                    	LEA EDX,[ESP + 0x1c]
  00d5c9d7:	52                                             	PUSH EDX
  00d5c9d8:	51                                             	PUSH ECX
  00d5c9d9:	8d 56 78                                       	LEA EDX,[ESI + 0x78]
  00d5c9dc:	52                                             	PUSH EDX
  00d5c9dd:	8b cf                                          	MOV ECX,EDI
  00d5c9df:	e8 4c 23 ff ff                                 	CALL 0x00d4ed30
  00d5c9e4:	8b 7c 24 18                                    	MOV EDI,dword ptr [ESP + 0x18]
  00d5c9e8:	8b 5c 24 1c                                    	MOV EBX,dword ptr [ESP + 0x1c]
  00d5c9ec:	6a 00                                          	PUSH 0x0
  00d5c9ee:	6a 00                                          	PUSH 0x0
  00d5c9f0:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00d5c9f4:	50                                             	PUSH EAX
  00d5c9f5:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00d5c9f9:	51                                             	PUSH ECX
  00d5c9fa:	89 7c 24 20                                    	MOV dword ptr [ESP + 0x20],EDI
  00d5c9fe:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  00d5ca02:	e8 a9 d4 8b ff                                 	CALL 0x00619eb0
  00d5ca07:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00d5ca0b:	83 c0 ff                                       	ADD EAX,-0x1
  00d5ca0e:	8b d0                                          	MOV EDX,EAX
  00d5ca10:	c1 ea 10                                       	SHR EDX,0x10
  00d5ca13:	0b c2                                          	OR EAX,EDX
  00d5ca15:	8b c8                                          	MOV ECX,EAX
  00d5ca17:	c1 e9 08                                       	SHR ECX,0x8
  00d5ca1a:	0b c1                                          	OR EAX,ECX
  00d5ca1c:	8b d0                                          	MOV EDX,EAX
  00d5ca1e:	c1 ea 04                                       	SHR EDX,0x4
  00d5ca21:	0b c2                                          	OR EAX,EDX
  00d5ca23:	8b c8                                          	MOV ECX,EAX
  00d5ca25:	c1 e9 02                                       	SHR ECX,0x2
  00d5ca28:	0b c1                                          	OR EAX,ECX
  00d5ca2a:	8b d0                                          	MOV EDX,EAX
  00d5ca2c:	d1 ea                                          	SHR EDX,0x1
  00d5ca2e:	0b d0                                          	OR EDX,EAX
  00d5ca30:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00d5ca34:	83 c0 ff                                       	ADD EAX,-0x1
  00d5ca37:	8b c8                                          	MOV ECX,EAX
  00d5ca39:	c1 e9 10                                       	SHR ECX,0x10
  00d5ca3c:	0b c1                                          	OR EAX,ECX
  00d5ca3e:	83 c2 01                                       	ADD EDX,0x1
  00d5ca41:	89 54 24 20                                    	MOV dword ptr [ESP + 0x20],EDX
  00d5ca45:	8b d0                                          	MOV EDX,EAX
  00d5ca47:	c1 ea 08                                       	SHR EDX,0x8
  00d5ca4a:	0b c2                                          	OR EAX,EDX
  00d5ca4c:	8b c8                                          	MOV ECX,EAX
  00d5ca4e:	c1 e9 04                                       	SHR ECX,0x4
  00d5ca51:	0b c1                                          	OR EAX,ECX
  00d5ca53:	8b d0                                          	MOV EDX,EAX
  00d5ca55:	6a 00                                          	PUSH 0x0
  00d5ca57:	c1 ea 02                                       	SHR EDX,0x2
  00d5ca5a:	0b c2                                          	OR EAX,EDX
  00d5ca5c:	6a 00                                          	PUSH 0x0
  00d5ca5e:	8b c8                                          	MOV ECX,EAX
  00d5ca60:	6a 00                                          	PUSH 0x0
  00d5ca62:	d1 e9                                          	SHR ECX,0x1
  00d5ca64:	6a 00                                          	PUSH 0x0
  00d5ca66:	0b c8                                          	OR ECX,EAX
  00d5ca68:	83 c1 01                                       	ADD ECX,0x1
  00d5ca6b:	68 24 9b 08 01                                 	PUSH 0x1089b24
  00d5ca70:	6a 2c                                          	PUSH 0x2c
  00d5ca72:	89 4c 24 34                                    	MOV dword ptr [ESP + 0x34],ECX
  00d5ca76:	e8 85 7a 78 ff                                 	CALL 0x004e4500
  00d5ca7b:	83 c4 28                                       	ADD ESP,0x28
  00d5ca7e:	85 c0                                          	TEST EAX,EAX
  00d5ca80:	0f 84 8b 00 00 00                              	JZ 0x00d5cb11
  00d5ca86:	85 db                                          	TEST EBX,EBX
  00d5ca88:	89 5c 24 1c                                    	MOV dword ptr [ESP + 0x1c],EBX
  00d5ca8c:	db 44 24 1c                                    	FILD dword ptr [ESP + 0x1c]
  00d5ca90:	6a 21                                          	PUSH 0x21
  00d5ca92:	7d 06                                          	JGE 0x00d5ca9a
  00d5ca94:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00d5ca9a:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00d5ca9e:	8b d1                                          	MOV EDX,ECX
  00d5caa0:	85 d2                                          	TEST EDX,EDX
  00d5caa2:	89 54 24 20                                    	MOV dword ptr [ESP + 0x20],EDX
  00d5caa6:	db 44 24 20                                    	FILD dword ptr [ESP + 0x20]
  00d5caaa:	7d 06                                          	JGE 0x00d5cab2
  00d5caac:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00d5cab2:	de f9                                          	FDIVP
  00d5cab4:	83 ec 10                                       	SUB ESP,0x10
  00d5cab7:	85 ff                                          	TEST EDI,EDI
  00d5cab9:	89 7c 24 30                                    	MOV dword ptr [ESP + 0x30],EDI
  00d5cabd:	d9 5c 24 0c                                    	FSTP float ptr [ESP + 0xc]
  00d5cac1:	db 44 24 30                                    	FILD dword ptr [ESP + 0x30]
  00d5cac5:	7d 06                                          	JGE 0x00d5cacd
  00d5cac7:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00d5cacd:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  00d5cad1:	8b fa                                          	MOV EDI,EDX
  00d5cad3:	85 ff                                          	TEST EDI,EDI
  00d5cad5:	89 7c 24 30                                    	MOV dword ptr [ESP + 0x30],EDI
  00d5cad9:	db 44 24 30                                    	FILD dword ptr [ESP + 0x30]
  00d5cadd:	7d 06                                          	JGE 0x00d5cae5
  00d5cadf:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00d5cae5:	de f9                                          	FDIVP
  00d5cae7:	8b 7c 24 28                                    	MOV EDI,dword ptr [ESP + 0x28]
  00d5caeb:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00d5caef:	d9 ee                                          	FLDZ
  00d5caf1:	d9 54 24 04                                    	FST float ptr [ESP + 0x4]
  00d5caf5:	d9 1c 24                                       	FSTP float ptr [ESP]
  00d5caf8:	51                                             	PUSH ECX
  00d5caf9:	52                                             	PUSH EDX
  00d5cafa:	57                                             	PUSH EDI
  00d5cafb:	8b c8                                          	MOV ECX,EAX
  00d5cafd:	e8 0e df 7a ff                                 	CALL 0x0050aa10
  00d5cb02:	eb 13                                          	JMP 0x00d5cb17
  00d5cb04:	c7 44 24 14 00 00 00 00                        	MOV dword ptr [ESP + 0x14],0x0
  00d5cb0c:	e9 b8 fe ff ff                                 	JMP 0x00d5c9c9
  00d5cb11:	8b 7c 24 14                                    	MOV EDI,dword ptr [ESP + 0x14]
  00d5cb15:	33 c0                                          	XOR EAX,EAX
  00d5cb17:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  00d5cb1a:	89 01                                          	MOV dword ptr [ECX],EAX
  00d5cb1c:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00d5cb1e:	8b c8                                          	MOV ECX,EAX
  00d5cb20:	8b 02                                          	MOV EAX,dword ptr [EDX]
  00d5cb22:	ff d0                                          	CALL EAX
  00d5cb24:	8b 4d 10                                       	MOV ECX,dword ptr [EBP + 0x10]
  00d5cb27:	51                                             	PUSH ECX
  00d5cb28:	57                                             	PUSH EDI
  00d5cb29:	33 db                                          	XOR EBX,EBX
  00d5cb2b:	56                                             	PUSH ESI
  00d5cb2c:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00d5cb30:	c7 44 24 2c 50 49 20 3f                        	MOV dword ptr [ESP + 0x2c],0x3f204950
  00d5cb38:	89 5c 24 34                                    	MOV dword ptr [ESP + 0x34],EBX
  00d5cb3c:	89 5c 24 38                                    	MOV dword ptr [ESP + 0x38],EBX
  00d5cb40:	c7 44 24 30 e8 2b 19 01                        	MOV dword ptr [ESP + 0x30],0x1192be8
  00d5cb48:	e8 03 20 ff ff                                 	CALL 0x00d4eb50
  00d5cb4d:	8b c8                                          	MOV ECX,EAX
  00d5cb4f:	e8 0c d0 ff ff                                 	CALL 0x00d59b60
  00d5cb54:	8d 54 24 20                                    	LEA EDX,[ESP + 0x20]
  00d5cb58:	52                                             	PUSH EDX
  00d5cb59:	e8 22 68 93 ff                                 	CALL 0x00693380
  00d5cb5e:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00d5cb62:	83 c4 04                                       	ADD ESP,0x4
  00d5cb65:	3b cb                                          	CMP ECX,EBX
  00d5cb67:	74 0b                                          	JZ 0x00d5cb74
  00d5cb69:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00d5cb6b:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00d5cb6d:	8d 54 24 30                                    	LEA EDX,[ESP + 0x30]
  00d5cb71:	52                                             	PUSH EDX
  00d5cb72:	ff d0                                          	CALL EAX
  00d5cb74:	3b fb                                          	CMP EDI,EBX
  00d5cb76:	74 09                                          	JZ 0x00d5cb81
  00d5cb78:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00d5cb7a:	8b 42 04                                       	MOV EAX,dword ptr [EDX + 0x4]
  00d5cb7d:	8b cf                                          	MOV ECX,EDI
  00d5cb7f:	ff d0                                          	CALL EAX
  00d5cb81:	5f                                             	POP EDI
  00d5cb82:	5e                                             	POP ESI
  00d5cb83:	b0 01                                          	MOV AL,0x1
  00d5cb85:	5b                                             	POP EBX
  00d5cb86:	8b e5                                          	MOV ESP,EBP
  00d5cb88:	5d                                             	POP EBP
  00d5cb89:	c2 0c 00                                       	RET 0xc

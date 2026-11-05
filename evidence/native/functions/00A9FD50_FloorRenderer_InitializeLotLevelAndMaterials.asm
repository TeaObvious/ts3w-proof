# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9fd50 (FloorRenderer_InitializeLotLevelAndMaterials)
Paired actual Ghidra pseudocode: 00A9FD50_FloorRenderer_InitializeLotLevelAndMaterials.c
Envelope [0x00a9fd50,0x00aa00ff); 943 bytes; exact owned ranges: [0x00a9fd50,0x00aa00ff)
Owned: 943 original bytes / 293 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9fd50 <original>:
  00a9fd50:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  00a9fd54:	8a 54 24 0c                                    	MOV DL,byte ptr [ESP + 0xc]
  00a9fd58:	83 ec 20                                       	SUB ESP,0x20
  00a9fd5b:	53                                             	PUSH EBX
  00a9fd5c:	8b 5c 24 2c                                    	MOV EBX,dword ptr [ESP + 0x2c]
  00a9fd60:	56                                             	PUSH ESI
  00a9fd61:	8b f1                                          	MOV ESI,ECX
  00a9fd63:	57                                             	PUSH EDI
  00a9fd64:	89 46 0c                                       	MOV dword ptr [ESI + 0xc],EAX
  00a9fd67:	6a 00                                          	PUSH 0x0
  00a9fd69:	c6 46 08 01                                    	MOV byte ptr [ESI + 0x8],0x1
  00a9fd6d:	8b 88 30 02 00 00                              	MOV ECX,dword ptr [EAX + 0x230]
  00a9fd73:	6a 00                                          	PUSH 0x0
  00a9fd75:	89 4e 10                                       	MOV dword ptr [ESI + 0x10],ECX
  00a9fd78:	89 5e 14                                       	MOV dword ptr [ESI + 0x14],EBX
  00a9fd7b:	88 56 18                                       	MOV byte ptr [ESI + 0x18],DL
  00a9fd7e:	8b 48 60                                       	MOV ECX,dword ptr [EAX + 0x60]
  00a9fd81:	6a 00                                          	PUSH 0x0
  00a9fd83:	89 4e 1c                                       	MOV dword ptr [ESI + 0x1c],ECX
  00a9fd86:	8b 50 64                                       	MOV EDX,dword ptr [EAX + 0x64]
  00a9fd89:	68 82 d8 b2 00                                 	PUSH 0xb2d882
  00a9fd8e:	8d 86 28 01 00 00                              	LEA EAX,[ESI + 0x128]
  00a9fd94:	68 94 48 06 01                                 	PUSH 0x1064894
  00a9fd99:	50                                             	PUSH EAX
  00a9fd9a:	89 56 20                                       	MOV dword ptr [ESI + 0x20],EDX
  00a9fd9d:	e8 9e f0 a0 ff                                 	CALL 0x004aee40
  00a9fda2:	e8 49 b6 1e 00                                 	CALL 0x00c8b3f0
  00a9fda7:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00a9fda9:	89 4e 28                                       	MOV dword ptr [ESI + 0x28],ECX
  00a9fdac:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9fdaf:	6a 00                                          	PUSH 0x0
  00a9fdb1:	6a 00                                          	PUSH 0x0
  00a9fdb3:	89 56 2c                                       	MOV dword ptr [ESI + 0x2c],EDX
  00a9fdb6:	8b 48 08                                       	MOV ECX,dword ptr [EAX + 0x8]
  00a9fdb9:	6a 00                                          	PUSH 0x0
  00a9fdbb:	6a 00                                          	PUSH 0x0
  00a9fdbd:	89 4e 30                                       	MOV dword ptr [ESI + 0x30],ECX
  00a9fdc0:	8b 50 0c                                       	MOV EDX,dword ptr [EAX + 0xc]
  00a9fdc3:	68 6c 48 06 01                                 	PUSH 0x106486c
  00a9fdc8:	68 50 03 00 00                                 	PUSH 0x350
  00a9fdcd:	89 56 34                                       	MOV dword ptr [ESI + 0x34],EDX
  00a9fdd0:	e8 2b 47 a4 ff                                 	CALL 0x004e4500
  00a9fdd5:	83 c4 30                                       	ADD ESP,0x30
  00a9fdd8:	85 c0                                          	TEST EAX,EAX
  00a9fdda:	74 0b                                          	JZ 0x00a9fde7
  00a9fddc:	8b c8                                          	MOV ECX,EAX
  00a9fdde:	e8 dd 6f fe ff                                 	CALL 0x00a86dc0
  00a9fde3:	8b f8                                          	MOV EDI,EAX
  00a9fde5:	eb 02                                          	JMP 0x00a9fde9
  00a9fde7:	33 ff                                          	XOR EDI,EDI
  00a9fde9:	55                                             	PUSH EBP
  00a9fdea:	8b ae 00 01 00 00                              	MOV EBP,dword ptr [ESI + 0x100]
  00a9fdf0:	3b fd                                          	CMP EDI,EBP
  00a9fdf2:	74 20                                          	JZ 0x00a9fe14
  00a9fdf4:	85 ff                                          	TEST EDI,EDI
  00a9fdf6:	74 08                                          	JZ 0x00a9fe00
  00a9fdf8:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00a9fdfa:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9fdfc:	8b cf                                          	MOV ECX,EDI
  00a9fdfe:	ff d2                                          	CALL EDX
  00a9fe00:	85 ed                                          	TEST EBP,EBP
  00a9fe02:	89 be 00 01 00 00                              	MOV dword ptr [ESI + 0x100],EDI
  00a9fe08:	74 0a                                          	JZ 0x00a9fe14
  00a9fe0a:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  00a9fe0d:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9fe10:	8b cd                                          	MOV ECX,EBP
  00a9fe12:	ff d2                                          	CALL EDX
  00a9fe14:	0f b6 46 18                                    	MOVZX EAX,byte ptr [ESI + 0x18]
  00a9fe18:	8b 4e 0c                                       	MOV ECX,dword ptr [ESI + 0xc]
  00a9fe1b:	56                                             	PUSH ESI
  00a9fe1c:	50                                             	PUSH EAX
  00a9fe1d:	53                                             	PUSH EBX
  00a9fe1e:	51                                             	PUSH ECX
  00a9fe1f:	8b 8e 00 01 00 00                              	MOV ECX,dword ptr [ESI + 0x100]
  00a9fe25:	e8 46 81 fe ff                                 	CALL 0x00a87f70
  00a9fe2a:	8b 96 e8 00 00 00                              	MOV EDX,dword ptr [ESI + 0xe8]
  00a9fe30:	8b 86 e4 00 00 00                              	MOV EAX,dword ptr [ESI + 0xe4]
  00a9fe36:	8d be e0 00 00 00                              	LEA EDI,[ESI + 0xe0]
  00a9fe3c:	52                                             	PUSH EDX
  00a9fe3d:	50                                             	PUSH EAX
  00a9fe3e:	8b cf                                          	MOV ECX,EDI
  00a9fe40:	e8 bb f7 ff ff                                 	CALL 0x00a9f600
  00a9fe45:	33 db                                          	XOR EBX,EBX
  00a9fe47:	89 5f 0c                                       	MOV dword ptr [EDI + 0xc],EBX
  00a9fe4a:	e8 a1 c6 9a ff                                 	CALL 0x0044c4f0
  00a9fe4f:	3b c3                                          	CMP EAX,EBX
  00a9fe51:	89 46 38                                       	MOV dword ptr [ESI + 0x38],EAX
  00a9fe54:	89 76 3c                                       	MOV dword ptr [ESI + 0x3c],ESI
  00a9fe57:	c7 46 40 68 48 06 01                           	MOV dword ptr [ESI + 0x40],0x1064868
  00a9fe5e:	c7 46 44 01 00 00 00                           	MOV dword ptr [ESI + 0x44],0x1
  00a9fe65:	89 5e 48                                       	MOV dword ptr [ESI + 0x48],EBX
  00a9fe68:	74 11                                          	JZ 0x00a9fe7b
  00a9fe6a:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00a9fe6c:	53                                             	PUSH EBX
  00a9fe6d:	53                                             	PUSH EBX
  00a9fe6e:	68 1d bf fa 03                                 	PUSH 0x3fabf1d
  00a9fe73:	8b c8                                          	MOV ECX,EAX
  00a9fe75:	8b 42 24                                       	MOV EAX,dword ptr [EDX + 0x24]
  00a9fe78:	56                                             	PUSH ESI
  00a9fe79:	ff d0                                          	CALL EAX
  00a9fe7b:	68 60 48 06 01                                 	PUSH 0x1064860
  00a9fe80:	e8 6b 02 d3 ff                                 	CALL 0x007d00f0
  00a9fe85:	68 50 48 06 01                                 	PUSH 0x1064850
  00a9fe8a:	8b f8                                          	MOV EDI,EAX
  00a9fe8c:	e8 5f 02 d3 ff                                 	CALL 0x007d00f0
  00a9fe91:	83 c4 08                                       	ADD ESP,0x8
  00a9fe94:	6a 01                                          	PUSH 0x1
  00a9fe96:	8d 8e 04 01 00 00                              	LEA ECX,[ESI + 0x104]
  00a9fe9c:	51                                             	PUSH ECX
  00a9fe9d:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9fea3:	57                                             	PUSH EDI
  00a9fea4:	8b e8                                          	MOV EBP,EAX
  00a9fea6:	e8 b5 b6 cf ff                                 	CALL 0x0079b560
  00a9feab:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9feb1:	6a 01                                          	PUSH 0x1
  00a9feb3:	8d 96 08 01 00 00                              	LEA EDX,[ESI + 0x108]
  00a9feb9:	52                                             	PUSH EDX
  00a9feba:	55                                             	PUSH EBP
  00a9febb:	e8 a0 b6 cf ff                                 	CALL 0x0079b560
  00a9fec0:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9fec6:	53                                             	PUSH EBX
  00a9fec7:	53                                             	PUSH EBX
  00a9fec8:	68 38 48 06 01                                 	PUSH 0x1064838
  00a9fecd:	e8 3e bd cf ff                                 	CALL 0x0079bc10
  00a9fed2:	53                                             	PUSH EBX
  00a9fed3:	53                                             	PUSH EBX
  00a9fed4:	89 86 0c 01 00 00                              	MOV dword ptr [ESI + 0x10c],EAX
  00a9feda:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9fee0:	68 14 48 06 01                                 	PUSH 0x1064814
  00a9fee5:	e8 26 bd cf ff                                 	CALL 0x0079bc10
  00a9feea:	53                                             	PUSH EBX
  00a9feeb:	53                                             	PUSH EBX
  00a9feec:	89 86 10 01 00 00                              	MOV dword ptr [ESI + 0x110],EAX
  00a9fef2:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9fef8:	68 78 a5 ff 00                                 	PUSH 0xffa578
  00a9fefd:	e8 0e bd cf ff                                 	CALL 0x0079bc10
  00a9ff02:	53                                             	PUSH EBX
  00a9ff03:	53                                             	PUSH EBX
  00a9ff04:	89 86 14 01 00 00                              	MOV dword ptr [ESI + 0x114],EAX
  00a9ff0a:	8b 0d 3c 85 1d 01                              	MOV ECX,dword ptr [0x011d853c]
  00a9ff10:	68 00 48 06 01                                 	PUSH 0x1064800
  00a9ff15:	e8 f6 bc cf ff                                 	CALL 0x0079bc10
  00a9ff1a:	8d be 38 01 00 00                              	LEA EDI,[ESI + 0x138]
  00a9ff20:	89 86 18 01 00 00                              	MOV dword ptr [ESI + 0x118],EAX
  00a9ff26:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00a9ff28:	85 c0                                          	TEST EAX,EAX
  00a9ff2a:	5d                                             	POP EBP
  00a9ff2b:	74 07                                          	JZ 0x00a9ff34
  00a9ff2d:	8b 0f                                          	MOV ECX,dword ptr [EDI]
  00a9ff2f:	f6 c1 03                                       	TEST CL,0x3
  00a9ff32:	74 57                                          	JZ 0x00a9ff8b
  00a9ff34:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00a9ff36:	f6 c2 01                                       	TEST DL,0x1
  00a9ff39:	75 50                                          	JNZ 0x00a9ff8b
  00a9ff3b:	53                                             	PUSH EBX
  00a9ff3c:	53                                             	PUSH EBX
  00a9ff3d:	53                                             	PUSH EBX
  00a9ff3e:	68 82 d8 b2 00                                 	PUSH 0xb2d882
  00a9ff43:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  00a9ff47:	68 e8 47 06 01                                 	PUSH 0x10647e8
  00a9ff4c:	50                                             	PUSH EAX
  00a9ff4d:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00a9ff51:	89 5c 24 28                                    	MOV dword ptr [ESP + 0x28],EBX
  00a9ff55:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  00a9ff59:	89 5c 24 30                                    	MOV dword ptr [ESP + 0x30],EBX
  00a9ff5d:	e8 de ee a0 ff                                 	CALL 0x004aee40
  00a9ff62:	8b 0d 84 4c 1d 01                              	MOV ECX,dword ptr [0x011d4c84]
  00a9ff68:	83 c4 18                                       	ADD ESP,0x18
  00a9ff6b:	3b cb                                          	CMP ECX,EBX
  00a9ff6d:	74 1c                                          	JZ 0x00a9ff8b
  00a9ff6f:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00a9ff71:	8b 52 34                                       	MOV EDX,dword ptr [EDX + 0x34]
  00a9ff74:	6a 01                                          	PUSH 0x1
  00a9ff76:	53                                             	PUSH EBX
  00a9ff77:	68 a0 b3 d4 00                                 	PUSH 0xd4b3a0
  00a9ff7c:	53                                             	PUSH EBX
  00a9ff7d:	53                                             	PUSH EBX
  00a9ff7e:	57                                             	PUSH EDI
  00a9ff7f:	68 a7 d7 b3 00                                 	PUSH 0xb3d7a7
  00a9ff84:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00a9ff88:	50                                             	PUSH EAX
  00a9ff89:	ff d2                                          	CALL EDX
  00a9ff8b:	e8 70 8d 1e 00                                 	CALL 0x00c88d00
  00a9ff90:	84 c0                                          	TEST AL,AL
  00a9ff92:	74 57                                          	JZ 0x00a9ffeb
  00a9ff94:	8b 86 3c 01 00 00                              	MOV EAX,dword ptr [ESI + 0x13c]
  00a9ff9a:	81 c6 3c 01 00 00                              	ADD ESI,0x13c
  00a9ffa0:	85 c0                                          	TEST EAX,EAX
  00a9ffa2:	74 07                                          	JZ 0x00a9ffab
  00a9ffa4:	8b 0e                                          	MOV ECX,dword ptr [ESI]
  00a9ffa6:	f6 c1 03                                       	TEST CL,0x3
  00a9ffa9:	74 40                                          	JZ 0x00a9ffeb
  00a9ffab:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00a9ffad:	f6 c2 01                                       	TEST DL,0x1
  00a9ffb0:	75 39                                          	JNZ 0x00a9ffeb
  00a9ffb2:	6a 13                                          	PUSH 0x13
  00a9ffb4:	e8 f7 78 d3 ff                                 	CALL 0x007d78b0
  00a9ffb9:	68 bc 47 06 01                                 	PUSH 0x10647bc
  00a9ffbe:	8b f8                                          	MOV EDI,EAX
  00a9ffc0:	e8 fb 00 d3 ff                                 	CALL 0x007d00c0
  00a9ffc5:	83 c4 08                                       	ADD ESP,0x8
  00a9ffc8:	53                                             	PUSH EBX
  00a9ffc9:	53                                             	PUSH EBX
  00a9ffca:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00a9ffce:	53                                             	PUSH EBX
  00a9ffcf:	8d 44 24 28                                    	LEA EAX,[ESP + 0x28]
  00a9ffd3:	50                                             	PUSH EAX
  00a9ffd4:	8b ce                                          	MOV ECX,ESI
  00a9ffd6:	89 54 24 30                                    	MOV dword ptr [ESP + 0x30],EDX
  00a9ffda:	c7 44 24 34 82 d8 b2 00                        	MOV dword ptr [ESP + 0x34],0xb2d882
  00a9ffe2:	89 7c 24 38                                    	MOV dword ptr [ESP + 0x38],EDI
  00a9ffe6:	e8 65 a6 b2 ff                                 	CALL 0x005ca650
  00a9ffeb:	83 3d 64 3b 18 01 ff                           	CMP dword ptr [0x01183b64],-0x1
  00a9fff2:	0f 85 fc 00 00 00                              	JNZ 0x00aa00f4
  00a9fff8:	8b 35 30 85 1d 01                              	MOV ESI,dword ptr [0x011d8530]
  00a9fffe:	6a 01                                          	PUSH 0x1
  00aa0000:	6a 01                                          	PUSH 0x1
  00aa0002:	68 a8 47 06 01                                 	PUSH 0x10647a8
  00aa0007:	8b ce                                          	MOV ECX,ESI
  00aa0009:	e8 22 a5 cf ff                                 	CALL 0x0079a530
  00aa000e:	6a 02                                          	PUSH 0x2
  00aa0010:	6a 01                                          	PUSH 0x1
  00aa0012:	68 2c 33 ff 00                                 	PUSH 0xff332c
  00aa0017:	8b ce                                          	MOV ECX,ESI
  00aa0019:	a3 64 3b 18 01                                 	MOV [0x01183b64],EAX
  00aa001e:	e8 0d a5 cf ff                                 	CALL 0x0079a530
  00aa0023:	6a 05                                          	PUSH 0x5
  00aa0025:	6a 01                                          	PUSH 0x1
  00aa0027:	68 08 72 fe 00                                 	PUSH 0xfe7208
  00aa002c:	8b ce                                          	MOV ECX,ESI
  00aa002e:	a3 80 3b 18 01                                 	MOV [0x01183b80],EAX
  00aa0033:	e8 f8 a4 cf ff                                 	CALL 0x0079a530
  00aa0038:	6a 01                                          	PUSH 0x1
  00aa003a:	6a 01                                          	PUSH 0x1
  00aa003c:	68 9c 04 06 01                                 	PUSH 0x106049c
  00aa0041:	8b ce                                          	MOV ECX,ESI
  00aa0043:	a3 84 3b 18 01                                 	MOV [0x01183b84],EAX
  00aa0048:	e8 e3 a4 cf ff                                 	CALL 0x0079a530
  00aa004d:	6a 05                                          	PUSH 0x5
  00aa004f:	6a 01                                          	PUSH 0x1
  00aa0051:	68 24 03 06 01                                 	PUSH 0x1060324
  00aa0056:	8b ce                                          	MOV ECX,ESI
  00aa0058:	a3 8c 3b 18 01                                 	MOV [0x01183b8c],EAX
  00aa005d:	e8 ce a4 cf ff                                 	CALL 0x0079a530
  00aa0062:	6a 05                                          	PUSH 0x5
  00aa0064:	6a 01                                          	PUSH 0x1
  00aa0066:	68 94 47 06 01                                 	PUSH 0x1064794
  00aa006b:	8b ce                                          	MOV ECX,ESI
  00aa006d:	a3 90 3b 18 01                                 	MOV [0x01183b90],EAX
  00aa0072:	e8 b9 a4 cf ff                                 	CALL 0x0079a530
  00aa0077:	6a 01                                          	PUSH 0x1
  00aa0079:	6a 01                                          	PUSH 0x1
  00aa007b:	68 50 2c 06 01                                 	PUSH 0x1062c50
  00aa0080:	8b ce                                          	MOV ECX,ESI
  00aa0082:	a3 94 3b 18 01                                 	MOV [0x01183b94],EAX
  00aa0087:	e8 a4 a4 cf ff                                 	CALL 0x0079a530
  00aa008c:	a3 a0 3b 18 01                                 	MOV [0x01183ba0],EAX
  00aa0091:	e8 3a 8c 1e 00                                 	CALL 0x00c88cd0
  00aa0096:	84 c0                                          	TEST AL,AL
  00aa0098:	74 15                                          	JZ 0x00aa00af
  00aa009a:	6a 05                                          	PUSH 0x5
  00aa009c:	6a 01                                          	PUSH 0x1
  00aa009e:	68 80 47 06 01                                 	PUSH 0x1064780
  00aa00a3:	8b ce                                          	MOV ECX,ESI
  00aa00a5:	e8 86 a4 cf ff                                 	CALL 0x0079a530
  00aa00aa:	a3 a4 3b 18 01                                 	MOV [0x01183ba4],EAX
  00aa00af:	e8 1c 8c 1e 00                                 	CALL 0x00c88cd0
  00aa00b4:	84 c0                                          	TEST AL,AL
  00aa00b6:	75 09                                          	JNZ 0x00aa00c1
  00aa00b8:	e8 43 8c 1e 00                                 	CALL 0x00c88d00
  00aa00bd:	84 c0                                          	TEST AL,AL
  00aa00bf:	74 15                                          	JZ 0x00aa00d6
  00aa00c1:	6a 01                                          	PUSH 0x1
  00aa00c3:	6a 02                                          	PUSH 0x2
  00aa00c5:	68 68 47 06 01                                 	PUSH 0x1064768
  00aa00ca:	8b ce                                          	MOV ECX,ESI
  00aa00cc:	e8 5f a4 cf ff                                 	CALL 0x0079a530
  00aa00d1:	a3 a8 3b 18 01                                 	MOV [0x01183ba8],EAX
  00aa00d6:	e8 25 8c 1e 00                                 	CALL 0x00c88d00
  00aa00db:	84 c0                                          	TEST AL,AL
  00aa00dd:	74 15                                          	JZ 0x00aa00f4
  00aa00df:	6a 05                                          	PUSH 0x5
  00aa00e1:	6a 01                                          	PUSH 0x1
  00aa00e3:	68 54 47 06 01                                 	PUSH 0x1064754
  00aa00e8:	8b ce                                          	MOV ECX,ESI
  00aa00ea:	e8 41 a4 cf ff                                 	CALL 0x0079a530
  00aa00ef:	a3 98 3b 18 01                                 	MOV [0x01183b98],EAX
  00aa00f4:	5f                                             	POP EDI
  00aa00f5:	5e                                             	POP ESI
  00aa00f6:	b0 01                                          	MOV AL,0x1
  00aa00f8:	5b                                             	POP EBX
  00aa00f9:	83 c4 20                                       	ADD ESP,0x20
  00aa00fc:	c2 0c 00                                       	RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a9edc0 (FloorRenderer_AssignMaskedQuarterSubsets)
Paired actual Ghidra pseudocode: 00A9EDC0_FloorRenderer_AssignMaskedQuarterSubsets.c
Envelope [0x00a9edc0,0x00a9f14f); 911 bytes; exact owned ranges: [0x00a9edc0,0x00a9f14f)
Owned: 911 original bytes / 262 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a9edc0 <original>:
  00a9edc0:	81 ec d4 00 00 00                              	SUB ESP,0xd4
  00a9edc6:	56                                             	PUSH ESI
  00a9edc7:	8b f1                                          	MOV ESI,ECX
  00a9edc9:	83 be 00 01 00 00 00                           	CMP dword ptr [ESI + 0x100],0x0
  00a9edd0:	0f 84 6f 03 00 00                              	JZ 0x00a9f145
  00a9edd6:	53                                             	PUSH EBX
  00a9edd7:	8b 5e 0c                                       	MOV EBX,dword ptr [ESI + 0xc]
  00a9edda:	8b 93 a0 00 00 00                              	MOV EDX,dword ptr [EBX + 0xa0]
  00a9ede0:	55                                             	PUSH EBP
  00a9ede1:	57                                             	PUSH EDI
  00a9ede2:	8b bc 24 f4 00 00 00                           	MOV EDI,dword ptr [ESP + 0xf4]
  00a9ede9:	0f b7 c7                                       	MOVZX EAX,DI
  00a9edec:	8d 8b 98 00 00 00                              	LEA ECX,[EBX + 0x98]
  00a9edf2:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00a9edf6:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00a9edf9:	8b 2c 90                                       	MOV EBP,dword ptr [EAX + EDX*0x4]
  00a9edfc:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00a9ee00:	52                                             	PUSH EDX
  00a9ee01:	8d 44 24 38                                    	LEA EAX,[ESP + 0x38]
  00a9ee05:	50                                             	PUSH EAX
  00a9ee06:	e8 b5 55 04 00                                 	CALL 0x00ae43c0
  00a9ee0b:	8b 93 c0 00 00 00                              	MOV EDX,dword ptr [EBX + 0xc0]
  00a9ee11:	0f b7 cf                                       	MOVZX ECX,DI
  00a9ee14:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  00a9ee18:	8d 8b b8 00 00 00                              	LEA ECX,[EBX + 0xb8]
  00a9ee1e:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00a9ee22:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00a9ee25:	8b 1c 90                                       	MOV EBX,dword ptr [EAX + EDX*0x4]
  00a9ee28:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00a9ee2c:	52                                             	PUSH EDX
  00a9ee2d:	8d 44 24 30                                    	LEA EAX,[ESP + 0x30]
  00a9ee31:	50                                             	PUSH EAX
  00a9ee32:	e8 89 55 04 00                                 	CALL 0x00ae43c0
  00a9ee37:	8b 8c 24 30 01 00 00                           	MOV ECX,dword ptr [ESP + 0x130]
  00a9ee3e:	8b 94 24 18 01 00 00                           	MOV EDX,dword ptr [ESP + 0x118]
  00a9ee45:	51                                             	PUSH ECX
  00a9ee46:	8b 8c 24 20 01 00 00                           	MOV ECX,dword ptr [ESP + 0x120]
  00a9ee4d:	52                                             	PUSH EDX
  00a9ee4e:	8b 94 24 f8 00 00 00                           	MOV EDX,dword ptr [ESP + 0xf8]
  00a9ee55:	51                                             	PUSH ECX
  00a9ee56:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00a9ee5a:	39 29                                          	CMP dword ptr [ECX],EBP
  00a9ee5c:	8b 8c 24 0c 01 00 00                           	MOV ECX,dword ptr [ESP + 0x10c]
  00a9ee63:	52                                             	PUSH EDX
  00a9ee64:	0f 95 c2                                       	SETNZ DL
  00a9ee67:	39 18                                          	CMP dword ptr [EAX],EBX
  00a9ee69:	0f 95 c0                                       	SETNZ AL
  00a9ee6c:	52                                             	PUSH EDX
  00a9ee6d:	8b 94 24 0c 01 00 00                           	MOV EDX,dword ptr [ESP + 0x10c]
  00a9ee74:	50                                             	PUSH EAX
  00a9ee75:	8b 84 24 04 01 00 00                           	MOV EAX,dword ptr [ESP + 0x104]
  00a9ee7c:	6a 00                                          	PUSH 0x0
  00a9ee7e:	51                                             	PUSH ECX
  00a9ee7f:	52                                             	PUSH EDX
  00a9ee80:	57                                             	PUSH EDI
  00a9ee81:	50                                             	PUSH EAX
  00a9ee82:	56                                             	PUSH ESI
  00a9ee83:	8d 4c 24 6c                                    	LEA ECX,[ESP + 0x6c]
  00a9ee87:	e8 f4 d1 ff ff                                 	CALL 0x00a9c080
  00a9ee8c:	8b 84 24 04 01 00 00                           	MOV EAX,dword ptr [ESP + 0x104]
  00a9ee93:	8b 08                                          	MOV ECX,dword ptr [EAX]
  00a9ee95:	3b 0d d0 c8 1e 01                              	CMP ECX,dword ptr [0x011ec8d0]
  00a9ee9b:	75 21                                          	JNZ 0x00a9eebe
  00a9ee9d:	8b 50 08                                       	MOV EDX,dword ptr [EAX + 0x8]
  00a9eea0:	3b 15 d8 c8 1e 01                              	CMP EDX,dword ptr [0x011ec8d8]
  00a9eea6:	75 16                                          	JNZ 0x00a9eebe
  00a9eea8:	8b 48 0c                                       	MOV ECX,dword ptr [EAX + 0xc]
  00a9eeab:	3b 0d dc c8 1e 01                              	CMP ECX,dword ptr [0x011ec8dc]
  00a9eeb1:	75 0b                                          	JNZ 0x00a9eebe
  00a9eeb3:	8b 50 04                                       	MOV EDX,dword ptr [EAX + 0x4]
  00a9eeb6:	3b 15 d4 c8 1e 01                              	CMP EDX,dword ptr [0x011ec8d4]
  00a9eebc:	74 46                                          	JZ 0x00a9ef04
  00a9eebe:	8b 8c 24 24 01 00 00                           	MOV ECX,dword ptr [ESP + 0x124]
  00a9eec5:	d9 84 24 14 01 00 00                           	FLD float ptr [ESP + 0x114]
  00a9eecc:	8b 94 24 08 01 00 00                           	MOV EDX,dword ptr [ESP + 0x108]
  00a9eed3:	51                                             	PUSH ECX
  00a9eed4:	83 ec 0c                                       	SUB ESP,0xc
  00a9eed7:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00a9eedb:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00a9eedf:	d9 84 24 20 01 00 00                           	FLD float ptr [ESP + 0x120]
  00a9eee6:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00a9eeea:	d9 84 24 1c 01 00 00                           	FLD float ptr [ESP + 0x11c]
  00a9eef1:	d9 1c 24                                       	FSTP float ptr [ESP]
  00a9eef4:	52                                             	PUSH EDX
  00a9eef5:	50                                             	PUSH EAX
  00a9eef6:	e8 25 cd ff ff                                 	CALL 0x00a9bc20
  00a9eefb:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00a9eeff:	e8 5c be ff ff                                 	CALL 0x00a9ad60
  00a9ef04:	8a 84 24 2c 01 00 00                           	MOV AL,byte ptr [ESP + 0x12c]
  00a9ef0b:	0f b6 8c 24 df 00 00 00                        	MOVZX ECX,byte ptr [ESP + 0xdf]
  00a9ef13:	8a d0                                          	MOV DL,AL
  00a9ef15:	80 e2 01                                       	AND DL,0x1
  00a9ef18:	02 d2                                          	ADD DL,DL
  00a9ef1a:	02 d2                                          	ADD DL,DL
  00a9ef1c:	80 e1 fa                                       	AND CL,0xfa
  00a9ef1f:	0a d1                                          	OR DL,CL
  00a9ef21:	8a 8c 24 20 01 00 00                           	MOV CL,byte ptr [ESP + 0x120]
  00a9ef28:	8a d9                                          	MOV BL,CL
  00a9ef2a:	80 e3 01                                       	AND BL,0x1
  00a9ef2d:	0a d3                                          	OR DL,BL
  00a9ef2f:	80 bc 24 18 01 00 00 00                        	CMP byte ptr [ESP + 0x118],0x0
  00a9ef37:	88 94 24 df 00 00 00                           	MOV byte ptr [ESP + 0xdf],DL
  00a9ef3e:	75 08                                          	JNZ 0x00a9ef48
  00a9ef40:	84 c9                                          	TEST CL,CL
  00a9ef42:	75 04                                          	JNZ 0x00a9ef48
  00a9ef44:	84 c0                                          	TEST AL,AL
  00a9ef46:	74 09                                          	JZ 0x00a9ef51
  00a9ef48:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00a9ef4c:	e8 0f be ff ff                                 	CALL 0x00a9ad60
  00a9ef51:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00a9ef55:	e8 16 bd ff ff                                 	CALL 0x00a9ac70
  00a9ef5a:	8d 54 24 3c                                    	LEA EDX,[ESP + 0x3c]
  00a9ef5e:	52                                             	PUSH EDX
  00a9ef5f:	8b ce                                          	MOV ECX,ESI
  00a9ef61:	88 44 24 1f                                    	MOV byte ptr [ESP + 0x1f],AL
  00a9ef65:	e8 c6 fd ff ff                                 	CALL 0x00a9ed30
  00a9ef6a:	8b bc 24 e8 00 00 00                           	MOV EDI,dword ptr [ESP + 0xe8]
  00a9ef71:	8a 4f 01                                       	MOV CL,byte ptr [EDI + 0x1]
  00a9ef74:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00a9ef78:	8a 07                                          	MOV AL,byte ptr [EDI]
  00a9ef7a:	88 44 24 14                                    	MOV byte ptr [ESP + 0x14],AL
  00a9ef7e:	32 c0                                          	XOR AL,AL
  00a9ef80:	89 54 24 20                                    	MOV dword ptr [ESP + 0x20],EDX
  00a9ef84:	c6 44 24 1a 00                                 	MOV byte ptr [ESP + 0x1a],0x0
  00a9ef89:	88 4c 24 15                                    	MOV byte ptr [ESP + 0x15],CL
  00a9ef8d:	88 44 24 16                                    	MOV byte ptr [ESP + 0x16],AL
  00a9ef91:	8a c8                                          	MOV CL,AL
  00a9ef93:	ba 01 00 00 00                                 	MOV EDX,0x1
  00a9ef98:	d3 e2                                          	SHL EDX,CL
  00a9ef9a:	0f be 4f 03                                    	MOVSX ECX,byte ptr [EDI + 0x3]
  00a9ef9e:	85 d1                                          	TEST ECX,EDX
  00a9efa0:	0f 84 85 01 00 00                              	JZ 0x00a9f12b
  00a9efa6:	8b 8e 00 01 00 00                              	MOV ECX,dword ptr [ESI + 0x100]
  00a9efac:	6a 00                                          	PUSH 0x0
  00a9efae:	8d 54 24 28                                    	LEA EDX,[ESP + 0x28]
  00a9efb2:	52                                             	PUSH EDX
  00a9efb3:	8d 44 24 1c                                    	LEA EAX,[ESP + 0x1c]
  00a9efb7:	32 db                                          	XOR BL,BL
  00a9efb9:	50                                             	PUSH EAX
  00a9efba:	c6 44 24 1e 00                                 	MOV byte ptr [ESP + 0x1e],0x0
  00a9efbf:	88 5c 24 1f                                    	MOV byte ptr [ESP + 0x1f],BL
  00a9efc3:	e8 08 44 fe ff                                 	CALL 0x00a833d0
  00a9efc8:	84 c0                                          	TEST AL,AL
  00a9efca:	74 75                                          	JZ 0x00a9f041
  00a9efcc:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00a9efd0:	51                                             	PUSH ECX
  00a9efd1:	8d 54 24 30                                    	LEA EDX,[ESP + 0x30]
  00a9efd5:	8d ae e0 00 00 00                              	LEA EBP,[ESI + 0xe0]
  00a9efdb:	52                                             	PUSH EDX
  00a9efdc:	8b cd                                          	MOV ECX,EBP
  00a9efde:	e8 2d d8 ff ff                                 	CALL 0x00a9c810
  00a9efe3:	8b 38                                          	MOV EDI,dword ptr [EAX]
  00a9efe5:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00a9efe8:	8b 4d 04                                       	MOV ECX,dword ptr [EBP + 0x4]
  00a9efeb:	3b 3c 81                                       	CMP EDI,dword ptr [ECX + EAX*0x4]
  00a9efee:	74 64                                          	JZ 0x00a9f054
  00a9eff0:	83 c7 08                                       	ADD EDI,0x8
  00a9eff3:	8b cf                                          	MOV ECX,EDI
  00a9eff5:	e8 76 bc ff ff                                 	CALL 0x00a9ac70
  00a9effa:	8a 9f a3 00 00 00                              	MOV BL,byte ptr [EDI + 0xa3]
  00a9f000:	8b 57 10                                       	MOV EDX,dword ptr [EDI + 0x10]
  00a9f003:	80 e3 01                                       	AND BL,0x1
  00a9f006:	3b 15 a0 c8 1e 01                              	CMP EDX,dword ptr [0x011ec8a0]
  00a9f00c:	88 44 24 12                                    	MOV byte ptr [ESP + 0x12],AL
  00a9f010:	75 28                                          	JNZ 0x00a9f03a
  00a9f012:	8b 47 18                                       	MOV EAX,dword ptr [EDI + 0x18]
  00a9f015:	3b 05 a8 c8 1e 01                              	CMP EAX,dword ptr [0x011ec8a8]
  00a9f01b:	75 1d                                          	JNZ 0x00a9f03a
  00a9f01d:	8b 4f 1c                                       	MOV ECX,dword ptr [EDI + 0x1c]
  00a9f020:	3b 0d ac c8 1e 01                              	CMP ECX,dword ptr [0x011ec8ac]
  00a9f026:	75 12                                          	JNZ 0x00a9f03a
  00a9f028:	8b 57 14                                       	MOV EDX,dword ptr [EDI + 0x14]
  00a9f02b:	3b 15 a4 c8 1e 01                              	CMP EDX,dword ptr [0x011ec8a4]
  00a9f031:	75 07                                          	JNZ 0x00a9f03a
  00a9f033:	c6 44 24 13 01                                 	MOV byte ptr [ESP + 0x13],0x1
  00a9f038:	eb 1a                                          	JMP 0x00a9f054
  00a9f03a:	c6 44 24 13 00                                 	MOV byte ptr [ESP + 0x13],0x0
  00a9f03f:	eb 13                                          	JMP 0x00a9f054
  00a9f041:	80 7c 24 16 00                                 	CMP byte ptr [ESP + 0x16],0x0
  00a9f046:	75 0c                                          	JNZ 0x00a9f054
  00a9f048:	57                                             	PUSH EDI
  00a9f049:	8b ce                                          	MOV ECX,ESI
  00a9f04b:	e8 70 e6 ff ff                                 	CALL 0x00a9d6c0
  00a9f050:	88 44 24 1a                                    	MOV byte ptr [ESP + 0x1a],AL
  00a9f054:	83 7e 14 00                                    	CMP dword ptr [ESI + 0x14],0x0
  00a9f058:	74 2c                                          	JZ 0x00a9f086
  00a9f05a:	80 7c 24 1b 00                                 	CMP byte ptr [ESP + 0x1b],0x0
  00a9f05f:	74 15                                          	JZ 0x00a9f076
  00a9f061:	80 7c 24 12 00                                 	CMP byte ptr [ESP + 0x12],0x0
  00a9f066:	75 3a                                          	JNZ 0x00a9f0a2
  00a9f068:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00a9f06c:	50                                             	PUSH EAX
  00a9f06d:	8b ce                                          	MOV ECX,ESI
  00a9f06f:	e8 8c f2 ff ff                                 	CALL 0x00a9e300
  00a9f074:	eb 2c                                          	JMP 0x00a9f0a2
  00a9f076:	80 7c 24 12 00                                 	CMP byte ptr [ESP + 0x12],0x0
  00a9f07b:	74 25                                          	JZ 0x00a9f0a2
  00a9f07d:	6a 00                                          	PUSH 0x0
  00a9f07f:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00a9f083:	51                                             	PUSH ECX
  00a9f084:	eb 15                                          	JMP 0x00a9f09b
  00a9f086:	80 7c 24 12 00                                 	CMP byte ptr [ESP + 0x12],0x0
  00a9f08b:	75 15                                          	JNZ 0x00a9f0a2
  00a9f08d:	80 7c 24 1b 00                                 	CMP byte ptr [ESP + 0x1b],0x0
  00a9f092:	74 0e                                          	JZ 0x00a9f0a2
  00a9f094:	6a 00                                          	PUSH 0x0
  00a9f096:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00a9f09a:	52                                             	PUSH EDX
  00a9f09b:	8b ce                                          	MOV ECX,ESI
  00a9f09d:	e8 be f4 ff ff                                 	CALL 0x00a9e560
  00a9f0a2:	80 bc 24 20 01 00 00 00                        	CMP byte ptr [ESP + 0x120],0x0
  00a9f0aa:	74 0d                                          	JZ 0x00a9f0b9
  00a9f0ac:	84 db                                          	TEST BL,BL
  00a9f0ae:	75 37                                          	JNZ 0x00a9f0e7
  00a9f0b0:	6a 01                                          	PUSH 0x1
  00a9f0b2:	8d 44 24 18                                    	LEA EAX,[ESP + 0x18]
  00a9f0b6:	50                                             	PUSH EAX
  00a9f0b7:	eb 27                                          	JMP 0x00a9f0e0
  00a9f0b9:	80 bc 24 28 01 00 00 00                        	CMP byte ptr [ESP + 0x128],0x0
  00a9f0c1:	75 24                                          	JNZ 0x00a9f0e7
  00a9f0c3:	84 db                                          	TEST BL,BL
  00a9f0c5:	75 12                                          	JNZ 0x00a9f0d9
  00a9f0c7:	38 5c 24 1a                                    	CMP byte ptr [ESP + 0x1a],BL
  00a9f0cb:	75 0c                                          	JNZ 0x00a9f0d9
  00a9f0cd:	38 5c 24 12                                    	CMP byte ptr [ESP + 0x12],BL
  00a9f0d1:	75 14                                          	JNZ 0x00a9f0e7
  00a9f0d3:	38 5c 24 13                                    	CMP byte ptr [ESP + 0x13],BL
  00a9f0d7:	75 0e                                          	JNZ 0x00a9f0e7
  00a9f0d9:	6a 00                                          	PUSH 0x0
  00a9f0db:	8d 4c 24 18                                    	LEA ECX,[ESP + 0x18]
  00a9f0df:	51                                             	PUSH ECX
  00a9f0e0:	8b ce                                          	MOV ECX,ESI
  00a9f0e2:	e8 d9 f6 ff ff                                 	CALL 0x00a9e7c0
  00a9f0e7:	0f be 44 24 16                                 	MOVSX EAX,byte ptr [ESP + 0x16]
  00a9f0ec:	0f b6 90 54 45 18 01                           	MOVZX EDX,byte ptr [EAX + 0x1184554]
  00a9f0f3:	8b 8c 24 fc 00 00 00                           	MOV ECX,dword ptr [ESP + 0xfc]
  00a9f0fa:	22 11                                          	AND DL,byte ptr [ECX]
  00a9f0fc:	8a 0c 85 58 45 18 01                           	MOV CL,byte ptr [EAX*0x4 + 0x1184558]
  00a9f103:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00a9f107:	d2 ea                                          	SHR DL,CL
  00a9f109:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00a9f10d:	52                                             	PUSH EDX
  00a9f10e:	8b 54 24 24                                    	MOV EDX,dword ptr [ESP + 0x24]
  00a9f112:	52                                             	PUSH EDX
  00a9f113:	50                                             	PUSH EAX
  00a9f114:	51                                             	PUSH ECX
  00a9f115:	8b 8e 00 01 00 00                              	MOV ECX,dword ptr [ESI + 0x100]
  00a9f11b:	e8 40 93 fe ff                                 	CALL 0x00a88460
  00a9f120:	8a 44 24 16                                    	MOV AL,byte ptr [ESP + 0x16]
  00a9f124:	8b bc 24 e8 00 00 00                           	MOV EDI,dword ptr [ESP + 0xe8]
  00a9f12b:	04 01                                          	ADD AL,0x1
  00a9f12d:	3c 04                                          	CMP AL,0x4
  00a9f12f:	88 44 24 16                                    	MOV byte ptr [ESP + 0x16],AL
  00a9f133:	0f 8c 58 fe ff ff                              	JL 0x00a9ef91
  00a9f139:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00a9f13d:	e8 2e d0 ff ff                                 	CALL 0x00a9c170
  00a9f142:	5f                                             	POP EDI
  00a9f143:	5d                                             	POP EBP
  00a9f144:	5b                                             	POP EBX
  00a9f145:	5e                                             	POP ESI
  00a9f146:	81 c4 d4 00 00 00                              	ADD ESP,0xd4
  00a9f14c:	c2 4c 00                                       	RET 0x4c

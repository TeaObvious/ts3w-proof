# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00b67950 (PoolGeometry_AppendPackedWaterTile)
Paired actual Ghidra pseudocode: 00B67950_PoolGeometry_AppendPackedWaterTile.c
Envelope [0x00b67950,0x00b67e96); 1350 bytes; exact owned ranges: [0x00b67950,0x00b67abf),[0x00b67ac0,0x00b67ad5),[0x00b67ae0,0x00b67e96)
Owned: 1338 original bytes / 393 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b67950 <original>:
  00b67950:	55                                             	PUSH EBP
  00b67951:	8b ec                                          	MOV EBP,ESP
  00b67953:	83 e4 f0                                       	AND ESP,0xfffffff0
  00b67956:	81 ec a4 01 00 00                              	SUB ESP,0x1a4
  00b6795c:	8b 81 10 02 00 00                              	MOV EAX,dword ptr [ECX + 0x210]
  00b67962:	53                                             	PUSH EBX
  00b67963:	56                                             	PUSH ESI
  00b67964:	57                                             	PUSH EDI
  00b67965:	8b 7d 08                                       	MOV EDI,dword ptr [EBP + 0x8]
  00b67968:	89 4c 24 28                                    	MOV dword ptr [ESP + 0x28],ECX
  00b6796c:	8b 88 30 02 00 00                              	MOV ECX,dword ptr [EAX + 0x230]
  00b67972:	57                                             	PUSH EDI
  00b67973:	e8 a8 96 f3 ff                                 	CALL 0x00aa1020
  00b67978:	8b 75 0c                                       	MOV ESI,dword ptr [EBP + 0xc]
  00b6797b:	8d 4c 24 1c                                    	LEA ECX,[ESP + 0x1c]
  00b6797f:	0f b7 d8                                       	MOVZX EBX,AX
  00b67982:	51                                             	PUSH ECX
  00b67983:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00b67987:	52                                             	PUSH EDX
  00b67988:	8b ce                                          	MOV ECX,ESI
  00b6798a:	89 5c 24 24                                    	MOV dword ptr [ESP + 0x24],EBX
  00b6798e:	e8 ed f2 ff ff                                 	CALL 0x00b66c80
  00b67993:	8b 4e 08                                       	MOV ECX,dword ptr [ESI + 0x8]
  00b67996:	8b 56 04                                       	MOV EDX,dword ptr [ESI + 0x4]
  00b67999:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00b6799d:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  00b679a0:	75 63                                          	JNZ 0x00b67a05
  00b679a2:	8d 8c 24 40 01 00 00                           	LEA ECX,[ESP + 0x140]
  00b679a9:	e8 52 f9 ff ff                                 	CALL 0x00b67300
  00b679ae:	50                                             	PUSH EAX
  00b679af:	8d 8c 24 d4 00 00 00                           	LEA ECX,[ESP + 0xd4]
  00b679b6:	66 89 9c 24 c4 00 00 00                        	MOV word ptr [ESP + 0xc4],BX
  00b679be:	e8 7d fa ff ff                                 	CALL 0x00b67440
  00b679c3:	c6 44 24 1c 00                                 	MOV byte ptr [ESP + 0x1c],0x0
  00b679c8:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b679cc:	50                                             	PUSH EAX
  00b679cd:	8d 8c 24 c4 00 00 00                           	LEA ECX,[ESP + 0xc4]
  00b679d4:	51                                             	PUSH ECX
  00b679d5:	8d 54 24 3c                                    	LEA EDX,[ESP + 0x3c]
  00b679d9:	52                                             	PUSH EDX
  00b679da:	8b ce                                          	MOV ECX,ESI
  00b679dc:	e8 8f fe ff ff                                 	CALL 0x00b67870
  00b679e1:	8d 8c 24 d0 00 00 00                           	LEA ECX,[ESP + 0xd0]
  00b679e8:	e8 a3 f6 ff ff                                 	CALL 0x00b67090
  00b679ed:	8d 8c 24 40 01 00 00                           	LEA ECX,[ESP + 0x140]
  00b679f4:	e8 97 f6 ff ff                                 	CALL 0x00b67090
  00b679f9:	8b 4c 24 38                                    	MOV ECX,dword ptr [ESP + 0x38]
  00b679fd:	8b 44 24 34                                    	MOV EAX,dword ptr [ESP + 0x34]
  00b67a01:	89 4c 24 18                                    	MOV dword ptr [ESP + 0x18],ECX
  00b67a05:	0f be 4f 01                                    	MOVSX ECX,byte ptr [EDI + 0x1]
  00b67a09:	8d 58 10                                       	LEA EBX,[EAX + 0x10]
  00b67a0c:	0f be 07                                       	MOVSX EAX,byte ptr [EDI]
  00b67a0f:	3b 43 60                                       	CMP EAX,dword ptr [EBX + 0x60]
  00b67a12:	89 5c 24 20                                    	MOV dword ptr [ESP + 0x20],EBX
  00b67a16:	7d 03                                          	JGE 0x00b67a1b
  00b67a18:	89 43 60                                       	MOV dword ptr [EBX + 0x60],EAX
  00b67a1b:	3b 43 68                                       	CMP EAX,dword ptr [EBX + 0x68]
  00b67a1e:	7e 03                                          	JLE 0x00b67a23
  00b67a20:	89 43 68                                       	MOV dword ptr [EBX + 0x68],EAX
  00b67a23:	3b 4b 64                                       	CMP ECX,dword ptr [EBX + 0x64]
  00b67a26:	7d 03                                          	JGE 0x00b67a2b
  00b67a28:	89 4b 64                                       	MOV dword ptr [EBX + 0x64],ECX
  00b67a2b:	3b 4b 6c                                       	CMP ECX,dword ptr [EBX + 0x6c]
  00b67a2e:	7e 03                                          	JLE 0x00b67a33
  00b67a30:	89 4b 6c                                       	MOV dword ptr [EBX + 0x6c],ECX
  00b67a33:	8a 17                                          	MOV DL,byte ptr [EDI]
  00b67a35:	8a 47 01                                       	MOV AL,byte ptr [EDI + 0x1]
  00b67a38:	f3 0f 10 05 18 b2 fa 00                        	MOVSS XMM0,dword ptr [0x00fab218]
  00b67a40:	8a 4f 02                                       	MOV CL,byte ptr [EDI + 0x2]
  00b67a43:	88 54 24 10                                    	MOV byte ptr [ESP + 0x10],DL
  00b67a47:	8d 54 24 44                                    	LEA EDX,[ESP + 0x44]
  00b67a4b:	88 44 24 11                                    	MOV byte ptr [ESP + 0x11],AL
  00b67a4f:	52                                             	PUSH EDX
  00b67a50:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  00b67a54:	50                                             	PUSH EAX
  00b67a55:	f3 0f 11 44 24 4c                              	MOVSS dword ptr [ESP + 0x4c],XMM0
  00b67a5b:	f3 0f 11 44 24 50                              	MOVSS dword ptr [ESP + 0x50],XMM0
  00b67a61:	c7 44 24 54 00 00 00 00                        	MOV dword ptr [ESP + 0x54],0x0
  00b67a69:	88 4c 24 1a                                    	MOV byte ptr [ESP + 0x1a],CL
  00b67a6d:	e8 ae 4c f7 ff                                 	CALL 0x00adc720
  00b67a72:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  00b67a76:	83 c4 08                                       	ADD ESP,0x8
  00b67a79:	8d 4c 24 70                                    	LEA ECX,[ESP + 0x70]
  00b67a7d:	51                                             	PUSH ECX
  00b67a7e:	8b 88 10 02 00 00                              	MOV ECX,dword ptr [EAX + 0x210]
  00b67a84:	8d 54 24 48                                    	LEA EDX,[ESP + 0x48]
  00b67a88:	52                                             	PUSH EDX
  00b67a89:	e8 d2 78 f7 ff                                 	CALL 0x00adf360
  00b67a8e:	0f 28 4c 24 70                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x70]
  00b67a93:	f3 0f 10 05 8c f4 06 01                        	MOVSS XMM0,dword ptr [0x0106f48c]
  00b67a9b:	33 c9                                          	XOR ECX,ECX
  00b67a9d:	0f 28 d1                                       	MOVAPS XMM2,XMM1
  00b67aa0:	0f c6 d1 55                                    	SHUFPS XMM2,XMM1,0x55
  00b67aa4:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b67aa8:	33 c0                                          	XOR EAX,EAX
  00b67aaa:	0f 58 d0                                       	ADDPS XMM2,XMM0
  00b67aad:	0f 29 94 24 a0 00 00 00                        	MOVAPS xmmword ptr [ESP + 0xa0],XMM2
  00b67ab5:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  00b67ab9:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00b67abd:	eb 32                                          	JMP 0x00b67af1
  00b67abf:	90                                             	.byte 0x90 # UNOWNED alignment bytes
  00b67ac0:	0f 28 4c 24 70                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x70]
  00b67ac5:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00b67ac9:	8b 5c 24 20                                    	MOV EBX,dword ptr [ESP + 0x20]
  00b67acd:	33 c0                                          	XOR EAX,EAX
  00b67acf:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00b67ad3:	eb 1c                                          	JMP 0x00b67af1
  00b67ad5:	eb 09 8d a4 24 00 00 00 00 8b ff               	.byte 0xeb,0x09,0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0x8b,0xff # UNOWNED alignment bytes
  00b67ae0:	0f 28 4c 24 70                                 	MOVAPS XMM1,xmmword ptr [ESP + 0x70]
  00b67ae5:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b67ae9:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00b67aed:	8b 5c 24 20                                    	MOV EBX,dword ptr [ESP + 0x20]
  00b67af1:	83 f8 01                                       	CMP EAX,0x1
  00b67af4:	d9 05 e8 49 18 01                              	FLD float ptr [0x011849e8]
  00b67afa:	f3 0f 10 15 f8 98 f9 00                        	MOVSS XMM2,dword ptr [0x00f998f8]
  00b67b02:	75 05                                          	JNZ 0x00b67b09
  00b67b04:	0f 28 c2                                       	MOVAPS XMM0,XMM2
  00b67b07:	eb 1e                                          	JMP 0x00b67b27
  00b67b09:	85 c0                                          	TEST EAX,EAX
  00b67b0b:	89 44 24 24                                    	MOV dword ptr [ESP + 0x24],EAX
  00b67b0f:	db 44 24 24                                    	FILD dword ptr [ESP + 0x24]
  00b67b13:	7d 06                                          	JGE 0x00b67b1b
  00b67b15:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00b67b1b:	d8 c9                                          	FMUL ST1
  00b67b1d:	d9 5c 24 24                                    	FSTP float ptr [ESP + 0x24]
  00b67b21:	f3 0f 10 44 24 24                              	MOVSS XMM0,dword ptr [ESP + 0x24]
  00b67b27:	83 f9 01                                       	CMP ECX,0x1
  00b67b2a:	75 04                                          	JNZ 0x00b67b30
  00b67b2c:	dd d8                                          	FSTP ST0
  00b67b2e:	eb 1e                                          	JMP 0x00b67b4e
  00b67b30:	85 c9                                          	TEST ECX,ECX
  00b67b32:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  00b67b36:	db 44 24 24                                    	FILD dword ptr [ESP + 0x24]
  00b67b3a:	7d 06                                          	JGE 0x00b67b42
  00b67b3c:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00b67b42:	de c9                                          	FMULP
  00b67b44:	d9 5c 24 24                                    	FSTP float ptr [ESP + 0x24]
  00b67b48:	f3 0f 10 54 24 24                              	MOVSS XMM2,dword ptr [ESP + 0x24]
  00b67b4e:	f3 0f 10 c0                                    	MOVSS XMM0,XMM0
  00b67b52:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b67b56:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b67b59:	0f c6 d9 00                                    	SHUFPS XMM3,XMM1,0x0
  00b67b5d:	0f 58 d8                                       	ADDPS XMM3,XMM0
  00b67b60:	0f 29 9c 24 80 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x80],XMM3
  00b67b68:	f3 0f 10 84 24 80 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x80]
  00b67b71:	f3 0f 11 44 24 40                              	MOVSS dword ptr [ESP + 0x40],XMM0
  00b67b77:	8b 54 24 40                                    	MOV EDX,dword ptr [ESP + 0x40]
  00b67b7b:	0f 28 d9                                       	MOVAPS XMM3,XMM1
  00b67b7e:	f3 0f 10 c2                                    	MOVSS XMM0,XMM2
  00b67b82:	0f c6 c0 00                                    	SHUFPS XMM0,XMM0,0x0
  00b67b86:	0f c6 d9 aa                                    	SHUFPS XMM3,XMM1,0xaa
  00b67b8a:	0f 58 d8                                       	ADDPS XMM3,XMM0
  00b67b8d:	0f 29 9c 24 90 00 00 00                        	MOVAPS xmmword ptr [ESP + 0x90],XMM3
  00b67b95:	f3 0f 10 84 24 90 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x90]
  00b67b9e:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00b67ba4:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  00b67ba8:	51                                             	PUSH ECX
  00b67ba9:	52                                             	PUSH EDX
  00b67baa:	e8 61 4b f9 ff                                 	CALL 0x00afc710
  00b67baf:	8b 4b 48                                       	MOV ECX,dword ptr [EBX + 0x48]
  00b67bb2:	33 d2                                          	XOR EDX,EDX
  00b67bb4:	8b f8                                          	MOV EDI,EAX
  00b67bb6:	f7 f1                                          	DIV ECX
  00b67bb8:	8b 73 44                                       	MOV ESI,dword ptr [EBX + 0x44]
  00b67bbb:	8b 04 96                                       	MOV EAX,dword ptr [ESI + EDX*0x4]
  00b67bbe:	83 c4 08                                       	ADD ESP,0x8
  00b67bc1:	85 c0                                          	TEST EAX,EAX
  00b67bc3:	8d 14 96                                       	LEA EDX,[ESI + EDX*0x4]
  00b67bc6:	74 0b                                          	JZ 0x00b67bd3
  00b67bc8:	3b 38                                          	CMP EDI,dword ptr [EAX]
  00b67bca:	74 2d                                          	JZ 0x00b67bf9
  00b67bcc:	8b 40 08                                       	MOV EAX,dword ptr [EAX + 0x8]
  00b67bcf:	85 c0                                          	TEST EAX,EAX
  00b67bd1:	75 f5                                          	JNZ 0x00b67bc8
  00b67bd3:	8b 04 8e                                       	MOV EAX,dword ptr [ESI + ECX*0x4]
  00b67bd6:	8d 0c 8e                                       	LEA ECX,[ESI + ECX*0x4]
  00b67bd9:	89 44 24 50                                    	MOV dword ptr [ESP + 0x50],EAX
  00b67bdd:	89 4c 24 54                                    	MOV dword ptr [ESP + 0x54],ECX
  00b67be1:	8d 44 24 50                                    	LEA EAX,[ESP + 0x50]
  00b67be5:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00b67be7:	8b 4b 48                                       	MOV ECX,dword ptr [EBX + 0x48]
  00b67bea:	8b d6                                          	MOV EDX,ESI
  00b67bec:	3b 04 8a                                       	CMP EAX,dword ptr [EDX + ECX*0x4]
  00b67bef:	74 16                                          	JZ 0x00b67c07
  00b67bf1:	8b 58 04                                       	MOV EBX,dword ptr [EAX + 0x4]
  00b67bf4:	e9 4d 01 00 00                                 	JMP 0x00b67d46
  00b67bf9:	89 44 24 58                                    	MOV dword ptr [ESP + 0x58],EAX
  00b67bfd:	89 54 24 5c                                    	MOV dword ptr [ESP + 0x5c],EDX
  00b67c01:	8d 44 24 58                                    	LEA EAX,[ESP + 0x58]
  00b67c05:	eb de                                          	JMP 0x00b67be5
  00b67c07:	8b 43 04                                       	MOV EAX,dword ptr [EBX + 0x4]
  00b67c0a:	f3 0f 10 84 24 a0 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0xa0]
  00b67c13:	f3 0f 58 05 90 f4 06 01                        	ADDSS XMM0,dword ptr [0x0106f490]
  00b67c1b:	f3 0f 59 05 60 bf fe 00                        	MULSS XMM0,dword ptr [0x00febf60]
  00b67c23:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00b67c27:	f3 0f 10 0d 7c 3f fb 00                        	MOVSS XMM1,dword ptr [0x00fb3f7c]
  00b67c2f:	8b 74 24 20                                    	MOV ESI,dword ptr [ESP + 0x20]
  00b67c33:	f3 0f 2c d0                                    	CVTTSS2SI EDX,XMM0
  00b67c37:	f3 0f 10 84 24 90 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x90]
  00b67c40:	8b d8                                          	MOV EBX,EAX
  00b67c42:	2b 19                                          	SUB EBX,dword ptr [ECX]
  00b67c44:	0f b7 ca                                       	MOVZX ECX,DX
  00b67c47:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00b67c4b:	f3 0f 2c d0                                    	CVTTSS2SI EDX,XMM0
  00b67c4f:	f3 0f 10 84 24 80 00 00 00                     	MOVSS XMM0,dword ptr [ESP + 0x80]
  00b67c58:	88 54 24 29                                    	MOV byte ptr [ESP + 0x29],DL
  00b67c5c:	f3 0f 59 c1                                    	MULSS XMM0,XMM1
  00b67c60:	f3 0f 2c d0                                    	CVTTSS2SI EDX,XMM0
  00b67c64:	88 4c 24 28                                    	MOV byte ptr [ESP + 0x28],CL
  00b67c68:	88 54 24 2a                                    	MOV byte ptr [ESP + 0x2a],DL
  00b67c6c:	88 6c 24 2b                                    	MOV byte ptr [ESP + 0x2b],CH
  00b67c70:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00b67c74:	c1 fb 02                                       	SAR EBX,0x2
  00b67c77:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67c7a:	89 4c 24 24                                    	MOV dword ptr [ESP + 0x24],ECX
  00b67c7e:	73 0e                                          	JNC 0x00b67c8e
  00b67c80:	85 c0                                          	TEST EAX,EAX
  00b67c82:	8d 50 04                                       	LEA EDX,[EAX + 0x4]
  00b67c85:	89 56 04                                       	MOV dword ptr [ESI + 0x4],EDX
  00b67c88:	74 11                                          	JZ 0x00b67c9b
  00b67c8a:	89 08                                          	MOV dword ptr [EAX],ECX
  00b67c8c:	eb 0d                                          	JMP 0x00b67c9b
  00b67c8e:	8d 4c 24 24                                    	LEA ECX,[ESP + 0x24]
  00b67c92:	51                                             	PUSH ECX
  00b67c93:	50                                             	PUSH EAX
  00b67c94:	8b ce                                          	MOV ECX,ESI
  00b67c96:	e8 45 54 b0 ff                                 	CALL 0x0066d0e0
  00b67c9b:	8b 4e 48                                       	MOV ECX,dword ptr [ESI + 0x48]
  00b67c9e:	83 c6 40                                       	ADD ESI,0x40
  00b67ca1:	33 d2                                          	XOR EDX,EDX
  00b67ca3:	8b c7                                          	MOV EAX,EDI
  00b67ca5:	f7 f1                                          	DIV ECX
  00b67ca7:	8b 76 04                                       	MOV ESI,dword ptr [ESI + 0x4]
  00b67caa:	8b 04 96                                       	MOV EAX,dword ptr [ESI + EDX*0x4]
  00b67cad:	85 c0                                          	TEST EAX,EAX
  00b67caf:	8d 14 96                                       	LEA EDX,[ESI + EDX*0x4]
  00b67cb2:	74 0f                                          	JZ 0x00b67cc3
  00b67cb4:	3b 38                                          	CMP EDI,dword ptr [EAX]
  00b67cb6:	0f 84 df 00 00 00                              	JZ 0x00b67d9b
  00b67cbc:	8b 40 08                                       	MOV EAX,dword ptr [EAX + 0x8]
  00b67cbf:	85 c0                                          	TEST EAX,EAX
  00b67cc1:	75 f1                                          	JNZ 0x00b67cb4
  00b67cc3:	8b 14 8e                                       	MOV EDX,dword ptr [ESI + ECX*0x4]
  00b67cc6:	8d 04 8e                                       	LEA EAX,[ESI + ECX*0x4]
  00b67cc9:	89 44 24 64                                    	MOV dword ptr [ESP + 0x64],EAX
  00b67ccd:	89 54 24 60                                    	MOV dword ptr [ESP + 0x60],EDX
  00b67cd1:	8d 44 24 60                                    	LEA EAX,[ESP + 0x60]
  00b67cd5:	8b 00                                          	MOV EAX,dword ptr [EAX]
  00b67cd7:	3b 04 8e                                       	CMP EAX,dword ptr [ESI + ECX*0x4]
  00b67cda:	75 36                                          	JNZ 0x00b67d12
  00b67cdc:	c6 44 24 30 00                                 	MOV byte ptr [ESP + 0x30],0x0
  00b67ce1:	8b 44 24 30                                    	MOV EAX,dword ptr [ESP + 0x30]
  00b67ce5:	50                                             	PUSH EAX
  00b67ce6:	8d 4c 24 38                                    	LEA ECX,[ESP + 0x38]
  00b67cea:	51                                             	PUSH ECX
  00b67ceb:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  00b67cef:	8d 94 24 bc 00 00 00                           	LEA EDX,[ESP + 0xbc]
  00b67cf6:	52                                             	PUSH EDX
  00b67cf7:	83 c1 40                                       	ADD ECX,0x40
  00b67cfa:	89 7c 24 40                                    	MOV dword ptr [ESP + 0x40],EDI
  00b67cfe:	c7 44 24 44 00 00 00 00                        	MOV dword ptr [ESP + 0x44],0x0
  00b67d06:	e8 65 c5 c8 ff                                 	CALL 0x007f4270
  00b67d0b:	8b 84 24 b4 00 00 00                           	MOV EAX,dword ptr [ESP + 0xb4]
  00b67d12:	d9 84 24 90 00 00 00                           	FLD float ptr [ESP + 0x90]
  00b67d19:	8b 4c 24 20                                    	MOV ECX,dword ptr [ESP + 0x20]
  00b67d1d:	83 ec 0c                                       	SUB ESP,0xc
  00b67d20:	d9 5c 24 08                                    	FSTP float ptr [ESP + 0x8]
  00b67d24:	83 c0 04                                       	ADD EAX,0x4
  00b67d27:	d9 84 24 ac 00 00 00                           	FLD float ptr [ESP + 0xac]
  00b67d2e:	83 c1 20                                       	ADD ECX,0x20
  00b67d31:	d9 5c 24 04                                    	FSTP float ptr [ESP + 0x4]
  00b67d35:	89 18                                          	MOV dword ptr [EAX],EBX
  00b67d37:	d9 84 24 8c 00 00 00                           	FLD float ptr [ESP + 0x8c]
  00b67d3e:	d9 1c 24                                       	FSTP float ptr [ESP]
  00b67d41:	e8 9a 41 b2 ff                                 	CALL 0x0068bee0
  00b67d46:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00b67d4a:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00b67d4e:	8d 14 48                                       	LEA EDX,[EAX + ECX*0x2]
  00b67d51:	83 c0 01                                       	ADD EAX,0x1
  00b67d54:	83 f8 02                                       	CMP EAX,0x2
  00b67d57:	66 89 5c 54 14                                 	MOV word ptr [ESP + EDX*0x2 + 0x14],BX
  00b67d5c:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00b67d60:	0f 82 7a fd ff ff                              	JC 0x00b67ae0
  00b67d66:	8b c1                                          	MOV EAX,ECX
  00b67d68:	83 c0 01                                       	ADD EAX,0x1
  00b67d6b:	83 f8 02                                       	CMP EAX,0x2
  00b67d6e:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  00b67d72:	0f 82 48 fd ff ff                              	JC 0x00b67ac0
  00b67d78:	8b 74 24 20                                    	MOV ESI,dword ptr [ESP + 0x20]
  00b67d7c:	8b 46 14                                       	MOV EAX,dword ptr [ESI + 0x14]
  00b67d7f:	83 c6 10                                       	ADD ESI,0x10
  00b67d82:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67d85:	73 25                                          	JNC 0x00b67dac
  00b67d87:	85 c0                                          	TEST EAX,EAX
  00b67d89:	8d 48 02                                       	LEA ECX,[EAX + 0x2]
  00b67d8c:	89 4e 04                                       	MOV dword ptr [ESI + 0x4],ECX
  00b67d8f:	74 28                                          	JZ 0x00b67db9
  00b67d91:	66 8b 54 24 14                                 	MOV DX,word ptr [ESP + 0x14]
  00b67d96:	66 89 10                                       	MOV word ptr [EAX],DX
  00b67d99:	eb 1e                                          	JMP 0x00b67db9
  00b67d9b:	89 44 24 68                                    	MOV dword ptr [ESP + 0x68],EAX
  00b67d9f:	89 54 24 6c                                    	MOV dword ptr [ESP + 0x6c],EDX
  00b67da3:	8d 44 24 68                                    	LEA EAX,[ESP + 0x68]
  00b67da7:	e9 29 ff ff ff                                 	JMP 0x00b67cd5
  00b67dac:	8d 4c 24 14                                    	LEA ECX,[ESP + 0x14]
  00b67db0:	51                                             	PUSH ECX
  00b67db1:	50                                             	PUSH EAX
  00b67db2:	8b ce                                          	MOV ECX,ESI
  00b67db4:	e8 77 a9 a6 ff                                 	CALL 0x005d2730
  00b67db9:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b67dbc:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67dbf:	73 14                                          	JNC 0x00b67dd5
  00b67dc1:	85 c0                                          	TEST EAX,EAX
  00b67dc3:	8d 50 02                                       	LEA EDX,[EAX + 0x2]
  00b67dc6:	89 56 04                                       	MOV dword ptr [ESI + 0x4],EDX
  00b67dc9:	74 17                                          	JZ 0x00b67de2
  00b67dcb:	66 8b 4c 24 18                                 	MOV CX,word ptr [ESP + 0x18]
  00b67dd0:	66 89 08                                       	MOV word ptr [EAX],CX
  00b67dd3:	eb 0d                                          	JMP 0x00b67de2
  00b67dd5:	8d 54 24 18                                    	LEA EDX,[ESP + 0x18]
  00b67dd9:	52                                             	PUSH EDX
  00b67dda:	50                                             	PUSH EAX
  00b67ddb:	8b ce                                          	MOV ECX,ESI
  00b67ddd:	e8 4e a9 a6 ff                                 	CALL 0x005d2730
  00b67de2:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b67de5:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67de8:	73 14                                          	JNC 0x00b67dfe
  00b67dea:	85 c0                                          	TEST EAX,EAX
  00b67dec:	8d 48 02                                       	LEA ECX,[EAX + 0x2]
  00b67def:	89 4e 04                                       	MOV dword ptr [ESI + 0x4],ECX
  00b67df2:	74 17                                          	JZ 0x00b67e0b
  00b67df4:	66 8b 54 24 1a                                 	MOV DX,word ptr [ESP + 0x1a]
  00b67df9:	66 89 10                                       	MOV word ptr [EAX],DX
  00b67dfc:	eb 0d                                          	JMP 0x00b67e0b
  00b67dfe:	8d 4c 24 1a                                    	LEA ECX,[ESP + 0x1a]
  00b67e02:	51                                             	PUSH ECX
  00b67e03:	50                                             	PUSH EAX
  00b67e04:	8b ce                                          	MOV ECX,ESI
  00b67e06:	e8 25 a9 a6 ff                                 	CALL 0x005d2730
  00b67e0b:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b67e0e:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67e11:	73 14                                          	JNC 0x00b67e27
  00b67e13:	85 c0                                          	TEST EAX,EAX
  00b67e15:	8d 50 02                                       	LEA EDX,[EAX + 0x2]
  00b67e18:	89 56 04                                       	MOV dword ptr [ESI + 0x4],EDX
  00b67e1b:	74 17                                          	JZ 0x00b67e34
  00b67e1d:	66 8b 4c 24 14                                 	MOV CX,word ptr [ESP + 0x14]
  00b67e22:	66 89 08                                       	MOV word ptr [EAX],CX
  00b67e25:	eb 0d                                          	JMP 0x00b67e34
  00b67e27:	8d 54 24 14                                    	LEA EDX,[ESP + 0x14]
  00b67e2b:	52                                             	PUSH EDX
  00b67e2c:	50                                             	PUSH EAX
  00b67e2d:	8b ce                                          	MOV ECX,ESI
  00b67e2f:	e8 fc a8 a6 ff                                 	CALL 0x005d2730
  00b67e34:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b67e37:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67e3a:	73 14                                          	JNC 0x00b67e50
  00b67e3c:	85 c0                                          	TEST EAX,EAX
  00b67e3e:	8d 48 02                                       	LEA ECX,[EAX + 0x2]
  00b67e41:	89 4e 04                                       	MOV dword ptr [ESI + 0x4],ECX
  00b67e44:	74 17                                          	JZ 0x00b67e5d
  00b67e46:	66 8b 54 24 1a                                 	MOV DX,word ptr [ESP + 0x1a]
  00b67e4b:	66 89 10                                       	MOV word ptr [EAX],DX
  00b67e4e:	eb 0d                                          	JMP 0x00b67e5d
  00b67e50:	8d 4c 24 1a                                    	LEA ECX,[ESP + 0x1a]
  00b67e54:	51                                             	PUSH ECX
  00b67e55:	50                                             	PUSH EAX
  00b67e56:	8b ce                                          	MOV ECX,ESI
  00b67e58:	e8 d3 a8 a6 ff                                 	CALL 0x005d2730
  00b67e5d:	8b 46 04                                       	MOV EAX,dword ptr [ESI + 0x4]
  00b67e60:	3b 46 08                                       	CMP EAX,dword ptr [ESI + 0x8]
  00b67e63:	73 1b                                          	JNC 0x00b67e80
  00b67e65:	85 c0                                          	TEST EAX,EAX
  00b67e67:	8d 50 02                                       	LEA EDX,[EAX + 0x2]
  00b67e6a:	89 56 04                                       	MOV dword ptr [ESI + 0x4],EDX
  00b67e6d:	74 1e                                          	JZ 0x00b67e8d
  00b67e6f:	66 8b 4c 24 16                                 	MOV CX,word ptr [ESP + 0x16]
  00b67e74:	66 89 08                                       	MOV word ptr [EAX],CX
  00b67e77:	5f                                             	POP EDI
  00b67e78:	5e                                             	POP ESI
  00b67e79:	5b                                             	POP EBX
  00b67e7a:	8b e5                                          	MOV ESP,EBP
  00b67e7c:	5d                                             	POP EBP
  00b67e7d:	c2 08 00                                       	RET 0x8
  00b67e80:	8d 54 24 16                                    	LEA EDX,[ESP + 0x16]
  00b67e84:	52                                             	PUSH EDX
  00b67e85:	50                                             	PUSH EAX
  00b67e86:	8b ce                                          	MOV ECX,ESI
  00b67e88:	e8 a3 a8 a6 ff                                 	CALL 0x005d2730
  00b67e8d:	5f                                             	POP EDI
  00b67e8e:	5e                                             	POP ESI
  00b67e8f:	5b                                             	POP EBX
  00b67e90:	8b e5                                          	MOV ESP,EBP
  00b67e92:	5d                                             	POP EBP
  00b67e93:	c2 08 00                                       	RET 0x8

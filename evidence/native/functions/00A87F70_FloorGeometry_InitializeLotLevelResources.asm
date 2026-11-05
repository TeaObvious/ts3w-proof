# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00a87f70 (FloorGeometry_InitializeLotLevelResources)
Paired actual Ghidra pseudocode: 00A87F70_FloorGeometry_InitializeLotLevelResources.c
Envelope [0x00a87f70,0x00a88339); 969 bytes; exact owned ranges: [0x00a87f70,0x00a88339)
Owned: 969 original bytes / 283 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00a87f70 <original>:
  00a87f70:	55                                             	PUSH EBP
  00a87f71:	8b ec                                          	MOV EBP,ESP
  00a87f73:	83 e4 f0                                       	AND ESP,0xfffffff0
  00a87f76:	8b 45 08                                       	MOV EAX,dword ptr [EBP + 0x8]
  00a87f79:	83 ec 74                                       	SUB ESP,0x74
  00a87f7c:	80 7d 10 00                                    	CMP byte ptr [EBP + 0x10],0x0
  00a87f80:	53                                             	PUSH EBX
  00a87f81:	56                                             	PUSH ESI
  00a87f82:	8b f1                                          	MOV ESI,ECX
  00a87f84:	c6 86 10 02 00 00 01                           	MOV byte ptr [ESI + 0x210],0x1
  00a87f8b:	8b 48 10                                       	MOV ECX,dword ptr [EAX + 0x10]
  00a87f8e:	89 8e b0 01 00 00                              	MOV dword ptr [ESI + 0x1b0],ECX
  00a87f94:	8b 50 14                                       	MOV EDX,dword ptr [EAX + 0x14]
  00a87f97:	8b 4d 0c                                       	MOV ECX,dword ptr [EBP + 0xc]
  00a87f9a:	57                                             	PUSH EDI
  00a87f9b:	89 96 b4 01 00 00                              	MOV dword ptr [ESI + 0x1b4],EDX
  00a87fa1:	89 8e b8 01 00 00                              	MOV dword ptr [ESI + 0x1b8],ECX
  00a87fa7:	75 12                                          	JNZ 0x00a87fbb
  00a87fa9:	8b 56 44                                       	MOV EDX,dword ptr [ESI + 0x44]
  00a87fac:	81 e2 ff ff bf ff                              	AND EDX,0xffbfffff
  00a87fb2:	81 ca 00 00 00 08                              	OR EDX,0x8000000
  00a87fb8:	89 56 44                                       	MOV dword ptr [ESI + 0x44],EDX
  00a87fbb:	8b 4d 14                                       	MOV ECX,dword ptr [EBP + 0x14]
  00a87fbe:	89 86 14 02 00 00                              	MOV dword ptr [ESI + 0x214],EAX
  00a87fc4:	89 8e 18 02 00 00                              	MOV dword ptr [ESI + 0x218],ECX
  00a87fca:	8b 90 30 02 00 00                              	MOV EDX,dword ptr [EAX + 0x230]
  00a87fd0:	89 96 1c 02 00 00                              	MOV dword ptr [ESI + 0x21c],EDX
  00a87fd6:	8b 48 60                                       	MOV ECX,dword ptr [EAX + 0x60]
  00a87fd9:	89 8e 20 02 00 00                              	MOV dword ptr [ESI + 0x220],ECX
  00a87fdf:	8b 48 64                                       	MOV ECX,dword ptr [EAX + 0x64]
  00a87fe2:	8b 86 20 02 00 00                              	MOV EAX,dword ptr [ESI + 0x220]
  00a87fe8:	03 c0                                          	ADD EAX,EAX
  00a87fea:	03 c0                                          	ADD EAX,EAX
  00a87fec:	8b d0                                          	MOV EDX,EAX
  00a87fee:	c1 ea 10                                       	SHR EDX,0x10
  00a87ff1:	0b c2                                          	OR EAX,EDX
  00a87ff3:	8b d0                                          	MOV EDX,EAX
  00a87ff5:	c1 ea 08                                       	SHR EDX,0x8
  00a87ff8:	0b c2                                          	OR EAX,EDX
  00a87ffa:	8b d0                                          	MOV EDX,EAX
  00a87ffc:	c1 ea 04                                       	SHR EDX,0x4
  00a87fff:	0b c2                                          	OR EAX,EDX
  00a88001:	89 8e 24 02 00 00                              	MOV dword ptr [ESI + 0x224],ECX
  00a88007:	03 c9                                          	ADD ECX,ECX
  00a88009:	03 c9                                          	ADD ECX,ECX
  00a8800b:	8b d0                                          	MOV EDX,EAX
  00a8800d:	c1 ea 02                                       	SHR EDX,0x2
  00a88010:	0b c2                                          	OR EAX,EDX
  00a88012:	8b d1                                          	MOV EDX,ECX
  00a88014:	c1 ea 10                                       	SHR EDX,0x10
  00a88017:	0b ca                                          	OR ECX,EDX
  00a88019:	8b d1                                          	MOV EDX,ECX
  00a8801b:	c1 ea 08                                       	SHR EDX,0x8
  00a8801e:	0b ca                                          	OR ECX,EDX
  00a88020:	8b d1                                          	MOV EDX,ECX
  00a88022:	c1 ea 04                                       	SHR EDX,0x4
  00a88025:	0b ca                                          	OR ECX,EDX
  00a88027:	8b d1                                          	MOV EDX,ECX
  00a88029:	c1 ea 02                                       	SHR EDX,0x2
  00a8802c:	0b ca                                          	OR ECX,EDX
  00a8802e:	8b d0                                          	MOV EDX,EAX
  00a88030:	d1 ea                                          	SHR EDX,0x1
  00a88032:	0b d0                                          	OR EDX,EAX
  00a88034:	83 c2 01                                       	ADD EDX,0x1
  00a88037:	85 d2                                          	TEST EDX,EDX
  00a88039:	89 54 24 1c                                    	MOV dword ptr [ESP + 0x1c],EDX
  00a8803d:	db 44 24 1c                                    	FILD dword ptr [ESP + 0x1c]
  00a88041:	7d 06                                          	JGE 0x00a88049
  00a88043:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00a88049:	d9 05 7c 3f fb 00                              	FLD float ptr [0x00fb3f7c]
  00a8804f:	8b c1                                          	MOV EAX,ECX
  00a88051:	d9 c0                                          	FLD ST0
  00a88053:	d1 e8                                          	SHR EAX,0x1
  00a88055:	de f2                                          	FDIVRP ST2,ST0
  00a88057:	0b c1                                          	OR EAX,ECX
  00a88059:	83 c0 01                                       	ADD EAX,0x1
  00a8805c:	85 c0                                          	TEST EAX,EAX
  00a8805e:	89 44 24 1c                                    	MOV dword ptr [ESP + 0x1c],EAX
  00a88062:	d9 c9                                          	FXCH
  00a88064:	d9 9e 28 02 00 00                              	FSTP float ptr [ESI + 0x228]
  00a8806a:	db 44 24 1c                                    	FILD dword ptr [ESP + 0x1c]
  00a8806e:	7d 06                                          	JGE 0x00a88076
  00a88070:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00a88076:	de f9                                          	FDIVP
  00a88078:	d9 9e 2c 02 00 00                              	FSTP float ptr [ESI + 0x22c]
  00a8807e:	e8 6d 2b b9 ff                                 	CALL 0x0061abf0
  00a88083:	8b 8e 04 03 00 00                              	MOV ECX,dword ptr [ESI + 0x304]
  00a88089:	85 c9                                          	TEST ECX,ECX
  00a8808b:	8d 9e 04 03 00 00                              	LEA EBX,[ESI + 0x304]
  00a88091:	8b f8                                          	MOV EDI,EAX
  00a88093:	74 0d                                          	JZ 0x00a880a2
  00a88095:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00a8809b:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00a8809d:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00a880a0:	ff d0                                          	CALL EAX
  00a880a2:	53                                             	PUSH EBX
  00a880a3:	6a 02                                          	PUSH 0x2
  00a880a5:	68 c4 38 06 01                                 	PUSH 0x10638c4
  00a880aa:	8b cf                                          	MOV ECX,EDI
  00a880ac:	e8 df 2f b9 ff                                 	CALL 0x0061b090
  00a880b1:	8b 8e 08 03 00 00                              	MOV ECX,dword ptr [ESI + 0x308]
  00a880b7:	85 c9                                          	TEST ECX,ECX
  00a880b9:	8d 9e 08 03 00 00                              	LEA EBX,[ESI + 0x308]
  00a880bf:	74 0d                                          	JZ 0x00a880ce
  00a880c1:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00a880c7:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00a880c9:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00a880cc:	ff d0                                          	CALL EAX
  00a880ce:	53                                             	PUSH EBX
  00a880cf:	6a 02                                          	PUSH 0x2
  00a880d1:	68 b4 38 06 01                                 	PUSH 0x10638b4
  00a880d6:	8b cf                                          	MOV ECX,EDI
  00a880d8:	e8 b3 2f b9 ff                                 	CALL 0x0061b090
  00a880dd:	8b 8e 0c 03 00 00                              	MOV ECX,dword ptr [ESI + 0x30c]
  00a880e3:	85 c9                                          	TEST ECX,ECX
  00a880e5:	8d 9e 0c 03 00 00                              	LEA EBX,[ESI + 0x30c]
  00a880eb:	74 0d                                          	JZ 0x00a880fa
  00a880ed:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00a880f3:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00a880f5:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00a880f8:	ff d0                                          	CALL EAX
  00a880fa:	53                                             	PUSH EBX
  00a880fb:	6a 03                                          	PUSH 0x3
  00a880fd:	68 9c 38 06 01                                 	PUSH 0x106389c
  00a88102:	8b cf                                          	MOV ECX,EDI
  00a88104:	e8 87 2f b9 ff                                 	CALL 0x0061b090
  00a88109:	8b 8e 10 03 00 00                              	MOV ECX,dword ptr [ESI + 0x310]
  00a8810f:	85 c9                                          	TEST ECX,ECX
  00a88111:	8d 9e 10 03 00 00                              	LEA EBX,[ESI + 0x310]
  00a88117:	74 0d                                          	JZ 0x00a88126
  00a88119:	c7 03 00 00 00 00                              	MOV dword ptr [EBX],0x0
  00a8811f:	8b 11                                          	MOV EDX,dword ptr [ECX]
  00a88121:	8b 42 08                                       	MOV EAX,dword ptr [EDX + 0x8]
  00a88124:	ff d0                                          	CALL EAX
  00a88126:	53                                             	PUSH EBX
  00a88127:	6a 03                                          	PUSH 0x3
  00a88129:	68 84 38 06 01                                 	PUSH 0x1063884
  00a8812e:	8b cf                                          	MOV ECX,EDI
  00a88130:	e8 5b 2f b9 ff                                 	CALL 0x0061b090
  00a88135:	db 86 20 02 00 00                              	FILD dword ptr [ESI + 0x220]
  00a8813b:	8b 8e 20 02 00 00                              	MOV ECX,dword ptr [ESI + 0x220]
  00a88141:	85 c9                                          	TEST ECX,ECX
  00a88143:	0f 57 c0                                       	XORPS XMM0,XMM0
  00a88146:	0f 29 44 24 40                                 	MOVAPS xmmword ptr [ESP + 0x40],XMM0
  00a8814b:	7d 06                                          	JGE 0x00a88153
  00a8814d:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00a88153:	8b 96 24 02 00 00                              	MOV EDX,dword ptr [ESI + 0x224]
  00a88159:	d9 5c 24 18                                    	FSTP float ptr [ESP + 0x18]
  00a8815d:	85 d2                                          	TEST EDX,EDX
  00a8815f:	db 86 24 02 00 00                              	FILD dword ptr [ESI + 0x224]
  00a88165:	f3 0f 10 44 24 18                              	MOVSS XMM0,dword ptr [ESP + 0x18]
  00a8816b:	f3 0f 11 44 24 2c                              	MOVSS dword ptr [ESP + 0x2c],XMM0
  00a88171:	7d 06                                          	JGE 0x00a88179
  00a88173:	d8 05 48 99 f9 00                              	FADD float ptr [0x00f99948]
  00a88179:	d9 5c 24 1c                                    	FSTP float ptr [ESP + 0x1c]
  00a8817d:	8d 44 24 30                                    	LEA EAX,[ESP + 0x30]
  00a88181:	f3 0f 10 44 24 1c                              	MOVSS XMM0,dword ptr [ESP + 0x1c]
  00a88187:	f3 0f 11 44 24 28                              	MOVSS dword ptr [ESP + 0x28],XMM0
  00a8818d:	f3 0f 10 05 88 d7 06 01                        	MOVSS XMM0,dword ptr [0x0106d788]
  00a88195:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  00a8819b:	f3 0f 10 44 24 18                              	MOVSS XMM0,dword ptr [ESP + 0x18]
  00a881a1:	50                                             	PUSH EAX
  00a881a2:	8d 4c 24 44                                    	LEA ECX,[ESP + 0x44]
  00a881a6:	f3 0f 11 44 24 24                              	MOVSS dword ptr [ESP + 0x24],XMM0
  00a881ac:	0f 28 44 24 24                                 	MOVAPS XMM0,xmmword ptr [ESP + 0x24]
  00a881b1:	51                                             	PUSH ECX
  00a881b2:	8b ce                                          	MOV ECX,ESI
  00a881b4:	0f 29 44 24 38                                 	MOVAPS xmmword ptr [ESP + 0x38],XMM0
  00a881b9:	e8 f2 4a c7 ff                                 	CALL 0x006fccb0
  00a881be:	8b 3e                                          	MOV EDI,dword ptr [ESI]
  00a881c0:	8b 8e 14 02 00 00                              	MOV ECX,dword ptr [ESI + 0x214]
  00a881c6:	33 db                                          	XOR EBX,EBX
  00a881c8:	c7 46 40 00 02 00 00                           	MOV dword ptr [ESI + 0x40],0x200
  00a881cf:	89 9e 9c 01 00 00                              	MOV dword ptr [ESI + 0x19c],EBX
  00a881d5:	89 9e a0 01 00 00                              	MOV dword ptr [ESI + 0x1a0],EBX
  00a881db:	83 c7 20                                       	ADD EDI,0x20
  00a881de:	e8 4d 74 05 00                                 	CALL 0x00adf630
  00a881e3:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00a881e5:	50                                             	PUSH EAX
  00a881e6:	8b ce                                          	MOV ECX,ESI
  00a881e8:	ff d2                                          	CALL EDX
  00a881ea:	8b 45 0c                                       	MOV EAX,dword ptr [EBP + 0xc]
  00a881ed:	8a 55 10                                       	MOV DL,byte ptr [EBP + 0x10]
  00a881f0:	8b 8e 14 02 00 00                              	MOV ECX,dword ptr [ESI + 0x214]
  00a881f6:	89 86 30 02 00 00                              	MOV dword ptr [ESI + 0x230],EAX
  00a881fc:	88 96 34 02 00 00                              	MOV byte ptr [ESI + 0x234],DL
  00a88202:	8b 89 3c 02 00 00                              	MOV ECX,dword ptr [ECX + 0x23c]
  00a88208:	3b cb                                          	CMP ECX,EBX
  00a8820a:	74 13                                          	JZ 0x00a8821f
  00a8820c:	84 d2                                          	TEST DL,DL
  00a8820e:	75 03                                          	JNZ 0x00a88213
  00a88210:	83 c0 ff                                       	ADD EAX,-0x1
  00a88213:	50                                             	PUSH EAX
  00a88214:	e8 47 2b 05 00                                 	CALL 0x00adad60
  00a88219:	89 86 38 02 00 00                              	MOV dword ptr [ESI + 0x238],EAX
  00a8821f:	38 1d c4 c2 1e 01                              	CMP byte ptr [0x011ec2c4],BL
  00a88225:	0f 85 fd 00 00 00                              	JNZ 0x00a88328
  00a8822b:	8b 3d 3c 85 1d 01                              	MOV EDI,dword ptr [0x011d853c]
  00a88231:	3b fb                                          	CMP EDI,EBX
  00a88233:	c6 05 c4 c2 1e 01 01                           	MOV byte ptr [0x011ec2c4],0x1
  00a8823a:	74 26                                          	JZ 0x00a88262
  00a8823c:	53                                             	PUSH EBX
  00a8823d:	53                                             	PUSH EBX
  00a8823e:	68 78 38 06 01                                 	PUSH 0x1063878
  00a88243:	8b cf                                          	MOV ECX,EDI
  00a88245:	e8 c6 39 d1 ff                                 	CALL 0x0079bc10
  00a8824a:	53                                             	PUSH EBX
  00a8824b:	53                                             	PUSH EBX
  00a8824c:	68 6c 38 06 01                                 	PUSH 0x106386c
  00a88251:	8b cf                                          	MOV ECX,EDI
  00a88253:	a3 c8 c2 1e 01                                 	MOV [0x011ec2c8],EAX
  00a88258:	e8 b3 39 d1 ff                                 	CALL 0x0079bc10
  00a8825d:	a3 cc c2 1e 01                                 	MOV [0x011ec2cc],EAX
  00a88262:	8b 1d 30 85 1d 01                              	MOV EBX,dword ptr [0x011d8530]
  00a88268:	33 ff                                          	XOR EDI,EDI
  00a8826a:	3b df                                          	CMP EBX,EDI
  00a8826c:	0f 84 a5 00 00 00                              	JZ 0x00a88317
  00a88272:	6a 05                                          	PUSH 0x5
  00a88274:	6a 01                                          	PUSH 0x1
  00a88276:	68 58 38 06 01                                 	PUSH 0x1063858
  00a8827b:	8b cb                                          	MOV ECX,EBX
  00a8827d:	e8 ae 22 d1 ff                                 	CALL 0x0079a530
  00a88282:	6a 01                                          	PUSH 0x1
  00a88284:	6a 02                                          	PUSH 0x2
  00a88286:	68 44 38 06 01                                 	PUSH 0x1063844
  00a8828b:	8b cb                                          	MOV ECX,EBX
  00a8828d:	a3 c0 c2 1e 01                                 	MOV [0x011ec2c0],EAX
  00a88292:	e8 99 22 d1 ff                                 	CALL 0x0079a530
  00a88297:	6a 05                                          	PUSH 0x5
  00a88299:	6a 01                                          	PUSH 0x1
  00a8829b:	68 38 38 06 01                                 	PUSH 0x1063838
  00a882a0:	8b cb                                          	MOV ECX,EBX
  00a882a2:	a3 bc c2 1e 01                                 	MOV [0x011ec2bc],EAX
  00a882a7:	e8 84 22 d1 ff                                 	CALL 0x0079a530
  00a882ac:	8d 54 24 60                                    	LEA EDX,[ESP + 0x60]
  00a882b0:	a3 b8 c2 1e 01                                 	MOV [0x011ec2b8],EAX
  00a882b5:	8b c2                                          	MOV EAX,EDX
  00a882b7:	8d 8c 24 80 00 00 00                           	LEA ECX,[ESP + 0x80]
  00a882be:	89 54 24 54                                    	MOV dword ptr [ESP + 0x54],EDX
  00a882c2:	89 44 24 50                                    	MOV dword ptr [ESP + 0x50],EAX
  00a882c6:	89 4c 24 58                                    	MOV dword ptr [ESP + 0x58],ECX
  00a882ca:	c6 44 24 60 00                                 	MOV byte ptr [ESP + 0x60],0x0
  00a882cf:	90                                             	NOP
  00a882d0:	57                                             	PUSH EDI
  00a882d1:	8d 54 24 54                                    	LEA EDX,[ESP + 0x54]
  00a882d5:	68 2c 38 06 01                                 	PUSH 0x106382c
  00a882da:	52                                             	PUSH EDX
  00a882db:	e8 c0 8c ea ff                                 	CALL 0x00930fa0
  00a882e0:	8b 44 24 5c                                    	MOV EAX,dword ptr [ESP + 0x5c]
  00a882e4:	83 c4 0c                                       	ADD ESP,0xc
  00a882e7:	6a 05                                          	PUSH 0x5
  00a882e9:	6a 01                                          	PUSH 0x1
  00a882eb:	50                                             	PUSH EAX
  00a882ec:	8b cb                                          	MOV ECX,EBX
  00a882ee:	e8 3d 22 d1 ff                                 	CALL 0x0079a530
  00a882f3:	89 04 bd a8 c2 1e 01                           	MOV dword ptr [EDI*0x4 + 0x11ec2a8],EAX
  00a882fa:	83 c7 01                                       	ADD EDI,0x1
  00a882fd:	83 ff 04                                       	CMP EDI,0x4
  00a88300:	72 ce                                          	JC 0x00a882d0
  00a88302:	c7 86 00 03 00 00 00 00 00 00                  	MOV dword ptr [ESI + 0x300],0x0
  00a8830c:	b0 01                                          	MOV AL,0x1
  00a8830e:	5f                                             	POP EDI
  00a8830f:	5e                                             	POP ESI
  00a88310:	5b                                             	POP EBX
  00a88311:	8b e5                                          	MOV ESP,EBP
  00a88313:	5d                                             	POP EBP
  00a88314:	c2 10 00                                       	RET 0x10
  00a88317:	89 be 00 03 00 00                              	MOV dword ptr [ESI + 0x300],EDI
  00a8831d:	b0 01                                          	MOV AL,0x1
  00a8831f:	5f                                             	POP EDI
  00a88320:	5e                                             	POP ESI
  00a88321:	5b                                             	POP EBX
  00a88322:	8b e5                                          	MOV ESP,EBP
  00a88324:	5d                                             	POP EBP
  00a88325:	c2 10 00                                       	RET 0x10
  00a88328:	5f                                             	POP EDI
  00a88329:	89 9e 00 03 00 00                              	MOV dword ptr [ESI + 0x300],EBX
  00a8832f:	5e                                             	POP ESI
  00a88330:	b0 01                                          	MOV AL,0x1
  00a88332:	5b                                             	POP EBX
  00a88333:	8b e5                                          	MOV ESP,EBP
  00a88335:	5d                                             	POP EBP
  00a88336:	c2 10 00                                       	RET 0x10

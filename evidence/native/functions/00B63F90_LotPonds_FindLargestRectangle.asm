# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing saved Ghidra function body.
Annotated entry: 0x00b63f90 (LotPonds_FindLargestRectangle)
Paired actual Ghidra pseudocode: 00B63F90_LotPonds_FindLargestRectangle.c
Envelope [0x00b63f90,0x00b64212); 642 bytes. Exact owned ranges: [0x00b63f90,0x00b64212)
Owned: 642 pristine PE bytes / 206 actual saved Listing instructions.
Instruction text is actual saved Ghidra Listing, authenticated against actual MCP ASM and pristine PE bytes.
Explicit .byte records retain nonowned envelope bytes, not Listing instructions or function-body bytes.
Analyst-assigned names and unchanged inferred prototypes are not recovered symbols or repaired ABI.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00b63f90 <original>:
  00b63f90:	83 ec 64                                       	SUB ESP,0x64
  00b63f93:	8b 01                                          	MOV EAX,dword ptr [ECX]
  00b63f95:	57                                             	PUSH EDI
  00b63f96:	33 ff                                          	XOR EDI,EDI
  00b63f98:	3b c7                                          	CMP EAX,EDI
  00b63f9a:	89 4c 24 10                                    	MOV dword ptr [ESP + 0x10],ECX
  00b63f9e:	89 44 24 14                                    	MOV dword ptr [ESP + 0x14],EAX
  00b63fa2:	75 09                                          	JNZ 0x00b63fad
  00b63fa4:	32 c0                                          	XOR AL,AL
  00b63fa6:	5f                                             	POP EDI
  00b63fa7:	83 c4 64                                       	ADD ESP,0x64
  00b63faa:	c2 0c 00                                       	RET 0xc
  00b63fad:	8b 41 04                                       	MOV EAX,dword ptr [ECX + 0x4]
  00b63fb0:	8b 49 08                                       	MOV ECX,dword ptr [ECX + 0x8]
  00b63fb3:	53                                             	PUSH EBX
  00b63fb4:	55                                             	PUSH EBP
  00b63fb5:	56                                             	PUSH ESI
  00b63fb6:	8d 54 24 64                                    	LEA EDX,[ESP + 0x64]
  00b63fba:	89 44 24 6c                                    	MOV dword ptr [ESP + 0x6c],EAX
  00b63fbe:	8b 44 24 78                                    	MOV EAX,dword ptr [ESP + 0x78]
  00b63fc2:	52                                             	PUSH EDX
  00b63fc3:	89 4c 24 74                                    	MOV dword ptr [ESP + 0x74],ECX
  00b63fc7:	50                                             	PUSH EAX
  00b63fc8:	8d 4c 24 4c                                    	LEA ECX,[ESP + 0x4c]
  00b63fcc:	89 7c 24 6c                                    	MOV dword ptr [ESP + 0x6c],EDI
  00b63fd0:	89 7c 24 70                                    	MOV dword ptr [ESP + 0x70],EDI
  00b63fd4:	e8 67 ed ff ff                                 	CALL 0x00b62d40
  00b63fd9:	8b 6c 24 50                                    	MOV EBP,dword ptr [ESP + 0x50]
  00b63fdd:	8b f5                                          	MOV ESI,EBP
  00b63fdf:	2b 74 24 48                                    	SUB ESI,dword ptr [ESP + 0x48]
  00b63fe3:	8d 4c 24 78                                    	LEA ECX,[ESP + 0x78]
  00b63fe7:	51                                             	PUSH ECX
  00b63fe8:	83 c6 01                                       	ADD ESI,0x1
  00b63feb:	bb cc f3 06 01                                 	MOV EBX,0x106f3cc
  00b63ff0:	56                                             	PUSH ESI
  00b63ff1:	8d 4c 24 6c                                    	LEA ECX,[ESP + 0x6c]
  00b63ff5:	89 9c 24 80 00 00 00                           	MOV dword ptr [ESP + 0x80],EBX
  00b63ffc:	e8 2f 83 1e 00                                 	CALL 0x00d4c330
  00b64001:	3b f7                                          	CMP ESI,EDI
  00b64003:	8b 54 24 64                                    	MOV EDX,dword ptr [ESP + 0x64]
  00b64007:	76 0a                                          	JBE 0x00b64013
  00b64009:	33 c0                                          	XOR EAX,EAX
  00b6400b:	8b ce                                          	MOV ECX,ESI
  00b6400d:	8b fa                                          	MOV EDI,EDX
  00b6400f:	f3 ab                                          	STOSD.REP ES:EDI
  00b64011:	33 ff                                          	XOR EDI,EDI
  00b64013:	8d 04 b2                                       	LEA EAX,[EDX + ESI*0x4]
  00b64016:	33 c0                                          	XOR EAX,EAX
  00b64018:	89 44 24 58                                    	MOV dword ptr [ESP + 0x58],EAX
  00b6401c:	83 c9 ff                                       	OR ECX,0xffffffff
  00b6401f:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  00b64023:	8b 44 24 44                                    	MOV EAX,dword ptr [ESP + 0x44]
  00b64027:	3b 44 24 4c                                    	CMP EAX,dword ptr [ESP + 0x4c]
  00b6402b:	89 7c 24 34                                    	MOV dword ptr [ESP + 0x34],EDI
  00b6402f:	89 7c 24 38                                    	MOV dword ptr [ESP + 0x38],EDI
  00b64033:	89 7c 24 3c                                    	MOV dword ptr [ESP + 0x3c],EDI
  00b64037:	89 5c 24 40                                    	MOV dword ptr [ESP + 0x40],EBX
  00b6403b:	89 4c 24 5c                                    	MOV dword ptr [ESP + 0x5c],ECX
  00b6403f:	89 4c 24 60                                    	MOV dword ptr [ESP + 0x60],ECX
  00b64043:	89 44 24 78                                    	MOV dword ptr [ESP + 0x78],EAX
  00b64047:	0f 8d 71 01 00 00                              	JGE 0x00b641be
  00b6404d:	8d 49 00                                       	LEA ECX,[ECX]
  00b64050:	8b 5c 24 48                                    	MOV EBX,dword ptr [ESP + 0x48]
  00b64054:	3b dd                                          	CMP EBX,EBP
  00b64056:	8b c3                                          	MOV EAX,EBX
  00b64058:	7d 3d                                          	JGE 0x00b64097
  00b6405a:	8b ca                                          	MOV ECX,EDX
  00b6405c:	8d 64 24 00                                    	LEA ESP,[ESP]
  00b64060:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00b64064:	8b 52 04                                       	MOV EDX,dword ptr [EDX + 0x4]
  00b64067:	8b 74 24 20                                    	MOV ESI,dword ptr [ESP + 0x20]
  00b6406b:	0f af d0                                       	IMUL EDX,EAX
  00b6406e:	03 54 24 78                                    	ADD EDX,dword ptr [ESP + 0x78]
  00b64072:	8b 36                                          	MOV ESI,dword ptr [ESI]
  00b64074:	0f bf 14 56                                    	MOVSX EDX,word ptr [ESI + EDX*0x2]
  00b64078:	3b 54 24 7c                                    	CMP EDX,dword ptr [ESP + 0x7c]
  00b6407c:	75 05                                          	JNZ 0x00b64083
  00b6407e:	83 01 01                                       	ADD dword ptr [ECX],0x1
  00b64081:	eb 06                                          	JMP 0x00b64089
  00b64083:	c7 01 00 00 00 00                              	MOV dword ptr [ECX],0x0
  00b64089:	83 c0 01                                       	ADD EAX,0x1
  00b6408c:	83 c1 04                                       	ADD ECX,0x4
  00b6408f:	3b c5                                          	CMP EAX,EBP
  00b64091:	7c cd                                          	JL 0x00b64060
  00b64093:	8b 54 24 64                                    	MOV EDX,dword ptr [ESP + 0x64]
  00b64097:	8b 4c 24 34                                    	MOV ECX,dword ptr [ESP + 0x34]
  00b6409b:	33 f6                                          	XOR ESI,ESI
  00b6409d:	3b dd                                          	CMP EBX,EBP
  00b6409f:	89 4c 24 38                                    	MOV dword ptr [ESP + 0x38],ECX
  00b640a3:	0f 8f 00 01 00 00                              	JG 0x00b641a9
  00b640a9:	89 54 24 18                                    	MOV dword ptr [ESP + 0x18],EDX
  00b640ad:	8d 49 00                                       	LEA ECX,[ECX]
  00b640b0:	8b 2a                                          	MOV EBP,dword ptr [EDX]
  00b640b2:	3b ee                                          	CMP EBP,ESI
  00b640b4:	89 6c 24 14                                    	MOV dword ptr [ESP + 0x14],EBP
  00b640b8:	7e 41                                          	JLE 0x00b640fb
  00b640ba:	3b 4c 24 3c                                    	CMP ECX,dword ptr [ESP + 0x3c]
  00b640be:	89 5c 24 2c                                    	MOV dword ptr [ESP + 0x2c],EBX
  00b640c2:	89 74 24 30                                    	MOV dword ptr [ESP + 0x30],ESI
  00b640c6:	73 19                                          	JNC 0x00b640e1
  00b640c8:	8b c1                                          	MOV EAX,ECX
  00b640ca:	83 c1 08                                       	ADD ECX,0x8
  00b640cd:	85 c0                                          	TEST EAX,EAX
  00b640cf:	89 4c 24 38                                    	MOV dword ptr [ESP + 0x38],ECX
  00b640d3:	74 1f                                          	JZ 0x00b640f4
  00b640d5:	89 70 04                                       	MOV dword ptr [EAX + 0x4],ESI
  00b640d8:	89 18                                          	MOV dword ptr [EAX],EBX
  00b640da:	8b f5                                          	MOV ESI,EBP
  00b640dc:	e9 a8 00 00 00                                 	JMP 0x00b64189
  00b640e1:	8d 44 24 2c                                    	LEA EAX,[ESP + 0x2c]
  00b640e5:	50                                             	PUSH EAX
  00b640e6:	51                                             	PUSH ECX
  00b640e7:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00b640eb:	e8 50 84 8a ff                                 	CALL 0x0040c540
  00b640f0:	8b 4c 24 38                                    	MOV ECX,dword ptr [ESP + 0x38]
  00b640f4:	8b f5                                          	MOV ESI,EBP
  00b640f6:	e9 8e 00 00 00                                 	JMP 0x00b64189
  00b640fb:	0f 8d 88 00 00 00                              	JGE 0x00b64189
  00b64101:	8b 41 fc                                       	MOV EAX,dword ptr [ECX + -0x4]
  00b64104:	8b 51 f8                                       	MOV EDX,dword ptr [ECX + -0x8]
  00b64107:	89 44 24 28                                    	MOV dword ptr [ESP + 0x28],EAX
  00b6410b:	8b c3                                          	MOV EAX,EBX
  00b6410d:	2b c2                                          	SUB EAX,EDX
  00b6410f:	0f af c6                                       	IMUL EAX,ESI
  00b64112:	83 c1 f8                                       	ADD ECX,-0x8
  00b64115:	3b 44 24 10                                    	CMP EAX,dword ptr [ESP + 0x10]
  00b64119:	89 54 24 24                                    	MOV dword ptr [ESP + 0x24],EDX
  00b6411d:	7e 1e                                          	JLE 0x00b6413d
  00b6411f:	8b 6c 24 78                                    	MOV EBP,dword ptr [ESP + 0x78]
  00b64123:	8b fd                                          	MOV EDI,EBP
  00b64125:	2b fe                                          	SUB EDI,ESI
  00b64127:	83 c7 01                                       	ADD EDI,0x1
  00b6412a:	83 c5 01                                       	ADD EBP,0x1
  00b6412d:	89 54 24 58                                    	MOV dword ptr [ESP + 0x58],EDX
  00b64131:	89 6c 24 5c                                    	MOV dword ptr [ESP + 0x5c],EBP
  00b64135:	89 5c 24 60                                    	MOV dword ptr [ESP + 0x60],EBX
  00b64139:	89 44 24 10                                    	MOV dword ptr [ESP + 0x10],EAX
  00b6413d:	39 4c 24 34                                    	CMP dword ptr [ESP + 0x34],ECX
  00b64141:	8b 44 24 28                                    	MOV EAX,dword ptr [ESP + 0x28]
  00b64145:	8b 6c 24 14                                    	MOV EBP,dword ptr [ESP + 0x14]
  00b64149:	8b f0                                          	MOV ESI,EAX
  00b6414b:	74 04                                          	JZ 0x00b64151
  00b6414d:	3b e8                                          	CMP EBP,EAX
  00b6414f:	7c b0                                          	JL 0x00b64101
  00b64151:	85 ed                                          	TEST EBP,EBP
  00b64153:	89 4c 24 38                                    	MOV dword ptr [ESP + 0x38],ECX
  00b64157:	8b f5                                          	MOV ESI,EBP
  00b64159:	74 2e                                          	JZ 0x00b64189
  00b6415b:	3b 4c 24 3c                                    	CMP ECX,dword ptr [ESP + 0x3c]
  00b6415f:	73 15                                          	JNC 0x00b64176
  00b64161:	8b e9                                          	MOV EBP,ECX
  00b64163:	83 c1 08                                       	ADD ECX,0x8
  00b64166:	85 ed                                          	TEST EBP,EBP
  00b64168:	89 4c 24 38                                    	MOV dword ptr [ESP + 0x38],ECX
  00b6416c:	74 1b                                          	JZ 0x00b64189
  00b6416e:	89 55 00                                       	MOV dword ptr [EBP],EDX
  00b64171:	89 45 04                                       	MOV dword ptr [EBP + 0x4],EAX
  00b64174:	eb 13                                          	JMP 0x00b64189
  00b64176:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  00b6417a:	52                                             	PUSH EDX
  00b6417b:	51                                             	PUSH ECX
  00b6417c:	8d 4c 24 3c                                    	LEA ECX,[ESP + 0x3c]
  00b64180:	e8 bb 83 8a ff                                 	CALL 0x0040c540
  00b64185:	8b 4c 24 38                                    	MOV ECX,dword ptr [ESP + 0x38]
  00b64189:	8b 54 24 18                                    	MOV EDX,dword ptr [ESP + 0x18]
  00b6418d:	83 c3 01                                       	ADD EBX,0x1
  00b64190:	83 c2 04                                       	ADD EDX,0x4
  00b64193:	3b 5c 24 50                                    	CMP EBX,dword ptr [ESP + 0x50]
  00b64197:	89 54 24 18                                    	MOV dword ptr [ESP + 0x18],EDX
  00b6419b:	0f 8e 0f ff ff ff                              	JLE 0x00b640b0
  00b641a1:	8b 6c 24 50                                    	MOV EBP,dword ptr [ESP + 0x50]
  00b641a5:	8b 54 24 64                                    	MOV EDX,dword ptr [ESP + 0x64]
  00b641a9:	8b 44 24 78                                    	MOV EAX,dword ptr [ESP + 0x78]
  00b641ad:	83 c0 01                                       	ADD EAX,0x1
  00b641b0:	3b 44 24 4c                                    	CMP EAX,dword ptr [ESP + 0x4c]
  00b641b4:	89 44 24 78                                    	MOV dword ptr [ESP + 0x78],EAX
  00b641b8:	0f 8c 92 fe ff ff                              	JL 0x00b64050
  00b641be:	8b 84 24 80 00 00 00                           	MOV EAX,dword ptr [ESP + 0x80]
  00b641c5:	8b 4c 24 58                                    	MOV ECX,dword ptr [ESP + 0x58]
  00b641c9:	83 7c 24 10 00                                 	CMP dword ptr [ESP + 0x10],0x0
  00b641ce:	89 48 04                                       	MOV dword ptr [EAX + 0x4],ECX
  00b641d1:	8b 4c 24 5c                                    	MOV ECX,dword ptr [ESP + 0x5c]
  00b641d5:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00b641d8:	8b 4c 24 60                                    	MOV ECX,dword ptr [ESP + 0x60]
  00b641dc:	89 38                                          	MOV dword ptr [EAX],EDI
  00b641de:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  00b641e1:	8b 44 24 34                                    	MOV EAX,dword ptr [ESP + 0x34]
  00b641e5:	0f 9f c3                                       	SETG BL
  00b641e8:	85 c0                                          	TEST EAX,EAX
  00b641ea:	74 0d                                          	JZ 0x00b641f9
  00b641ec:	50                                             	PUSH EAX
  00b641ed:	e8 ee 02 98 ff                                 	CALL 0x004e44e0
  00b641f2:	8b 54 24 68                                    	MOV EDX,dword ptr [ESP + 0x68]
  00b641f6:	83 c4 04                                       	ADD ESP,0x4
  00b641f9:	85 d2                                          	TEST EDX,EDX
  00b641fb:	74 09                                          	JZ 0x00b64206
  00b641fd:	52                                             	PUSH EDX
  00b641fe:	e8 dd 02 98 ff                                 	CALL 0x004e44e0
  00b64203:	83 c4 04                                       	ADD ESP,0x4
  00b64206:	5e                                             	POP ESI
  00b64207:	5d                                             	POP EBP
  00b64208:	8a c3                                          	MOV AL,BL
  00b6420a:	5b                                             	POP EBX
  00b6420b:	5f                                             	POP EDI
  00b6420c:	83 c4 64                                       	ADD ESP,0x64
  00b6420f:	c2 0c 00                                       	RET 0xc

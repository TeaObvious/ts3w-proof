# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x004f40f0 (Utf_ConvertEncodingUnits)
Paired actual Ghidra pseudocode: 004F40F0_Utf_ConvertEncodingUnits.c
Envelope [0x004f40f0,0x004f4678); 1416 bytes; exact owned ranges: [0x004f40f0,0x004f4413),[0x004f4420,0x004f4678)
Owned: 1403 original bytes / 503 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are nonowned envelope bytes, not instructions or part of the stored body.
Stored inferred prototypes are retained; physical ABI/AL observations and original managed declarations govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
004f40f0 <original>:
  004f40f0:	83 ec 08                                       	SUB ESP,0x8
  004f40f3:	56                                             	PUSH ESI
  004f40f4:	8b 74 24 14                                    	MOV ESI,dword ptr [ESP + 0x14]
  004f40f8:	85 f6                                          	TEST ESI,ESI
  004f40fa:	75 0d                                          	JNZ 0x004f4109
  004f40fc:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  004f4100:	89 30                                          	MOV dword ptr [EAX],ESI
  004f4102:	33 c0                                          	XOR EAX,EAX
  004f4104:	5e                                             	POP ESI
  004f4105:	83 c4 08                                       	ADD ESP,0x8
  004f4108:	c3                                             	RET
  004f4109:	83 fe ff                                       	CMP ESI,-0x1
  004f410c:	53                                             	PUSH EBX
  004f410d:	8b 5c 24 14                                    	MOV EBX,dword ptr [ESP + 0x14]
  004f4111:	55                                             	PUSH EBP
  004f4112:	8b 2d 88 62 f9 00                              	MOV EBP,dword ptr [0x00f96288]
  004f4118:	57                                             	PUSH EDI
  004f4119:	8b 7c 24 24                                    	MOV EDI,dword ptr [ESP + 0x24]
  004f411d:	75 17                                          	JNZ 0x004f4136
  004f411f:	83 ff 20                                       	CMP EDI,0x20
  004f4122:	7f 1e                                          	JG 0x004f4142
  004f4124:	74 34                                          	JZ 0x004f415a
  004f4126:	83 ff 10                                       	CMP EDI,0x10
  004f4129:	75 27                                          	JNZ 0x004f4152
  004f412b:	53                                             	PUSH EBX
  004f412c:	e8 8f a1 00 00                                 	CALL 0x004fe2c0
  004f4131:	83 c4 04                                       	ADD ESP,0x4
  004f4134:	8b f0                                          	MOV ESI,EAX
  004f4136:	83 ff 01                                       	CMP EDI,0x1
  004f4139:	75 2c                                          	JNZ 0x004f4167
  004f413b:	bf 10 00 00 00                                 	MOV EDI,0x10
  004f4140:	eb 3c                                          	JMP 0x004f417e
  004f4142:	81 ff b0 04 00 00                              	CMP EDI,0x4b0
  004f4148:	7c 08                                          	JL 0x004f4152
  004f414a:	81 ff b1 04 00 00                              	CMP EDI,0x4b1
  004f4150:	7e d9                                          	JLE 0x004f412b
  004f4152:	53                                             	PUSH EBX
  004f4153:	e8 48 a1 00 00                                 	CALL 0x004fe2a0
  004f4158:	eb d7                                          	JMP 0x004f4131
  004f415a:	53                                             	PUSH EBX
  004f415b:	e8 30 fd ff ff                                 	CALL 0x004f3e90
  004f4160:	83 c4 04                                       	ADD ESP,0x4
  004f4163:	8b f0                                          	MOV ESI,EAX
  004f4165:	eb 17                                          	JMP 0x004f417e
  004f4167:	83 ff 02                                       	CMP EDI,0x2
  004f416a:	75 12                                          	JNZ 0x004f417e
  004f416c:	a1 20 c9 1c 01                                 	MOV EAX,[0x011cc920]
  004f4171:	85 c0                                          	TEST EAX,EAX
  004f4173:	75 07                                          	JNZ 0x004f417c
  004f4175:	ff d5                                          	CALL EBP
  004f4177:	a3 20 c9 1c 01                                 	MOV [0x011cc920],EAX
  004f417c:	8b f8                                          	MOV EDI,EAX
  004f417e:	8b 4c 24 30                                    	MOV ECX,dword ptr [ESP + 0x30]
  004f4182:	83 f9 01                                       	CMP ECX,0x1
  004f4185:	75 07                                          	JNZ 0x004f418e
  004f4187:	b9 10 00 00 00                                 	MOV ECX,0x10
  004f418c:	eb 17                                          	JMP 0x004f41a5
  004f418e:	83 f9 02                                       	CMP ECX,0x2
  004f4191:	75 12                                          	JNZ 0x004f41a5
  004f4193:	a1 20 c9 1c 01                                 	MOV EAX,[0x011cc920]
  004f4198:	85 c0                                          	TEST EAX,EAX
  004f419a:	75 07                                          	JNZ 0x004f41a3
  004f419c:	ff d5                                          	CALL EBP
  004f419e:	a3 20 c9 1c 01                                 	MOV [0x011cc920],EAX
  004f41a3:	8b c8                                          	MOV ECX,EAX
  004f41a5:	83 ff 10                                       	CMP EDI,0x10
  004f41a8:	74 18                                          	JZ 0x004f41c2
  004f41aa:	33 c0                                          	XOR EAX,EAX
  004f41ac:	85 f6                                          	TEST ESI,ESI
  004f41ae:	76 0d                                          	JBE 0x004f41bd
  004f41b0:	80 3c 18 7f                                    	CMP byte ptr [EAX + EBX*0x1],0x7f
  004f41b4:	77 0c                                          	JA 0x004f41c2
  004f41b6:	83 c0 01                                       	ADD EAX,0x1
  004f41b9:	3b c6                                          	CMP EAX,ESI
  004f41bb:	72 f3                                          	JC 0x004f41b0
  004f41bd:	bf 04 00 00 00                                 	MOV EDI,0x4
  004f41c2:	3b f9                                          	CMP EDI,ECX
  004f41c4:	74 7b                                          	JZ 0x004f4241
  004f41c6:	83 ff 04                                       	CMP EDI,0x4
  004f41c9:	75 6c                                          	JNZ 0x004f4237
  004f41cb:	83 f9 10                                       	CMP ECX,0x10
  004f41ce:	75 71                                          	JNZ 0x004f4241
  004f41d0:	8b 6c 24 28                                    	MOV EBP,dword ptr [ESP + 0x28]
  004f41d4:	3b dd                                          	CMP EBX,EBP
  004f41d6:	0f 84 7b 04 00 00                              	JZ 0x004f4657
  004f41dc:	83 ff 08                                       	CMP EDI,0x8
  004f41df:	0f 85 f9 01 00 00                              	JNZ 0x004f43de
  004f41e5:	83 f9 10                                       	CMP ECX,0x10
  004f41e8:	0f 85 80 03 00 00                              	JNZ 0x004f456e
  004f41ee:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  004f41f2:	8b 11                                          	MOV EDX,dword ptr [ECX]
  004f41f4:	03 f3                                          	ADD ESI,EBX
  004f41f6:	3b de                                          	CMP EBX,ESI
  004f41f8:	8d 4c 55 00                                    	LEA ECX,[EBP + EDX*0x2]
  004f41fc:	8b c3                                          	MOV EAX,EBX
  004f41fe:	89 74 24 10                                    	MOV dword ptr [ESP + 0x10],ESI
  004f4202:	89 4c 24 14                                    	MOV dword ptr [ESP + 0x14],ECX
  004f4206:	0f 83 ba 01 00 00                              	JNC 0x004f43c6
  004f420c:	2b f3                                          	SUB ESI,EBX
  004f420e:	8b fd                                          	MOV EDI,EBP
  004f4210:	3b 6c 24 14                                    	CMP EBP,dword ptr [ESP + 0x14]
  004f4214:	0f 83 ac 01 00 00                              	JNC 0x004f43c6
  004f421a:	8a 08                                          	MOV CL,byte ptr [EAX]
  004f421c:	80 f9 80                                       	CMP CL,0x80
  004f421f:	0f 83 8e 00 00 00                              	JNC 0x004f42b3
  004f4225:	66 0f b6 d1                                    	MOVZX DX,CL
  004f4229:	83 c0 01                                       	ADD EAX,0x1
  004f422c:	0f b7 ca                                       	MOVZX ECX,DX
  004f422f:	83 ee 01                                       	SUB ESI,0x1
  004f4232:	e9 7a 01 00 00                                 	JMP 0x004f43b1
  004f4237:	83 ff 10                                       	CMP EDI,0x10
  004f423a:	74 36                                          	JZ 0x004f4272
  004f423c:	83 f9 04                                       	CMP ECX,0x4
  004f423f:	75 8f                                          	JNZ 0x004f41d0
  004f4241:	8b 54 24 28                                    	MOV EDX,dword ptr [ESP + 0x28]
  004f4245:	3b da                                          	CMP EBX,EDX
  004f4247:	8b 7c 24 2c                                    	MOV EDI,dword ptr [ESP + 0x2c]
  004f424b:	0f 84 1b 04 00 00                              	JZ 0x004f466c
  004f4251:	8b 07                                          	MOV EAX,dword ptr [EDI]
  004f4253:	3b f0                                          	CMP ESI,EAX
  004f4255:	0f 43 f0                                       	CMOVNC ESI,EAX
  004f4258:	85 d2                                          	TEST EDX,EDX
  004f425a:	0f 84 0c 04 00 00                              	JZ 0x004f466c
  004f4260:	83 f9 10                                       	CMP ECX,0x10
  004f4263:	0f 85 f8 03 00 00                              	JNZ 0x004f4661
  004f4269:	8d 04 36                                       	LEA EAX,[ESI + ESI*0x1]
  004f426c:	50                                             	PUSH EAX
  004f426d:	e9 f0 03 00 00                                 	JMP 0x004f4662
  004f4272:	83 f9 04                                       	CMP ECX,0x4
  004f4275:	0f 85 55 ff ff ff                              	JNZ 0x004f41d0
  004f427b:	8b 6c 24 2c                                    	MOV EBP,dword ptr [ESP + 0x2c]
  004f427f:	8b 45 00                                       	MOV EAX,dword ptr [EBP]
  004f4282:	8b 4c 24 28                                    	MOV ECX,dword ptr [ESP + 0x28]
  004f4286:	3b f0                                          	CMP ESI,EAX
  004f4288:	0f 43 f0                                       	CMOVNC ESI,EAX
  004f428b:	85 c9                                          	TEST ECX,ECX
  004f428d:	74 17                                          	JZ 0x004f42a6
  004f428f:	8d 3c 73                                       	LEA EDI,[EBX + ESI*0x2]
  004f4292:	3b df                                          	CMP EBX,EDI
  004f4294:	8b c3                                          	MOV EAX,EBX
  004f4296:	73 0e                                          	JNC 0x004f42a6
  004f4298:	8a 10                                          	MOV DL,byte ptr [EAX]
  004f429a:	88 11                                          	MOV byte ptr [ECX],DL
  004f429c:	83 c0 02                                       	ADD EAX,0x2
  004f429f:	83 c1 01                                       	ADD ECX,0x1
  004f42a2:	3b c7                                          	CMP EAX,EDI
  004f42a4:	72 f2                                          	JC 0x004f4298
  004f42a6:	5f                                             	POP EDI
  004f42a7:	89 75 00                                       	MOV dword ptr [EBP],ESI
  004f42aa:	5d                                             	POP EBP
  004f42ab:	5b                                             	POP EBX
  004f42ac:	8b c6                                          	MOV EAX,ESI
  004f42ae:	5e                                             	POP ESI
  004f42af:	83 c4 08                                       	ADD ESP,0x8
  004f42b2:	c3                                             	RET
  004f42b3:	80 f9 c2                                       	CMP CL,0xc2
  004f42b6:	0f 82 0a 01 00 00                              	JC 0x004f43c6
  004f42bc:	80 f9 e0                                       	CMP CL,0xe0
  004f42bf:	73 35                                          	JNC 0x004f42f6
  004f42c1:	83 fe 02                                       	CMP ESI,0x2
  004f42c4:	0f 8c fc 00 00 00                              	JL 0x004f43c6
  004f42ca:	8a 50 01                                       	MOV DL,byte ptr [EAX + 0x1]
  004f42cd:	80 f2 80                                       	XOR DL,0x80
  004f42d0:	80 fa 40                                       	CMP DL,0x40
  004f42d3:	0f 83 ed 00 00 00                              	JNC 0x004f43c6
  004f42d9:	80 e1 1f                                       	AND CL,0x1f
  004f42dc:	66 0f b6 c9                                    	MOVZX CX,CL
  004f42e0:	66 0f b6 d2                                    	MOVZX DX,DL
  004f42e4:	66 c1 e1 06                                    	SHL CX,0x6
  004f42e8:	66 0b ca                                       	OR CX,DX
  004f42eb:	83 c0 02                                       	ADD EAX,0x2
  004f42ee:	83 ee 02                                       	SUB ESI,0x2
  004f42f1:	e9 b8 00 00 00                                 	JMP 0x004f43ae
  004f42f6:	80 f9 f0                                       	CMP CL,0xf0
  004f42f9:	73 5c                                          	JNC 0x004f4357
  004f42fb:	83 fe 03                                       	CMP ESI,0x3
  004f42fe:	0f 8c c2 00 00 00                              	JL 0x004f43c6
  004f4304:	8a 50 01                                       	MOV DL,byte ptr [EAX + 0x1]
  004f4307:	80 f2 80                                       	XOR DL,0x80
  004f430a:	80 fa 40                                       	CMP DL,0x40
  004f430d:	0f 83 b3 00 00 00                              	JNC 0x004f43c6
  004f4313:	8a 58 02                                       	MOV BL,byte ptr [EAX + 0x2]
  004f4316:	80 f3 80                                       	XOR BL,0x80
  004f4319:	80 fb 40                                       	CMP BL,0x40
  004f431c:	88 5c 24 20                                    	MOV byte ptr [ESP + 0x20],BL
  004f4320:	0f 83 a0 00 00 00                              	JNC 0x004f43c6
  004f4326:	80 f9 e1                                       	CMP CL,0xe1
  004f4329:	73 0a                                          	JNC 0x004f4335
  004f432b:	80 78 01 a0                                    	CMP byte ptr [EAX + 0x1],0xa0
  004f432f:	0f 82 91 00 00 00                              	JC 0x004f43c6
  004f4335:	66 0f b6 c9                                    	MOVZX CX,CL
  004f4339:	66 c1 e1 06                                    	SHL CX,0x6
  004f433d:	66 0f b6 d2                                    	MOVZX DX,DL
  004f4341:	66 0b ca                                       	OR CX,DX
  004f4344:	66 0f b6 d3                                    	MOVZX DX,BL
  004f4348:	66 c1 e1 06                                    	SHL CX,0x6
  004f434c:	66 0b ca                                       	OR CX,DX
  004f434f:	83 c0 03                                       	ADD EAX,0x3
  004f4352:	83 ee 03                                       	SUB ESI,0x3
  004f4355:	eb 57                                          	JMP 0x004f43ae
  004f4357:	80 f9 f8                                       	CMP CL,0xf8
  004f435a:	73 6a                                          	JNC 0x004f43c6
  004f435c:	83 fe 04                                       	CMP ESI,0x4
  004f435f:	7c 65                                          	JL 0x004f43c6
  004f4361:	8a 50 01                                       	MOV DL,byte ptr [EAX + 0x1]
  004f4364:	80 f2 80                                       	XOR DL,0x80
  004f4367:	80 fa 40                                       	CMP DL,0x40
  004f436a:	73 5a                                          	JNC 0x004f43c6
  004f436c:	8a 58 02                                       	MOV BL,byte ptr [EAX + 0x2]
  004f436f:	80 f3 80                                       	XOR BL,0x80
  004f4372:	80 fb 40                                       	CMP BL,0x40
  004f4375:	73 4f                                          	JNC 0x004f43c6
  004f4377:	8a 50 03                                       	MOV DL,byte ptr [EAX + 0x3]
  004f437a:	80 f2 80                                       	XOR DL,0x80
  004f437d:	80 fa 40                                       	CMP DL,0x40
  004f4380:	73 44                                          	JNC 0x004f43c6
  004f4382:	80 f9 f1                                       	CMP CL,0xf1
  004f4385:	73 06                                          	JNC 0x004f438d
  004f4387:	80 78 01 90                                    	CMP byte ptr [EAX + 0x1],0x90
  004f438b:	72 39                                          	JC 0x004f43c6
  004f438d:	66 0f b6 48 01                                 	MOVZX CX,byte ptr [EAX + 0x1]
  004f4392:	66 c1 e1 06                                    	SHL CX,0x6
  004f4396:	66 0f b6 db                                    	MOVZX BX,BL
  004f439a:	66 0b cb                                       	OR CX,BX
  004f439d:	66 0f b6 d2                                    	MOVZX DX,DL
  004f43a1:	66 c1 e1 06                                    	SHL CX,0x6
  004f43a5:	66 0b ca                                       	OR CX,DX
  004f43a8:	83 c0 04                                       	ADD EAX,0x4
  004f43ab:	83 ee 04                                       	SUB ESI,0x4
  004f43ae:	0f b7 c9                                       	MOVZX ECX,CX
  004f43b1:	85 ff                                          	TEST EDI,EDI
  004f43b3:	74 04                                          	JZ 0x004f43b9
  004f43b5:	66 89 4d 00                                    	MOV word ptr [EBP],CX
  004f43b9:	83 c5 02                                       	ADD EBP,0x2
  004f43bc:	3b 44 24 10                                    	CMP EAX,dword ptr [ESP + 0x10]
  004f43c0:	0f 82 4a fe ff ff                              	JC 0x004f4210
  004f43c6:	2b 6c 24 28                                    	SUB EBP,dword ptr [ESP + 0x28]
  004f43ca:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  004f43ce:	d1 fd                                          	SAR EBP,0x1
  004f43d0:	2b 44 24 1c                                    	SUB EAX,dword ptr [ESP + 0x1c]
  004f43d4:	5f                                             	POP EDI
  004f43d5:	89 29                                          	MOV dword ptr [ECX],EBP
  004f43d7:	5d                                             	POP EBP
  004f43d8:	5b                                             	POP EBX
  004f43d9:	5e                                             	POP ESI
  004f43da:	83 c4 08                                       	ADD ESP,0x8
  004f43dd:	c3                                             	RET
  004f43de:	83 ff 10                                       	CMP EDI,0x10
  004f43e1:	0f 85 41 01 00 00                              	JNZ 0x004f4528
  004f43e7:	83 f9 08                                       	CMP ECX,0x8
  004f43ea:	0f 85 0c 02 00 00                              	JNZ 0x004f45fc
  004f43f0:	8b 44 24 2c                                    	MOV EAX,dword ptr [ESP + 0x2c]
  004f43f4:	8b 54 24 28                                    	MOV EDX,dword ptr [ESP + 0x28]
  004f43f8:	8b 00                                          	MOV EAX,dword ptr [EAX]
  004f43fa:	8d 34 73                                       	LEA ESI,[EBX + ESI*0x2]
  004f43fd:	03 c2                                          	ADD EAX,EDX
  004f43ff:	3b de                                          	CMP EBX,ESI
  004f4401:	8b eb                                          	MOV EBP,EBX
  004f4403:	89 74 24 14                                    	MOV dword ptr [ESP + 0x14],ESI
  004f4407:	89 44 24 20                                    	MOV dword ptr [ESP + 0x20],EAX
  004f440b:	0f 83 ff 00 00 00                              	JNC 0x004f4510
  004f4411:	eb 11                                          	JMP 0x004f4424
  004f4413:	eb 0b 8d a4 24 00 00 00 00 8d 64 24 00         	.byte 0xeb,0x0b,0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0x8d,0x64,0x24,0x00 # NONOWNED envelope bytes
  004f4420:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  004f4424:	0f b7 4d 00                                    	MOVZX ECX,word ptr [EBP]
  004f4428:	81 f9 80 00 00 00                              	CMP ECX,0x80
  004f442e:	73 07                                          	JNC 0x004f4437
  004f4430:	be 01 00 00 00                                 	MOV ESI,0x1
  004f4435:	eb 4d                                          	JMP 0x004f4484
  004f4437:	81 f9 00 08 00 00                              	CMP ECX,0x800
  004f443d:	73 07                                          	JNC 0x004f4446
  004f443f:	be 02 00 00 00                                 	MOV ESI,0x2
  004f4444:	eb 3e                                          	JMP 0x004f4484
  004f4446:	81 f9 00 00 01 00                              	CMP ECX,0x10000
  004f444c:	73 07                                          	JNC 0x004f4455
  004f444e:	be 03 00 00 00                                 	MOV ESI,0x3
  004f4453:	eb 2f                                          	JMP 0x004f4484
  004f4455:	81 f9 00 00 20 00                              	CMP ECX,0x200000
  004f445b:	73 07                                          	JNC 0x004f4464
  004f445d:	be 04 00 00 00                                 	MOV ESI,0x4
  004f4462:	eb 20                                          	JMP 0x004f4484
  004f4464:	81 f9 00 00 00 04                              	CMP ECX,0x4000000
  004f446a:	73 07                                          	JNC 0x004f4473
  004f446c:	be 05 00 00 00                                 	MOV ESI,0x5
  004f4471:	eb 11                                          	JMP 0x004f4484
  004f4473:	81 f9 ff ff ff 7f                              	CMP ECX,0x7fffffff
  004f4479:	0f 87 91 00 00 00                              	JA 0x004f4510
  004f447f:	be 06 00 00 00                                 	MOV ESI,0x6
  004f4484:	8d 3c 16                                       	LEA EDI,[ESI + EDX*0x1]
  004f4487:	3b f8                                          	CMP EDI,EAX
  004f4489:	0f 87 81 00 00 00                              	JA 0x004f4510
  004f448f:	83 c5 02                                       	ADD EBP,0x2
  004f4492:	83 7c 24 28 00                                 	CMP dword ptr [ESP + 0x28],0x0
  004f4497:	74 6b                                          	JZ 0x004f4504
  004f4499:	83 c6 ff                                       	ADD ESI,-0x1
  004f449c:	83 fe 05                                       	CMP ESI,0x5
  004f449f:	77 63                                          	JA 0x004f4504
  004f44a1:	ff 24 b5 78 46 4f 00                           	JMP dword ptr [ESI*0x4 + 0x4f4678]
  004f44a8:	8a c1                                          	MOV AL,CL
  004f44aa:	24 3f                                          	AND AL,0x3f
  004f44ac:	0c 80                                          	OR AL,0x80
  004f44ae:	c1 e9 06                                       	SHR ECX,0x6
  004f44b1:	88 42 05                                       	MOV byte ptr [EDX + 0x5],AL
  004f44b4:	81 c9 00 00 00 04                              	OR ECX,0x4000000
  004f44ba:	8a c1                                          	MOV AL,CL
  004f44bc:	24 3f                                          	AND AL,0x3f
  004f44be:	0c 80                                          	OR AL,0x80
  004f44c0:	81 c9 00 00 00 08                              	OR ECX,0x8000000
  004f44c6:	88 42 04                                       	MOV byte ptr [EDX + 0x4],AL
  004f44c9:	c1 e9 06                                       	SHR ECX,0x6
  004f44cc:	8a c1                                          	MOV AL,CL
  004f44ce:	24 3f                                          	AND AL,0x3f
  004f44d0:	0c 80                                          	OR AL,0x80
  004f44d2:	81 c9 00 00 40 00                              	OR ECX,0x400000
  004f44d8:	88 42 03                                       	MOV byte ptr [EDX + 0x3],AL
  004f44db:	c1 e9 06                                       	SHR ECX,0x6
  004f44de:	8a c1                                          	MOV AL,CL
  004f44e0:	24 3f                                          	AND AL,0x3f
  004f44e2:	0c 80                                          	OR AL,0x80
  004f44e4:	81 c9 00 00 02 00                              	OR ECX,0x20000
  004f44ea:	88 42 02                                       	MOV byte ptr [EDX + 0x2],AL
  004f44ed:	c1 e9 06                                       	SHR ECX,0x6
  004f44f0:	8a c1                                          	MOV AL,CL
  004f44f2:	24 3f                                          	AND AL,0x3f
  004f44f4:	0c 80                                          	OR AL,0x80
  004f44f6:	81 c9 00 30 00 00                              	OR ECX,0x3000
  004f44fc:	88 42 01                                       	MOV byte ptr [EDX + 0x1],AL
  004f44ff:	c1 e9 06                                       	SHR ECX,0x6
  004f4502:	88 0a                                          	MOV byte ptr [EDX],CL
  004f4504:	3b 6c 24 14                                    	CMP EBP,dword ptr [ESP + 0x14]
  004f4508:	8b d7                                          	MOV EDX,EDI
  004f450a:	0f 82 10 ff ff ff                              	JC 0x004f4420
  004f4510:	2b 54 24 28                                    	SUB EDX,dword ptr [ESP + 0x28]
  004f4514:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  004f4518:	5f                                             	POP EDI
  004f4519:	8b c5                                          	MOV EAX,EBP
  004f451b:	5d                                             	POP EBP
  004f451c:	2b c3                                          	SUB EAX,EBX
  004f451e:	5b                                             	POP EBX
  004f451f:	89 11                                          	MOV dword ptr [ECX],EDX
  004f4521:	d1 f8                                          	SAR EAX,0x1
  004f4523:	5e                                             	POP ESI
  004f4524:	83 c4 08                                       	ADD ESP,0x8
  004f4527:	c3                                             	RET
  004f4528:	83 ff 04                                       	CMP EDI,0x4
  004f452b:	75 41                                          	JNZ 0x004f456e
  004f452d:	83 f9 10                                       	CMP ECX,0x10
  004f4530:	75 3c                                          	JNZ 0x004f456e
  004f4532:	8b 54 24 2c                                    	MOV EDX,dword ptr [ESP + 0x2c]
  004f4536:	8b 02                                          	MOV EAX,dword ptr [EDX]
  004f4538:	3b f0                                          	CMP ESI,EAX
  004f453a:	0f 43 f0                                       	CMOVNC ESI,EAX
  004f453d:	85 ed                                          	TEST EBP,EBP
  004f453f:	8b cd                                          	MOV ECX,EBP
  004f4541:	74 1f                                          	JZ 0x004f4562
  004f4543:	33 c0                                          	XOR EAX,EAX
  004f4545:	85 f6                                          	TEST ESI,ESI
  004f4547:	76 19                                          	JBE 0x004f4562
  004f4549:	8d a4 24 00 00 00 00                           	LEA ESP,[ESP]
  004f4550:	66 0f b6 3c 18                                 	MOVZX DI,byte ptr [EAX + EBX*0x1]
  004f4555:	66 89 39                                       	MOV word ptr [ECX],DI
  004f4558:	83 c0 01                                       	ADD EAX,0x1
  004f455b:	83 c1 02                                       	ADD ECX,0x2
  004f455e:	3b c6                                          	CMP EAX,ESI
  004f4560:	72 ee                                          	JC 0x004f4550
  004f4562:	5f                                             	POP EDI
  004f4563:	5d                                             	POP EBP
  004f4564:	5b                                             	POP EBX
  004f4565:	89 32                                          	MOV dword ptr [EDX],ESI
  004f4567:	8b c6                                          	MOV EAX,ESI
  004f4569:	5e                                             	POP ESI
  004f456a:	83 c4 08                                       	ADD ESP,0x8
  004f456d:	c3                                             	RET
  004f456e:	83 f9 08                                       	CMP ECX,0x8
  004f4571:	75 1a                                          	JNZ 0x004f458d
  004f4573:	8b 54 24 2c                                    	MOV EDX,dword ptr [ESP + 0x2c]
  004f4577:	51                                             	PUSH ECX
  004f4578:	52                                             	PUSH EDX
  004f4579:	55                                             	PUSH EBP
  004f457a:	57                                             	PUSH EDI
  004f457b:	56                                             	PUSH ESI
  004f457c:	53                                             	PUSH EBX
  004f457d:	e8 4e fa ff ff                                 	CALL 0x004f3fd0
  004f4582:	83 c4 18                                       	ADD ESP,0x18
  004f4585:	5f                                             	POP EDI
  004f4586:	5d                                             	POP EBP
  004f4587:	5b                                             	POP EBX
  004f4588:	5e                                             	POP ESI
  004f4589:	83 c4 08                                       	ADD ESP,0x8
  004f458c:	c3                                             	RET
  004f458d:	83 ff 08                                       	CMP EDI,0x8
  004f4590:	75 1f                                          	JNZ 0x004f45b1
  004f4592:	83 f9 10                                       	CMP ECX,0x10
  004f4595:	74 28                                          	JZ 0x004f45bf
  004f4597:	8b 44 24 2c                                    	MOV EAX,dword ptr [ESP + 0x2c]
  004f459b:	51                                             	PUSH ECX
  004f459c:	50                                             	PUSH EAX
  004f459d:	55                                             	PUSH EBP
  004f459e:	57                                             	PUSH EDI
  004f459f:	56                                             	PUSH ESI
  004f45a0:	53                                             	PUSH EBX
  004f45a1:	e8 2a fa ff ff                                 	CALL 0x004f3fd0
  004f45a6:	83 c4 18                                       	ADD ESP,0x18
  004f45a9:	5f                                             	POP EDI
  004f45aa:	5d                                             	POP EBP
  004f45ab:	5b                                             	POP EBX
  004f45ac:	5e                                             	POP ESI
  004f45ad:	83 c4 08                                       	ADD ESP,0x8
  004f45b0:	c3                                             	RET
  004f45b1:	83 ff 10                                       	CMP EDI,0x10
  004f45b4:	74 46                                          	JZ 0x004f45fc
  004f45b6:	83 f9 10                                       	CMP ECX,0x10
  004f45b9:	0f 85 8e 00 00 00                              	JNZ 0x004f464d
  004f45bf:	85 ed                                          	TEST EBP,EBP
  004f45c1:	0f 84 90 00 00 00                              	JZ 0x004f4657
  004f45c7:	8b 5c 24 2c                                    	MOV EBX,dword ptr [ESP + 0x2c]
  004f45cb:	8b 0b                                          	MOV ECX,dword ptr [EBX]
  004f45cd:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  004f45d1:	51                                             	PUSH ECX
  004f45d2:	55                                             	PUSH EBP
  004f45d3:	56                                             	PUSH ESI
  004f45d4:	52                                             	PUSH EDX
  004f45d5:	6a 00                                          	PUSH 0x0
  004f45d7:	57                                             	PUSH EDI
  004f45d8:	ff 15 74 63 f9 00                              	CALL dword ptr [0x00f96374]
  004f45de:	85 c0                                          	TEST EAX,EAX
  004f45e0:	74 0c                                          	JZ 0x004f45ee
  004f45e2:	5f                                             	POP EDI
  004f45e3:	5d                                             	POP EBP
  004f45e4:	89 03                                          	MOV dword ptr [EBX],EAX
  004f45e6:	5b                                             	POP EBX
  004f45e7:	8b c6                                          	MOV EAX,ESI
  004f45e9:	5e                                             	POP ESI
  004f45ea:	83 c4 08                                       	ADD ESP,0x8
  004f45ed:	c3                                             	RET
  004f45ee:	5f                                             	POP EDI
  004f45ef:	33 f6                                          	XOR ESI,ESI
  004f45f1:	5d                                             	POP EBP
  004f45f2:	89 33                                          	MOV dword ptr [EBX],ESI
  004f45f4:	5b                                             	POP EBX
  004f45f5:	8b c6                                          	MOV EAX,ESI
  004f45f7:	5e                                             	POP ESI
  004f45f8:	83 c4 08                                       	ADD ESP,0x8
  004f45fb:	c3                                             	RET
  004f45fc:	83 f9 10                                       	CMP ECX,0x10
  004f45ff:	74 4c                                          	JZ 0x004f464d
  004f4601:	85 ed                                          	TEST EBP,EBP
  004f4603:	c6 44 24 20 20                                 	MOV byte ptr [ESP + 0x20],0x20
  004f4608:	c7 44 24 14 00 00 00 00                        	MOV dword ptr [ESP + 0x14],0x0
  004f4610:	74 45                                          	JZ 0x004f4657
  004f4612:	8b 7c 24 2c                                    	MOV EDI,dword ptr [ESP + 0x2c]
  004f4616:	8d 44 24 14                                    	LEA EAX,[ESP + 0x14]
  004f461a:	50                                             	PUSH EAX
  004f461b:	8b 07                                          	MOV EAX,dword ptr [EDI]
  004f461d:	8d 54 24 24                                    	LEA EDX,[ESP + 0x24]
  004f4621:	52                                             	PUSH EDX
  004f4622:	50                                             	PUSH EAX
  004f4623:	55                                             	PUSH EBP
  004f4624:	56                                             	PUSH ESI
  004f4625:	53                                             	PUSH EBX
  004f4626:	6a 00                                          	PUSH 0x0
  004f4628:	51                                             	PUSH ECX
  004f4629:	ff 15 6c 63 f9 00                              	CALL dword ptr [0x00f9636c]
  004f462f:	85 c0                                          	TEST EAX,EAX
  004f4631:	74 0c                                          	JZ 0x004f463f
  004f4633:	89 07                                          	MOV dword ptr [EDI],EAX
  004f4635:	5f                                             	POP EDI
  004f4636:	5d                                             	POP EBP
  004f4637:	5b                                             	POP EBX
  004f4638:	8b c6                                          	MOV EAX,ESI
  004f463a:	5e                                             	POP ESI
  004f463b:	83 c4 08                                       	ADD ESP,0x8
  004f463e:	c3                                             	RET
  004f463f:	33 f6                                          	XOR ESI,ESI
  004f4641:	89 37                                          	MOV dword ptr [EDI],ESI
  004f4643:	5f                                             	POP EDI
  004f4644:	5d                                             	POP EBP
  004f4645:	5b                                             	POP EBX
  004f4646:	8b c6                                          	MOV EAX,ESI
  004f4648:	5e                                             	POP ESI
  004f4649:	83 c4 08                                       	ADD ESP,0x8
  004f464c:	c3                                             	RET
  004f464d:	8b 4c 24 2c                                    	MOV ECX,dword ptr [ESP + 0x2c]
  004f4651:	c7 01 00 00 00 00                              	MOV dword ptr [ECX],0x0
  004f4657:	5f                                             	POP EDI
  004f4658:	5d                                             	POP EBP
  004f4659:	5b                                             	POP EBX
  004f465a:	33 c0                                          	XOR EAX,EAX
  004f465c:	5e                                             	POP ESI
  004f465d:	83 c4 08                                       	ADD ESP,0x8
  004f4660:	c3                                             	RET
  004f4661:	56                                             	PUSH ESI
  004f4662:	53                                             	PUSH EBX
  004f4663:	52                                             	PUSH EDX
  004f4664:	e8 1d ac a8 00                                 	CALL 0x00f7f286
  004f4669:	83 c4 0c                                       	ADD ESP,0xc
  004f466c:	89 37                                          	MOV dword ptr [EDI],ESI
  004f466e:	5f                                             	POP EDI
  004f466f:	5d                                             	POP EBP
  004f4670:	5b                                             	POP EBX
  004f4671:	8b c6                                          	MOV EAX,ESI
  004f4673:	5e                                             	POP ESI
  004f4674:	83 c4 08                                       	ADD ESP,0x8
  004f4677:	c3                                             	RET

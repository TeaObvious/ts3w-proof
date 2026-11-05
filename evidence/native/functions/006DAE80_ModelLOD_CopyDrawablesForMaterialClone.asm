# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; ModelLOD_CopyDrawablesForMaterialClone; owned ranges [[006dae80, 006daf0d]]
006dae80	53	PUSH EBX
006dae81	57	PUSH EDI
006dae82	8b7c240c	MOV EDI,dword ptr [ESP + 0xc]
006dae86	85ff	TEST EDI,EDI
006dae88	8bd9	MOV EBX,ECX
006dae8a	7507	JNZ 0x006dae93
006dae8c	5f	POP EDI
006dae8d	32c0	XOR AL,AL
006dae8f	5b	POP EBX
006dae90	c20400	RET 0x4
006dae93	8b4344	MOV EAX,dword ptr [EBX + 0x44]
006dae96	50	PUSH EAX
006dae97	8bcf	MOV ECX,EDI
006dae99	e8f2faffff	CALL 0x006da990
006dae9e	84c0	TEST AL,AL
006daea0	74ea	JZ 0x006dae8c
006daea2	56	PUSH ESI
006daea3	33f6	XOR ESI,ESI
006daea5	397344	CMP dword ptr [EBX + 0x44],ESI
006daea8	7624	JBE 0x006daece
006daeaa	8d9b00000000	LEA EBX,[EBX]
006daeb0	8b4f40	MOV ECX,dword ptr [EDI + 0x40]
006daeb3	8b0cb1	MOV ECX,dword ptr [ECX + ESI*0x4]
006daeb6	85c9	TEST ECX,ECX
006daeb8	744c	JZ 0x006daf06
006daeba	8b5340	MOV EDX,dword ptr [EBX + 0x40]
006daebd	8b04b2	MOV EAX,dword ptr [EDX + ESI*0x4]
006daec0	50	PUSH EAX
006daec1	e8fa5ffbff	CALL 0x00690ec0
006daec6	83c601	ADD ESI,0x1
006daec9	3b7344	CMP ESI,dword ptr [EBX + 0x44]
006daecc	72e2	JC 0x006daeb0
006daece	8b4b30	MOV ECX,dword ptr [EBX + 0x30]
006daed1	51	PUSH ECX
006daed2	8d4f28	LEA ECX,[EDI + 0x28]
006daed5	e8b6380000	CALL 0x006de790
006daeda	8bcf	MOV ECX,EDI
006daedc	e8effdffff	CALL 0x006dacd0
006daee1	8bcf	MOV ECX,EDI
006daee3	e838fcffff	CALL 0x006dab20
006daee8	c6477201	MOV byte ptr [EDI + 0x72],0x1
006daeec	c6477000	MOV byte ptr [EDI + 0x70],0x0
006daef0	8a5371	MOV DL,byte ptr [EBX + 0x71]
006daef3	885771	MOV byte ptr [EDI + 0x71],DL
006daef6	668b4374	MOV AX,word ptr [EBX + 0x74]
006daefa	5e	POP ESI
006daefb	66894774	MOV word ptr [EDI + 0x74],AX
006daeff	5f	POP EDI
006daf00	b001	MOV AL,0x1
006daf02	5b	POP EBX
006daf03	c20400	RET 0x4
006daf06	5e	POP ESI
006daf07	5f	POP EDI
006daf08	32c0	XOR AL,AL
006daf0a	5b	POP EBX
006daf0b	c20400	RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00ad0db0,00ad0e1e]. 111 owned bytes/48 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Signed packed location lower bound. cdecl begin/end/query pointers, plain RET EAX borrowed pointer. Three-byte records ordered lexicographically by SIGNED level(byte2), X(byte0), Z(byte1). Binary search uses (end-begin)/3 and returns first not-less element. Valid sorted aligned range required, no mask comparison or insertion.

00ad0db0	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
00ad0db4	55	PUSH EBP
00ad0db5	8b6c2408	MOV EBP, dword ptr [ESP + 0x8]
00ad0db9	2bcd	SUB ECX, EBP
00ad0dbb	b856555555	MOV EAX, 0x55555556
00ad0dc0	f7e9	IMUL ECX
00ad0dc2	57	PUSH EDI
00ad0dc3	8bfa	MOV EDI, EDX
00ad0dc5	c1ef1f	SHR EDI, 0x1f
00ad0dc8	03fa	ADD EDI, EDX
00ad0dca	85ff	TEST EDI, EDI
00ad0dcc	7e4c	JLE 0x00ad0e1a
00ad0dce	8b442414	MOV EAX, dword ptr [ESP + 0x14]
00ad0dd2	53	PUSH EBX
00ad0dd3	8a5802	MOV BL, byte ptr [EAX + 0x2]
00ad0dd6	56	PUSH ESI
00ad0dd7	8bf7	MOV ESI, EDI
00ad0dd9	d1fe	SAR ESI, 0x1
00ad0ddb	8d447500	LEA EAX, [EBP + ESI*0x2]
00ad0ddf	8a4c3002	MOV CL, byte ptr [EAX + ESI*0x1 + 0x2]
00ad0de3	03c6	ADD EAX, ESI
00ad0de5	3acb	CMP CL, BL
00ad0de7	7516	JNZ 0x00ad0dff
00ad0de9	8b54241c	MOV EDX, dword ptr [ESP + 0x1c]
00ad0ded	8a08	MOV CL, byte ptr [EAX]
00ad0def	8a12	MOV DL, byte ptr [EDX]
00ad0df1	3aca	CMP CL, DL
00ad0df3	750a	JNZ 0x00ad0dff
00ad0df5	8a4801	MOV CL, byte ptr [EAX + 0x1]
00ad0df8	8b54241c	MOV EDX, dword ptr [ESP + 0x1c]
00ad0dfc	3a4a01	CMP CL, byte ptr [EDX + 0x1]
00ad0dff	0f9cc1	SETL CL
00ad0e02	84c9	TEST CL, CL
00ad0e04	740c	JZ 0x00ad0e12
00ad0e06	8d6803	LEA EBP, [EAX + 0x3]
00ad0e09	83c8ff	OR EAX, 0xffffffff
00ad0e0c	2bc6	SUB EAX, ESI
00ad0e0e	03f8	ADD EDI, EAX
00ad0e10	eb02	JMP 0x00ad0e14
00ad0e12	8bfe	MOV EDI, ESI
00ad0e14	85ff	TEST EDI, EDI
00ad0e16	7fbf	JG 0x00ad0dd7
00ad0e18	5e	POP ESI
00ad0e19	5b	POP EBX
00ad0e1a	5f	POP EDI
00ad0e1b	8bc5	MOV EAX, EBP
00ad0e1d	5d	POP EBP
00ad0e1e	c3	RET

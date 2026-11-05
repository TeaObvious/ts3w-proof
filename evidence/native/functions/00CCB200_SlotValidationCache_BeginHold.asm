# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00ccb200, 00ccb279]]
00ccb200	53	PUSH EBX
00ccb201	8a5c240c	MOV BL,byte ptr [ESP + 0xc]
00ccb205	55	PUSH EBP
00ccb206	8b6c240c	MOV EBP,dword ptr [ESP + 0xc]
00ccb20a	56	PUSH ESI
00ccb20b	8bf1	MOV ESI,ECX
00ccb20d	3b6e08	CMP EBP,dword ptr [ESI + 0x8]
00ccb210	7505	JNZ 0x00ccb217
00ccb212	3a5e0c	CMP BL,byte ptr [ESI + 0xc]
00ccb215	742f	JZ 0x00ccb246
00ccb217	8b461c	MOV EAX,dword ptr [ESI + 0x1c]
00ccb21a	57	PUSH EDI
00ccb21b	8d7e10	LEA EDI,[ESI + 0x10]
00ccb21e	50	PUSH EAX
00ccb21f	8bcf	MOV ECX,EDI
00ccb221	e80afaffff	CALL 0x00ccac30
00ccb226	8d4704	LEA EAX,[EDI + 0x4]
00ccb229	894708	MOV dword ptr [EDI + 0x8],EAX
00ccb22c	8900	MOV dword ptr [EAX],EAX
00ccb22e	33c0	XOR EAX,EAX
00ccb230	89470c	MOV dword ptr [EDI + 0xc],EAX
00ccb233	884710	MOV byte ptr [EDI + 0x10],AL
00ccb236	894714	MOV dword ptr [EDI + 0x14],EAX
00ccb239	8b4e30	MOV ECX,dword ptr [ESI + 0x30]
00ccb23c	894e34	MOV dword ptr [ESI + 0x34],ECX
00ccb23f	896e08	MOV dword ptr [ESI + 0x8],EBP
00ccb242	885e0c	MOV byte ptr [ESI + 0xc],BL
00ccb245	5f	POP EDI
00ccb246	8b5630	MOV EDX,dword ptr [ESI + 0x30]
00ccb249	0f57c0	XORPS XMM0,XMM0
00ccb24c	895634	MOV dword ptr [ESI + 0x34],EDX
00ccb24f	8b4e08	MOV ECX,dword ptr [ESI + 0x8]
00ccb252	85c9	TEST ECX,ECX
00ccb254	f30f11462c	MOVSS dword ptr [ESI + 0x2c],XMM0
00ccb259	7419	JZ 0x00ccb274
00ccb25b	a108df1e01	MOV EAX,[0x011edf08]
00ccb260	50	PUSH EAX
00ccb261	e8fa8fc6ff	CALL 0x00934260
00ccb266	85c0	TEST EAX,EAX
00ccb268	740a	JZ 0x00ccb274
00ccb26a	8bc8	MOV ECX,EAX
00ccb26c	e8cfe6fbff	CALL 0x00c89940
00ccb271	d95e2c	FSTP float ptr [ESI + 0x2c]
00ccb274	5e	POP ESI
00ccb275	5d	POP EBP
00ccb276	5b	POP EBX
00ccb277	c20800	RET 0x8

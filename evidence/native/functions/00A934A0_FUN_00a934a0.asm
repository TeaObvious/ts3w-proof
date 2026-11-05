# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a934a0,00a93526]. 135 owned bytes/54 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Floor upper-quarter flag query with optional refresh. ECX manager plus packedcell/lowbyte refresh, RET8, AL boolean. If refresh and pending+F0..F4 nonempty, invokesA925B0 before read. Negative level-managerMin returns false. Flat byte grid manager+28 indexes level/X/Z; any selected lowquarter bit q tests STORED HIGH bit q+4. No upper/XZ bounds checks; not the low-bit setterA8D130.

00a934a0	807c240800	CMP byte ptr [ESP + 0x8], 0x0
00a934a5	56	PUSH ESI
00a934a6	8b742408	MOV ESI, dword ptr [ESP + 0x8]
00a934aa	57	PUSH EDI
00a934ab	8bf9	MOV EDI, ECX
00a934ad	7414	JZ 0x00a934c3
00a934af	8b87f0000000	MOV EAX, dword ptr [EDI + 0xf0]
00a934b5	3b87f4000000	CMP EAX, dword ptr [EDI + 0xf4]
00a934bb	7406	JZ 0x00a934c3
00a934bd	56	PUSH ESI
00a934be	e8edf0ffff	CALL 0x00a925b0
00a934c3	0fbe4e02	MOVSX ECX, byte ptr [ESI + 0x2]
00a934c7	2b4f10	SUB ECX, dword ptr [EDI + 0x10]
00a934ca	7907	JNS 0x00a934d3
00a934cc	5f	POP EDI
00a934cd	32c0	XOR AL, AL
00a934cf	5e	POP ESI
00a934d0	c20800	RET 0x8
00a934d3	8b4728	MOV EAX, dword ptr [EDI + 0x28]
00a934d6	8b5004	MOV EDX, dword ptr [EAX + 0x4]
00a934d9	0fafd1	IMUL EDX, ECX
00a934dc	0fbe0e	MOVSX ECX, byte ptr [ESI]
00a934df	03d1	ADD EDX, ECX
00a934e1	0faf5008	IMUL EDX, dword ptr [EAX + 0x8]
00a934e5	0fbe4e01	MOVSX ECX, byte ptr [ESI + 0x1]
00a934e9	8b4010	MOV EAX, dword ptr [EAX + 0x10]
00a934ec	03d1	ADD EDX, ECX
00a934ee	8a1402	MOV DL, byte ptr [EDX + EAX*0x1]
00a934f1	33c0	XOR EAX, EAX
00a934f3	53	PUSH EBX
00a934f4	8bc8	MOV ECX, EAX
00a934f6	b301	MOV BL, 0x1
00a934f8	d2e3	SHL BL, CL
00a934fa	8a4e03	MOV CL, byte ptr [ESI + 0x3]
00a934fd	84d9	TEST CL, BL
00a934ff	740e	JZ 0x00a9350f
00a93501	8d4804	LEA ECX, [EAX + 0x4]
00a93504	bb01000000	MOV EBX, 0x1
00a93509	d3e3	SHL EBX, CL
00a9350b	84da	TEST DL, BL
00a9350d	7510	JNZ 0x00a9351f
00a9350f	83c001	ADD EAX, 0x1
00a93512	83f804	CMP EAX, 0x4
00a93515	7cdd	JL 0x00a934f4
00a93517	5b	POP EBX
00a93518	5f	POP EDI
00a93519	32c0	XOR AL, AL
00a9351b	5e	POP ESI
00a9351c	c20800	RET 0x8
00a9351f	5b	POP EBX
00a93520	5f	POP EDI
00a93521	b001	MOV AL, 0x1
00a93523	5e	POP ESI
00a93524	c20800	RET 0x8

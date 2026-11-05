# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cef2b0, 00cef43a]]
00cef2b0	56	PUSH ESI
00cef2b1	8bf1	MOV ESI,ECX
00cef2b3	e818168bff	CALL 0x005a08d0
00cef2b8	85c0	TEST EAX,EAX
00cef2ba	7413	JZ 0x00cef2cf
00cef2bc	8b10	MOV EDX,dword ptr [EAX]
00cef2be	68b0040000	PUSH 0x4b0
00cef2c3	8bc8	MOV ECX,EAX
00cef2c5	8b4218	MOV EAX,dword ptr [EDX + 0x18]
00cef2c8	68d4340801	PUSH 0x10834d4
00cef2cd	ffd0	CALL EAX
00cef2cf	e8fc158bff	CALL 0x005a08d0
00cef2d4	85c0	TEST EAX,EAX
00cef2d6	7412	JZ 0x00cef2ea
00cef2d8	8b10	MOV EDX,dword ptr [EAX]
00cef2da	8b5228	MOV EDX,dword ptr [EDX + 0x28]
00cef2dd	68a8340801	PUSH 0x10834a8
00cef2e2	8d4e11	LEA ECX,[ESI + 0x11]
00cef2e5	51	PUSH ECX
00cef2e6	8bc8	MOV ECX,EAX
00cef2e8	ffd2	CALL EDX
00cef2ea	e8e1158bff	CALL 0x005a08d0
00cef2ef	85c0	TEST EAX,EAX
00cef2f1	7412	JZ 0x00cef305
00cef2f3	8b10	MOV EDX,dword ptr [EAX]
00cef2f5	8b5228	MOV EDX,dword ptr [EDX + 0x28]
00cef2f8	6868340801	PUSH 0x1083468
00cef2fd	8d4e10	LEA ECX,[ESI + 0x10]
00cef300	51	PUSH ECX
00cef301	8bc8	MOV ECX,EAX
00cef303	ffd2	CALL EDX
00cef305	e8c6158bff	CALL 0x005a08d0
00cef30a	85c0	TEST EAX,EAX
00cef30c	7415	JZ 0x00cef323
00cef30e	8b10	MOV EDX,dword ptr [EAX]
00cef310	6a01	PUSH 0x1
00cef312	6a1e	PUSH 0x1e
00cef314	6a00	PUSH 0x0
00cef316	6830340801	PUSH 0x1083430
00cef31b	8bc8	MOV ECX,EAX
00cef31d	8b4234	MOV EAX,dword ptr [EDX + 0x34]
00cef320	56	PUSH ESI
00cef321	ffd0	CALL EAX
00cef323	e8a8158bff	CALL 0x005a08d0
00cef328	85c0	TEST EAX,EAX
00cef32a	7418	JZ 0x00cef344
00cef32c	8b10	MOV EDX,dword ptr [EAX]
00cef32e	8b5234	MOV EDX,dword ptr [EDX + 0x34]
00cef331	6a01	PUSH 0x1
00cef333	6a1e	PUSH 0x1e
00cef335	6a00	PUSH 0x0
00cef337	68fc330801	PUSH 0x10833fc
00cef33c	8d4e04	LEA ECX,[ESI + 0x4]
00cef33f	51	PUSH ECX
00cef340	8bc8	MOV ECX,EAX
00cef342	ffd2	CALL EDX
00cef344	e887158bff	CALL 0x005a08d0
00cef349	85c0	TEST EAX,EAX
00cef34b	742e	JZ 0x00cef37b
00cef34d	d905ac2bfa00	FLD float ptr [0x00fa2bac]
00cef353	8b10	MOV EDX,dword ptr [EAX]
00cef355	8b5230	MOV EDX,dword ptr [EDX + 0x30]
00cef358	83ec0c	SUB ESP,0xc
00cef35b	d95c2408	FSTP float ptr [ESP + 0x8]
00cef35f	8d4e08	LEA ECX,[ESI + 0x8]
00cef362	d905c82b0601	FLD float ptr [0x01062bc8]
00cef368	d95c2404	FSTP float ptr [ESP + 0x4]
00cef36c	d9ee	FLDZ
00cef36e	d91c24	FSTP float ptr [ESP]
00cef371	68cc330801	PUSH 0x10833cc
00cef376	51	PUSH ECX
00cef377	8bc8	MOV ECX,EAX
00cef379	ffd2	CALL EDX
00cef37b	e850158bff	CALL 0x005a08d0
00cef380	85c0	TEST EAX,EAX
00cef382	742e	JZ 0x00cef3b2
00cef384	d905ac2bfa00	FLD float ptr [0x00fa2bac]
00cef38a	8b10	MOV EDX,dword ptr [EAX]
00cef38c	8b5230	MOV EDX,dword ptr [EDX + 0x30]
00cef38f	83ec0c	SUB ESP,0xc
00cef392	d95c2408	FSTP float ptr [ESP + 0x8]
00cef396	8d4e0c	LEA ECX,[ESI + 0xc]
00cef399	d905c82b0601	FLD float ptr [0x01062bc8]
00cef39f	d95c2404	FSTP float ptr [ESP + 0x4]
00cef3a3	d9ee	FLDZ
00cef3a5	d91c24	FSTP float ptr [ESP]
00cef3a8	689c330801	PUSH 0x108339c
00cef3ad	51	PUSH ECX
00cef3ae	8bc8	MOV ECX,EAX
00cef3b0	ffd2	CALL EDX
00cef3b2	e819158bff	CALL 0x005a08d0
00cef3b7	85c0	TEST EAX,EAX
00cef3b9	742a	JZ 0x00cef3e5
00cef3bb	d9e8	FLD1
00cef3bd	8b10	MOV EDX,dword ptr [EAX]
00cef3bf	8b5230	MOV EDX,dword ptr [EDX + 0x30]
00cef3c2	83ec0c	SUB ESP,0xc
00cef3c5	d95c2408	FSTP float ptr [ESP + 0x8]
00cef3c9	8d4e14	LEA ECX,[ESI + 0x14]
00cef3cc	d90538c9fb00	FLD float ptr [0x00fbc938]
00cef3d2	d95c2404	FSTP float ptr [ESP + 0x4]
00cef3d6	d9ee	FLDZ
00cef3d8	d91c24	FSTP float ptr [ESP]
00cef3db	6838330801	PUSH 0x1083338
00cef3e0	51	PUSH ECX
00cef3e1	8bc8	MOV ECX,EAX
00cef3e3	ffd2	CALL EDX
00cef3e5	e8e6148bff	CALL 0x005a08d0
00cef3ea	85c0	TEST EAX,EAX
00cef3ec	7432	JZ 0x00cef420
00cef3ee	d9057c480401	FLD float ptr [0x0104487c]
00cef3f4	8b10	MOV EDX,dword ptr [EAX]
00cef3f6	83ec0c	SUB ESP,0xc
00cef3f9	d95c2408	FSTP float ptr [ESP + 0x8]
00cef3fd	83c618	ADD ESI,0x18
00cef400	d9059c2bfa00	FLD float ptr [0x00fa2b9c]
00cef406	8bc8	MOV ECX,EAX
00cef408	8b4230	MOV EAX,dword ptr [EDX + 0x30]
00cef40b	d95c2404	FSTP float ptr [ESP + 0x4]
00cef40f	d9053cb8fb00	FLD float ptr [0x00fbb83c]
00cef415	d91c24	FSTP float ptr [ESP]
00cef418	68d8320801	PUSH 0x10832d8
00cef41d	56	PUSH ESI
00cef41e	ffd0	CALL EAX
00cef420	e8ab148bff	CALL 0x005a08d0
00cef425	85c0	TEST EAX,EAX
00cef427	5e	POP ESI
00cef428	7410	JZ 0x00cef43a
00cef42a	8b10	MOV EDX,dword ptr [EAX]
00cef42c	68ffffff7f	PUSH 0x7fffffff
00cef431	8bc8	MOV ECX,EAX
00cef433	8b4218	MOV EAX,dword ptr [EDX + 0x18]
00cef436	6a00	PUSH 0x0
00cef438	ffd0	CALL EAX
00cef43a	c3	RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8d1c0,00a8d20c]; [00a8d210,00a8d242]. 128 owned bytes/52 instructions; 3 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Selected floor cell pattern ID. ECX floor manager plus packedcell, RET4, result in AX. Mask bit10 selects manager+48 instead of+2C. Null selected grid returnsFFFF. Signed X/Z/level minus managerMin+10 feed A8B410. Walks lowfour selected quarters with sentinelFFFF; leadingFFFF is skipped, later differing numeric ID rejects. No catalog-kind compatibility and no own bounds guard.

00a8d1c0	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00a8d1c4	53	PUSH EBX
00a8d1c5	8a5803	MOV BL, byte ptr [EAX + 0x3]
00a8d1c8	8bd1	MOV EDX, ECX
00a8d1ca	8acb	MOV CL, BL
00a8d1cc	f6d1	NOT CL
00a8d1ce	f6c110	TEST CL, 0x10
00a8d1d1	7405	JZ 0x00a8d1d8
00a8d1d3	8b4a2c	MOV ECX, dword ptr [EDX + 0x2c]
00a8d1d6	eb03	JMP 0x00a8d1db
00a8d1d8	8b4a48	MOV ECX, dword ptr [EDX + 0x48]
00a8d1db	85c9	TEST ECX, ECX
00a8d1dd	7508	JNZ 0x00a8d1e7
00a8d1df	660dffff	OR AX, 0xffff
00a8d1e3	5b	POP EBX
00a8d1e4	c20400	RET 0x4
00a8d1e7	56	PUSH ESI
00a8d1e8	0fbe7002	MOVSX ESI, byte ptr [EAX + 0x2]
00a8d1ec	2b7210	SUB ESI, dword ptr [EDX + 0x10]
00a8d1ef	0fbe5001	MOVSX EDX, byte ptr [EAX + 0x1]
00a8d1f3	0fbe00	MOVSX EAX, byte ptr [EAX]
00a8d1f6	56	PUSH ESI
00a8d1f7	52	PUSH EDX
00a8d1f8	50	PUSH EAX
00a8d1f9	e812e2ffff	CALL 0x00a8b410
00a8d1fe	8bf0	MOV ESI, EAX
00a8d200	b8ffff0000	MOV EAX, 0xffff
00a8d205	33c9	XOR ECX, ECX
00a8d207	0fbed3	MOVSX EDX, BL
00a8d20a	57	PUSH EDI
00a8d20b	eb03	JMP 0x00a8d210
00a8d210	bf01000000	MOV EDI, 0x1
00a8d215	d3e7	SHL EDI, CL
00a8d217	85fa	TEST EDX, EDI
00a8d219	7410	JZ 0x00a8d22b
00a8d21b	663dffff	CMP AX, 0xffff
00a8d21f	7406	JZ 0x00a8d227
00a8d221	663b044e	CMP AX, word ptr [ESI + ECX*0x2]
00a8d225	7512	JNZ 0x00a8d239
00a8d227	0fb7044e	MOVZX EAX, word ptr [ESI + ECX*0x2]
00a8d22b	83c101	ADD ECX, 0x1
00a8d22e	83f904	CMP ECX, 0x4
00a8d231	7cdd	JL 0x00a8d210
00a8d233	5f	POP EDI
00a8d234	5e	POP ESI
00a8d235	5b	POP EBX
00a8d236	c20400	RET 0x4
00a8d239	5f	POP EDI
00a8d23a	5e	POP ESI
00a8d23b	660dffff	OR AX, 0xffff
00a8d23f	5b	POP EBX
00a8d240	c20400	RET 0x4

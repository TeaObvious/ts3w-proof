# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afec10,00afecc2]. 179 owned bytes/57 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Deck-foundation full-cell admission. cdecl lot/packedcell, plain RET, AL boolean. Signed half-open X/Z and closed level bounds; ignores incoming mask and builds0F; AB67D0 mode0 STRICT, not platform centre mode1. Nonmissing ID is admitted unless kind3,6 or5. Unresolved individual product can pass; bank-null initialization remains separate.

00afec10	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00afec14	0fbe10	MOVSX EDX, byte ptr [EAX]
00afec17	85d2	TEST EDX, EDX
00afec19	56	PUSH ESI
00afec1a	0fbe7001	MOVSX ESI, byte ptr [EAX + 0x1]
00afec1e	0f8c9b000000	JL 0x00afecbf
00afec24	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
00afec28	3b9174010000	CMP EDX, dword ptr [ECX + 0x174]
00afec2e	0f8d8b000000	JGE 0x00afecbf
00afec34	85f6	TEST ESI, ESI
00afec36	0f8c83000000	JL 0x00afecbf
00afec3c	3bb178010000	CMP ESI, dword ptr [ECX + 0x178]
00afec42	7d7b	JGE 0x00afecbf
00afec44	0fbe5002	MOVSX EDX, byte ptr [EAX + 0x2]
00afec48	3b917c010000	CMP EDX, dword ptr [ECX + 0x17c]
00afec4e	7c6f	JL 0x00afecbf
00afec50	3b9180010000	CMP EDX, dword ptr [ECX + 0x180]
00afec56	7f67	JG 0x00afecbf
00afec58	668b10	MOV DX, word ptr [EAX]
00afec5b	8a4002	MOV AL, byte ptr [EAX + 0x2]
00afec5e	668954240c	MOV word ptr [ESP + 0xc], DX
00afec63	6a00	PUSH 0x0
00afec65	8d542410	LEA EDX, [ESP + 0x10]
00afec69	52	PUSH EDX
00afec6a	88442416	MOV byte ptr [ESP + 0x16], AL
00afec6e	c64424170f	MOV byte ptr [ESP + 0x17], 0xf
00afec73	e8587bfbff	CALL 0x00ab67d0
00afec78	8bf0	MOV ESI, EAX
00afec7a	83feff	CMP ESI, -0x1
00afec7d	7440	JZ 0x00afecbf
00afec7f	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034]
00afec85	56	PUSH ESI
00afec86	e825cf1800	CALL 0x00c8bbb0
00afec8b	85c0	TEST EAX, EAX
00afec8d	740e	JZ 0x00afec9d
00afec8f	83b88800000003	CMP dword ptr [EAX + 0x88], 0x3
00afec96	0f94c0	SETZ AL
00afec99	84c0	TEST AL, AL
00afec9b	7522	JNZ 0x00afecbf
00afec9d	6a06	PUSH 0x6
00afec9f	56	PUSH ESI
00afeca0	e85bf6ffff	CALL 0x00afe300
00afeca5	83c408	ADD ESP, 0x8
00afeca8	84c0	TEST AL, AL
00afecaa	7513	JNZ 0x00afecbf
00afecac	6a05	PUSH 0x5
00afecae	56	PUSH ESI
00afecaf	e84cf6ffff	CALL 0x00afe300
00afecb4	83c408	ADD ESP, 0x8
00afecb7	84c0	TEST AL, AL
00afecb9	7504	JNZ 0x00afecbf
00afecbb	b001	MOV AL, 0x1
00afecbd	5e	POP ESI
00afecbe	c3	RET
00afecbf	32c0	XOR AL, AL
00afecc1	5e	POP ESI
00afecc2	c3	RET

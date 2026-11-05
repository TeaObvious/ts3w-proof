# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afecd0,00afed5e]. 143 owned bytes/51 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Deck-foundation selected-quarter admission. cdecl lot/packedcell, plain RET, AL boolean. Same bounds and strict AB67D0 as AFEC10, but retains the incoming selected mask. Excludes kinds3/6/5. Missing marker resultFFFFFFFF rejects; unresolved ordinary catalog row can pass. No positive allowlist is implied.

00afecd0	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00afecd4	0fbe10	MOVSX EDX, byte ptr [EAX]
00afecd7	85d2	TEST EDX, EDX
00afecd9	56	PUSH ESI
00afecda	0fbe7001	MOVSX ESI, byte ptr [EAX + 0x1]
00afecde	7c7b	JL 0x00afed5b
00afece0	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
00afece4	3b9174010000	CMP EDX, dword ptr [ECX + 0x174]
00afecea	7d6f	JGE 0x00afed5b
00afecec	85f6	TEST ESI, ESI
00afecee	7c6b	JL 0x00afed5b
00afecf0	3bb178010000	CMP ESI, dword ptr [ECX + 0x178]
00afecf6	7d63	JGE 0x00afed5b
00afecf8	0fbe5002	MOVSX EDX, byte ptr [EAX + 0x2]
00afecfc	3b917c010000	CMP EDX, dword ptr [ECX + 0x17c]
00afed02	7c57	JL 0x00afed5b
00afed04	3b9180010000	CMP EDX, dword ptr [ECX + 0x180]
00afed0a	7f4f	JG 0x00afed5b
00afed0c	6a00	PUSH 0x0
00afed0e	50	PUSH EAX
00afed0f	e8bc7afbff	CALL 0x00ab67d0
00afed14	8bf0	MOV ESI, EAX
00afed16	83feff	CMP ESI, -0x1
00afed19	7440	JZ 0x00afed5b
00afed1b	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034]
00afed21	56	PUSH ESI
00afed22	e889ce1800	CALL 0x00c8bbb0
00afed27	85c0	TEST EAX, EAX
00afed29	740e	JZ 0x00afed39
00afed2b	83b88800000003	CMP dword ptr [EAX + 0x88], 0x3
00afed32	0f94c0	SETZ AL
00afed35	84c0	TEST AL, AL
00afed37	7522	JNZ 0x00afed5b
00afed39	6a06	PUSH 0x6
00afed3b	56	PUSH ESI
00afed3c	e8bff5ffff	CALL 0x00afe300
00afed41	83c408	ADD ESP, 0x8
00afed44	84c0	TEST AL, AL
00afed46	7513	JNZ 0x00afed5b
00afed48	6a05	PUSH 0x5
00afed4a	56	PUSH ESI
00afed4b	e8b0f5ffff	CALL 0x00afe300
00afed50	83c408	ADD ESP, 0x8
00afed53	84c0	TEST AL, AL
00afed55	7504	JNZ 0x00afed5b
00afed57	b001	MOV AL, 0x1
00afed59	5e	POP ESI
00afed5a	c3	RET
00afed5b	32c0	XOR AL, AL
00afed5d	5e	POP ESI
00afed5e	c3	RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afeb00,00afeb29]; [00afeb30,00afec0c]. 263 owned bytes/80 instructions; 6 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Deck-foundation vertex admission. cdecl lot/packedvertex, plain RET, AL boolean. Reuses four-cell iterator, strict AB67D0 per valid cell, excludes resolved kinds3/6/5. A non-FFFFFFFF ID whose product lookup fails passes the negative type tests and can return true. No iterator reset beyond constructor needed.

00afeb00	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00afeb04	83ec0c	SUB ESP, 0xc
00afeb07	56	PUSH ESI
00afeb08	57	PUSH EDI
00afeb09	50	PUSH EAX
00afeb0a	8d4c240c	LEA ECX, [ESP + 0xc]
00afeb0e	e82d81ffff	CALL 0x00af6c40
00afeb13	8d4c2408	LEA ECX, [ESP + 0x8]
00afeb17	e8a47cffff	CALL 0x00af67c0
00afeb1c	84c0	TEST AL, AL
00afeb1e	0f85d9000000	JNZ 0x00afebfd
00afeb24	8b7c2418	MOV EDI, dword ptr [ESP + 0x18]
00afeb28	eb06	JMP 0x00afeb30
00afeb30	8d4c2408	LEA ECX, [ESP + 0x8]
00afeb34	e8277bffff	CALL 0x00af6660
00afeb39	0fbe08	MOVSX ECX, byte ptr [EAX]
00afeb3c	85c9	TEST ECX, ECX
00afeb3e	0fbe5001	MOVSX EDX, byte ptr [EAX + 0x1]
00afeb42	0f8c9b000000	JL 0x00afebe3
00afeb48	3b8f74010000	CMP ECX, dword ptr [EDI + 0x174]
00afeb4e	0f8d8f000000	JGE 0x00afebe3
00afeb54	85d2	TEST EDX, EDX
00afeb56	0f8c87000000	JL 0x00afebe3
00afeb5c	3b9778010000	CMP EDX, dword ptr [EDI + 0x178]
00afeb62	7d7f	JGE 0x00afebe3
00afeb64	0fbe4802	MOVSX ECX, byte ptr [EAX + 0x2]
00afeb68	3b8f7c010000	CMP ECX, dword ptr [EDI + 0x17c]
00afeb6e	7c73	JL 0x00afebe3
00afeb70	3b8f80010000	CMP ECX, dword ptr [EDI + 0x180]
00afeb76	7f6b	JG 0x00afebe3
00afeb78	6a00	PUSH 0x0
00afeb7a	50	PUSH EAX
00afeb7b	8bcf	MOV ECX, EDI
00afeb7d	e84e7cfbff	CALL 0x00ab67d0
00afeb82	8bf0	MOV ESI, EAX
00afeb84	83feff	CMP ESI, -0x1
00afeb87	745a	JZ 0x00afebe3
00afeb89	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034]
00afeb8f	56	PUSH ESI
00afeb90	e81bd01800	CALL 0x00c8bbb0
00afeb95	85c0	TEST EAX, EAX
00afeb97	740e	JZ 0x00afeba7
00afeb99	83b88800000003	CMP dword ptr [EAX + 0x88], 0x3
00afeba0	0f94c0	SETZ AL
00afeba3	84c0	TEST AL, AL
00afeba5	753c	JNZ 0x00afebe3
00afeba7	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034]
00afebad	56	PUSH ESI
00afebae	e8fdcf1800	CALL 0x00c8bbb0
00afebb3	85c0	TEST EAX, EAX
00afebb5	740e	JZ 0x00afebc5
00afebb7	83b88800000006	CMP dword ptr [EAX + 0x88], 0x6
00afebbe	0f94c0	SETZ AL
00afebc1	84c0	TEST AL, AL
00afebc3	751e	JNZ 0x00afebe3
00afebc5	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034]
00afebcb	56	PUSH ESI
00afebcc	e8dfcf1800	CALL 0x00c8bbb0
00afebd1	85c0	TEST EAX, EAX
00afebd3	7430	JZ 0x00afec05
00afebd5	83b88800000005	CMP dword ptr [EAX + 0x88], 0x5
00afebdc	0f94c0	SETZ AL
00afebdf	84c0	TEST AL, AL
00afebe1	7422	JZ 0x00afec05
00afebe3	8d4c2408	LEA ECX, [ESP + 0x8]
00afebe7	e8647affff	CALL 0x00af6650
00afebec	8d4c2408	LEA ECX, [ESP + 0x8]
00afebf0	e8cb7bffff	CALL 0x00af67c0
00afebf5	84c0	TEST AL, AL
00afebf7	0f8433ffffff	JZ 0x00afeb30
00afebfd	5f	POP EDI
00afebfe	32c0	XOR AL, AL
00afec00	5e	POP ESI
00afec01	83c40c	ADD ESP, 0xc
00afec04	c3	RET
00afec05	5f	POP EDI
00afec06	b001	MOV AL, 0x1
00afec08	5e	POP ESI
00afec09	83c40c	ADD ESP, 0xc
00afec0c	c3	RET

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: TestFloorQuarterSupport.
Complete existing Ghidra owned body: [00AD2990,00AD2D1B] inclusive; 908 owned bytes / 295 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Tests selected floor support with signed lot bounds, immediate level-zero admission, negative-level support/basement alternatives, and positive-level direct plus neighborhood support paths. cdecl four stack words; only AL is a general Boolean contract. Third word selects a quarter; fourth is an excluded borrowed Object pointer. Analyst-assigned name.

00ad2990	83ec2c	SUB ESP, 0x2c
00ad2993	56	PUSH ESI
00ad2994	8b742438	MOV ESI, dword ptr [ESP + 0x38]
00ad2998	0fbe06	MOVSX EAX, byte ptr [ESI] ; Validate signed X/Z/level before level-zero admission. Valid level 0 returns true; invalid level-0 coordinates still return false.
00ad299b	85c0	TEST EAX, EAX
00ad299d	0fbe4e01	MOVSX ECX, byte ptr [ESI + 0x1]
00ad29a1	57	PUSH EDI
00ad29a2	7c2e	JL 0x00ad29d2
00ad29a4	8b7c2438	MOV EDI, dword ptr [ESP + 0x38]
00ad29a8	3b8774010000	CMP EAX, dword ptr [EDI + 0x174]
00ad29ae	7d22	JGE 0x00ad29d2
00ad29b0	85c9	TEST ECX, ECX
00ad29b2	7c1e	JL 0x00ad29d2
00ad29b4	3b8f78010000	CMP ECX, dword ptr [EDI + 0x178]
00ad29ba	7d16	JGE 0x00ad29d2
00ad29bc	8a4602	MOV AL, byte ptr [ESI + 0x2]
00ad29bf	0fbec8	MOVSX ECX, AL
00ad29c2	3b8f7c010000	CMP ECX, dword ptr [EDI + 0x17c]
00ad29c8	7c08	JL 0x00ad29d2
00ad29ca	3b8f80010000	CMP ECX, dword ptr [EDI + 0x180]
00ad29d0	7e08	JLE 0x00ad29da
00ad29d2	5f	POP EDI
00ad29d3	32c0	XOR AL, AL
00ad29d5	5e	POP ESI
00ad29d6	83c42c	ADD ESP, 0x2c
00ad29d9	c3	RET
00ad29da	84c0	TEST AL, AL
00ad29dc	7508	JNZ 0x00ad29e6
00ad29de	5f	POP EDI
00ad29df	b001	MOV AL, 0x1
00ad29e1	5e	POP ESI
00ad29e2	83c42c	ADD ESP, 0x2c
00ad29e5	c3	RET
00ad29e6	668b0e	MOV CX, word ptr [ESI]
00ad29e9	8a5602	MOV DL, byte ptr [ESI + 0x2]
00ad29ec	8854241a	MOV byte ptr [ESP + 0x1a], DL
00ad29f0	66894c2418	MOV word ptr [ESP + 0x18], CX
00ad29f5	8b4c2440	MOV ECX, dword ptr [ESP + 0x40] ; Construct local mask 1<<(quarterIndex & 31), narrowed to a byte. The refresh caller proves q=0..3; this body has no independent quarter-index range guard.
00ad29f9	b201	MOV DL, 0x1
00ad29fb	d2e2	SHL DL, CL
00ad29fd	84c0	TEST AL, AL
00ad29ff	8854241b	MOV byte ptr [ESP + 0x1b], DL
00ad2a03	7d35	JGE 0x00ad2a3a
00ad2a05	6a00	PUSH 0x0 ; For negative levels, ACF820 first forces full mask 0F and strict region selection, admitting kind 3 or optional kind 6 (third argument 1). If false, test all requested basement parts using the single-quarter local cell.
00ad2a07	6a01	PUSH 0x1
00ad2a09	56	PUSH ESI
00ad2a0a	57	PUSH EDI
00ad2a0b	e810ceffff	CALL 0x00acf820
00ad2a10	83c410	ADD ESP, 0x10
00ad2a13	84c0	TEST AL, AL
00ad2a15	7518	JNZ 0x00ad2a2f
00ad2a17	8d442418	LEA EAX, [ESP + 0x18]
00ad2a1b	50	PUSH EAX
00ad2a1c	8bcf	MOV ECX, EDI
00ad2a1e	e84d43feff	CALL 0x00ab6d70
00ad2a23	84c0	TEST AL, AL
00ad2a25	7508	JNZ 0x00ad2a2f
00ad2a27	5f	POP EDI
00ad2a28	33c0	XOR EAX, EAX
00ad2a2a	5e	POP ESI
00ad2a2b	83c42c	ADD ESP, 0x2c
00ad2a2e	c3	RET
00ad2a2f	5f	POP EDI
00ad2a30	b801000000	MOV EAX, 0x1
00ad2a35	5e	POP ESI
00ad2a36	83c42c	ADD ESP, 0x2c
00ad2a39	c3	RET
00ad2a3a	56	PUSH ESI ; Positive level first requires ACFF30 and the live lot bounds predicate, then tests direct support with a full-mask 0F copy and the excluded Object pointer.
00ad2a3b	57	PUSH EDI
00ad2a3c	e8efd4ffff	CALL 0x00acff30
00ad2a41	83c408	ADD ESP, 0x8
00ad2a44	84c0	TEST AL, AL
00ad2a46	748a	JZ 0x00ad29d2
00ad2a48	56	PUSH ESI
00ad2a49	8bcf	MOV ECX, EDI
00ad2a4b	e8205fd9ff	CALL 0x00868970
00ad2a50	84c0	TEST AL, AL
00ad2a52	0f847affffff	JZ 0x00ad29d2
00ad2a58	668b0e	MOV CX, word ptr [ESI]
00ad2a5b	8b442444	MOV EAX, dword ptr [ESP + 0x44]
00ad2a5f	8a5602	MOV DL, byte ptr [ESI + 0x2]
00ad2a62	66894c243c	MOV word ptr [ESP + 0x3c], CX
00ad2a67	50	PUSH EAX
00ad2a68	8d4c2440	LEA ECX, [ESP + 0x40]
00ad2a6c	51	PUSH ECX
00ad2a6d	57	PUSH EDI
00ad2a6e	8854244a	MOV byte ptr [ESP + 0x4a], DL
00ad2a72	c644244b0f	MOV byte ptr [ESP + 0x4b], 0xf
00ad2a77	e8b4feffff	CALL 0x00ad2930
00ad2a7c	83c40c	ADD ESP, 0xc
00ad2a7f	84c0	TEST AL, AL
00ad2a81	0f8557ffffff	JNZ 0x00ad29de
00ad2a87	53	PUSH EBX
00ad2a88	55	PUSH EBP
00ad2a89	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2a8d	88442444	MOV byte ptr [ESP + 0x44], AL
00ad2a91	e85a3a0200	CALL 0x00af64f0
00ad2a96	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2a9a	e8813a0200	CALL 0x00af6520
00ad2a9f	84c0	TEST AL, AL
00ad2aa1	0f8561020000	JNZ 0x00ad2d08
00ad2aa7	80cbff	OR BL, 0xff
00ad2aaa	8d9b00000000	LEA EBX, [EBX]
00ad2ab0	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2ab4	e8f7e2a2ff	CALL 0x00500db0
00ad2ab9	88442428	MOV byte ptr [ESP + 0x28], AL
00ad2abd	8b6c2428	MOV EBP, dword ptr [ESP + 0x28]
00ad2ac1	8d542410	LEA EDX, [ESP + 0x10]
00ad2ac5	52	PUSH EDX
00ad2ac6	55	PUSH EBP
00ad2ac7	56	PUSH ESI
00ad2ac8	885c241c	MOV byte ptr [ESP + 0x1c], BL
00ad2acc	885c241d	MOV byte ptr [ESP + 0x1d], BL
00ad2ad0	c644241e00	MOV byte ptr [ESP + 0x1e], 0x0
00ad2ad5	e8a6490200	CALL 0x00af7480
00ad2ada	83c40c	ADD ESP, 0xc
00ad2add	8d442410	LEA EAX, [ESP + 0x10]
00ad2ae1	50	PUSH EAX
00ad2ae2	8bcf	MOV ECX, EDI
00ad2ae4	e8875ed9ff	CALL 0x00868970
00ad2ae9	84c0	TEST AL, AL
00ad2aeb	7461	JZ 0x00ad2b4e
00ad2aed	55	PUSH EBP
00ad2aee	e81d490200	CALL 0x00af7410
00ad2af3	668b4c2414	MOV CX, word ptr [ESP + 0x14]
00ad2af8	66894c2428	MOV word ptr [ESP + 0x28], CX
00ad2afd	8a4c2416	MOV CL, byte ptr [ESP + 0x16]
00ad2b01	83c404	ADD ESP, 0x4
00ad2b04	84c9	TEST CL, CL
00ad2b06	8844242c	MOV byte ptr [ESP + 0x2c], AL
00ad2b0a	884c2426	MOV byte ptr [ESP + 0x26], CL
00ad2b0e	88442427	MOV byte ptr [ESP + 0x27], AL
00ad2b12	0f8efa010000	JLE 0x00ad2d12
00ad2b18	8d542424	LEA EDX, [ESP + 0x24]
00ad2b1c	52	PUSH EDX
00ad2b1d	57	PUSH EDI
00ad2b1e	e81dd5ffff	CALL 0x00ad0040
00ad2b23	83c408	ADD ESP, 0x8
00ad2b26	84c0	TEST AL, AL
00ad2b28	0f85e4010000	JNZ 0x00ad2d12
00ad2b2e	8b44242c	MOV EAX, dword ptr [ESP + 0x2c]
00ad2b32	6a01	PUSH 0x1
00ad2b34	50	PUSH EAX
00ad2b35	8d4c2418	LEA ECX, [ESP + 0x18]
00ad2b39	51	PUSH ECX
00ad2b3a	8b8f90020000	MOV ECX, dword ptr [EDI + 0x290]
00ad2b40	e86bb5fbff	CALL 0x00a8e0b0
00ad2b45	84c0	TEST AL, AL
00ad2b47	7405	JZ 0x00ad2b4e
00ad2b49	c644244401	MOV byte ptr [ESP + 0x44], 0x1
00ad2b4e	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2b52	e8b9390200	CALL 0x00af6510
00ad2b57	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2b5b	e8c0390200	CALL 0x00af6520
00ad2b60	84c0	TEST AL, AL
00ad2b62	0f8448ffffff	JZ 0x00ad2ab0
00ad2b68	807c244400	CMP byte ptr [ESP + 0x44], 0x0 ; The wider neighborhood searches run only after the first iterator observed A8E0B0 true at least once. A true direct or first-neighbor support result returned earlier.
00ad2b6d	0f8495010000	JZ 0x00ad2d08
00ad2b73	b9feffffff	MOV ECX, 0xfffffffe
00ad2b78	894c2410	MOV dword ptr [ESP + 0x10], ECX
00ad2b7c	8d642400	LEA ESP, [ESP]
00ad2b80	8bc1	MOV EAX, ECX ; Enumerate byte-wrapped X/Z offsets -2..2 whose Manhattan distance is exactly 2 or 3. Each candidate is independently signed-bounds checked and uses full mask 0F for room/floor support.
00ad2b82	99	CDQ
00ad2b83	8be8	MOV EBP, EAX
00ad2b85	33ea	XOR EBP, EDX
00ad2b87	bbfeffffff	MOV EBX, 0xfffffffe
00ad2b8c	2bea	SUB EBP, EDX
00ad2b8e	8bff	MOV EDI, EDI
00ad2b90	8bc3	MOV EAX, EBX
00ad2b92	99	CDQ
00ad2b93	33c2	XOR EAX, EDX
00ad2b95	2bc2	SUB EAX, EDX
00ad2b97	03c5	ADD EAX, EBP
00ad2b99	83f802	CMP EAX, 0x2
00ad2b9c	7405	JZ 0x00ad2ba3
00ad2b9e	83f803	CMP EAX, 0x3
00ad2ba1	757a	JNZ 0x00ad2c1d
00ad2ba3	8a06	MOV AL, byte ptr [ESI]
00ad2ba5	8a5602	MOV DL, byte ptr [ESI + 0x2]
00ad2ba8	02c1	ADD AL, CL
00ad2baa	8a4e01	MOV CL, byte ptr [ESI + 0x1]
00ad2bad	88442444	MOV byte ptr [ESP + 0x44], AL
00ad2bb1	02cb	ADD CL, BL
00ad2bb3	0fbec0	MOVSX EAX, AL
00ad2bb6	85c0	TEST EAX, EAX
00ad2bb8	884c2445	MOV byte ptr [ESP + 0x45], CL
00ad2bbc	0fbec9	MOVSX ECX, CL
00ad2bbf	7c58	JL 0x00ad2c19
00ad2bc1	3b8774010000	CMP EAX, dword ptr [EDI + 0x174]
00ad2bc7	7d50	JGE 0x00ad2c19
00ad2bc9	85c9	TEST ECX, ECX
00ad2bcb	7c4c	JL 0x00ad2c19
00ad2bcd	3b8f78010000	CMP ECX, dword ptr [EDI + 0x178]
00ad2bd3	7d44	JGE 0x00ad2c19
00ad2bd5	0fbec2	MOVSX EAX, DL
00ad2bd8	3b877c010000	CMP EAX, dword ptr [EDI + 0x17c]
00ad2bde	7c39	JL 0x00ad2c19
00ad2be0	3b8780010000	CMP EAX, dword ptr [EDI + 0x180]
00ad2be6	7f31	JG 0x00ad2c19
00ad2be8	84d2	TEST DL, DL
00ad2bea	668b442444	MOV AX, word ptr [ESP + 0x44]
00ad2bef	6689442424	MOV word ptr [ESP + 0x24], AX
00ad2bf4	88542426	MOV byte ptr [ESP + 0x26], DL
00ad2bf8	c64424270f	MOV byte ptr [ESP + 0x27], 0xf
00ad2bfd	0f8e0f010000	JLE 0x00ad2d12
00ad2c03	8d4c2424	LEA ECX, [ESP + 0x24]
00ad2c07	51	PUSH ECX
00ad2c08	57	PUSH EDI
00ad2c09	e832d4ffff	CALL 0x00ad0040
00ad2c0e	83c408	ADD ESP, 0x8
00ad2c11	84c0	TEST AL, AL
00ad2c13	0f85f9000000	JNZ 0x00ad2d12
00ad2c19	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
00ad2c1d	83c301	ADD EBX, 0x1
00ad2c20	83fb02	CMP EBX, 0x2
00ad2c23	0f8e67ffffff	JLE 0x00ad2b90
00ad2c29	83c101	ADD ECX, 0x1
00ad2c2c	83f902	CMP ECX, 0x2
00ad2c2f	894c2410	MOV dword ptr [ESP + 0x10], ECX
00ad2c33	0f8e47ffffff	JLE 0x00ad2b80
00ad2c39	8a06	MOV AL, byte ptr [ESI]
00ad2c3b	8a4e01	MOV CL, byte ptr [ESI + 0x1]
00ad2c3e	8ad0	MOV DL, AL
00ad2c40	80ea01	SUB DL, 0x1
00ad2c43	88542418	MOV byte ptr [ESP + 0x18], DL
00ad2c47	8ad1	MOV DL, CL
00ad2c49	0401	ADD AL, 0x1
00ad2c4b	80c101	ADD CL, 0x1
00ad2c4e	88442414	MOV byte ptr [ESP + 0x14], AL
00ad2c52	80ea01	SUB DL, 0x1
00ad2c55	884c2415	MOV byte ptr [ESP + 0x15], CL
00ad2c59	8d442414	LEA EAX, [ESP + 0x14]
00ad2c5d	50	PUSH EAX
00ad2c5e	8d4c241c	LEA ECX, [ESP + 0x1c]
00ad2c62	8854241d	MOV byte ptr [ESP + 0x1d], DL
00ad2c66	8a5602	MOV DL, byte ptr [ESI + 0x2]
00ad2c69	51	PUSH ECX
00ad2c6a	8d4c2438	LEA ECX, [ESP + 0x38]
00ad2c6e	88542422	MOV byte ptr [ESP + 0x22], DL
00ad2c72	8854241e	MOV byte ptr [ESP + 0x1e], DL
00ad2c76	e8d5370200	CALL 0x00af6450
00ad2c7b	8d4c2430	LEA ECX, [ESP + 0x30]
00ad2c7f	e80c380200	CALL 0x00af6490
00ad2c84	84c0	TEST AL, AL
00ad2c86	0f857c000000	JNZ 0x00ad2d08
00ad2c8c	8d642400	LEA ESP, [ESP]
00ad2c90	8d4c2430	LEA ECX, [ESP + 0x30]
00ad2c94	e847380200	CALL 0x00af64e0
00ad2c99	0fbe08	MOVSX ECX, byte ptr [EAX]
00ad2c9c	85c9	TEST ECX, ECX
00ad2c9e	0fbe5001	MOVSX EDX, byte ptr [EAX + 0x1]
00ad2ca2	7c4e	JL 0x00ad2cf2
00ad2ca4	3b8f74010000	CMP ECX, dword ptr [EDI + 0x174]
00ad2caa	7d46	JGE 0x00ad2cf2
00ad2cac	85d2	TEST EDX, EDX
00ad2cae	7c42	JL 0x00ad2cf2
00ad2cb0	3b9778010000	CMP EDX, dword ptr [EDI + 0x178]
00ad2cb6	7d3a	JGE 0x00ad2cf2
00ad2cb8	0fbe4802	MOVSX ECX, byte ptr [EAX + 0x2]
00ad2cbc	3b8f7c010000	CMP ECX, dword ptr [EDI + 0x17c]
00ad2cc2	7c2e	JL 0x00ad2cf2
00ad2cc4	3b8f80010000	CMP ECX, dword ptr [EDI + 0x180]
00ad2cca	7f26	JG 0x00ad2cf2
00ad2ccc	668b10	MOV DX, word ptr [EAX]
00ad2ccf	8a4002	MOV AL, byte ptr [EAX + 0x2]
00ad2cd2	8d4c2444	LEA ECX, [ESP + 0x44]
00ad2cd6	51	PUSH ECX
00ad2cd7	57	PUSH EDI
00ad2cd8	668954244c	MOV word ptr [ESP + 0x4c], DX
00ad2cdd	8844244e	MOV byte ptr [ESP + 0x4e], AL
00ad2ce1	c644244f0f	MOV byte ptr [ESP + 0x4f], 0xf
00ad2ce6	e865bfffff	CALL 0x00acec50
00ad2ceb	83c408	ADD ESP, 0x8
00ad2cee	84c0	TEST AL, AL
00ad2cf0	7520	JNZ 0x00ad2d12
00ad2cf2	8d4c2430	LEA ECX, [ESP + 0x30]
00ad2cf6	e815390200	CALL 0x00af6610
00ad2cfb	8d4c2430	LEA ECX, [ESP + 0x30]
00ad2cff	e88c370200	CALL 0x00af6490
00ad2d04	84c0	TEST AL, AL
00ad2d06	7488	JZ 0x00ad2c90
00ad2d08	5d	POP EBP
00ad2d09	5b	POP EBX
00ad2d0a	5f	POP EDI
00ad2d0b	32c0	XOR AL, AL
00ad2d0d	5e	POP ESI
00ad2d0e	83c42c	ADD ESP, 0x2c
00ad2d11	c3	RET
00ad2d12	5d	POP EBP ; Successful support returns AL=1; several other returns preserve upper EAX. Compare only AL. No runtime support or geometry execution is claimed by this static predicate.
00ad2d13	5b	POP EBX
00ad2d14	5f	POP EDI
00ad2d15	b001	MOV AL, 0x1
00ad2d17	5e	POP ESI
00ad2d18	83c42c	ADD ESP, 0x2c
00ad2d1b	c3	RET

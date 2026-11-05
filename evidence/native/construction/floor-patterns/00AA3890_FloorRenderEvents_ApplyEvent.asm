PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: FloorRenderEvents_ApplyEvent.
Complete existing Ghidra stored body union: [00AA3890,00AA3A26] inclusive, [00AA3A30,00AA3E52] inclusive; 1466 owned bytes / 501 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Analyst note (PC1.67 construction topology/projection counterpart): ECX receiver plus UInt32
   event ID and payload pointer, RET8; void. Existing special event or attached-lot state admission
   precedes dispatch. Route per-level floor add/remove/update and style/visibility events to
   existing children. Height event114765F7 reads signed-byte X/Z/level (MOVSX), updates retained
   per-level structures and levels, including special -1/0 paths, then calls optional dependent lot
   services +234,+248,+238,+258. C55EA0 receives location while A6C2B0/A812C0 also receive scalar
   height as actual arguments. Preserve conditional order and null guards. Full
   arithmetic/format/lifetime of child geometry services and scalar constants remain with their own
   original bodies; this selected consumer does not implement current Gather/Slice channel arrays or
   demonstrate their native equivalence.

Excluded envelope gap [00AA3A27,00AA3A2F]: 8da424000000008bff (9 alignment bytes, not owned).

00aa3890	56	PUSH ESI
00aa3891	8b742408	MOV ESI, dword ptr [ESP + 0x8]
00aa3895	81fea98bfe03	CMP ESI, 0x3fe8ba9
00aa389b	57	PUSH EDI
00aa389c	8bf9	MOV EDI, ECX
00aa389e	7416	JZ 0x00aa38b6
00aa38a0	8b4f08	MOV ECX, dword ptr [EDI + 0x8]
00aa38a3	80791e00	CMP byte ptr [ECX + 0x1e], 0x0 ; Event0431BFC9 still needs attached byte+1E or ADF640 admission here, after AA4350 already matched its owner pair. Receiver acceptance is not proof this downstream apply occurs.
00aa38a7	750d	JNZ 0x00aa38b6
00aa38a9	e892bd0300	CALL 0x00adf640
00aa38ae	84c0	TEST AL, AL
00aa38b0	0f8498050000	JZ 0x00aa3e4e
00aa38b6	81fe969a2c09	CMP ESI, 0x92c9a96
00aa38bc	53	PUSH EBX
00aa38bd	55	PUSH EBP
00aa38be	0f877a020000	JA 0x00aa3b3e
00aa38c4	0f842b020000	JZ 0x00aa3af5
00aa38ca	81fe4980c205	CMP ESI, 0x5c28049
00aa38d0	0f87a5010000	JA 0x00aa3a7b
00aa38d6	0f842d010000	JZ 0x00aa3a09
00aa38dc	81fea98bfe03	CMP ESI, 0x3fe8ba9
00aa38e2	0f84f1000000	JZ 0x00aa39d9
00aa38e8	81feac881f04	CMP ESI, 0x41f88ac
00aa38ee	0f8488000000	JZ 0x00aa397c
00aa38f4	81fec9bf3104	CMP ESI, 0x431bfc9
00aa38fa	0f854c050000	JNZ 0x00aa3e4c
00aa3900	8b742418	MOV ESI, dword ptr [ESP + 0x18]
00aa3904	0fb7465e	MOVZX EAX, word ptr [ESI + 0x5e]
00aa3908	50	PUSH EAX
00aa3909	8d5e10	LEA EBX, [ESI + 0x10]
00aa390c	53	PUSH EBX
00aa390d	8bcf	MOV ECX, EDI
00aa390f	e88cfdffff	CALL 0x00aa36a0 ; For event0431BFC9 first invoke AA36A0(cell,payload+5E) for conditional room-ID update, then forward the same cell and input fields to AA1F70. A913D0 supplies a single-quarter mask; this consumer does not enforce one.
00aa3914	0fb68e88000000	MOVZX ECX, byte ptr [ESI + 0x88]
00aa391b	d94678	FLD float ptr [ESI + 0x78] ; Load optional message+78 through x87 before callingAA1F70. A8B070/A913D0 do not establish initialization of+70..83 when the optional source is absent; no zero-default or harmless-read claim follows.
00aa391e	0fb69687000000	MOVZX EDX, byte ptr [ESI + 0x87]
00aa3925	0fb68685000000	MOVZX EAX, byte ptr [ESI + 0x85]
00aa392c	6a00	PUSH 0x0
00aa392e	51	PUSH ECX
00aa392f	0fb68e84000000	MOVZX ECX, byte ptr [ESI + 0x84]
00aa3936	52	PUSH EDX
00aa3937	0fb6565c	MOVZX EDX, byte ptr [ESI + 0x5c]
00aa393b	50	PUSH EAX
00aa393c	51	PUSH ECX
00aa393d	52	PUSH EDX
00aa393e	8d467c	LEA EAX, [ESI + 0x7c]
00aa3941	50	PUSH EAX
00aa3942	0fb6465b	MOVZX EAX, byte ptr [ESI + 0x5b]
00aa3946	51	PUSH ECX
00aa3947	8d4e70	LEA ECX, [ESI + 0x70]
00aa394a	8d5660	LEA EDX, [ESI + 0x60]
00aa394d	d91c24	FSTP float ptr [ESP]
00aa3950	51	PUSH ECX
00aa3951	52	PUSH EDX
00aa3952	0fb69686000000	MOVZX EDX, byte ptr [ESI + 0x86]
00aa3959	50	PUSH EAX
00aa395a	0fb7465e	MOVZX EAX, word ptr [ESI + 0x5e]
00aa395e	8d4e5a	LEA ECX, [ESI + 0x5a]
00aa3961	51	PUSH ECX
00aa3962	0fb74e58	MOVZX ECX, word ptr [ESI + 0x58]
00aa3966	52	PUSH EDX
00aa3967	50	PUSH EAX
00aa3968	51	PUSH ECX
00aa3969	83c618	ADD ESI, 0x18
00aa396c	56	PUSH ESI
00aa396d	53	PUSH EBX
00aa396e	8bcf	MOV ECX, EDI
00aa3970	e8fbe5ffff	CALL 0x00aa1f70 ; AA1F70 receives17 physical stack words (RET44h), including support byte+5B. Existing complete child routing separates nonnull pattern inputs from support-dependent null-quad behavior.
00aa3975	5d	POP EBP
00aa3976	5b	POP EBX
00aa3977	5f	POP EDI
00aa3978	5e	POP ESI
00aa3979	c20800	RET 0x8
00aa397c	8b5708	MOV EDX, dword ptr [EDI + 0x8]
00aa397f	8b6a70	MOV EBP, dword ptr [EDX + 0x70]
00aa3982	33f6	XOR ESI, ESI
00aa3984	85ed	TEST EBP, EBP
00aa3986	0f8ec0040000	JLE 0x00aa3e4c
00aa398c	8b5c2418	MOV EBX, dword ptr [ESP + 0x18]
00aa3990	83c310	ADD EBX, 0x10
00aa3993	8b4708	MOV EAX, dword ptr [EDI + 0x8]
00aa3996	8b4868	MOV ECX, dword ptr [EAX + 0x68]
00aa3999	53	PUSH EBX
00aa399a	03ce	ADD ECX, ESI
00aa399c	6a01	PUSH 0x1
00aa399e	51	PUSH ECX
00aa399f	8bcf	MOV ECX, EDI
00aa39a1	e8fad0ffff	CALL 0x00aa0aa0
00aa39a6	8bc8	MOV ECX, EAX
00aa39a8	e8437cffff	CALL 0x00a9b5f0
00aa39ad	8b5708	MOV EDX, dword ptr [EDI + 0x8]
00aa39b0	8b4268	MOV EAX, dword ptr [EDX + 0x68]
00aa39b3	6a00	PUSH 0x0
00aa39b5	03c6	ADD EAX, ESI
00aa39b7	50	PUSH EAX
00aa39b8	8bcf	MOV ECX, EDI
00aa39ba	e8e1d0ffff	CALL 0x00aa0aa0
00aa39bf	85c0	TEST EAX, EAX
00aa39c1	7408	JZ 0x00aa39cb
00aa39c3	53	PUSH EBX
00aa39c4	8bc8	MOV ECX, EAX
00aa39c6	e8257cffff	CALL 0x00a9b5f0
00aa39cb	83c601	ADD ESI, 0x1
00aa39ce	3bf5	CMP ESI, EBP
00aa39d0	7cc1	JL 0x00aa3993
00aa39d2	5d	POP EBP
00aa39d3	5b	POP EBX
00aa39d4	5f	POP EDI
00aa39d5	5e	POP ESI
00aa39d6	c20800	RET 0x8
00aa39d9	8b742418	MOV ESI, dword ptr [ESP + 0x18]
00aa39dd	8b4e10	MOV ECX, dword ptr [ESI + 0x10]
00aa39e0	6a01	PUSH 0x1
00aa39e2	51	PUSH ECX
00aa39e3	8bcf	MOV ECX, EDI
00aa39e5	e8b6d0ffff	CALL 0x00aa0aa0
00aa39ea	85c0	TEST EAX, EAX
00aa39ec	0f845a040000	JZ 0x00aa3e4c
00aa39f2	0fb75614	MOVZX EDX, word ptr [ESI + 0x14]
00aa39f6	52	PUSH EDX
00aa39f7	83c61c	ADD ESI, 0x1c
00aa39fa	56	PUSH ESI
00aa39fb	8bc8	MOV ECX, EAX
00aa39fd	e8ae89ffff	CALL 0x00a9c3b0
00aa3a02	5d	POP EBP
00aa3a03	5b	POP EBX
00aa3a04	5f	POP EDI
00aa3a05	5e	POP ESI
00aa3a06	c20800	RET 0x8
00aa3a09	8b6c2418	MOV EBP, dword ptr [ESP + 0x18]
00aa3a0d	8b4518	MOV EAX, dword ptr [EBP + 0x18]
00aa3a10	2b4514	SUB EAX, dword ptr [EBP + 0x14]
00aa3a13	bb00000000	MOV EBX, 0x0
00aa3a18	c1f802	SAR EAX, 0x2
00aa3a1b	89442418	MOV dword ptr [ESP + 0x18], EAX
00aa3a1f	0f8427040000	JZ 0x00aa3e4c
00aa3a25	eb09	JMP 0x00aa3a30
00aa3a30	8b4514	MOV EAX, dword ptr [EBP + 0x14]
00aa3a33	0fb64c9803	MOVZX ECX, byte ptr [EAX + EBX*0x4 + 0x3]
00aa3a38	0fbe549802	MOVSX EDX, byte ptr [EAX + EBX*0x4 + 0x2]
00aa3a3d	8d3498	LEA ESI, [EAX + EBX*0x4]
00aa3a40	f6d1	NOT CL
00aa3a42	c0e904	SHR CL, 0x4
00aa3a45	81e101ffffff	AND ECX, 0xffffff01
00aa3a4b	51	PUSH ECX
00aa3a4c	52	PUSH EDX
00aa3a4d	8bcf	MOV ECX, EDI
00aa3a4f	e84cd0ffff	CALL 0x00aa0aa0
00aa3a54	85c0	TEST EAX, EAX
00aa3a56	7413	JZ 0x00aa3a6b
00aa3a58	0fb64d10	MOVZX ECX, byte ptr [EBP + 0x10]
00aa3a5c	8b5524	MOV EDX, dword ptr [EBP + 0x24]
00aa3a5f	51	PUSH ECX
00aa3a60	03d3	ADD EDX, EBX
00aa3a62	52	PUSH EDX
00aa3a63	56	PUSH ESI
00aa3a64	8bc8	MOV ECX, EAX
00aa3a66	e8e5b6ffff	CALL 0x00a9f150
00aa3a6b	83c301	ADD EBX, 0x1
00aa3a6e	3b5c2418	CMP EBX, dword ptr [ESP + 0x18]
00aa3a72	72bc	JC 0x00aa3a30
00aa3a74	5d	POP EBP
00aa3a75	5b	POP EBX
00aa3a76	5f	POP EDI
00aa3a77	5e	POP ESI
00aa3a78	c20800	RET 0x8
00aa3a7b	81fe3b54ff05	CMP ESI, 0x5ff543b
00aa3a81	7450	JZ 0x00aa3ad3
00aa3a83	81fef9651a09	CMP ESI, 0x91a65f9
00aa3a89	0f85bd030000	JNZ 0x00aa3e4c
00aa3a8f	8b5c2418	MOV EBX, dword ptr [ESP + 0x18]
00aa3a93	8b6b18	MOV EBP, dword ptr [EBX + 0x18]
00aa3a96	2b6b14	SUB EBP, dword ptr [EBX + 0x14]
00aa3a99	be00000000	MOV ESI, 0x0
00aa3a9e	0f84a8030000	JZ 0x00aa3e4c
00aa3aa4	8b4314	MOV EAX, dword ptr [EBX + 0x14]
00aa3aa7	0fbe0c30	MOVSX ECX, byte ptr [EAX + ESI*0x1]
00aa3aab	6a01	PUSH 0x1
00aa3aad	51	PUSH ECX
00aa3aae	8bcf	MOV ECX, EDI
00aa3ab0	e8ebcfffff	CALL 0x00aa0aa0
00aa3ab5	85c0	TEST EAX, EAX
00aa3ab7	740c	JZ 0x00aa3ac5
00aa3ab9	0fb65310	MOVZX EDX, byte ptr [EBX + 0x10]
00aa3abd	52	PUSH EDX
00aa3abe	8bc8	MOV ECX, EAX
00aa3ac0	e8eb87ffff	CALL 0x00a9c2b0
00aa3ac5	83c601	ADD ESI, 0x1
00aa3ac8	3bf5	CMP ESI, EBP
00aa3aca	72d8	JC 0x00aa3aa4
00aa3acc	5d	POP EBP
00aa3acd	5b	POP EBX
00aa3ace	5f	POP EDI
00aa3acf	5e	POP ESI
00aa3ad0	c20800	RET 0x8
00aa3ad3	8b4708	MOV EAX, dword ptr [EDI + 0x8]
00aa3ad6	8b8834020000	MOV ECX, dword ptr [EAX + 0x234]
00aa3adc	85c9	TEST ECX, ECX
00aa3ade	0f8468030000	JZ 0x00aa3e4c
00aa3ae4	8b542418	MOV EDX, dword ptr [ESP + 0x18]
00aa3ae8	52	PUSH EDX
00aa3ae9	e892660500	CALL 0x00afa180
00aa3aee	5d	POP EBP
00aa3aef	5b	POP EBX
00aa3af0	5f	POP EDI
00aa3af1	5e	POP ESI
00aa3af2	c20800	RET 0x8
00aa3af5	8b5c2418	MOV EBX, dword ptr [ESP + 0x18]
00aa3af9	8b6b44	MOV EBP, dword ptr [EBX + 0x44]
00aa3afc	2b6b40	SUB EBP, dword ptr [EBX + 0x40]
00aa3aff	be00000000	MOV ESI, 0x0
00aa3b04	0f8442030000	JZ 0x00aa3e4c
00aa3b0a	8d9b00000000	LEA EBX, [EBX]
00aa3b10	8b4340	MOV EAX, dword ptr [EBX + 0x40]
00aa3b13	0fbe0c30	MOVSX ECX, byte ptr [EAX + ESI*0x1]
00aa3b17	6a01	PUSH 0x1
00aa3b19	51	PUSH ECX
00aa3b1a	8bcf	MOV ECX, EDI
00aa3b1c	e87fcfffff	CALL 0x00aa0aa0
00aa3b21	85c0	TEST EAX, EAX
00aa3b23	740b	JZ 0x00aa3b30
00aa3b25	8d5310	LEA EDX, [EBX + 0x10]
00aa3b28	52	PUSH EDX
00aa3b29	8bc8	MOV ECX, EAX
00aa3b2b	e8b092ffff	CALL 0x00a9cde0
00aa3b30	83c601	ADD ESI, 0x1
00aa3b33	3bf5	CMP ESI, EBP
00aa3b35	72d9	JC 0x00aa3b10
00aa3b37	5d	POP EBP
00aa3b38	5b	POP EBX
00aa3b39	5f	POP EDI
00aa3b3a	5e	POP ESI
00aa3b3b	c20800	RET 0x8
00aa3b3e	81fe8c55690a	CMP ESI, 0xa69558c
00aa3b44	0f8739010000	JA 0x00aa3c83
00aa3b4a	0f84df000000	JZ 0x00aa3c2f
00aa3b50	81fe9ea13409	CMP ESI, 0x934a19e
00aa3b56	0f843b010000	JZ 0x00aa3c97
00aa3b5c	81fe2ec17a09	CMP ESI, 0x97ac12e
00aa3b62	0f85e4020000	JNZ 0x00aa3e4c
00aa3b68	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa3b6c	50	PUSH EAX
00aa3b6d	8d4c241c	LEA ECX, [ESP + 0x1c]
00aa3b71	e88addadff	CALL 0x00581900
00aa3b76	8b5c2418	MOV EBX, dword ptr [ESP + 0x18]
00aa3b7a	8d4b10	LEA ECX, [EBX + 0x10]
00aa3b7d	51	PUSH ECX
00aa3b7e	8bcf	MOV ECX, EDI
00aa3b80	e84bedffff	CALL 0x00aa28d0
00aa3b85	8b4328	MOV EAX, dword ptr [EBX + 0x28]
00aa3b88	8b6b24	MOV EBP, dword ptr [EBX + 0x24]
00aa3b8b	3be8	CMP EBP, EAX
00aa3b8d	89442414	MOV dword ptr [ESP + 0x14], EAX
00aa3b91	0f8488000000	JZ 0x00aa3c1f
00aa3b97	8b7500	MOV ESI, dword ptr [EBP]
00aa3b9a	85f6	TEST ESI, ESI
00aa3b9c	7476	JZ 0x00aa3c14
00aa3b9e	0fb7565e	MOVZX EDX, word ptr [ESI + 0x5e]
00aa3ba2	52	PUSH EDX
00aa3ba3	8d5e10	LEA EBX, [ESI + 0x10]
00aa3ba6	53	PUSH EBX
00aa3ba7	8bcf	MOV ECX, EDI
00aa3ba9	e8f2faffff	CALL 0x00aa36a0
00aa3bae	0fb68688000000	MOVZX EAX, byte ptr [ESI + 0x88]
00aa3bb5	d94678	FLD float ptr [ESI + 0x78]
00aa3bb8	0fb68e87000000	MOVZX ECX, byte ptr [ESI + 0x87]
00aa3bbf	0fb69685000000	MOVZX EDX, byte ptr [ESI + 0x85]
00aa3bc6	6a00	PUSH 0x0
00aa3bc8	50	PUSH EAX
00aa3bc9	0fb68684000000	MOVZX EAX, byte ptr [ESI + 0x84]
00aa3bd0	51	PUSH ECX
00aa3bd1	52	PUSH EDX
00aa3bd2	50	PUSH EAX
00aa3bd3	6a00	PUSH 0x0
00aa3bd5	8d4e7c	LEA ECX, [ESI + 0x7c]
00aa3bd8	51	PUSH ECX
00aa3bd9	51	PUSH ECX
00aa3bda	0fb64e5b	MOVZX ECX, byte ptr [ESI + 0x5b]
00aa3bde	d91c24	FSTP float ptr [ESP]
00aa3be1	8d5670	LEA EDX, [ESI + 0x70]
00aa3be4	52	PUSH EDX
00aa3be5	8d4660	LEA EAX, [ESI + 0x60]
00aa3be8	50	PUSH EAX
00aa3be9	0fb68686000000	MOVZX EAX, byte ptr [ESI + 0x86]
00aa3bf0	51	PUSH ECX
00aa3bf1	0fb74e5e	MOVZX ECX, word ptr [ESI + 0x5e]
00aa3bf5	8d565a	LEA EDX, [ESI + 0x5a]
00aa3bf8	52	PUSH EDX
00aa3bf9	0fb75658	MOVZX EDX, word ptr [ESI + 0x58]
00aa3bfd	50	PUSH EAX
00aa3bfe	51	PUSH ECX
00aa3bff	52	PUSH EDX
00aa3c00	83c618	ADD ESI, 0x18
00aa3c03	56	PUSH ESI
00aa3c04	53	PUSH EBX
00aa3c05	8bcf	MOV ECX, EDI
00aa3c07	e864e3ffff	CALL 0x00aa1f70
00aa3c0c	8b442414	MOV EAX, dword ptr [ESP + 0x14]
00aa3c10	8b5c2418	MOV EBX, dword ptr [ESP + 0x18]
00aa3c14	83c504	ADD EBP, 0x4
00aa3c17	3be8	CMP EBP, EAX
00aa3c19	0f8578ffffff	JNZ 0x00aa3b97
00aa3c1f	8b03	MOV EAX, dword ptr [EBX]
00aa3c21	8b5008	MOV EDX, dword ptr [EAX + 0x8]
00aa3c24	8bcb	MOV ECX, EBX
00aa3c26	ffd2	CALL EDX
00aa3c28	5d	POP EBP
00aa3c29	5b	POP EBX
00aa3c2a	5f	POP EDI
00aa3c2b	5e	POP ESI
00aa3c2c	c20800	RET 0x8
00aa3c2f	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa3c33	8a4010	MOV AL, byte ptr [EAX + 0x10]
00aa3c36	384774	CMP byte ptr [EDI + 0x74], AL
00aa3c39	0f840d020000	JZ 0x00aa3e4c
00aa3c3f	8b0d58de1e01	MOV ECX, dword ptr [0x011ede58]
00aa3c45	85c9	TEST ECX, ECX
00aa3c47	884774	MOV byte ptr [EDI + 0x74], AL
00aa3c4a	0f84fc010000	JZ 0x00aa3e4c
00aa3c50	8b4708	MOV EAX, dword ptr [EDI + 0x8]
00aa3c53	8b5010	MOV EDX, dword ptr [EAX + 0x10]
00aa3c56	8b4014	MOV EAX, dword ptr [EAX + 0x14]
00aa3c59	50	PUSH EAX
00aa3c5a	52	PUSH EDX
00aa3c5b	e8308f1d00	CALL 0x00c7cb90
00aa3c60	84c0	TEST AL, AL
00aa3c62	0f84e4010000	JZ 0x00aa3e4c
00aa3c68	8b4f08	MOV ECX, dword ptr [EDI + 0x8]
00aa3c6b	80791e00	CMP byte ptr [ECX + 0x1e], 0x0
00aa3c6f	0f84d7010000	JZ 0x00aa3e4c
00aa3c75	8bcf	MOV ECX, EDI
00aa3c77	e824d5ffff	CALL 0x00aa11a0
00aa3c7c	5d	POP EBP
00aa3c7d	5b	POP EBX
00aa3c7e	5f	POP EDI
00aa3c7f	5e	POP ESI
00aa3c80	c20800	RET 0x8
00aa3c83	81fef7654711	CMP ESI, 0x114765f7
00aa3c89	747b	JZ 0x00aa3d06
00aa3c8b	81fe42ae7531	CMP ESI, 0x3175ae42
00aa3c91	0f85b5010000	JNZ 0x00aa3e4c
00aa3c97	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00aa3c9b	0fb69088000000	MOVZX EDX, byte ptr [EAX + 0x88]
00aa3ca2	d94078	FLD float ptr [EAX + 0x78]
00aa3ca5	0fb68887000000	MOVZX ECX, byte ptr [EAX + 0x87]
00aa3cac	6a00	PUSH 0x0
00aa3cae	52	PUSH EDX
00aa3caf	0fb69085000000	MOVZX EDX, byte ptr [EAX + 0x85]
00aa3cb6	51	PUSH ECX
00aa3cb7	0fb68884000000	MOVZX ECX, byte ptr [EAX + 0x84]
00aa3cbe	52	PUSH EDX
00aa3cbf	0fb6505c	MOVZX EDX, byte ptr [EAX + 0x5c]
00aa3cc3	51	PUSH ECX
00aa3cc4	52	PUSH EDX
00aa3cc5	8d487c	LEA ECX, [EAX + 0x7c]
00aa3cc8	51	PUSH ECX
00aa3cc9	51	PUSH ECX
00aa3cca	8d5070	LEA EDX, [EAX + 0x70]
00aa3ccd	8d4860	LEA ECX, [EAX + 0x60]
00aa3cd0	d91c24	FSTP float ptr [ESP]
00aa3cd3	52	PUSH EDX
00aa3cd4	0fb6505b	MOVZX EDX, byte ptr [EAX + 0x5b]
00aa3cd8	51	PUSH ECX
00aa3cd9	52	PUSH EDX
00aa3cda	0fb69086000000	MOVZX EDX, byte ptr [EAX + 0x86]
00aa3ce1	8d485a	LEA ECX, [EAX + 0x5a]
00aa3ce4	51	PUSH ECX
00aa3ce5	0fb7485e	MOVZX ECX, word ptr [EAX + 0x5e]
00aa3ce9	52	PUSH EDX
00aa3cea	0fb75058	MOVZX EDX, word ptr [EAX + 0x58]
00aa3cee	51	PUSH ECX
00aa3cef	8d4818	LEA ECX, [EAX + 0x18]
00aa3cf2	52	PUSH EDX
00aa3cf3	51	PUSH ECX
00aa3cf4	83c010	ADD EAX, 0x10
00aa3cf7	50	PUSH EAX
00aa3cf8	8bcf	MOV ECX, EDI
00aa3cfa	e871e2ffff	CALL 0x00aa1f70
00aa3cff	5d	POP EBP
00aa3d00	5b	POP EBX
00aa3d01	5f	POP EDI
00aa3d02	5e	POP ESI
00aa3d03	c20800	RET 0x8
00aa3d06	8b6c2418	MOV EBP, dword ptr [ESP + 0x18]
00aa3d0a	8a4514	MOV AL, byte ptr [EBP + 0x14]
00aa3d0d	3a4714	CMP AL, byte ptr [EDI + 0x14]
00aa3d10	8d7514	LEA ESI, [EBP + 0x14]
00aa3d13	0f8f33010000	JG 0x00aa3e4c
00aa3d19	8a5601	MOV DL, byte ptr [ESI + 0x1]
00aa3d1c	3a5718	CMP DL, byte ptr [EDI + 0x18]
00aa3d1f	0f8f27010000	JG 0x00aa3e4c
00aa3d25	8b4f78	MOV ECX, dword ptr [EDI + 0x78]
00aa3d28	85c9	TEST ECX, ECX
00aa3d2a	7419	JZ 0x00aa3d45
00aa3d2c	0fbe5e02	MOVSX EBX, byte ptr [ESI + 0x2]
00aa3d30	2b5f0c	SUB EBX, dword ptr [EDI + 0xc]
00aa3d33	0fbed2	MOVSX EDX, DL
00aa3d36	53	PUSH EBX
00aa3d37	52	PUSH EDX
00aa3d38	0fbec0	MOVSX EAX, AL
00aa3d3b	50	PUSH EAX
00aa3d3c	8d5510	LEA EDX, [EBP + 0x10]
00aa3d3f	52	PUSH EDX
00aa3d40	e8eb75feff	CALL 0x00a8b330
00aa3d45	0fbe4602	MOVSX EAX, byte ptr [ESI + 0x2]
00aa3d49	6a01	PUSH 0x1
00aa3d4b	50	PUSH EAX
00aa3d4c	8bcf	MOV ECX, EDI
00aa3d4e	e84dcdffff	CALL 0x00aa0aa0
00aa3d53	85c0	TEST EAX, EAX
00aa3d55	7417	JZ 0x00aa3d6e
00aa3d57	d94510	FLD float ptr [EBP + 0x10]
00aa3d5a	0fbe16	MOVSX EDX, byte ptr [ESI]
00aa3d5d	51	PUSH ECX
00aa3d5e	0fbe4e01	MOVSX ECX, byte ptr [ESI + 0x1]
00aa3d62	d91c24	FSTP float ptr [ESP]
00aa3d65	51	PUSH ECX
00aa3d66	52	PUSH EDX
00aa3d67	8bc8	MOV ECX, EAX
00aa3d69	e84275ffff	CALL 0x00a9b2b0
00aa3d6e	8a5e02	MOV BL, byte ptr [ESI + 0x2]
00aa3d71	0fbec3	MOVSX EAX, BL
00aa3d74	6a00	PUSH 0x0
00aa3d76	50	PUSH EAX
00aa3d77	8bcf	MOV ECX, EDI
00aa3d79	e822cdffff	CALL 0x00aa0aa0
00aa3d7e	85c0	TEST EAX, EAX
00aa3d80	745b	JZ 0x00aa3ddd
00aa3d82	84db	TEST BL, BL
00aa3d84	7417	JZ 0x00aa3d9d
00aa3d86	d94510	FLD float ptr [EBP + 0x10]
00aa3d89	0fbe16	MOVSX EDX, byte ptr [ESI]
00aa3d8c	51	PUSH ECX
00aa3d8d	0fbe4e01	MOVSX ECX, byte ptr [ESI + 0x1]
00aa3d91	d91c24	FSTP float ptr [ESP]
00aa3d94	51	PUSH ECX
00aa3d95	52	PUSH EDX
00aa3d96	8bc8	MOV ECX, EAX
00aa3d98	e81375ffff	CALL 0x00a9b2b0
00aa3d9d	807e02ff	CMP byte ptr [ESI + 0x2], 0xff
00aa3da1	753a	JNZ 0x00aa3ddd
00aa3da3	6a00	PUSH 0x0
00aa3da5	6a00	PUSH 0x0
00aa3da7	8bcf	MOV ECX, EDI
00aa3da9	e8f2ccffff	CALL 0x00aa0aa0
00aa3dae	85c0	TEST EAX, EAX
00aa3db0	742b	JZ 0x00aa3ddd
00aa3db2	f30f104510	MOVSS XMM0, dword ptr [EBP + 0x10]
00aa3db7	f30f580520490601	ADDSS XMM0, dword ptr [0x01064920]
00aa3dbf	f30f5c0528490601	SUBSS XMM0, dword ptr [0x01064928]
00aa3dc7	0fbe16	MOVSX EDX, byte ptr [ESI]
00aa3dca	51	PUSH ECX
00aa3dcb	0fbe4e01	MOVSX ECX, byte ptr [ESI + 0x1]
00aa3dcf	f30f110424	MOVSS dword ptr [ESP], XMM0
00aa3dd4	51	PUSH ECX
00aa3dd5	52	PUSH EDX
00aa3dd6	8bc8	MOV ECX, EAX
00aa3dd8	e8d374ffff	CALL 0x00a9b2b0
00aa3ddd	807e0200	CMP byte ptr [ESI + 0x2], 0x0
00aa3de1	7522	JNZ 0x00aa3e05
00aa3de3	8b4708	MOV EAX, dword ptr [EDI + 0x8]
00aa3de6	8b8834020000	MOV ECX, dword ptr [EAX + 0x234]
00aa3dec	85c9	TEST ECX, ECX
00aa3dee	7415	JZ 0x00aa3e05
00aa3df0	0fbe5601	MOVSX EDX, byte ptr [ESI + 0x1]
00aa3df4	d94510	FLD float ptr [EBP + 0x10]
00aa3df7	0fbe06	MOVSX EAX, byte ptr [ESI]
00aa3dfa	51	PUSH ECX
00aa3dfb	d91c24	FSTP float ptr [ESP]
00aa3dfe	52	PUSH EDX
00aa3dff	50	PUSH EAX
00aa3e00	e8eb640500	CALL 0x00afa2f0
00aa3e05	8b4f08	MOV ECX, dword ptr [EDI + 0x8]
00aa3e08	8b8948020000	MOV ECX, dword ptr [ECX + 0x248]
00aa3e0e	85c9	TEST ECX, ECX
00aa3e10	740d	JZ 0x00aa3e1f
00aa3e12	d94510	FLD float ptr [EBP + 0x10]
00aa3e15	51	PUSH ECX
00aa3e16	d91c24	FSTP float ptr [ESP]
00aa3e19	56	PUSH ESI
00aa3e1a	e89184fcff	CALL 0x00a6c2b0
00aa3e1f	8b5708	MOV EDX, dword ptr [EDI + 0x8]
00aa3e22	8b8a38020000	MOV ECX, dword ptr [EDX + 0x238]
00aa3e28	85c9	TEST ECX, ECX
00aa3e2a	7406	JZ 0x00aa3e32
00aa3e2c	56	PUSH ESI
00aa3e2d	e86e201b00	CALL 0x00c55ea0
00aa3e32	8b4708	MOV EAX, dword ptr [EDI + 0x8]
00aa3e35	8b8858020000	MOV ECX, dword ptr [EAX + 0x258]
00aa3e3b	85c9	TEST ECX, ECX
00aa3e3d	740d	JZ 0x00aa3e4c
00aa3e3f	d94510	FLD float ptr [EBP + 0x10]
00aa3e42	51	PUSH ECX
00aa3e43	d91c24	FSTP float ptr [ESP]
00aa3e46	56	PUSH ESI
00aa3e47	e874d4fdff	CALL 0x00a812c0
00aa3e4c	5d	POP EBP
00aa3e4d	5b	POP EBX
00aa3e4e	5f	POP EDI
00aa3e4f	5e	POP ESI
00aa3e50	c20800	RET 0x8

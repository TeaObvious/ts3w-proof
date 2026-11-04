PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: RebuildFloorUpperQuarterFlagsForLevel.
Complete existing Ghidra owned body: [00A8D430,00A8D48C] inclusive, [00A8D490,00A8D4F0] inclusive; 190 owned bytes / 70 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Recomputes all four stored upper-quarter flags for every cell at one input level. ECX floor manager and Int32 level stack word, RET 4. X/Z traverse manager dimensions; each q calls the same floor-support predicate used by incremental refresh, with no excluded Object. Low flags are preserved. This body emits no change messages or pending-list operations. Analyst-assigned name.

00a8d430	83ec0c	SUB ESP, 0xc
00a8d433	8b542410	MOV EDX, dword ptr [ESP + 0x10]
00a8d437	55	PUSH EBP
00a8d438	8be9	MOV EBP, ECX
00a8d43a	2b5510	SUB EDX, dword ptr [EBP + 0x10] ; Relative level is the full Int32 input level minus manager min+10; no local level bounds check. The floor flag grid pointer is at manager+28.
00a8d43d	33c9	XOR ECX, ECX
00a8d43f	394d08	CMP dword ptr [EBP + 0x8], ECX
00a8d442	8954240c	MOV dword ptr [ESP + 0xc], EDX
00a8d446	894c2408	MOV dword ptr [ESP + 0x8], ECX
00a8d44a	0f8e9a000000	JLE 0x00a8d4ea
00a8d450	53	PUSH EBX
00a8d451	56	PUSH ESI
00a8d452	57	PUSH EDI
00a8d453	33db	XOR EBX, EBX
00a8d455	395d0c	CMP dword ptr [EBP + 0xc], EBX
00a8d458	895c2410	MOV dword ptr [ESP + 0x10], EBX
00a8d45c	7e79	JLE 0x00a8d4d7
00a8d45e	eb04	JMP 0x00a8d464
00a8d460	8b5c2410	MOV EBX, dword ptr [ESP + 0x10]
00a8d464	8b4528	MOV EAX, dword ptr [EBP + 0x28] ; Outer X and inner Z counters use manager dimensions +8/+C. Stored grid indexing uses full Int32 counters/relative level, while the query location narrows X/Z/level to bytes.
00a8d467	8b7004	MOV ESI, dword ptr [EAX + 0x4]
00a8d46a	0faff2	IMUL ESI, EDX
00a8d46d	03f1	ADD ESI, ECX
00a8d46f	0faf7008	IMUL ESI, dword ptr [EAX + 0x8]
00a8d473	037010	ADD ESI, dword ptr [EAX + 0x10]
00a8d476	8a4510	MOV AL, byte ptr [EBP + 0x10]
00a8d479	02c2	ADD AL, DL
00a8d47b	03f3	ADD ESI, EBX
00a8d47d	884c2420	MOV byte ptr [ESP + 0x20], CL
00a8d481	885c2421	MOV byte ptr [ESP + 0x21], BL
00a8d485	88442422	MOV byte ptr [ESP + 0x22], AL
00a8d489	33ff	XOR EDI, EDI
00a8d48b	eb03	JMP 0x00a8d490
00a8d490	8b5504	MOV EDX, dword ptr [EBP + 0x4]
00a8d493	8d4f04	LEA ECX, [EDI + 0x4]
00a8d496	6a00	PUSH 0x0 ; For every cell iterate q=0..3, calling AD2990 with excluded Object pointer zero. The fourth packed byte is not newly written here; AD2990 forces its own full-mask support query and constructs its own single-quarter basement mask.
00a8d498	b301	MOV BL, 0x1
00a8d49a	d2e3	SHL BL, CL
00a8d49c	57	PUSH EDI
00a8d49d	8d4c2428	LEA ECX, [ESP + 0x28]
00a8d4a1	51	PUSH ECX
00a8d4a2	52	PUSH EDX
00a8d4a3	e8e8540400	CALL 0x00ad2990
00a8d4a8	83c410	ADD ESP, 0x10
00a8d4ab	84c0	TEST AL, AL ; Consume support AL only; set stored bit q+4 on true, clear it on false. All low-quarter flags remain unchanged. Unlike A913D0, this body has no changed-value check, per-quarter message emission or pending-list removal.
00a8d4ad	7404	JZ 0x00a8d4b3
00a8d4af	081e	OR byte ptr [ESI], BL
00a8d4b1	eb04	JMP 0x00a8d4b7
00a8d4b3	f6d3	NOT BL
00a8d4b5	201e	AND byte ptr [ESI], BL
00a8d4b7	83c701	ADD EDI, 0x1
00a8d4ba	83ff04	CMP EDI, 0x4
00a8d4bd	7cd1	JL 0x00a8d490
00a8d4bf	8b442410	MOV EAX, dword ptr [ESP + 0x10]
00a8d4c3	8b542418	MOV EDX, dword ptr [ESP + 0x18]
00a8d4c7	8b4c2414	MOV ECX, dword ptr [ESP + 0x14]
00a8d4cb	83c001	ADD EAX, 0x1
00a8d4ce	3b450c	CMP EAX, dword ptr [EBP + 0xc]
00a8d4d1	89442410	MOV dword ptr [ESP + 0x10], EAX
00a8d4d5	7c89	JL 0x00a8d460
00a8d4d7	83c101	ADD ECX, 0x1
00a8d4da	3b4d08	CMP ECX, dword ptr [EBP + 0x8]
00a8d4dd	894c2414	MOV dword ptr [ESP + 0x14], ECX
00a8d4e1	0f8c6cffffff	JL 0x00a8d453
00a8d4e7	5f	POP EDI
00a8d4e8	5e	POP ESI
00a8d4e9	5b	POP EBX
00a8d4ea	5d	POP EBP
00a8d4eb	83c40c	ADD ESP, 0xc
00a8d4ee	c20400	RET 0x4

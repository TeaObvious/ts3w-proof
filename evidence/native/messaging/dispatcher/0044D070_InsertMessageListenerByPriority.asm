PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: InsertMessageListenerByPriority.
Complete existing Ghidra stored body union: [0044D070,0044D1B9] inclusive; 330 owned bytes / 119 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Resolves the UInt32 event-ID map at dispatcher+58 and inserts a 20-byte listener record in
   signed-priority order. Map/list allocation and generic helpers remain separate children; no
   rollback or duplicate suppression is established. Analyst-assigned name.

0044d070	83ec14	SUB ESP, 0x14
0044d073	53	PUSH EBX
0044d074	55	PUSH EBP
0044d075	8bd9	MOV EBX, ECX
0044d077	80bbb000000000	CMP byte ptr [EBX + 0xb0], 0x0
0044d07e	56	PUSH ESI
0044d07f	57	PUSH EDI
0044d080	7410	JZ 0x0044d092
0044d082	68c82afa00	PUSH 0xfa2ac8
0044d087	8d8b80000000	LEA ECX, [EBX + 0x80]
0044d08d	e86e4b0900	CALL 0x004e1c00
0044d092	8d44242c	LEA EAX, [ESP + 0x2c]
0044d096	50	PUSH EAX
0044d097	8d4c2414	LEA ECX, [ESP + 0x14]
0044d09b	8d7b58	LEA EDI, [EBX + 0x58]
0044d09e	51	PUSH ECX
0044d09f	8bcf	MOV ECX, EDI
0044d0a1	e80ae96000	CALL 0x00a5b9b0 ; Lookup the exact UInt32 event ID in map+58, comparing with its sentinel. Floor registration supplies ID0431BFC9 and the same receiver pointer whose vtable+4 is AA4350.
0044d0a6	8b5708	MOV EDX, dword ptr [EDI + 0x8]
0044d0a9	8b4704	MOV EAX, dword ptr [EDI + 0x4]
0044d0ac	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
0044d0b0	8d0490	LEA EAX, [EAX + EDX*0x4]
0044d0b3	8b00	MOV EAX, dword ptr [EAX]
0044d0b5	3bc8	CMP ECX, EAX
0044d0b7	7568	JNZ 0x0044d121
0044d0b9	8b4b08	MOV ECX, dword ptr [EBX + 0x8]
0044d0bc	8b11	MOV EDX, dword ptr [ECX]
0044d0be	8b4208	MOV EAX, dword ptr [EDX + 0x8]
0044d0c1	6a00	PUSH 0x0
0044d0c3	684c2bfa00	PUSH 0xfa2b4c
0044d0c8	6a14	PUSH 0x14
0044d0ca	ffd0	CALL EAX
0044d0cc	8bf0	MOV ESI, EAX
0044d0ce	85f6	TEST ESI, ESI
0044d0d0	7419	JZ 0x0044d0eb
0044d0d2	8b4b08	MOV ECX, dword ptr [EBX + 0x8]
0044d0d5	894e08	MOV dword ptr [ESI + 0x8], ECX
0044d0d8	c7460c00000000	MOV dword ptr [ESI + 0xc], 0x0
0044d0df	c746104c2bfa00	MOV dword ptr [ESI + 0x10], 0xfa2b4c
0044d0e6	8936	MOV dword ptr [ESI], ESI
0044d0e8	897604	MOV dword ptr [ESI + 0x4], ESI
0044d0eb	8b4c2428	MOV ECX, dword ptr [ESP + 0x28]
0044d0ef	51	PUSH ECX
0044d0f0	56	PUSH ESI
0044d0f1	8bce	MOV ECX, ESI
0044d0f3	e8d8f8ffff	CALL 0x0044c9d0
0044d0f8	8b54242c	MOV EDX, dword ptr [ESP + 0x2c]
0044d0fc	c644242c00	MOV byte ptr [ESP + 0x2c], 0x0
0044d101	8b44242c	MOV EAX, dword ptr [ESP + 0x2c]
0044d105	50	PUSH EAX
0044d106	8d4c2414	LEA ECX, [ESP + 0x14]
0044d10a	89542414	MOV dword ptr [ESP + 0x14], EDX
0044d10e	51	PUSH ECX
0044d10f	8d542420	LEA EDX, [ESP + 0x20]
0044d113	52	PUSH EDX
0044d114	8bcf	MOV ECX, EDI
0044d116	89742420	MOV dword ptr [ESP + 0x20], ESI
0044d11a	e811d01300	CALL 0x0058a130
0044d11f	eb7b	JMP 0x0044d19c
0044d121	8b7104	MOV ESI, dword ptr [ECX + 0x4]
0044d124	8b3e	MOV EDI, dword ptr [ESI]
0044d126	3bfe	CMP EDI, ESI
0044d128	8b6c2428	MOV EBP, dword ptr [ESP + 0x28]
0044d12c	7426	JZ 0x0044d154
0044d12e	8b4504	MOV EAX, dword ptr [EBP + 0x4] ; Existing-list insertion compares record priority as signed Int32. The listener payload is 20 bytes; node size is 1Ch including links. Allocator-null paths do not provide a safe failure return here.
0044d131	3b470c	CMP EAX, dword ptr [EDI + 0xc]
0044d134	7d08	JGE 0x0044d13e
0044d136	8b3f	MOV EDI, dword ptr [EDI]
0044d138	3bfe	CMP EDI, ESI
0044d13a	75f5	JNZ 0x0044d131
0044d13c	eb16	JMP 0x0044d154
0044d13e	55	PUSH EBP
0044d13f	51	PUSH ECX
0044d140	8bc4	MOV EAX, ESP
0044d142	8938	MOV dword ptr [EAX], EDI
0044d144	8d442434	LEA EAX, [ESP + 0x34]
0044d148	50	PUSH EAX
0044d149	8bce	MOV ECX, ESI
0044d14b	e870faffff	CALL 0x0044cbc0
0044d150	3bfe	CMP EDI, ESI
0044d152	7548	JNZ 0x0044d19c
0044d154	8b460c	MOV EAX, dword ptr [ESI + 0xc]
0044d157	8b4e08	MOV ECX, dword ptr [ESI + 0x8]
0044d15a	8b11	MOV EDX, dword ptr [ECX]
0044d15c	8b5208	MOV EDX, dword ptr [EDX + 0x8]
0044d15f	50	PUSH EAX
0044d160	8b4610	MOV EAX, dword ptr [ESI + 0x10]
0044d163	50	PUSH EAX
0044d164	6a1c	PUSH 0x1c
0044d166	ffd2	CALL EDX
0044d168	8d4808	LEA ECX, [EAX + 0x8]
0044d16b	85c9	TEST ECX, ECX
0044d16d	741d	JZ 0x0044d18c
0044d16f	8b5500	MOV EDX, dword ptr [EBP]
0044d172	8911	MOV dword ptr [ECX], EDX
0044d174	8b5504	MOV EDX, dword ptr [EBP + 0x4]
0044d177	895104	MOV dword ptr [ECX + 0x4], EDX
0044d17a	8b5508	MOV EDX, dword ptr [EBP + 0x8]
0044d17d	895108	MOV dword ptr [ECX + 0x8], EDX
0044d180	8b550c	MOV EDX, dword ptr [EBP + 0xc]
0044d183	89510c	MOV dword ptr [ECX + 0xc], EDX
0044d186	8b5510	MOV EDX, dword ptr [EBP + 0x10]
0044d189	895110	MOV dword ptr [ECX + 0x10], EDX
0044d18c	8938	MOV dword ptr [EAX], EDI
0044d18e	8b4f04	MOV ECX, dword ptr [EDI + 0x4]
0044d191	894804	MOV dword ptr [EAX + 0x4], ECX
0044d194	8b5704	MOV EDX, dword ptr [EDI + 0x4]
0044d197	8902	MOV dword ptr [EDX], EAX
0044d199	894704	MOV dword ptr [EDI + 0x4], EAX
0044d19c	80bbb000000000	CMP byte ptr [EBX + 0xb0], 0x0
0044d1a3	740b	JZ 0x0044d1b0
0044d1a5	8d8b80000000	LEA ECX, [EBX + 0x80]
0044d1ab	e8104b0900	CALL 0x004e1cc0
0044d1b0	5f	POP EDI
0044d1b1	5e	POP ESI
0044d1b2	5d	POP EBP
0044d1b3	5b	POP EBX
0044d1b4	83c414	ADD ESP, 0x14
0044d1b7	c20800	RET 0x8

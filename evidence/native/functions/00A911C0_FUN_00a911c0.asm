# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a911c0,00a91279]. 186 owned bytes/65 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Floor pattern key interning for change messages. ECX manager plus64byte key pointer/outputUInt16 pointer, RET8 void. Global-null quad011EC8E0 returns0. Existing forward-map row returns low16 of node+40. New key is appended to manager+118 vector BEFORE A90E70 AddReference, then A8FA00 ID narrows to outputAX. No rollback/failure atomicity, ID-range guard or synchronization is established.

00a911c0	83ec08	SUB ESP, 0x8
00a911c3	53	PUSH EBX
00a911c4	55	PUSH EBP
00a911c5	8b6c2414	MOV EBP, dword ptr [ESP + 0x14]
00a911c9	8bd9	MOV EBX, ECX
00a911cb	68e0c81e01	PUSH 0x11ec8e0
00a911d0	8bcd	MOV ECX, EBP
00a911d2	e8d980cfff	CALL 0x007892b0
00a911d7	84c0	TEST AL, AL
00a911d9	7411	JZ 0x00a911ec
00a911db	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00a911df	5d	POP EBP
00a911e0	66c7000000	MOV word ptr [EAX], 0x0
00a911e5	5b	POP EBX
00a911e6	83c408	ADD ESP, 0x8
00a911e9	c20800	RET 0x8
00a911ec	55	PUSH EBP
00a911ed	8d4c240c	LEA ECX, [ESP + 0xc]
00a911f1	51	PUSH ECX
00a911f2	8b8bd8000000	MOV ECX, dword ptr [EBX + 0xd8]
00a911f8	e823e1ffff	CALL 0x00a8f320
00a911fd	8b83d8000000	MOV EAX, dword ptr [EBX + 0xd8]
00a91203	8b5008	MOV EDX, dword ptr [EAX + 0x8]
00a91206	8b4804	MOV ECX, dword ptr [EAX + 0x4]
00a91209	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00a9120d	3b0491	CMP EAX, dword ptr [ECX + EDX*0x4]
00a91210	7413	JZ 0x00a91225
00a91212	668b5040	MOV DX, word ptr [EAX + 0x40]
00a91216	8b442418	MOV EAX, dword ptr [ESP + 0x18]
00a9121a	5d	POP EBP
00a9121b	668910	MOV word ptr [EAX], DX
00a9121e	5b	POP EBX
00a9121f	83c408	ADD ESP, 0x8
00a91222	c20800	RET 0x8
00a91225	8d8b18010000	LEA ECX, [EBX + 0x118]
00a9122b	57	PUSH EDI
00a9122c	8b7904	MOV EDI, dword ptr [ECX + 0x4]
00a9122f	3b7908	CMP EDI, dword ptr [ECX + 0x8]
00a91232	7317	JNC 0x00a9124b
00a91234	85ff	TEST EDI, EDI
00a91236	8d5740	LEA EDX, [EDI + 0x40]
00a91239	895104	MOV dword ptr [ECX + 0x4], EDX
00a9123c	7414	JZ 0x00a91252
00a9123e	56	PUSH ESI
00a9123f	b910000000	MOV ECX, 0x10
00a91244	8bf5	MOV ESI, EBP
00a91246	f3a5	MOVSD.REP ES:EDI, ESI
00a91248	5e	POP ESI
00a91249	eb07	JMP 0x00a91252
00a9124b	55	PUSH EBP
00a9124c	57	PUSH EDI
00a9124d	e87ee2ffff	CALL 0x00a8f4d0
00a91252	8b8bd8000000	MOV ECX, dword ptr [EBX + 0xd8]
00a91258	55	PUSH EBP
00a91259	e812fcffff	CALL 0x00a90e70
00a9125e	8b8bd8000000	MOV ECX, dword ptr [EBX + 0xd8]
00a91264	55	PUSH EBP
00a91265	e896e7ffff	CALL 0x00a8fa00
00a9126a	8b4c241c	MOV ECX, dword ptr [ESP + 0x1c]
00a9126e	5f	POP EDI
00a9126f	5d	POP EBP
00a91270	668901	MOV word ptr [ECX], AX
00a91273	5b	POP EBX
00a91274	83c408	ADD ESP, 0x8
00a91277	c20800	RET 0x8

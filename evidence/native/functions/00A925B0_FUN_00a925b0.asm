# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a925b0,00a92619]; [00a92620,00a92643]. 142 owned bytes/52 instructions; 6 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Pending floor cell refresh and removal. ECX manager plus packed three-byte cell, RET4 void. A8E850 selects equal pending location. If found, callsA913D0 with a copied fullmask0F and arguments0,0,1, THEN removes exactly that three-byte pending record by forward shift and end-=3. If callback fails, later erase is not reached; no rollback/lock guarantee.

00a925b0	83ec08	SUB ESP, 0x8
00a925b3	53	PUSH EBX
00a925b4	55	PUSH EBP
00a925b5	56	PUSH ESI
00a925b6	57	PUSH EDI
00a925b7	8b7c241c	MOV EDI, dword ptr [ESP + 0x1c]
00a925bb	8bf1	MOV ESI, ECX
00a925bd	57	PUSH EDI
00a925be	8d442414	LEA EAX, [ESP + 0x14]
00a925c2	8daef0000000	LEA EBP, [ESI + 0xf0]
00a925c8	50	PUSH EAX
00a925c9	8bcd	MOV ECX, EBP
00a925cb	e880c2ffff	CALL 0x00a8e850
00a925d0	8b5c2410	MOV EBX, dword ptr [ESP + 0x10]
00a925d4	3b5c2414	CMP EBX, dword ptr [ESP + 0x14]
00a925d8	7503	JNZ 0x00a925dd
00a925da	8b5d04	MOV EBX, dword ptr [EBP + 0x4]
00a925dd	3b9ef4000000	CMP EBX, dword ptr [ESI + 0xf4]
00a925e3	7455	JZ 0x00a9263a
00a925e5	668b0f	MOV CX, word ptr [EDI]
00a925e8	8a5702	MOV DL, byte ptr [EDI + 0x2]
00a925eb	6a01	PUSH 0x1
00a925ed	6a00	PUSH 0x0
00a925ef	6a00	PUSH 0x0
00a925f1	8d442428	LEA EAX, [ESP + 0x28]
00a925f5	66894c2428	MOV word ptr [ESP + 0x28], CX
00a925fa	50	PUSH EAX
00a925fb	8bce	MOV ECX, ESI
00a925fd	8854242e	MOV byte ptr [ESP + 0x2e], DL
00a92601	c644242f0f	MOV byte ptr [ESP + 0x2f], 0xf
00a92606	e8c5edffff	CALL 0x00a913d0
00a9260b	8b7504	MOV ESI, dword ptr [EBP + 0x4]
00a9260e	8d4303	LEA EAX, [EBX + 0x3]
00a92611	3bc6	CMP EAX, ESI
00a92613	7321	JNC 0x00a92636
00a92615	8d48fd	LEA ECX, [EAX + -0x3]
00a92618	eb06	JMP 0x00a92620
00a92620	668b10	MOV DX, word ptr [EAX]
00a92623	668911	MOV word ptr [ECX], DX
00a92626	8a5002	MOV DL, byte ptr [EAX + 0x2]
00a92629	885102	MOV byte ptr [ECX + 0x2], DL
00a9262c	83c003	ADD EAX, 0x3
00a9262f	83c103	ADD ECX, 0x3
00a92632	3bc6	CMP EAX, ESI
00a92634	75ea	JNZ 0x00a92620
00a92636	834504fd	ADD dword ptr [EBP + 0x4], -0x3
00a9263a	5f	POP EDI
00a9263b	5e	POP ESI
00a9263c	5d	POP EBP
00a9263d	5b	POP EBX
00a9263e	83c408	ADD ESP, 0x8
00a92641	c20400	RET 0x4

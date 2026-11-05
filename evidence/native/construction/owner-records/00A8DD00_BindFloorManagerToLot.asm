TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra Listing; current name: BindFloorManagerToLot.
Original instruction/byte block and addressed comments are unchanged.
Generated types and signatures remain projections; machine instructions are authoritative.
The scratch buffer is rendered as 64 bytes; original instructions copy 16 DWORDs into each destination block.

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: BindFloorManagerToLot.
Complete existing Ghidra stored body union: [00A8DD00,00A8DDB7] inclusive; 184 owned bytes / 54 instruction starts.
Original PE bytes and independent objdump starts match the Listing.

Binds the floor manager to the supplied core lot at +4, copies four dimension words, resets selected retained state and installs two 64-byte default key quads through existing key helpers. ECX manager and one stack word, RET4; physical result AL=1. Analyst-assigned name.

00a8dd00	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00a8dd04	83ec40	SUB ESP, 0x40
00a8dd07	53	PUSH EBX
00a8dd08	8bd9	MOV EBX, ECX
00a8dd0a	c60301	MOV byte ptr [EBX], 0x1
00a8dd0d	894304	MOV dword ptr [EBX + 0x4], EAX ; Store the supplied core-lot pointer at floorManager+4. A913D0 later reads that owner and copies its +48/+4C pair into floor-message +8/+C.
00a8dd10	8b8874010000	MOV ECX, dword ptr [EAX + 0x174]
00a8dd16	894b08	MOV dword ptr [EBX + 0x8], ECX
00a8dd19	8b9078010000	MOV EDX, dword ptr [EAX + 0x178]
00a8dd1f	89530c	MOV dword ptr [EBX + 0xc], EDX
00a8dd22	8b887c010000	MOV ECX, dword ptr [EAX + 0x17c]
00a8dd28	56	PUSH ESI
00a8dd29	894b10	MOV dword ptr [EBX + 0x10], ECX
00a8dd2c	8b9080010000	MOV EDX, dword ptr [EAX + 0x180]
00a8dd32	57	PUSH EDI
00a8dd33	8db330010000	LEA ESI, [EBX + 0x130]
00a8dd39	895314	MOV dword ptr [EBX + 0x14], EDX
00a8dd3c	33ff	XOR EDI, EDI
00a8dd3e	89bb2c010000	MOV dword ptr [EBX + 0x12c], EDI
00a8dd44	8b4608	MOV EAX, dword ptr [ESI + 0x8]
00a8dd47	8b4e04	MOV ECX, dword ptr [ESI + 0x4]
00a8dd4a	50	PUSH EAX
00a8dd4b	51	PUSH ECX
00a8dd4c	8bce	MOV ECX, ESI
00a8dd4e	e88d0ecbff	CALL 0x0073ebe0
00a8dd53	68d0c81e01	PUSH 0x11ec8d0
00a8dd58	68d0c81e01	PUSH 0x11ec8d0
00a8dd5d	68d0c81e01	PUSH 0x11ec8d0
00a8dd62	897e0c	MOV dword ptr [ESI + 0xc], EDI
00a8dd65	e8b6d61f00	CALL 0x00c8b420
00a8dd6a	50	PUSH EAX
00a8dd6b	8d4c241c	LEA ECX, [ESP + 0x1c]
00a8dd6f	e89cdd0600	CALL 0x00afbb10
00a8dd74	68d0c81e01	PUSH 0x11ec8d0
00a8dd79	8bf0	MOV ESI, EAX
00a8dd7b	68d0c81e01	PUSH 0x11ec8d0
00a8dd80	8d7b50	LEA EDI, [EBX + 0x50]
00a8dd83	b910000000	MOV ECX, 0x10
00a8dd88	68d0c81e01	PUSH 0x11ec8d0
00a8dd8d	f3a5	MOVSD.REP ES:EDI, ESI ; Copy exactly 16 DWORDs into manager+50; the second REP MOVSD writes another 16 DWORDs at +90. The helper bodies determine actual catalog/default-key semantics.
00a8dd8f	e82cd61f00	CALL 0x00c8b3c0
00a8dd94	50	PUSH EAX
00a8dd95	8d4c241c	LEA ECX, [ESP + 0x1c]
00a8dd99	e872dd0600	CALL 0x00afbb10
00a8dd9e	8dbb90000000	LEA EDI, [EBX + 0x90]
00a8dda4	8bf0	MOV ESI, EAX
00a8dda6	b910000000	MOV ECX, 0x10
00a8ddab	f3a5	MOVSD.REP ES:EDI, ESI
00a8ddad	5f	POP EDI
00a8ddae	5e	POP ESI
00a8ddaf	b001	MOV AL, 0x1
00a8ddb1	5b	POP EBX
00a8ddb2	83c440	ADD ESP, 0x40
00a8ddb5	c20400	RET 0x4

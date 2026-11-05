PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: FindFloorCellPayload.
Complete existing Ghidra owned body: [00A8ED70,00A8EE00] inclusive; 145 owned bytes / 60 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Returns a borrowed optional cell payload via an 8-bit grid ID and manager-owned map, or null. ECX floor manager and packed signed cell pointer, RET 4. No reference increment or ownership transfer occurs in this body. Analyst-assigned name.

00a8ed70	83ec08	SUB ESP, 0x8
00a8ed73	53	PUSH EBX
00a8ed74	55	PUSH EBP
00a8ed75	8be9	MOV EBP, ECX
00a8ed77	8b8dd0000000	MOV ECX, dword ptr [EBP + 0xd0] ; Optional manager+ D0 byte grid must exist. Guard relativeLevel<depth and signed X/Z within half-open grid extents; there is no explicit relativeLevel>=0 check here.
00a8ed7d	85c9	TEST ECX, ECX
00a8ed7f	56	PUSH ESI
00a8ed80	57	PUSH EDI
00a8ed81	7472	JZ 0x00a8edf5
00a8ed83	8b74241c	MOV ESI, dword ptr [ESP + 0x1c]
00a8ed87	0fbe4602	MOVSX EAX, byte ptr [ESI + 0x2]
00a8ed8b	2b4510	SUB EAX, dword ptr [EBP + 0x10]
00a8ed8e	3b410c	CMP EAX, dword ptr [ECX + 0xc]
00a8ed91	7d62	JGE 0x00a8edf5
00a8ed93	8a5e01	MOV BL, byte ptr [ESI + 0x1]
00a8ed96	0fbefb	MOVSX EDI, BL
00a8ed99	3b7908	CMP EDI, dword ptr [ECX + 0x8]
00a8ed9c	7d57	JGE 0x00a8edf5
00a8ed9e	8a16	MOV DL, byte ptr [ESI]
00a8eda0	0fbef2	MOVSX ESI, DL
00a8eda3	3b7104	CMP ESI, dword ptr [ECX + 0x4]
00a8eda6	7d4d	JGE 0x00a8edf5
00a8eda8	84db	TEST BL, BL
00a8edaa	7c49	JL 0x00a8edf5
00a8edac	84d2	TEST DL, DL
00a8edae	7c45	JL 0x00a8edf5
00a8edb0	50	PUSH EAX
00a8edb1	57	PUSH EDI
00a8edb2	56	PUSH ESI
00a8edb3	e8f8c5ffff	CALL 0x00a8b3b0 ; Read the byte cell ID. Zero means no payload and returns null; the quarter mask is not used by this lookup.
00a8edb8	8a00	MOV AL, byte ptr [EAX]
00a8edba	84c0	TEST AL, AL
00a8edbc	8844241c	MOV byte ptr [ESP + 0x1c], AL
00a8edc0	7433	JZ 0x00a8edf5
00a8edc2	8d44241c	LEA EAX, [ESP + 0x1c]
00a8edc6	50	PUSH EAX
00a8edc7	8d4c2414	LEA ECX, [ESP + 0x14]
00a8edcb	8db57c010000	LEA ESI, [EBP + 0x17c]
00a8edd1	51	PUSH ECX
00a8edd2	8bce	MOV ECX, ESI
00a8edd4	e847f9ffff	CALL 0x00a8e720 ; Lookup the byte ID in map at manager+17C. Compare returned node with map sentinel; hit returns node+8, miss returns zero. Payload lifetime and map mutation are outside this lookup.
00a8edd9	8b5608	MOV EDX, dword ptr [ESI + 0x8]
00a8eddc	8b4e04	MOV ECX, dword ptr [ESI + 0x4]
00a8eddf	8b442410	MOV EAX, dword ptr [ESP + 0x10]
00a8ede3	3b0491	CMP EAX, dword ptr [ECX + EDX*0x4]
00a8ede6	740d	JZ 0x00a8edf5
00a8ede8	5f	POP EDI
00a8ede9	5e	POP ESI
00a8edea	5d	POP EBP
00a8edeb	83c008	ADD EAX, 0x8
00a8edee	5b	POP EBX
00a8edef	83c408	ADD ESP, 0x8
00a8edf2	c20400	RET 0x4
00a8edf5	5f	POP EDI
00a8edf6	5e	POP ESI
00a8edf7	5d	POP EBP
00a8edf8	33c0	XOR EAX, EAX
00a8edfa	5b	POP EBX
00a8edfb	83c408	ADD ESP, 0x8
00a8edfe	c20400	RET 0x4

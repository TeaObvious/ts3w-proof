PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: TestPlatformVertex.
Complete existing Ghidra owned range [00aff160,00aff1cc] inclusive; 109 bytes / 37 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Tests the four table-selected regions around a packed grid vertex, in iterator order. Each region uses strict mode 0; the first true AL ends the search. Analyst-assigned name; not an original EA symbol.

00aff160	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00aff164	83ec0c	SUB ESP, 0xc
00aff167	56	PUSH ESI
00aff168	50	PUSH EAX
00aff169	8d4c2408	LEA ECX, [ESP + 0x8] ; The 12-byte invocation-local iterator holds the vertex and one borrowed scratch cell; no pointer escapes this traversal.
00aff16d	e8ce7affff	CALL 0x00af6c40
00aff172	8d4c2404	LEA ECX, [ESP + 0x4]
00aff176	e8c574ffff	CALL 0x00af6640
00aff17b	8d4c2404	LEA ECX, [ESP + 0x4]
00aff17f	e83c76ffff	CALL 0x00af67c0
00aff184	84c0	TEST AL, AL
00aff186	7537	JNZ 0x00aff1bf
00aff188	8b742414	MOV ESI, dword ptr [ESP + 0x14]
00aff18c	8d642400	LEA ESP, [ESP]
00aff190	8d4c2404	LEA ECX, [ESP + 0x4]
00aff194	e8c774ffff	CALL 0x00af6660
00aff199	6a00	PUSH 0x0 ; Strict mode 0: both selected quarters of this vertex-adjacent cell must produce a compatible product before the kind-5 platform check.
00aff19b	50	PUSH EAX
00aff19c	56	PUSH ESI
00aff19d	e8befbffff	CALL 0x00afed60
00aff1a2	83c40c	ADD ESP, 0xc
00aff1a5	84c0	TEST AL, AL ; Only AL is consumed from the region predicate. Upper EAX bits are not a general Boolean result.
00aff1a7	751d	JNZ 0x00aff1c6
00aff1a9	8d4c2404	LEA ECX, [ESP + 0x4]
00aff1ad	e89e74ffff	CALL 0x00af6650
00aff1b2	8d4c2404	LEA ECX, [ESP + 0x4]
00aff1b6	e80576ffff	CALL 0x00af67c0
00aff1bb	84c0	TEST AL, AL
00aff1bd	74d1	JZ 0x00aff190
00aff1bf	32c0	XOR AL, AL
00aff1c1	5e	POP ESI
00aff1c2	83c40c	ADD ESP, 0xc
00aff1c5	c3	RET
00aff1c6	b001	MOV AL, 0x1
00aff1c8	5e	POP ESI
00aff1c9	83c40c	ADD ESP, 0xc
00aff1cc	c3	RET

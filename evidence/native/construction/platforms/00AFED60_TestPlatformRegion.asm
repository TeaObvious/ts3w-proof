PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: TestPlatformRegion.
Complete existing Ghidra owned range [00afed60,00afedd1] inclusive; 114 bytes / 39 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Tests a selected quarter-region in one lot cell for a resolved product of kind 5. Signed byte coordinates use half-open X/Z bounds and inclusive level bounds. The low-byte mode is forwarded unchanged; the mode-1 child uses ordered prefix selection. Analyst-assigned name.

00afed60	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00afed64	0fbe10	MOVSX EDX, byte ptr [EAX] ; Packed bytes 0/1/2 are signed X/Z/level; X/Z exclude the far endpoint, while both level endpoints are included.
00afed67	85d2	TEST EDX, EDX
00afed69	56	PUSH ESI
00afed6a	0fbe7001	MOVSX ESI, byte ptr [EAX + 0x1]
00afed6e	7c5e	JL 0x00afedce
00afed70	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
00afed74	3b9174010000	CMP EDX, dword ptr [ECX + 0x174]
00afed7a	7d52	JGE 0x00afedce
00afed7c	85f6	TEST ESI, ESI
00afed7e	7c4e	JL 0x00afedce
00afed80	3bb178010000	CMP ESI, dword ptr [ECX + 0x178]
00afed86	7d46	JGE 0x00afedce
00afed88	0fbe5002	MOVSX EDX, byte ptr [EAX + 0x2]
00afed8c	3b917c010000	CMP EDX, dword ptr [ECX + 0x17c]
00afed92	7c3a	JL 0x00afedce
00afed94	3b9180010000	CMP EDX, dword ptr [ECX + 0x180]
00afed9a	7f32	JG 0x00afedce
00afed9c	8b542410	MOV EDX, dword ptr [ESP + 0x10]
00afeda0	52	PUSH EDX
00afeda1	50	PUSH EAX
00afeda2	e8297afbff	CALL 0x00ab67d0 ; Forward the same lot and packed cell to AB67D0. FFFFFFFF means no selected compatible product; ID 0 remains an ordinary lookup key.
00afeda7	83f8ff	CMP EAX, -0x1
00afedaa	7422	JZ 0x00afedce
00afedac	8b0d34e01e01	MOV ECX, dword ptr [0x011ee034] ; Global catalog bank 011EE034 is used without a local null guard. Missing product rejects; product DWORD +88 must be kind 5. Only AL is Boolean.
00afedb2	50	PUSH EAX
00afedb3	e8f8cd1800	CALL 0x00c8bbb0
00afedb8	85c0	TEST EAX, EAX
00afedba	7412	JZ 0x00afedce
00afedbc	83b88800000005	CMP dword ptr [EAX + 0x88], 0x5
00afedc3	0f94c0	SETZ AL
00afedc6	84c0	TEST AL, AL
00afedc8	7404	JZ 0x00afedce
00afedca	b001	MOV AL, 0x1
00afedcc	5e	POP ESI
00afedcd	c3	RET
00afedce	32c0	XOR AL, AL
00afedd0	5e	POP ESI
00afedd1	c3	RET

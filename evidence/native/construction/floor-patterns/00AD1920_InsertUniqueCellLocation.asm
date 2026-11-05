PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: InsertUniqueCellLocation.
Complete existing Ghidra owned body: [00AD1920,00AD198D] inclusive; 110 owned bytes / 49 instructions.
Original PE bytes and independent objdump instruction starts match the owned Listing.

Inserts a signed three-byte X/Z/level location into the sorted location container only if absent. Ordering is level, X, Z; the quarter mask is not part of the key. ECX container, output result pointer, input location; RET 8. Analyst-assigned name.

00ad1920	53	PUSH EBX
00ad1921	56	PUSH ESI
00ad1922	8b742410	MOV ESI, dword ptr [ESP + 0x10]
00ad1926	8bd9	MOV EBX, ECX
00ad1928	0fb64310	MOVZX EAX, byte ptr [EBX + 0x10]
00ad192c	8b0b	MOV ECX, dword ptr [EBX]
00ad192e	57	PUSH EDI
00ad192f	8b7b04	MOV EDI, dword ptr [EBX + 0x4]
00ad1932	50	PUSH EAX
00ad1933	56	PUSH ESI
00ad1934	57	PUSH EDI
00ad1935	51	PUSH ECX
00ad1936	e875f4ffff	CALL 0x00ad0db0 ; Lower bound compares signed bytes in level/X/Z order. The extra comparator byte supplied by the caller is not consumed by AD0DB0.
00ad193b	83c410	ADD ESP, 0x10
00ad193e	3bc7	CMP EAX, EDI
00ad1940	7431	JZ 0x00ad1973
00ad1942	8a4e02	MOV CL, byte ptr [ESI + 0x2] ; Lower bound reverse signed comparison distinguishes absence from equality. An equal location reports the existing entry pointer via output+0 and inserted=false via output+4; EAX returns the caller-owned result buffer; no duplicate append.
00ad1945	8a5002	MOV DL, byte ptr [EAX + 0x2]
00ad1948	3aca	CMP CL, DL
00ad194a	750e	JNZ 0x00ad195a
00ad194c	8a0e	MOV CL, byte ptr [ESI]
00ad194e	8a10	MOV DL, byte ptr [EAX]
00ad1950	3aca	CMP CL, DL
00ad1952	7506	JNZ 0x00ad195a
00ad1954	8a5601	MOV DL, byte ptr [ESI + 0x1]
00ad1957	3a5001	CMP DL, byte ptr [EAX + 0x1]
00ad195a	0f9cc1	SETL CL
00ad195d	84c9	TEST CL, CL
00ad195f	7512	JNZ 0x00ad1973
00ad1961	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
00ad1965	5f	POP EDI
00ad1966	5e	POP ESI
00ad1967	8901	MOV dword ptr [ECX], EAX
00ad1969	c6410400	MOV byte ptr [ECX + 0x4], 0x0
00ad196d	8bc1	MOV EAX, ECX
00ad196f	5b	POP EBX
00ad1970	c20800	RET 0x8
00ad1973	56	PUSH ESI ; Missing key calls A90280 to insert at lower_bound, then writes the resulting borrowed entry pointer to output+0 and inserted=true to output+4. EAX returns the caller-owned output buffer, not the entry; capacity/reallocation/failure policy belongs to A90280.
00ad1974	50	PUSH EAX
00ad1975	8bcb	MOV ECX, EBX
00ad1977	e804e9fbff	CALL 0x00a90280
00ad197c	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
00ad1980	5f	POP EDI
00ad1981	5e	POP ESI
00ad1982	8901	MOV dword ptr [ECX], EAX
00ad1984	c6410401	MOV byte ptr [ECX + 0x4], 0x1
00ad1988	8bc1	MOV EAX, ECX
00ad198a	5b	POP EBX
00ad198b	c20800	RET 0x8

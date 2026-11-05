PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: AdvanceVertexRegionIterator.
Complete existing Ghidra owned range [00af6650,00af6655] inclusive; 6 bytes / 3 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Increments only the iterator DWORD index, without saturation or bounds checks. Normal callers test for index 4 before another current-cell read. Analyst-assigned name.

00af6650	8bc1	MOV EAX, ECX
00af6652	830001	ADD dword ptr [EAX], 0x1 ; Unconditional DWORD increment: no four-item saturation. Do not call current-cell on an unchecked out-of-range index.
00af6655	c3	RET

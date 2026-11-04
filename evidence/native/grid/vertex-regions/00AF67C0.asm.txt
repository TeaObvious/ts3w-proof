PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: IsVertexRegionIteratorAtEnd.
Complete existing Ghidra owned range [00af67c0,00af67c8] inclusive; 9 bytes / 4 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Reports index exactly equal to 4, not greater-than-or-equal. Normal callers stop at 4. XOR EAX,EAX followed by SETZ AL produces a full EAX value of 0 or 1. Analyst-assigned name.

00af67c0	33c0	XOR EAX, EAX
00af67c2	833904	CMP dword ptr [ECX], 0x4 ; Exact equality with 4. A fabricated index 5 returns false; no such malformed producer is shown in AFF160 or AFEB00.
00af67c5	0f94c0	SETZ AL
00af67c8	c3	RET

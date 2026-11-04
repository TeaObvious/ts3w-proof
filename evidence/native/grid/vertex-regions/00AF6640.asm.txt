PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: ResetVertexRegionIterator.
Complete existing Ghidra owned range [00af6640,00af6646] inclusive; 7 bytes / 2 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Resets only the iterator DWORD index to 0. Vertex and scratch bytes are retained. Physical input is ECX; the fastcall display does not establish a meaningful EDX parameter. Analyst-assigned name.

00af6640	c70100000000	MOV dword ptr [ECX], 0x0 ; Only index DWORD +0 is written. Calling this again does not rebuild or clear the borrowed scratch cell.
00af6646	c3	RET

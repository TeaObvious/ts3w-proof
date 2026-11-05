PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: GetVertexRegionIteratorCell.
Complete existing Ghidra owned range [00af6660,00af668d] inclusive; 46 bytes / 14 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Materializes the current table-selected cell in the iterator scratch record and returns its borrowed pointer at +7. Shared by platform and generic deck/foundation traversal. Another call overwrites the same record. Analyst-assigned name.

00af6660	8b11	MOV EDX, dword ptr [ECX]
00af6662	0fb60495f0ad0601	MOVZX EAX, byte ptr [EDX*0x4 + 0x106adf0] ; Read each coordinate table DWORD low byte at stride 4; add original vertex byte with byte wrap. X offsets: -1,0,0,-1; Z offsets: -1,-1,0,0.
00af666a	024104	ADD AL, byte ptr [ECX + 0x4]
00af666d	56	PUSH ESI
00af666e	8d7107	LEA ESI, [ECX + 0x7]
00af6671	8806	MOV byte ptr [ESI], AL
00af6673	0fb6049500ae0601	MOVZX EAX, byte ptr [EDX*0x4 + 0x106ae00]
00af667b	024105	ADD AL, byte ptr [ECX + 0x5]
00af667e	884108	MOV byte ptr [ECX + 0x8], AL
00af6681	8a9210ae0601	MOV DL, byte ptr [EDX + 0x106ae10] ; Mask table bytes are 06,03,09,0C in index order. Level at iterator +9 is retained; no lot bounds or index check occurs here.
00af6687	8bc6	MOV EAX, ESI ; Return iterator+7 in EAX: borrowed scratch cell, not newly allocated storage.
00af6689	88510a	MOV byte ptr [ECX + 0xa], DL
00af668c	5e	POP ESI
00af668d	c3	RET

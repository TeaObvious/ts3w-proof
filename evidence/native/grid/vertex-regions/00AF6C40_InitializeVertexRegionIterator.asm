PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Analyst-assigned name: InitializeVertexRegionIterator.
Complete existing Ghidra owned range [00af6c40,00af6c71] inclusive; 50 bytes / 15 instructions.
Original PE bytes and independent objdump instruction starts agree with this owned Listing.

Initializes the shared four-cell vertex-region iterator. Used by platform AFF160 and generic deck/foundation AFEB00; no platform-only ownership is implied. ECX is the iterator, the packed vertex pointer is on stack, and RET 4 removes that one argument. Analyst-assigned name.

00af6c40	8bc1	MOV EAX, ECX
00af6c42	8b4c2404	MOV ECX, dword ptr [ESP + 0x4]
00af6c46	c70000000000	MOV dword ptr [EAX], 0x0
00af6c4c	668b11	MOV DX, word ptr [ECX] ; Copy packed vertex X/Z/level bytes to +4/+5/+6. The input has no consumed mask.
00af6c4f	66895004	MOV word ptr [EAX + 0x4], DX
00af6c53	8a5102	MOV DL, byte ptr [ECX + 0x2]
00af6c56	885006	MOV byte ptr [EAX + 0x6], DL
00af6c59	80caff	OR DL, 0xff
00af6c5c	885007	MOV byte ptr [EAX + 0x7], DL ; Scratch cell begins at +7: X/Z/mask initially FF, then level at +9 is copied from the vertex. The current-cell helper rewrites X/Z/mask only.
00af6c5f	885008	MOV byte ptr [EAX + 0x8], DL
00af6c62	c6400900	MOV byte ptr [EAX + 0x9], 0x0
00af6c66	88500a	MOV byte ptr [EAX + 0xa], DL
00af6c69	8a4902	MOV CL, byte ptr [ECX + 0x2]
00af6c6c	884809	MOV byte ptr [EAX + 0x9], CL
00af6c6f	c20400	RET 0x4

PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: DestroyPooledFloorMessage.
Complete existing Ghidra stored body union: [00B94770,00B9478E] inclusive; 31 owned bytes / 11 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Resets the message vtable to base table 00F9B454; if the low flags byte has mask 01h set, returns
   this storage through ADF1A0. RET 4 and EAX is the original pointer; freeing is conditional.
   Analyst-assigned name.

00b94770	f644240401	TEST byte ptr [ESP + 0x4], 0x1 ; Floor message table 01065F8C slot +0 binds here. Atomic release invokes it with argument 1 only on transition to zero; pool return is delegated to ADF1A0.
00b94775	56	PUSH ESI
00b94776	8bf1	MOV ESI, ECX
00b94778	c70654b4f900	MOV dword ptr [ESI], 0xf9b454
00b9477e	7409	JZ 0x00b94789
00b94780	56	PUSH ESI
00b94781	e81aaaf4ff	CALL 0x00adf1a0
00b94786	83c404	ADD ESP, 0x4
00b94789	8bc6	MOV EAX, ESI
00b9478b	5e	POP ESI
00b9478c	c20400	RET 0x4

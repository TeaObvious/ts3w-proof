PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: ExchangeMessageDispatcher.
Complete existing Ghidra stored body union: [0044C500,0044C50F] inclusive; 16 owned bytes / 4 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Exchanges process dispatcher pointer 011B2378 and returns the previous pointer in EAX. Plain RET,
   one caller-cleaned stack word; no reference increment, lock or destruction in this leaf.
   Analyst-assigned name.

0044c500	8b4c2404	MOV ECX, dword ptr [ESP + 0x4]
0044c504	a178231b01	MOV EAX, [0x011b2378] ; Read old global pointer before storing the requested replacement. A null replacement clears the same pointer read by 44C4F0; this operation does not own either instance.
0044c509	890d78231b01	MOV dword ptr [0x011b2378], ECX
0044c50f	c3	RET

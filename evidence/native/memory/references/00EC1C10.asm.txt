PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: AddAtomicReference.
Complete existing Ghidra stored body union: [00EC1C10,00EC1C1D] inclusive; 14 owned bytes / 5 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Atomically adds 1 to the DWORD at object+4 and returns the incremented value. Only the counter
   update is synchronized; no whole-object lifetime or state lock is implied. Analyst-assigned name.

00ec1c10	83c104	ADD ECX, 0x4 ; Payload table 01065F8C slot +4 binds here. Starting floor-message count is 0; ordinary enqueue uses this retain before later delivery/release.
00ec1c13	b801000000	MOV EAX, 0x1
00ec1c18	f00fc101	XADD.LOCK dword ptr [ECX], EAX
00ec1c1c	40	INC EAX
00ec1c1d	c3	RET

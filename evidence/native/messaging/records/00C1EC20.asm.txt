PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: InitializeRetainedMessageRecord.
Complete existing Ghidra stored body union: [00C1EC20,00C1EC40] inclusive; 33 owned bytes / 14 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Writes one 8-byte event-ID/payload record, retains nonnull payload through virtual +4 and returns
   the caller-owned destination in EAX. No allocation or queue ownership transfer occurs in this
   constructor. Analyst-assigned name.

00c1ec20	8b442404	MOV EAX, dword ptr [ESP + 0x4] ; Record layout is UInt32 event ID at +0 and payload pointer at +4; this is not the separate 12-byte graph event record.
00c1ec24	56	PUSH ESI
00c1ec25	8bf1	MOV ESI, ECX
00c1ec27	8b4c240c	MOV ECX, dword ptr [ESP + 0xc]
00c1ec2b	85c9	TEST ECX, ECX
00c1ec2d	8906	MOV dword ptr [ESI], EAX
00c1ec2f	894e04	MOV dword ptr [ESI + 0x4], ECX
00c1ec32	7407	JZ 0x00c1ec3b
00c1ec34	8b11	MOV EDX, dword ptr [ECX]
00c1ec36	8b4204	MOV EAX, dword ptr [EDX + 0x4]
00c1ec39	ffd0	CALL EAX
00c1ec3b	8bc6	MOV EAX, ESI
00c1ec3d	5e	POP ESI
00c1ec3e	c20800	RET 0x8

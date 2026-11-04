PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: ReleaseAtomicReference.
Complete existing Ghidra stored body union: [0069EE30,0069EE4D] inclusive; 30 owned bytes / 15 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Atomically subtracts 1 from object+4 and returns the new count. A new zero count invokes current
   virtual +0 with argument 1. There is no refcount-underflow guard; the object pointer is
   dereferenced before the later null test. Analyst-assigned name.

0069ee30	56	PUSH ESI ; Payload table 01065F8C slot +8 binds here. Balanced queued/local-record references must be proved separately; releasing a zero count wraps instead of safely destroying.
0069ee31	8d4104	LEA EAX, [ECX + 0x4]
0069ee34	83ceff	OR ESI, 0xffffffff
0069ee37	f00fc130	XADD.LOCK dword ptr [EAX], ESI
0069ee3b	4e	DEC ESI
0069ee3c	750c	JNZ 0x0069ee4a
0069ee3e	85c9	TEST ECX, ECX
0069ee40	7408	JZ 0x0069ee4a
0069ee42	8b11	MOV EDX, dword ptr [ECX]
0069ee44	8b02	MOV EAX, dword ptr [EDX]
0069ee46	6a01	PUSH 0x1
0069ee48	ffd0	CALL EAX
0069ee4a	8bc6	MOV EAX, ESI
0069ee4c	5e	POP ESI
0069ee4d	c3	RET

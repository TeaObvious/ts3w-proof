# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00afbb80,00afbb96]. 23 owned bytes/7 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-key 64-byte hash forwarding. One key pointer stackword, RET4. Pushes seed811C9DC5 and length64 to4FA750; preserves returned EAX through cleanup/RET despite stored void return. Hashes raw64bytes, not normalized text or selected key fields.

00afbb80	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00afbb84	68c59d1c81	PUSH 0x811c9dc5
00afbb89	6a40	PUSH 0x40
00afbb8b	50	PUSH EAX
00afbb8c	e8bfeb9fff	CALL 0x004fa750
00afbb91	83c40c	ADD ESP, 0xc
00afbb94	c20400	RET 0x4

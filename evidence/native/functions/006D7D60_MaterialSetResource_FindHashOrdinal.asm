# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; MaterialSetResource_FindHashOrdinal; owned ranges [[006d7d60, 006d7d9c]]
006d7d60	8b515c	MOV EDX,dword ptr [ECX + 0x5c]
006d7d63	2b5158	SUB EDX,dword ptr [ECX + 0x58]
006d7d66	b8abaaaa2a	MOV EAX,0x2aaaaaab
006d7d6b	f7ea	IMUL EDX
006d7d6d	c1fa02	SAR EDX,0x2
006d7d70	56	PUSH ESI
006d7d71	8bf2	MOV ESI,EDX
006d7d73	c1ee1f	SHR ESI,0x1f
006d7d76	03f2	ADD ESI,EDX
006d7d78	33c0	XOR EAX,EAX
006d7d7a	85f6	TEST ESI,ESI
006d7d7c	7e18	JLE 0x006d7d96
006d7d7e	8b4958	MOV ECX,dword ptr [ECX + 0x58]
006d7d81	8b542408	MOV EDX,dword ptr [ESP + 0x8]
006d7d85	83c114	ADD ECX,0x14
006d7d88	3b11	CMP EDX,dword ptr [ECX]
006d7d8a	740d	JZ 0x006d7d99
006d7d8c	83c001	ADD EAX,0x1
006d7d8f	83c118	ADD ECX,0x18
006d7d92	3bc6	CMP EAX,ESI
006d7d94	7cf2	JL 0x006d7d88
006d7d96	83c8ff	OR EAX,0xffffffff
006d7d99	5e	POP ESI
006d7d9a	c20400	RET 0x4

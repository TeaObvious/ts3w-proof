PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: InitializeMessageDispatcher.
Complete existing Ghidra stored body union: [0044CCC0,0044CD79] inclusive; 186 owned bytes / 51 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Initializes an existing dispatcher instance and installs vtable 00FA2B00. Queue sentinel at +0C,
   listener map at +58, separate locks at +20/+80; option bytes +B0..+B5 initially 1. Allocation and
   installation are separate callers. Analyst-assigned name.

0044ccc0	8b442404	MOV EAX, dword ptr [ESP + 0x4]
0044ccc4	53	PUSH EBX
0044ccc5	56	PUSH ESI
0044ccc6	57	PUSH EDI
0044ccc7	33ff	XOR EDI, EDI
0044ccc9	3bc7	CMP EAX, EDI
0044cccb	8bf1	MOV ESI, ECX
0044cccd	c706002bfa00	MOV dword ptr [ESI], 0xfa2b00 ; This concrete vtable links slot +1C to 44CF30 queueing, +24 to listener registration, +38 to queue pumping and +18 to listener dispatch. It is not the floor-message payload vtable.
0044ccd3	7505	JNZ 0x0044ccda
0044ccd5	e8e62c4e00	CALL 0x0092f9c0
0044ccda	8d4e0c	LEA ECX, [ESI + 0xc] ; Queue sentinel links to itself; the pointer at +1C is the allocator-name string Services/EAMessage/Queue, not another vtable.
0044ccdd	894608	MOV dword ptr [ESI + 0x8], EAX
0044cce0	894108	MOV dword ptr [ECX + 0x8], EAX
0044cce3	89790c	MOV dword ptr [ECX + 0xc], EDI
0044cce6	c74110cc2afa00	MOV dword ptr [ECX + 0x10], 0xfa2acc
0044cced	bb01000000	MOV EBX, 0x1
0044ccf2	53	PUSH EBX
0044ccf3	8909	MOV dword ptr [ECX], ECX
0044ccf5	894904	MOV dword ptr [ECX + 0x4], ECX
0044ccf8	57	PUSH EDI
0044ccf9	8d4e20	LEA ECX, [ESI + 0x20]
0044ccfc	e8ef4f0900	CALL 0x004e1cf0
0044cd01	8b4608	MOV EAX, dword ptr [ESI + 0x8]
0044cd04	f30f1005f898f900	MOVSS XMM0, dword ptr [0x00f998f8]
0044cd0c	897e50	MOV dword ptr [ESI + 0x50], EDI
0044cd0f	897e54	MOV dword ptr [ESI + 0x54], EDI
0044cd12	f30f114668	MOVSS dword ptr [ESI + 0x68], XMM0
0044cd17	f30f100588fd0301	MOVSS XMM0, dword ptr [0x0103fd88]
0044cd1f	f30f11466c	MOVSS dword ptr [ESI + 0x6c], XMM0
0044cd24	894674	MOV dword ptr [ESI + 0x74], EAX
0044cd27	897e78	MOV dword ptr [ESI + 0x78], EDI
0044cd2a	c7467ce82afa00	MOV dword ptr [ESI + 0x7c], 0xfa2ae8
0044cd31	53	PUSH EBX
0044cd32	57	PUSH EDI
0044cd33	8d8e80000000	LEA ECX, [ESI + 0x80]
0044cd39	895e60	MOV dword ptr [ESI + 0x60], EBX
0044cd3c	c7465c00d91401	MOV dword ptr [ESI + 0x5c], 0x114d900
0044cd43	897e64	MOV dword ptr [ESI + 0x64], EDI
0044cd46	897e70	MOV dword ptr [ESI + 0x70], EDI
0044cd49	e8a24f0900	CALL 0x004e1cf0
0044cd4e	5f	POP EDI
0044cd4f	889eb0000000	MOV byte ptr [ESI + 0xb0], BL
0044cd55	889eb1000000	MOV byte ptr [ESI + 0xb1], BL
0044cd5b	889eb2000000	MOV byte ptr [ESI + 0xb2], BL
0044cd61	889eb3000000	MOV byte ptr [ESI + 0xb3], BL
0044cd67	889eb4000000	MOV byte ptr [ESI + 0xb4], BL
0044cd6d	889eb5000000	MOV byte ptr [ESI + 0xb5], BL
0044cd73	8bc6	MOV EAX, ESI
0044cd75	5e	POP ESI
0044cd76	5b	POP EBX
0044cd77	c20400	RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00acfa20,00acfa56]. 55 owned bytes/19 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Support query one level below. cdecl lot/packedlocation/allowType6/optionalout, plain RET. Copies X/Z, decrements LOW signed level byte with byte wrap, forwards toACF820. Physical cleanup/RET preserves child AL despite stored void prototype. Child forces fullmask and only writes optional output on success; caller record unchanged.

00acfa20	8b442408	MOV EAX, dword ptr [ESP + 0x8]
00acfa24	8a08	MOV CL, byte ptr [EAX]
00acfa26	8a5001	MOV DL, byte ptr [EAX + 0x1]
00acfa29	8a4002	MOV AL, byte ptr [EAX + 0x2]
00acfa2c	884c2408	MOV byte ptr [ESP + 0x8], CL
00acfa30	8b4c2410	MOV ECX, dword ptr [ESP + 0x10]
00acfa34	51	PUSH ECX
00acfa35	8b4c2408	MOV ECX, dword ptr [ESP + 0x8]
00acfa39	2c01	SUB AL, 0x1
00acfa3b	8854240d	MOV byte ptr [ESP + 0xd], DL
00acfa3f	8b542410	MOV EDX, dword ptr [ESP + 0x10]
00acfa43	8844240e	MOV byte ptr [ESP + 0xe], AL
00acfa47	52	PUSH EDX
00acfa48	8d442410	LEA EAX, [ESP + 0x10]
00acfa4c	50	PUSH EAX
00acfa4d	51	PUSH ECX
00acfa4e	e8cdfdffff	CALL 0x00acf820
00acfa53	83c410	ADD ESP, 0x10
00acfa56	c3	RET

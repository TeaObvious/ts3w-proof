# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00a8b070,00a8b0c7]. 88 owned bytes/29 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Floor change message construction. ECX destination, plain RET returns same pointer. Installs vtable01065F8C and atomically exchanges refcount+4 to0. Packed cell+10 starts FF/FF/00/FF; AFBA70 initializes64bytes at+18; selected fields+5A/+5C/+60..6C/+84/+87/+88 are reset. Other fields remain untouched, not zeroed wholesale; full event ownership is the caller.

00a8b070	53	PUSH EBX
00a8b071	56	PUSH ESI
00a8b072	8bf1	MOV ESI, ECX
00a8b074	c7068c5f0601	MOV dword ptr [ESI], 0x1065f8c
00a8b07a	33c0	XOR EAX, EAX
00a8b07c	8d4e04	LEA ECX, [ESI + 0x4]
00a8b07f	8701	XCHG dword ptr [ECX], EAX
00a8b081	c7068c5f0601	MOV dword ptr [ESI], 0x1065f8c
00a8b087	0cff	OR AL, 0xff
00a8b089	33db	XOR EBX, EBX
00a8b08b	8d4e18	LEA ECX, [ESI + 0x18]
00a8b08e	884610	MOV byte ptr [ESI + 0x10], AL
00a8b091	884611	MOV byte ptr [ESI + 0x11], AL
00a8b094	885e12	MOV byte ptr [ESI + 0x12], BL
00a8b097	884613	MOV byte ptr [ESI + 0x13], AL
00a8b09a	e8d1090700	CALL 0x00afba70
00a8b09f	885e5a	MOV byte ptr [ESI + 0x5a], BL
00a8b0a2	885e5c	MOV byte ptr [ESI + 0x5c], BL
00a8b0a5	895e60	MOV dword ptr [ESI + 0x60], EBX
00a8b0a8	895e64	MOV dword ptr [ESI + 0x64], EBX
00a8b0ab	895e68	MOV dword ptr [ESI + 0x68], EBX
00a8b0ae	895e6c	MOV dword ptr [ESI + 0x6c], EBX
00a8b0b1	889e84000000	MOV byte ptr [ESI + 0x84], BL
00a8b0b7	889e87000000	MOV byte ptr [ESI + 0x87], BL
00a8b0bd	889e88000000	MOV byte ptr [ESI + 0x88], BL
00a8b0c3	8bc6	MOV EAX, ESI
00a8b0c5	5e	POP ESI
00a8b0c6	5b	POP EBX
00a8b0c7	c3	RET

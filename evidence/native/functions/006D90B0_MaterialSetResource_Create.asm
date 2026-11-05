# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; MaterialSetResource_Create; owned ranges [[006d90b0, 006d9110]]
006d90b0	56	PUSH ESI
006d90b1	57	PUSH EDI
006d90b2	33ff	XOR EDI,EDI
006d90b4	57	PUSH EDI
006d90b5	57	PUSH EDI
006d90b6	57	PUSH EDI
006d90b7	57	PUSH EDI
006d90b8	68fc79ff00	PUSH 0xff79fc
006d90bd	6a68	PUSH 0x68
006d90bf	e83cb4e0ff	CALL 0x004e4500
006d90c4	8bf0	MOV ESI,EAX
006d90c6	83c418	ADD ESP,0x18
006d90c9	3bf7	CMP ESI,EDI
006d90cb	743f	JZ 0x006d910c
006d90cd	8bce	MOV ECX,ESI
006d90cf	e83c21ffff	CALL 0x006cb210
006d90d4	c746409c76ff00	MOV dword ptr [ESI + 0x40],0xff769c
006d90db	c7064c77ff00	MOV dword ptr [ESI],0xff774c
006d90e1	c746402077ff00	MOV dword ptr [ESI + 0x40],0xff7720
006d90e8	897e44	MOV dword ptr [ESI + 0x44],EDI
006d90eb	897e48	MOV dword ptr [ESI + 0x48],EDI
006d90ee	897e4c	MOV dword ptr [ESI + 0x4c],EDI
006d90f1	897e50	MOV dword ptr [ESI + 0x50],EDI
006d90f4	897e54	MOV dword ptr [ESI + 0x54],EDI
006d90f7	897e58	MOV dword ptr [ESI + 0x58],EDI
006d90fa	897e5c	MOV dword ptr [ESI + 0x5c],EDI
006d90fd	897e60	MOV dword ptr [ESI + 0x60],EDI
006d9100	5f	POP EDI
006d9101	c746640477ff00	MOV dword ptr [ESI + 0x64],0xff7704
006d9108	8bc6	MOV EAX,ESI
006d910a	5e	POP ESI
006d910b	c3	RET
006d910c	5f	POP EDI
006d910d	33c0	XOR EAX,EAX
006d910f	5e	POP ESI
006d9110	c3	RET

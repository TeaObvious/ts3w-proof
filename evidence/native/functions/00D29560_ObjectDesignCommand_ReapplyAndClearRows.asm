# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00d29560, 00d2958a]]
00d29560	56	PUSH ESI
00d29561	8bf1	MOV ESI,ECX
00d29563	e828feffff	CALL 0x00d29390
00d29568	8b465c	MOV EAX,dword ptr [ESI + 0x5c]
00d2956b	83c650	ADD ESI,0x50
00d2956e	50	PUSH EAX
00d2956f	8bce	MOV ECX,ESI
00d29571	e8bafcffff	CALL 0x00d29230
00d29576	8d4604	LEA EAX,[ESI + 0x4]
00d29579	894608	MOV dword ptr [ESI + 0x8],EAX
00d2957c	8900	MOV dword ptr [EAX],EAX
00d2957e	33c0	XOR EAX,EAX
00d29580	89460c	MOV dword ptr [ESI + 0xc],EAX
00d29583	884610	MOV byte ptr [ESI + 0x10],AL
00d29586	894614	MOV dword ptr [ESI + 0x14],EAX
00d29589	5e	POP ESI
00d2958a	c3	RET

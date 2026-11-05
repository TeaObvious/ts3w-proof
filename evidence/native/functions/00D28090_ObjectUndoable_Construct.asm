# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00d28090, 00d2816a]]
00d28090	56	PUSH ESI
00d28091	8bf1	MOV ESI,ECX
00d28093	e8682effff	CALL 0x00d1af00
00d28098	c7465030400801	MOV dword ptr [ESI + 0x50],0x1084030
00d2809f	f30f100518b2fa00	MOVSS XMM0,dword ptr [0x00fab218]
00d280a7	33c0	XOR EAX,EAX
00d280a9	894654	MOV dword ptr [ESI + 0x54],EAX
00d280ac	c706d86d0801	MOV dword ptr [ESI],0x1086dd8
00d280b2	c74608d06d0801	MOV dword ptr [ESI + 0x8],0x1086dd0
00d280b9	c74650c46d0801	MOV dword ptr [ESI + 0x50],0x1086dc4
00d280c0	894658	MOV dword ptr [ESI + 0x58],EAX
00d280c3	894660	MOV dword ptr [ESI + 0x60],EAX
00d280c6	83c9ff	OR ECX,0xffffffff
00d280c9	894e5c	MOV dword ptr [ESI + 0x5c],ECX
00d280cc	f30f114664	MOVSS dword ptr [ESI + 0x64],XMM0
00d280d1	f30f114668	MOVSS dword ptr [ESI + 0x68],XMM0
00d280d6	0f57c0	XORPS XMM0,XMM0
00d280d9	89466c	MOV dword ptr [ESI + 0x6c],EAX
00d280dc	898ea4000000	MOV dword ptr [ESI + 0xa4],ECX
00d280e2	8986a0000000	MOV dword ptr [ESI + 0xa0],EAX
00d280e8	8886ac000000	MOV byte ptr [ESI + 0xac],AL
00d280ee	8986b0000000	MOV dword ptr [ESI + 0xb0],EAX
00d280f4	8886b4000000	MOV byte ptr [ESI + 0xb4],AL
00d280fa	8986b8000000	MOV dword ptr [ESI + 0xb8],EAX
00d28100	f30f114670	MOVSS dword ptr [ESI + 0x70],XMM0
00d28105	f30f1186a8000000	MOVSS dword ptr [ESI + 0xa8],XMM0
00d2810d	8986c4000000	MOV dword ptr [ESI + 0xc4],EAX
00d28113	8986c8000000	MOV dword ptr [ESI + 0xc8],EAX
00d28119	8986cc000000	MOV dword ptr [ESI + 0xcc],EAX
00d2811f	8d8ec0000000	LEA ECX,[ESI + 0xc0]
00d28125	c786d4000000986d0801	MOV dword ptr [ESI + 0xd4],0x1086d98
00d2812f	8986c8000000	MOV dword ptr [ESI + 0xc8],EAX
00d28135	8886cc000000	MOV byte ptr [ESI + 0xcc],AL
00d2813b	8986d0000000	MOV dword ptr [ESI + 0xd0],EAX
00d28141	898ec4000000	MOV dword ptr [ESI + 0xc4],ECX
00d28147	8909	MOV dword ptr [ECX],ECX
00d28149	8886d8000000	MOV byte ptr [ESI + 0xd8],AL
00d2814f	8886d9000000	MOV byte ptr [ESI + 0xd9],AL
00d28155	8886da000000	MOV byte ptr [ESI + 0xda],AL
00d2815b	8986dc000000	MOV dword ptr [ESI + 0xdc],EAX
00d28161	8986e0000000	MOV dword ptr [ESI + 0xe0],EAX
00d28167	8bc6	MOV EAX,ESI
00d28169	5e	POP ESI
00d2816a	c3	RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; FrameTimer_AddPauseFlagsAndClearGameDelta; owned ranges [[00594e10, 00594e36]]
00594e10	56	PUSH ESI
00594e11	68ec8cfd00	PUSH 0xfd8cec
00594e16	8bf1	MOV ESI,ECX
00594e18	e8e3cdf4ff	CALL 0x004e1c00
00594e1d	8b442408	MOV EAX,dword ptr [ESP + 0x8]
00594e21	0f57c0	XORPS XMM0,XMM0
00594e24	094640	OR dword ptr [ESI + 0x40],EAX
00594e27	8bce	MOV ECX,ESI
00594e29	f30f114664	MOVSS dword ptr [ESI + 0x64],XMM0
00594e2e	e88dcef4ff	CALL 0x004e1cc0
00594e33	5e	POP ESI
00594e34	c20400	RET 0x4

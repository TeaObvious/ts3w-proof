# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00afc7c0, 00afc7d3]]
00afc7c0	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00afc7c4	8b402c	MOV EAX,dword ptr [EAX + 0x2c]
00afc7c7	2305fca01e01	AND EAX,dword ptr [0x011ea0fc]
00afc7cd	f7d8	NEG EAX
00afc7cf	1bc0	SBB EAX,EAX
00afc7d1	f7d8	NEG EAX
00afc7d3	c3	RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

00514770	56	PUSH ESI
00514771	8b742408	MOV ESI,dword ptr [ESP + 0x8]
00514775	c706b4bafb00	MOV dword ptr [ESI],0xfbbab4
0051477b	894e04	MOV dword ptr [ESI + 0x4],ECX
0051477e	c7460801000000	MOV dword ptr [ESI + 0x8],0x1
00514785	8b01	MOV EAX,dword ptr [ECX]
00514787	8b5014	MOV EDX,dword ptr [EAX + 0x14]
0051478a	ffd2	CALL EDX
0051478c	89460c	MOV dword ptr [ESI + 0xc],EAX
0051478f	5e	POP ESI
00514790	c20400	RET 0x4

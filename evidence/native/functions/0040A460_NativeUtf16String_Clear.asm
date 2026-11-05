# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

0040a460	8b01	MOV EAX,dword ptr [ECX]
0040a462	3b4104	CMP EAX,dword ptr [ECX + 0x4]
0040a465	740a	JZ 0x0040a471
0040a467	66c7000000	MOV word ptr [EAX],0x0
0040a46c	8b01	MOV EAX,dword ptr [ECX]
0040a46e	894104	MOV dword ptr [ECX + 0x4],EAX
0040a471	c3	RET

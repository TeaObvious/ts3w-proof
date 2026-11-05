# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

0051ff70	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
0051ff74	8b4904	MOV ECX,dword ptr [ECX + 0x4]
0051ff77	83ec10	SUB ESP,0x10
0051ff7a	8d0424	LEA EAX,[ESP]
0051ff7d	50	PUSH EAX
0051ff7e	e8ed47ffff	CALL 0x00514770
0051ff83	8b442414	MOV EAX,dword ptr [ESP + 0x14]
0051ff87	8b542404	MOV EDX,dword ptr [ESP + 0x4]
0051ff8b	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
0051ff8f	895004	MOV dword ptr [EAX + 0x4],EDX
0051ff92	8b1424	MOV EDX,dword ptr [ESP]
0051ff95	894808	MOV dword ptr [EAX + 0x8],ECX
0051ff98	8910	MOV dword ptr [EAX],EDX
0051ff9a	b001	MOV AL,0x1
0051ff9c	83c410	ADD ESP,0x10
0051ff9f	c3	RET

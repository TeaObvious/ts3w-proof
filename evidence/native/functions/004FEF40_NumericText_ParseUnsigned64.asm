# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

004fef40	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
004fef44	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
004fef48	8b542404	MOV EDX,dword ptr [ESP + 0x4]
004fef4c	6a01	PUSH 0x1
004fef4e	50	PUSH EAX
004fef4f	51	PUSH ECX
004fef50	52	PUSH EDX
004fef51	e8eafcffff	CALL 0x004fec40
004fef56	83c410	ADD ESP,0x10
004fef59	c3	RET

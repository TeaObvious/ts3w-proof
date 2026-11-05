# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[007d7190, 007d71ed]]
007d7190	83ec08	SUB ESP,0x8
007d7193	8b44240c	MOV EAX,dword ptr [ESP + 0xc]
007d7197	0fb710	MOVZX EDX,word ptr [EAX]
007d719a	56	PUSH ESI
007d719b	8d7120	LEA ESI,[ECX + 0x20]
007d719e	8d442410	LEA EAX,[ESP + 0x10]
007d71a2	50	PUSH EAX
007d71a3	8d4c2408	LEA ECX,[ESP + 0x8]
007d71a7	51	PUSH ECX
007d71a8	8bce	MOV ECX,ESI
007d71aa	89542418	MOV dword ptr [ESP + 0x18],EDX
007d71ae	e87dfa1f00	CALL 0x009d6c30
007d71b3	8b5608	MOV EDX,dword ptr [ESI + 0x8]
007d71b6	8b4e04	MOV ECX,dword ptr [ESI + 0x4]
007d71b9	8b442404	MOV EAX,dword ptr [ESP + 0x4]
007d71bd	3b0491	CMP EAX,dword ptr [ECX + EDX*0x4]
007d71c0	5e	POP ESI
007d71c1	7423	JZ 0x007d71e6
007d71c3	8b5008	MOV EDX,dword ptr [EAX + 0x8]
007d71c6	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
007d71ca	8911	MOV dword ptr [ECX],EDX
007d71cc	8b500c	MOV EDX,dword ptr [EAX + 0xc]
007d71cf	895104	MOV dword ptr [ECX + 0x4],EDX
007d71d2	8b5010	MOV EDX,dword ptr [EAX + 0x10]
007d71d5	895108	MOV dword ptr [ECX + 0x8],EDX
007d71d8	8b4014	MOV EAX,dword ptr [EAX + 0x14]
007d71db	89410c	MOV dword ptr [ECX + 0xc],EAX
007d71de	b001	MOV AL,0x1
007d71e0	83c408	ADD ESP,0x8
007d71e3	c20800	RET 0x8
007d71e6	32c0	XOR AL,AL
007d71e8	83c408	ADD ESP,0x8
007d71eb	c20800	RET 0x8

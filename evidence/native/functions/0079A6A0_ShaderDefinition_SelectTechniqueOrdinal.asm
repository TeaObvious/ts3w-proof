# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; ShaderDefinition_SelectTechniqueOrdinal; owned ranges [[0079a6a0, 0079a6cc]]
0079a6a0	8b542404	MOV EDX,dword ptr [ESP + 0x4]
0079a6a4	3b510c	CMP EDX,dword ptr [ECX + 0xc]
0079a6a7	7202	JC 0x0079a6ab
0079a6a9	33d2	XOR EDX,EDX
0079a6ab	56	PUSH ESI
0079a6ac	8b7108	MOV ESI,dword ptr [ECX + 0x8]
0079a6af	85f6	TEST ESI,ESI
0079a6b1	895114	MOV dword ptr [ECX + 0x14],EDX
0079a6b4	740e	JZ 0x0079a6c4
0079a6b6	8bc2	MOV EAX,EDX
0079a6b8	c1e004	SHL EAX,0x4
0079a6bb	03c6	ADD EAX,ESI
0079a6bd	894110	MOV dword ptr [ECX + 0x10],EAX
0079a6c0	5e	POP ESI
0079a6c1	c20400	RET 0x4
0079a6c4	33c0	XOR EAX,EAX
0079a6c6	894110	MOV dword ptr [ECX + 0x10],EAX
0079a6c9	5e	POP ESI
0079a6ca	c20400	RET 0x4

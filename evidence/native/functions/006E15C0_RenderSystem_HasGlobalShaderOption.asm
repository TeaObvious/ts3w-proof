# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; RenderSystem_HasGlobalShaderOption; owned ranges [[006e15c0, 006e15ea]]
006e15c0	8b913c020000	MOV EDX,dword ptr [ECX + 0x23c]
006e15c6	8b8138020000	MOV EAX,dword ptr [ECX + 0x238]
006e15cc	3bc2	CMP EAX,EDX
006e15ce	740f	JZ 0x006e15df
006e15d0	8b4c2404	MOV ECX,dword ptr [ESP + 0x4]
006e15d4	3908	CMP dword ptr [EAX],ECX
006e15d6	7407	JZ 0x006e15df
006e15d8	83c004	ADD EAX,0x4
006e15db	3bc2	CMP EAX,EDX
006e15dd	75f5	JNZ 0x006e15d4
006e15df	33c9	XOR ECX,ECX
006e15e1	3bc2	CMP EAX,EDX
006e15e3	0f95c1	SETNZ CL
006e15e6	8ac1	MOV AL,CL
006e15e8	c20400	RET 0x4

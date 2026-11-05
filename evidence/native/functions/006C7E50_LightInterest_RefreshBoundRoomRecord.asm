# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[006c7e50, 006c7f4a]]
006c7e50	55	PUSH EBP
006c7e51	8bec	MOV EBP,ESP
006c7e53	83e4f0	AND ESP,0xfffffff0
006c7e56	83ec2c	SUB ESP,0x2c
006c7e59	56	PUSH ESI
006c7e5a	8bf1	MOV ESI,ECX
006c7e5c	8b4620	MOV EAX,dword ptr [ESI + 0x20]
006c7e5f	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7e62	83c020	ADD EAX,0x20
006c7e65	50	PUSH EAX
006c7e66	e885f8feff	CALL 0x006b76f0
006c7e6b	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7e6e	e8bd19ffff	CALL 0x006b9830
006c7e73	8b4614	MOV EAX,dword ptr [ESI + 0x14]
006c7e76	833800	CMP dword ptr [EAX],0x0
006c7e79	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7e7c	0f288140010000	MOVAPS XMM0,xmmword ptr [ECX + 0x140]
006c7e83	746d	JZ 0x006c7ef2
006c7e85	8b08	MOV ECX,dword ptr [EAX]
006c7e87	0f29442410	MOVAPS xmmword ptr [ESP + 0x10],XMM0
006c7e8c	d9442418	FLD float ptr [ESP + 0x18]
006c7e90	83ec08	SUB ESP,0x8
006c7e93	d95c2404	FSTP float ptr [ESP + 0x4]
006c7e97	0f29442428	MOVAPS xmmword ptr [ESP + 0x28],XMM0
006c7e9c	d9442428	FLD float ptr [ESP + 0x28]
006c7ea0	d91c24	FSTP float ptr [ESP]
006c7ea3	e848fefdff	CALL 0x006a7cf0
006c7ea8	85c0	TEST EAX,EAX
006c7eaa	c644240c01	MOV byte ptr [ESP + 0xc],0x1
006c7eaf	7413	JZ 0x006c7ec4
006c7eb1	8b480c	MOV ECX,dword ptr [EAX + 0xc]
006c7eb4	894e1c	MOV dword ptr [ESI + 0x1c],ECX
006c7eb7	8bc8	MOV ECX,EAX
006c7eb9	e872406200	CALL 0x00cebf30
006c7ebe	8844240c	MOV byte ptr [ESP + 0xc],AL
006c7ec2	eb07	JMP 0x006c7ecb
006c7ec4	c7461c00000000	MOV dword ptr [ESI + 0x1c],0x0
006c7ecb	8b561c	MOV EDX,dword ptr [ESI + 0x1c]
006c7ece	8b4614	MOV EAX,dword ptr [ESI + 0x14]
006c7ed1	8b08	MOV ECX,dword ptr [EAX]
006c7ed3	52	PUSH EDX
006c7ed4	51	PUSH ECX
006c7ed5	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7ed8	e823f7feff	CALL 0x006b7600
006c7edd	837e1c00	CMP dword ptr [ESI + 0x1c],0x0
006c7ee1	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7ee4	741f	JZ 0x006c7f05
006c7ee6	8b54240c	MOV EDX,dword ptr [ESP + 0xc]
006c7eea	52	PUSH EDX
006c7eeb	e8f02cffff	CALL 0x006babe0
006c7ef0	eb18	JMP 0x006c7f0a
006c7ef2	6a00	PUSH 0x0
006c7ef4	6a00	PUSH 0x0
006c7ef6	c7461c00000000	MOV dword ptr [ESI + 0x1c],0x0
006c7efd	e8fef6feff	CALL 0x006b7600
006c7f02	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7f05	e8362cffff	CALL 0x006bab40
006c7f0a	8b4624	MOV EAX,dword ptr [ESI + 0x24]
006c7f0d	80882402000080	OR byte ptr [EAX + 0x224],0x80
006c7f14	8b4e24	MOV ECX,dword ptr [ESI + 0x24]
006c7f17	e8e441ffff	CALL 0x006bc100
006c7f1c	f6462801	TEST byte ptr [ESI + 0x28],0x1
006c7f20	7416	JZ 0x006c7f38
006c7f22	837e1c00	CMP dword ptr [ESI + 0x1c],0x0
006c7f26	7410	JZ 0x006c7f38
006c7f28	8b460c	MOV EAX,dword ptr [ESI + 0xc]
006c7f2b	8b4e08	MOV ECX,dword ptr [ESI + 0x8]
006c7f2e	50	PUSH EAX
006c7f2f	51	PUSH ECX
006c7f30	8b4e14	MOV ECX,dword ptr [ESI + 0x14]
006c7f33	e898e2ffff	CALL 0x006c61d0
006c7f38	6a03	PUSH 0x3
006c7f3a	e871b7ffff	CALL 0x006c36b0
006c7f3f	8bc8	MOV ECX,EAX
006c7f41	e89aa5ffff	CALL 0x006c24e0
006c7f46	5e	POP ESI
006c7f47	8be5	MOV ESP,EBP
006c7f49	5d	POP EBP
006c7f4a	c3	RET

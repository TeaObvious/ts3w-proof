# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; ModelBinding_ApplyMaterialToAvailableLod; owned ranges [[006dcc00, 006dcc38]]
006dcc00	8b510c	MOV EDX,dword ptr [ECX + 0xc]
006dcc03	f6c203	TEST DL,0x3
006dcc06	8d410c	LEA EAX,[ECX + 0xc]
006dcc09	7505	JNZ 0x006dcc10
006dcc0b	833800	CMP dword ptr [EAX],0x0
006dcc0e	7522	JNZ 0x006dcc32
006dcc10	8b5108	MOV EDX,dword ptr [ECX + 0x8]
006dcc13	f6c203	TEST DL,0x3
006dcc16	8d4108	LEA EAX,[ECX + 0x8]
006dcc19	751d	JNZ 0x006dcc38
006dcc1b	833800	CMP dword ptr [EAX],0x0
006dcc1e	7418	JZ 0x006dcc38
006dcc20	8b10	MOV EDX,dword ptr [EAX]
006dcc22	83c228	ADD EDX,0x28
006dcc25	8b5208	MOV EDX,dword ptr [EDX + 0x8]
006dcc28	83fa02	CMP EDX,0x2
006dcc2b	7405	JZ 0x006dcc32
006dcc2d	83fa03	CMP EDX,0x3
006dcc30	7506	JNZ 0x006dcc38
006dcc32	50	PUSH EAX
006dcc33	e848f2ffff	CALL 0x006dbe80
006dcc38	c3	RET

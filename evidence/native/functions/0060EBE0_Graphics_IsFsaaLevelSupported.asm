# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Graphics_IsFsaaLevelSupported; owned ranges [[0060ebe0, 0060ec33]]
0060ebe0	83790800	CMP dword ptr [ECX + 0x8],0x0
0060ebe4	7449	JZ 0x0060ec2f
0060ebe6	8b442404	MOV EAX,dword ptr [ESP + 0x4]
0060ebea	83f811	CMP EAX,0x11
0060ebed	7340	JNC 0x0060ec2f
0060ebef	8b5108	MOV EDX,dword ptr [ECX + 0x8]
0060ebf2	53	PUSH EBX
0060ebf3	8b1a	MOV EBX,dword ptr [EDX]
0060ebf5	56	PUSH ESI
0060ebf6	8b3485d88afe00	MOV ESI,dword ptr [EAX*0x4 + 0xfe8ad8]
0060ebfd	8b81e0000000	MOV EAX,dword ptr [ECX + 0xe0]
0060ec03	57	PUSH EDI
0060ec04	8bb854010000	MOV EDI,dword ptr [EAX + 0x154]
0060ec0a	8b00	MOV EAX,dword ptr [EAX]
0060ec0c	6a00	PUSH 0x0
0060ec0e	56	PUSH ESI
0060ec0f	0fb67124	MOVZX ESI,byte ptr [ECX + 0x24]
0060ec13	8b4940	MOV ECX,dword ptr [ECX + 0x40]
0060ec16	56	PUSH ESI
0060ec17	57	PUSH EDI
0060ec18	50	PUSH EAX
0060ec19	51	PUSH ECX
0060ec1a	52	PUSH EDX
0060ec1b	8b532c	MOV EDX,dword ptr [EBX + 0x2c]
0060ec1e	ffd2	CALL EDX
0060ec20	33c9	XOR ECX,ECX
0060ec22	85c0	TEST EAX,EAX
0060ec24	5f	POP EDI
0060ec25	0f9dc1	SETGE CL
0060ec28	5e	POP ESI
0060ec29	8ac1	MOV AL,CL
0060ec2b	5b	POP EBX
0060ec2c	c20400	RET 0x4
0060ec2f	32c0	XOR AL,AL
0060ec31	c20400	RET 0x4

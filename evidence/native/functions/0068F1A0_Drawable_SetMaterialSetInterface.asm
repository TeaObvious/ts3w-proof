# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Drawable_SetMaterialSetInterface; owned ranges [[0068f1a0, 0068f1c9]]
0068f1a0	56	PUSH ESI
0068f1a1	57	PUSH EDI
0068f1a2	8b7c240c	MOV EDI,dword ptr [ESP + 0xc]
0068f1a6	85ff	TEST EDI,EDI
0068f1a8	8bf1	MOV ESI,ECX
0068f1aa	7408	JZ 0x0068f1b4
0068f1ac	8b07	MOV EAX,dword ptr [EDI]
0068f1ae	8b10	MOV EDX,dword ptr [EAX]
0068f1b0	8bcf	MOV ECX,EDI
0068f1b2	ffd2	CALL EDX
0068f1b4	8b4e34	MOV ECX,dword ptr [ESI + 0x34]
0068f1b7	85c9	TEST ECX,ECX
0068f1b9	7407	JZ 0x0068f1c2
0068f1bb	8b01	MOV EAX,dword ptr [ECX]
0068f1bd	8b5004	MOV EDX,dword ptr [EAX + 0x4]
0068f1c0	ffd2	CALL EDX
0068f1c2	897e34	MOV dword ptr [ESI + 0x34],EDI
0068f1c5	5f	POP EDI
0068f1c6	5e	POP ESI
0068f1c7	c20400	RET 0x4

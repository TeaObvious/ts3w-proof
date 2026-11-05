# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; Flora_DrawBranchBatch; owned ranges [[00715ea0, 00715f02]]
00715ea0	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00715ea4	83ec28	SUB ESP,0x28
00715ea7	56	PUSH ESI
00715ea8	8bf1	MOV ESI,ECX
00715eaa	8b08	MOV ECX,dword ptr [EAX]
00715eac	8b16	MOV EDX,dword ptr [ESI]
00715eae	8b0c8a	MOV ECX,dword ptr [EDX + ECX*0x4]
00715eb1	8b4118	MOV EAX,dword ptr [ECX + 0x18]
00715eb4	8b542434	MOV EDX,dword ptr [ESP + 0x34]
00715eb8	0faf02	IMUL EAX,dword ptr [EDX]
00715ebb	33d2	XOR EDX,EDX
00715ebd	f7b6f4020000	DIV dword ptr [ESI + 0x2f4]
00715ec3	50	PUSH EAX
00715ec4	8b86fc020000	MOV EAX,dword ptr [ESI + 0x2fc]
00715eca	6a00	PUSH 0x0
00715ecc	6a00	PUSH 0x0
00715ece	6a05	PUSH 0x5
00715ed0	51	PUSH ECX
00715ed1	8b8ef8020000	MOV ECX,dword ptr [ESI + 0x2f8]
00715ed7	50	PUSH EAX
00715ed8	51	PUSH ECX
00715ed9	8d4c2420	LEA ECX,[ESP + 0x20]
00715edd	e83ea2fbff	CALL 0x006d0120
00715ee2	8b442438	MOV EAX,dword ptr [ESP + 0x38]
00715ee6	8b8c86a0020000	MOV ECX,dword ptr [ESI + EAX*0x4 + 0x2a0]
00715eed	8d542404	LEA EDX,[ESP + 0x4]
00715ef1	52	PUSH EDX
00715ef2	68c0ff6c00	PUSH 0x6cffc0
00715ef7	e8d4470800	CALL 0x0079a6d0
00715efc	5e	POP ESI
00715efd	83c428	ADD ESP,0x28
00715f00	c20c00	RET 0xc

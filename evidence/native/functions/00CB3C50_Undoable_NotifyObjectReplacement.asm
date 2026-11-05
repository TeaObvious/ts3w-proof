# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00cb3c50, 00cb3c88]]
00cb3c50	8b442414	MOV EAX,dword ptr [ESP + 0x14]
00cb3c54	85c0	TEST EAX,EAX
00cb3c56	7430	JZ 0x00cb3c88
00cb3c58	8d4808	LEA ECX,[EAX + 0x8]
00cb3c5b	8b01	MOV EAX,dword ptr [ECX]
00cb3c5d	8b5004	MOV EDX,dword ptr [EAX + 0x4]
00cb3c60	680003a907	PUSH 0x7a90300
00cb3c65	ffd2	CALL EDX
00cb3c67	85c0	TEST EAX,EAX
00cb3c69	741d	JZ 0x00cb3c88
00cb3c6b	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
00cb3c6f	8b10	MOV EDX,dword ptr [EAX]
00cb3c71	8b5208	MOV EDX,dword ptr [EDX + 0x8]
00cb3c74	51	PUSH ECX
00cb3c75	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
00cb3c79	51	PUSH ECX
00cb3c7a	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
00cb3c7e	51	PUSH ECX
00cb3c7f	8b4c2410	MOV ECX,dword ptr [ESP + 0x10]
00cb3c83	51	PUSH ECX
00cb3c84	8bc8	MOV ECX,EAX
00cb3c86	ffd2	CALL EDX
00cb3c88	c3	RET

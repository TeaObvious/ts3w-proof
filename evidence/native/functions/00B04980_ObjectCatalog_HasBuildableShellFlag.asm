# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00b04980, 00b049a9]]
00b04980	8b442404	MOV EAX,dword ptr [ESP + 0x4]
00b04984	85c0	TEST EAX,EAX
00b04986	741f	JZ 0x00b049a7
00b04988	8b0d34e01e01	MOV ECX,dword ptr [0x011ee034]
00b0498e	83c018	ADD EAX,0x18
00b04991	50	PUSH EAX
00b04992	e819a21800	CALL 0x00c8ebb0
00b04997	85c0	TEST EAX,EAX
00b04999	740c	JZ 0x00b049a7
00b0499b	8b8098000000	MOV EAX,dword ptr [EAX + 0x98]
00b049a1	c1e81a	SHR EAX,0x1a
00b049a4	2401	AND AL,0x1
00b049a6	c3	RET
00b049a7	32c0	XOR AL,AL
00b049a9	c3	RET

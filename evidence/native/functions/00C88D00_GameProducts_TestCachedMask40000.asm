# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00c88d00, 00c88d2a]]
00c88d00	803defde1e0100	CMP byte ptr [0x011edeef],0x0
00c88d07	751c	JNZ 0x00c88d25
00c88d09	6800000400	PUSH 0x40000
00c88d0e	b9e0ed1c01	MOV ECX,0x11cede0
00c88d13	e888b089ff	CALL 0x00523da0
00c88d18	a2eede1e01	MOV [0x011edeee],AL
00c88d1d	c605efde1e0101	MOV byte ptr [0x011edeef],0x1
00c88d24	c3	RET
00c88d25	a0eede1e01	MOV AL,[0x011edeee]
00c88d2a	c3	RET

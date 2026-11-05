# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; MaterialSetInterface_AcquireDefault; owned ranges [[006d7cd0, 006d7cfa]]
006d7cd0	56	PUSH ESI
006d7cd1	8bf1	MOV ESI,ECX
006d7cd3	8b4e04	MOV ECX,dword ptr [ESI + 0x4]
006d7cd6	85c9	TEST ECX,ECX
006d7cd8	750c	JNZ 0x006d7ce6
006d7cda	8b442408	MOV EAX,dword ptr [ESP + 0x8]
006d7cde	8908	MOV dword ptr [EAX],ECX
006d7ce0	32c0	XOR AL,AL
006d7ce2	5e	POP ESI
006d7ce3	c20400	RET 0x4
006d7ce6	8b11	MOV EDX,dword ptr [ECX]
006d7ce8	8b02	MOV EAX,dword ptr [EDX]
006d7cea	ffd0	CALL EAX
006d7cec	8b4e04	MOV ECX,dword ptr [ESI + 0x4]
006d7cef	8b542408	MOV EDX,dword ptr [ESP + 0x8]
006d7cf3	890a	MOV dword ptr [EDX],ECX
006d7cf5	b001	MOV AL,0x1
006d7cf7	5e	POP ESI
006d7cf8	c20400	RET 0x4

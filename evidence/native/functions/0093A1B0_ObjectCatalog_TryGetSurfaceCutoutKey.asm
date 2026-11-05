# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; ObjectCatalog_TryGetSurfaceCutoutKey; owned ranges [[0093a1b0, 0093a1fb]]
0093a1b0	8b0d34e01e01	MOV ECX,dword ptr [0x011ee034]
0093a1b6	85c9	TEST ECX,ECX
0093a1b8	743f	JZ 0x0093a1f9
0093a1ba	8b442404	MOV EAX,dword ptr [ESP + 0x4]
0093a1be	50	PUSH EAX
0093a1bf	e8ec493500	CALL 0x00c8ebb0
0093a1c4	85c0	TEST EAX,EAX
0093a1c6	7431	JZ 0x0093a1f9
0093a1c8	8bc8	MOV ECX,EAX
0093a1ca	e8c11abdff	CALL 0x0050bc90
0093a1cf	8b10	MOV EDX,dword ptr [EAX]
0093a1d1	8b4c2408	MOV ECX,dword ptr [ESP + 0x8]
0093a1d5	8911	MOV dword ptr [ECX],EDX
0093a1d7	8b5004	MOV EDX,dword ptr [EAX + 0x4]
0093a1da	895104	MOV dword ptr [ECX + 0x4],EDX
0093a1dd	8b5008	MOV EDX,dword ptr [EAX + 0x8]
0093a1e0	895108	MOV dword ptr [ECX + 0x8],EDX
0093a1e3	8b400c	MOV EAX,dword ptr [EAX + 0xc]
0093a1e6	89410c	MOV dword ptr [ECX + 0xc],EAX
0093a1e9	8b11	MOV EDX,dword ptr [ECX]
0093a1eb	0b5104	OR EDX,dword ptr [ECX + 0x4]
0093a1ee	7406	JZ 0x0093a1f6
0093a1f0	b801000000	MOV EAX,0x1
0093a1f5	c3	RET
0093a1f6	33c0	XOR EAX,EAX
0093a1f8	c3	RET
0093a1f9	32c0	XOR AL,AL
0093a1fb	c3	RET

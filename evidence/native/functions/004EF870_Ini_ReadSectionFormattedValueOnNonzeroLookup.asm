# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual saved annotated owned Listing; Ini_ReadSectionFormattedValueOnNonzeroLookup; owned ranges [[004ef870, 004ef8ef]]
004ef870	83ec10	SUB ESP,0x10
004ef873	8b4c2414	MOV ECX,dword ptr [ESP + 0x14]
004ef877	56	PUSH ESI
004ef878	8d542404	LEA EDX,[ESP + 0x4]
004ef87c	52	PUSH EDX
004ef87d	8b542424	MOV EDX,dword ptr [ESP + 0x24]
004ef881	b8548e1c01	MOV EAX,0x11c8e54
004ef886	89442408	MOV dword ptr [ESP + 0x8],EAX
004ef88a	8944240c	MOV dword ptr [ESP + 0xc],EAX
004ef88e	8b01	MOV EAX,dword ptr [ECX]
004ef890	8b402c	MOV EAX,dword ptr [EAX + 0x2c]
004ef893	52	PUSH EDX
004ef894	8b542424	MOV EDX,dword ptr [ESP + 0x24]
004ef898	52	PUSH EDX
004ef899	33f6	XOR ESI,ESI
004ef89b	c744241c44a2fb00	MOV dword ptr [ESP + 0x1c],0xfba244
004ef8a3	c7442418568e1c01	MOV dword ptr [ESP + 0x18],0x11c8e56
004ef8ab	ffd0	CALL EAX
004ef8ad	85c0	TEST EAX,EAX
004ef8af	7419	JZ 0x004ef8ca
004ef8b1	8b542424	MOV EDX,dword ptr [ESP + 0x24]
004ef8b5	8b442404	MOV EAX,dword ptr [ESP + 0x4]
004ef8b9	8d4c2428	LEA ECX,[ESP + 0x28]
004ef8bd	51	PUSH ECX
004ef8be	52	PUSH EDX
004ef8bf	50	PUSH EAX
004ef8c0	e8dbe50000	CALL 0x004fdea0
004ef8c5	83c40c	ADD ESP,0xc
004ef8c8	8bf0	MOV ESI,EAX
004ef8ca	8b4c240c	MOV ECX,dword ptr [ESP + 0xc]
004ef8ce	8b442404	MOV EAX,dword ptr [ESP + 0x4]
004ef8d2	2bc8	SUB ECX,EAX
004ef8d4	83e1fe	AND ECX,0xfffffffe
004ef8d7	83f902	CMP ECX,0x2
004ef8da	7e0d	JLE 0x004ef8e9
004ef8dc	85c0	TEST EAX,EAX
004ef8de	7409	JZ 0x004ef8e9
004ef8e0	50	PUSH EAX
004ef8e1	e8fa4bffff	CALL 0x004e44e0
004ef8e6	83c404	ADD ESP,0x4
004ef8e9	8bc6	MOV EAX,ESI
004ef8eb	5e	POP ESI
004ef8ec	83c410	ADD ESP,0x10
004ef8ef	c3	RET

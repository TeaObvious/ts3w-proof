# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; complete actual saved Ghidra Listing with pristine original bytes; body [[00ccb480, 00ccb562]]
00ccb480	81ec98000000	SUB ESP,0x98
00ccb486	8b84249c000000	MOV EAX,dword ptr [ESP + 0x9c]
00ccb48d	8b9424a4000000	MOV EDX,dword ptr [ESP + 0xa4]
00ccb494	57	PUSH EDI
00ccb495	8bf9	MOV EDI,ECX
00ccb497	8b8c24a4000000	MOV ECX,dword ptr [ESP + 0xa4]
00ccb49e	89442404	MOV dword ptr [ESP + 0x4],EAX
00ccb4a2	8b8424ac000000	MOV EAX,dword ptr [ESP + 0xac]
00ccb4a9	894c2408	MOV dword ptr [ESP + 0x8],ECX
00ccb4ad	8d4c241c	LEA ECX,[ESP + 0x1c]
00ccb4b1	8954240c	MOV dword ptr [ESP + 0xc],EDX
00ccb4b5	89442410	MOV dword ptr [ESP + 0x10],EAX
00ccb4b9	e882c2e0ff	CALL 0x00ad7740
00ccb4be	8a8424b0000000	MOV AL,byte ptr [ESP + 0xb0]
00ccb4c5	84c0	TEST AL,AL
00ccb4c7	8b8c24b4000000	MOV ECX,dword ptr [ESP + 0xb4]
00ccb4ce	88442414	MOV byte ptr [ESP + 0x14],AL
00ccb4d2	894c2418	MOV dword ptr [ESP + 0x18],ECX
00ccb4d6	7522	JNZ 0x00ccb4fa
00ccb4d8	56	PUSH ESI
00ccb4d9	8bb424bc000000	MOV ESI,dword ptr [ESP + 0xbc]
00ccb4e0	85f6	TEST ESI,ESI
00ccb4e2	7415	JZ 0x00ccb4f9
00ccb4e4	8bce	MOV ECX,ESI
00ccb4e6	e825bae0ff	CALL 0x00ad6f10
00ccb4eb	84c0	TEST AL,AL
00ccb4ed	740a	JZ 0x00ccb4f9
00ccb4ef	56	PUSH ESI
00ccb4f0	8d4c2424	LEA ECX,[ESP + 0x24]
00ccb4f4	e847d2e0ff	CALL 0x00ad8740
00ccb4f9	5e	POP ESI
00ccb4fa	8d542404	LEA EDX,[ESP + 0x4]
00ccb4fe	52	PUSH EDX
00ccb4ff	8d4f10	LEA ECX,[EDI + 0x10]
00ccb502	e819feffff	CALL 0x00ccb320
00ccb507	8a4c2414	MOV CL,byte ptr [ESP + 0x14]
00ccb50b	8808	MOV byte ptr [EAX],CL
00ccb50d	8b542418	MOV EDX,dword ptr [ESP + 0x18]
00ccb511	8d4c241c	LEA ECX,[ESP + 0x1c]
00ccb515	51	PUSH ECX
00ccb516	8d4808	LEA ECX,[EAX + 0x8]
00ccb519	895004	MOV dword ptr [EAX + 0x4],EDX
00ccb51c	e8dff5ffff	CALL 0x00ccab00
00ccb521	8b54247c	MOV EDX,dword ptr [ESP + 0x7c]
00ccb525	52	PUSH EDX
00ccb526	8d4c2474	LEA ECX,[ESP + 0x74]
00ccb52a	e89172d8ff	CALL 0x00a527c0
00ccb52f	8b442460	MOV EAX,dword ptr [ESP + 0x60]
00ccb533	50	PUSH EAX
00ccb534	8d4c2458	LEA ECX,[ESP + 0x58]
00ccb538	e88372d8ff	CALL 0x00a527c0
00ccb53d	8b4c2444	MOV ECX,dword ptr [ESP + 0x44]
00ccb541	51	PUSH ECX
00ccb542	8d4c243c	LEA ECX,[ESP + 0x3c]
00ccb546	e87572d8ff	CALL 0x00a527c0
00ccb54b	8b542428	MOV EDX,dword ptr [ESP + 0x28]
00ccb54f	52	PUSH EDX
00ccb550	8d4c2420	LEA ECX,[ESP + 0x20]
00ccb554	e82772d8ff	CALL 0x00a52780
00ccb559	5f	POP EDI
00ccb55a	81c498000000	ADD ESP,0x98
00ccb560	c21c00	RET 0x1c

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing Ghidra owned ranges [00ab42d0,00ab42ff]. 48 owned bytes/19 instructions; 0 nonowned envelope bytes excluded. Readonly Listing, body bytes agree with original PE and all instruction starts agree with independent decoding. No DB/body/prototype repair or save.

Analyst role: Four-word repeated range fill. cdecl begin/end/value pointer, plain RET void. Copies four raw DWORDs per16-byte element over [begin,end), no count or alignment validation. Overlap/invalid pointers are caller obligations.

00ab42d0	8b442404	MOV EAX, dword ptr [ESP + 0x4]
00ab42d4	8b542408	MOV EDX, dword ptr [ESP + 0x8]
00ab42d8	3bc2	CMP EAX, EDX
00ab42da	7423	JZ 0x00ab42ff
00ab42dc	8b4c240c	MOV ECX, dword ptr [ESP + 0xc]
00ab42e0	56	PUSH ESI
00ab42e1	8b31	MOV ESI, dword ptr [ECX]
00ab42e3	8930	MOV dword ptr [EAX], ESI
00ab42e5	8b7104	MOV ESI, dword ptr [ECX + 0x4]
00ab42e8	897004	MOV dword ptr [EAX + 0x4], ESI
00ab42eb	8b7108	MOV ESI, dword ptr [ECX + 0x8]
00ab42ee	897008	MOV dword ptr [EAX + 0x8], ESI
00ab42f1	8b710c	MOV ESI, dword ptr [ECX + 0xc]
00ab42f4	89700c	MOV dword ptr [EAX + 0xc], ESI
00ab42f7	83c010	ADD EAX, 0x10
00ab42fa	3bc2	CMP EAX, EDX
00ab42fc	75e3	JNZ 0x00ab42e1
00ab42fe	5e	POP ESI
00ab42ff	c3	RET

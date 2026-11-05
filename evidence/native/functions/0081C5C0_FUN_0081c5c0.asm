# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC1.67; explicit GhidrAssist program /TS3W.exe
Analyst display alias: RoutingOptions_ContainsGuidVector38
Actual Ghidra name: FUN_0081c5c0
Boundary: contiguous Ghidra-owned body [0081c5c0,0081c5f6); 54 bytes.
Every byte independently matches the authoritative original PE. No database mutation or save.
Paired pseudocode: 0081C5C0_FUN_0081c5c0.c

ORIGINAL BYTES
0081c5c0: 8b 51 3c 8b 41 38 3b c2 74 20 8b 4c 24 08 56 8b
0081c5d0: 74 24 08 57 8b 38 3b fe 75 07 8b 78 04 3b f9 74
0081c5e0: 07 83 c0 08 3b c2 75 ec 5f 5e 33 c9 3b c2 0f 95
0081c5f0: c1 8a c1 c2 08 00

GHIDRA OWNED LISTING
0081c5c0: MOV EDX, dword ptr [ECX + 0x3c]
0081c5c3: MOV EAX, dword ptr [ECX + 0x38]
0081c5c6: CMP EAX, EDX
0081c5c8: JZ 0x0081c5ea
0081c5ca: MOV ECX, dword ptr [ESP + 0x8]
0081c5ce: PUSH ESI
0081c5cf: MOV ESI, dword ptr [ESP + 0x8]
0081c5d3: PUSH EDI
0081c5d4: MOV EDI, dword ptr [EAX]
0081c5d6: CMP EDI, ESI
0081c5d8: JNZ 0x0081c5e1
0081c5da: MOV EDI, dword ptr [EAX + 0x4]
0081c5dd: CMP EDI, ECX
0081c5df: JZ 0x0081c5e8
0081c5e1: ADD EAX, 0x8
0081c5e4: CMP EAX, EDX
0081c5e6: JNZ 0x0081c5d4
0081c5e8: POP EDI
0081c5e9: POP ESI
0081c5ea: XOR ECX, ECX
0081c5ec: CMP EAX, EDX
0081c5ee: SETNZ CL
0081c5f1: MOV AL, CL
0081c5f3: RET 0x8

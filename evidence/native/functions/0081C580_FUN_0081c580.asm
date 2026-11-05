# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC1.67; explicit GhidrAssist program /TS3W.exe
Analyst display alias: RoutingOptions_ContainsGuidVector58
Actual Ghidra name: FUN_0081c580
Boundary: contiguous Ghidra-owned body [0081c580,0081c5b6); 54 bytes.
Every byte independently matches the authoritative original PE. No database mutation or save.
Paired pseudocode: 0081C580_FUN_0081c580.c

ORIGINAL BYTES
0081c580: 8b 51 5c 8b 41 58 3b c2 74 20 8b 4c 24 08 56 8b
0081c590: 74 24 08 57 8b 38 3b fe 75 07 8b 78 04 3b f9 74
0081c5a0: 07 83 c0 08 3b c2 75 ec 5f 5e 33 c9 3b c2 0f 95
0081c5b0: c1 8a c1 c2 08 00

GHIDRA OWNED LISTING
0081c580: MOV EDX, dword ptr [ECX + 0x5c]
0081c583: MOV EAX, dword ptr [ECX + 0x58]
0081c586: CMP EAX, EDX
0081c588: JZ 0x0081c5aa
0081c58a: MOV ECX, dword ptr [ESP + 0x8]
0081c58e: PUSH ESI
0081c58f: MOV ESI, dword ptr [ESP + 0x8]
0081c593: PUSH EDI
0081c594: MOV EDI, dword ptr [EAX]
0081c596: CMP EDI, ESI
0081c598: JNZ 0x0081c5a1
0081c59a: MOV EDI, dword ptr [EAX + 0x4]
0081c59d: CMP EDI, ECX
0081c59f: JZ 0x0081c5a8
0081c5a1: ADD EAX, 0x8
0081c5a4: CMP EAX, EDX
0081c5a6: JNZ 0x0081c594
0081c5a8: POP EDI
0081c5a9: POP ESI
0081c5aa: XOR ECX, ECX
0081c5ac: CMP EAX, EDX
0081c5ae: SETNZ CL
0081c5b1: MOV AL, CL
0081c5b3: RET 0x8

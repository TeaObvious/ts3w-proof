# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_009a23d0, full owned listing: 51 instructions/136 owned bytes.
# Envelope [009A23D0,009A2458) 136 bytes. No nonowned gap.
# Explicit /TS3W.exe read-only MCP; pristine bytes independently decoded. No DB mutation/save.

ORIGINAL ENVELOPE BYTES
009a23d0: 8b 44 24 08 8b 10 0f b7 02 83 ec 08 85 c0 53 55
009a23e0: 56 57 be c5 9d 1c 81 74 19 8d a4 24 00 00 00 00
009a23f0: 69 f6 93 01 00 01 83 c2 02 33 f0 0f b7 02 85 c0
009a2400: 75 ee 8b 79 08 33 d2 8b c6 f7 f7 8b 59 04 8b 04
009a2410: 93 56 8d 2c 93 8b 54 24 24 52 50 e8 30 fc ff ff
009a2420: 85 c0 74 0a 89 44 24 10 89 6c 24 14 eb 0e 8b 0c
009a2430: bb 8d 04 bb 89 4c 24 10 89 44 24 14 8b 44 24 1c
009a2440: 5f 8d 4c 24 0c 8b 11 8b 49 04 5e 5d 89 10 89 48
009a2450: 04 5b 83 c4 08 c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_009a23d0
Entry Point: 009a23d0

009a23d0: MOV EAX, dword ptr [ESP + 0x8]
009a23d4: MOV EDX, dword ptr [EAX]
009a23d6: MOVZX EAX, word ptr [EDX]
009a23d9: SUB ESP, 0x8
009a23dc: TEST EAX, EAX
009a23de: PUSH EBX
009a23df: PUSH EBP
009a23e0: PUSH ESI
009a23e1: PUSH EDI
009a23e2: MOV ESI, 0x811c9dc5
009a23e7: JZ 0x009a2402
009a23e9: LEA ESP, [ESP]
009a23f0: IMUL ESI, ESI, 0x1000193
009a23f6: ADD EDX, 0x2
009a23f9: XOR ESI, EAX
009a23fb: MOVZX EAX, word ptr [EDX]
009a23fe: TEST EAX, EAX
009a2400: JNZ 0x009a23f0
009a2402: MOV EDI, dword ptr [ECX + 0x8]
009a2405: XOR EDX, EDX
009a2407: MOV EAX, ESI
009a2409: DIV EDI
009a240b: MOV EBX, dword ptr [ECX + 0x4]
009a240e: MOV EAX, dword ptr [EBX + EDX*0x4]
009a2411: PUSH ESI
009a2412: LEA EBP, [EBX + EDX*0x4]
009a2415: MOV EDX, dword ptr [ESP + 0x24]
009a2419: PUSH EDX
009a241a: PUSH EAX
009a241b: CALL 0x009a2050
009a2420: TEST EAX, EAX
009a2422: JZ 0x009a242e
009a2424: MOV dword ptr [ESP + 0x10], EAX
009a2428: MOV dword ptr [ESP + 0x14], EBP
009a242c: JMP 0x009a243c
009a242e: MOV ECX, dword ptr [EBX + EDI*0x4]
009a2431: LEA EAX, [EBX + EDI*0x4]
009a2434: MOV dword ptr [ESP + 0x10], ECX
009a2438: MOV dword ptr [ESP + 0x14], EAX
009a243c: MOV EAX, dword ptr [ESP + 0x1c]
009a2440: POP EDI
009a2441: LEA ECX, [ESP + 0xc]
009a2445: MOV EDX, dword ptr [ECX]
009a2447: MOV ECX, dword ptr [ECX + 0x4]
009a244a: POP ESI
009a244b: POP EBP
009a244c: MOV dword ptr [EAX], EDX
009a244e: MOV dword ptr [EAX + 0x4], ECX
009a2451: POP EBX
009a2452: ADD ESP, 0x8
009a2455: RET 0x8

Total instructions: 51

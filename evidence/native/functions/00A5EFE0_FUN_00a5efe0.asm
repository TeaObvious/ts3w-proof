# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a5efe0,00a5f063], 132 bytes/41 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

ECX swap plus two stack words type/point, RET8; only AL Boolean. Table A5F064 selects type2 ->A5E360(point,1),3 ->A5E2F0; other cases are separate owners.

ORIGINAL BYTES
00a5efe0: 8b 44 24 04 83 c0 fe 83 f8 07 77 73 ff 24 85 64
00a5eff0: f0 a5 00 8b 44 24 08 6a 01 50 e8 61 f3 ff ff c2
00a5f000: 08 00 8b 54 24 08 52 e8 e4 f2 ff ff c2 08 00 8b
00a5f010: 44 24 08 50 e8 67 f4 ff ff c2 08 00 8b 54 24 08
00a5f020: 52 e8 8a f0 ff ff c2 08 00 8b 44 24 08 50 e8 cd
00a5f030: f0 ff ff c2 08 00 8b 54 24 08 52 e8 10 f1 ff ff
00a5f040: c2 08 00 8b 44 24 08 6a 00 50 e8 11 f3 ff ff c2
00a5f050: 08 00 8b 54 24 08 52 e8 94 f4 ff ff c2 08 00 32
00a5f060: c0 c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a5efe0
Entry Point: 00a5efe0

00a5efe0: MOV EAX, dword ptr [ESP + 0x4]
00a5efe4: ADD EAX, -0x2
00a5efe7: CMP EAX, 0x7
00a5efea: JA 0x00a5f05f
00a5efec: JMP dword ptr [EAX*0x4 + 0xa5f064]
00a5eff3: MOV EAX, dword ptr [ESP + 0x8]
00a5eff7: PUSH 0x1
00a5eff9: PUSH EAX
00a5effa: CALL 0x00a5e360
00a5efff: RET 0x8
00a5f002: MOV EDX, dword ptr [ESP + 0x8]
00a5f006: PUSH EDX
00a5f007: CALL 0x00a5e2f0
00a5f00c: RET 0x8
00a5f00f: MOV EAX, dword ptr [ESP + 0x8]
00a5f013: PUSH EAX
00a5f014: CALL 0x00a5e480
00a5f019: RET 0x8
00a5f01c: MOV EDX, dword ptr [ESP + 0x8]
00a5f020: PUSH EDX
00a5f021: CALL 0x00a5e0b0
00a5f026: RET 0x8
00a5f029: MOV EAX, dword ptr [ESP + 0x8]
00a5f02d: PUSH EAX
00a5f02e: CALL 0x00a5e100
00a5f033: RET 0x8
00a5f036: MOV EDX, dword ptr [ESP + 0x8]
00a5f03a: PUSH EDX
00a5f03b: CALL 0x00a5e150
00a5f040: RET 0x8
00a5f043: MOV EAX, dword ptr [ESP + 0x8]
00a5f047: PUSH 0x0
00a5f049: PUSH EAX
00a5f04a: CALL 0x00a5e360
00a5f04f: RET 0x8
00a5f052: MOV EDX, dword ptr [ESP + 0x8]
00a5f056: PUSH EDX
00a5f057: CALL 0x00a5e4f0
00a5f05c: RET 0x8
00a5f05f: XOR AL, AL
00a5f061: RET 0x8

Total instructions: 41
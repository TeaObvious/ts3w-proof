# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_009b0280, complete reviewed owned range [009B0280,009B035C).
# Explicit /TS3W.exe MCP disassembly: 76 instructions, both RET4 paths, no nonowned byte gap.
# Full220-byte MCP read matched pristine executable; no database mutation/save or repeated export.
# ECX inventory-store receiver, one source-stream pointer stackword; UInt64 EDX:EAX result.

ORIGINAL BYTES
009b0280: 83 ec 28 53 56 8b f1 57 8d 4c 24 1c e8 6f 76 e2
009b0290: ff 8b 0d a4 a6 1e 01 85 c9 0f 84 a7 00 00 00 8d
009b02a0: 44 24 1c 50 e8 37 14 ff ff 84 c0 0f 84 95 00 00
009b02b0: 00 8b 4c 24 1c 51 8d 4e 10 e8 42 fe ff ff 8b da
009b02c0: 6a 01 8d 54 24 10 8b f8 52 8d 4c 24 24 89 7c 24
009b02d0: 14 89 5c 24 18 c7 44 24 1c 6b 71 dd b4 c7 44 24
009b02e0: 20 00 00 00 00 e8 d6 81 e2 ff 84 c0 74 58 8b 74
009b02f0: 24 38 8b 06 8b 50 28 55 6a 00 6a 00 8b ce ff d2
009b0300: 8b 44 24 28 6a ff 50 56 e8 a3 d4 b2 ff 83 c4 0c
009b0310: 8d 4c 24 20 8b e8 e8 55 77 e2 ff 8b 16 8b 42 1c
009b0320: 8b ce ff d0 3b e8 5d 75 1d 80 7c 24 30 00 74 16
009b0330: 8d 4c 24 1c e8 57 76 e2 ff 8b c7 5f 5e 8b d3 5b
009b0340: 83 c4 28 c2 04 00 8d 4c 24 1c e8 41 76 e2 ff 5f
009b0350: 5e 33 c0 33 d2 5b 83 c4 28 c2 04 00

GHIDRA OWNED DISASSEMBLY
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_009b0280
Entry Point: 009b0280

009b0280: SUB ESP, 0x28
009b0283: PUSH EBX
009b0284: PUSH ESI
009b0285: MOV ESI, ECX
009b0287: PUSH EDI
009b0288: LEA ECX, [ESP + 0x1c]
009b028c: CALL 0x007d7900
009b0291: MOV ECX, dword ptr [0x011ea6a4]
009b0297: TEST ECX, ECX
009b0299: JZ 0x009b0346
009b029f: LEA EAX, [ESP + 0x1c]
009b02a3: PUSH EAX
009b02a4: CALL 0x009a16e0
009b02a9: TEST AL, AL
009b02ab: JZ 0x009b0346
009b02b1: MOV ECX, dword ptr [ESP + 0x1c]
009b02b5: PUSH ECX
009b02b6: LEA ECX, [ESI + 0x10]
009b02b9: CALL 0x009b0100
009b02be: MOV EBX, EDX
009b02c0: PUSH 0x1
009b02c2: LEA EDX, [ESP + 0x10]
009b02c6: MOV EDI, EAX
009b02c8: PUSH EDX
009b02c9: LEA ECX, [ESP + 0x24]
009b02cd: MOV dword ptr [ESP + 0x14], EDI
009b02d1: MOV dword ptr [ESP + 0x18], EBX
009b02d5: MOV dword ptr [ESP + 0x1c], 0xb4dd716b
009b02dd: MOV dword ptr [ESP + 0x20], 0x0
009b02e5: CALL 0x007d84c0
009b02ea: TEST AL, AL
009b02ec: JZ 0x009b0346
009b02ee: MOV ESI, dword ptr [ESP + 0x38]
009b02f2: MOV EAX, dword ptr [ESI]
009b02f4: MOV EDX, dword ptr [EAX + 0x28]
009b02f7: PUSH EBP
009b02f8: PUSH 0x0
009b02fa: PUSH 0x0
009b02fc: MOV ECX, ESI
009b02fe: CALL EDX
009b0300: MOV EAX, dword ptr [ESP + 0x28]
009b0304: PUSH -0x1
009b0306: PUSH EAX
009b0307: PUSH ESI
009b0308: CALL 0x004dd7b0
009b030d: ADD ESP, 0xc
009b0310: LEA ECX, [ESP + 0x20]
009b0314: MOV EBP, EAX
009b0316: CALL 0x007d7a70
009b031b: MOV EDX, dword ptr [ESI]
009b031d: MOV EAX, dword ptr [EDX + 0x1c]
009b0320: MOV ECX, ESI
009b0322: CALL EAX
009b0324: CMP EBP, EAX
009b0326: POP EBP
009b0327: JNZ 0x009b0346
009b0329: CMP byte ptr [ESP + 0x30], 0x0
009b032e: JZ 0x009b0346
009b0330: LEA ECX, [ESP + 0x1c]
009b0334: CALL 0x007d7990
009b0339: MOV EAX, EDI
009b033b: POP EDI
009b033c: POP ESI
009b033d: MOV EDX, EBX
009b033f: POP EBX
009b0340: ADD ESP, 0x28
009b0343: RET 0x4
009b0346: LEA ECX, [ESP + 0x1c]
009b034a: CALL 0x007d7990
009b034f: POP EDI
009b0350: POP ESI
009b0351: XOR EAX, EAX
009b0353: XOR EDX, EDX
009b0355: POP EBX
009b0356: ADD ESP, 0x28
009b0359: RET 0x4

Total instructions: 76

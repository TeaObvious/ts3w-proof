# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_009b1780, complete selected owned instruction range [009B1780,009B1825).
# Explicit /TS3W.exe MCP actual listing: 56 instructions; contiguous original-byte coverage 165 bytes.
# No mutation/reanalysis/database save; actual C pair qualifies semantic scope and ABI.

ORIGINAL BYTES
009b1780: 83 ec 18 56 57 8b 7c 24 24 8b f1 8b 0f 8d 54 24
009b1790: 08 52 c7 44 24 0c b0 92 fd 00 c7 44 24 10 5b 54
009b17a0: 63 d0 c7 44 24 14 00 00 00 00 c7 44 24 18 00 00
009b17b0: 00 00 c7 44 24 1c 00 00 00 00 c7 44 24 20 10 c0
009b17c0: 01 01 8b 01 8b 40 30 8d 54 24 14 52 ff d0 8b 44
009b17d0: 24 10 3b 44 24 14 75 17 85 c0 74 09 50 e8 fe 2c
009b17e0: b3 ff 83 c4 04 5f 32 c0 5e 83 c4 18 c2 04 00 8b
009b17f0: 08 89 4e 18 8b 50 04 53 8b c2 50 51 57 8b ce 89
009b1800: 56 1c e8 79 fa ff ff 8a d8 8b 44 24 14 85 c0 74
009b1810: 09 50 e8 c9 2c b3 ff 83 c4 04 8a c3 5b 5f 5e 83
009b1820: c4 18 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_009b1780
Entry Point: 009b1780

009b1780: SUB ESP, 0x18
009b1783: PUSH ESI
009b1784: PUSH EDI
009b1785: MOV EDI, dword ptr [ESP + 0x24]
009b1789: MOV ESI, ECX
009b178b: MOV ECX, dword ptr [EDI]
009b178d: LEA EDX, [ESP + 0x8]
009b1791: PUSH EDX
009b1792: MOV dword ptr [ESP + 0xc], 0xfd92b0
009b179a: MOV dword ptr [ESP + 0x10], 0xd063545b
009b17a2: MOV dword ptr [ESP + 0x14], 0x0
009b17aa: MOV dword ptr [ESP + 0x18], 0x0
009b17b2: MOV dword ptr [ESP + 0x1c], 0x0
009b17ba: MOV dword ptr [ESP + 0x20], 0x101c010
009b17c2: MOV EAX, dword ptr [ECX]
009b17c4: MOV EAX, dword ptr [EAX + 0x30]
009b17c7: LEA EDX, [ESP + 0x14]
009b17cb: PUSH EDX
009b17cc: CALL EAX
009b17ce: MOV EAX, dword ptr [ESP + 0x10]
009b17d2: CMP EAX, dword ptr [ESP + 0x14]
009b17d6: JNZ 0x009b17ef
009b17d8: TEST EAX, EAX
009b17da: JZ 0x009b17e5
009b17dc: PUSH EAX
009b17dd: CALL 0x004e44e0
009b17e2: ADD ESP, 0x4
009b17e5: POP EDI
009b17e6: XOR AL, AL
009b17e8: POP ESI
009b17e9: ADD ESP, 0x18
009b17ec: RET 0x4
009b17ef: MOV ECX, dword ptr [EAX]
009b17f1: MOV dword ptr [ESI + 0x18], ECX
009b17f4: MOV EDX, dword ptr [EAX + 0x4]
009b17f7: PUSH EBX
009b17f8: MOV EAX, EDX
009b17fa: PUSH EAX
009b17fb: PUSH ECX
009b17fc: PUSH EDI
009b17fd: MOV ECX, ESI
009b17ff: MOV dword ptr [ESI + 0x1c], EDX
009b1802: CALL 0x009b1280
009b1807: MOV BL, AL
009b1809: MOV EAX, dword ptr [ESP + 0x14]
009b180d: TEST EAX, EAX
009b180f: JZ 0x009b181a
009b1811: PUSH EAX
009b1812: CALL 0x004e44e0
009b1817: ADD ESP, 0x4
009b181a: MOV AL, BL
009b181c: POP EBX
009b181d: POP EDI
009b181e: POP ESI
009b181f: ADD ESP, 0x18
009b1822: RET 0x4

Total instructions: 56

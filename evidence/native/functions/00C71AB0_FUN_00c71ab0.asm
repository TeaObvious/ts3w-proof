# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_00c71ab0, complete owned contiguous [00C71AB0,00C71C3D), 140 instructions/397 bytes.
# Explicit /TS3W.exe read-only MCP listing; original PE bytes independently decoded and compared.
# No DB mutation or save. C pair qualifies ABI and unresolved dependencies.

ORIGINAL BYTES
00c71ab0: 83 ec 18 53 8b 5c 24 20 84 db 55 56 57 8b f1 74
00c71ac0: 3a 8b 06 8b 50 58 ff d2 8b f8 85 ff c7 44 24 2c
00c71ad0: 00 00 00 00 76 25 8b 06 8b 50 4c 8d 4c 24 2c 51
00c71ae0: 8b ce ff d2 53 8b c8 e8 c4 ff ff ff 8b 44 24 2c
00c71af0: 83 c0 01 3b c7 89 44 24 2c 72 db 8b 6e 14 8b 46
00c71b00: 18 33 db 33 ff 3b e8 89 7c 24 18 89 5c 24 1c 89
00c71b10: 5c 24 20 c7 44 24 24 58 ae 07 01 89 6c 24 2c 89
00c71b20: 44 24 14 0f 84 b5 00 00 00 8d a4 24 00 00 00 00
00c71b30: 8b 7d 00 85 ff 0f 84 8e 00 00 00 a1 90 a2 1e 01
00c71b40: 50 8b cf e8 18 27 cc ff 85 c0 74 7d 8b c8 e8 bd
00c71b50: 8a ce ff 83 f8 01 76 71 8d 47 04 89 7c 24 10 8b
00c71b60: c8 ba 01 00 00 00 f0 0f c1 11 3b 5c 24 20 73 1a
00c71b70: 8b cb 83 c3 04 85 c9 89 5c 24 1c 74 24 89 39 b9
00c71b80: 01 00 00 00 f0 0f c1 08 eb 17 8d 54 24 10 52 53
00c71b90: 8d 4c 24 20 e8 d7 46 c0 ff 8b 5c 24 1c 8b 7c 24
00c71ba0: 10 85 ff 74 20 8d 47 04 8b c8 83 ca ff f0 0f c1
00c71bb0: 11 4a 75 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a
00c71bc0: 01 8b cf ff d0 8b 6c 24 2c 83 c5 04 3b 6c 24 14
00c71bd0: 89 6c 24 2c 0f 85 56 ff ff ff 8b 7c 24 18 3b fb
00c71be0: 74 39 8b 2f 85 ed 74 10 8b 0d 90 a2 1e 01 51 8b
00c71bf0: cd e8 6a 26 cc ff eb 02 33 c0 6a 00 56 8b c8 e8
00c71c00: 1c aa ce ff 8b 16 8b 42 3c 6a 01 55 8b ce ff d0
00c71c10: 83 c7 04 3b fb 75 cb 8b 7c 24 18 53 57 8d 4c 24
00c71c20: 20 e8 2a 61 f7 ff 85 ff 74 09 57 e8 b0 28 87 ff
00c71c30: 83 c4 04 5f 5e 5d 5b 83 c4 18 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00c71ab0
Entry Point: 00c71ab0

00c71ab0: SUB ESP, 0x18
00c71ab3: PUSH EBX
00c71ab4: MOV EBX, dword ptr [ESP + 0x20]
00c71ab8: TEST BL, BL
00c71aba: PUSH EBP
00c71abb: PUSH ESI
00c71abc: PUSH EDI
00c71abd: MOV ESI, ECX
00c71abf: JZ 0x00c71afb
00c71ac1: MOV EAX, dword ptr [ESI]
00c71ac3: MOV EDX, dword ptr [EAX + 0x58]
00c71ac6: CALL EDX
00c71ac8: MOV EDI, EAX
00c71aca: TEST EDI, EDI
00c71acc: MOV dword ptr [ESP + 0x2c], 0x0
00c71ad4: JBE 0x00c71afb
00c71ad6: MOV EAX, dword ptr [ESI]
00c71ad8: MOV EDX, dword ptr [EAX + 0x4c]
00c71adb: LEA ECX, [ESP + 0x2c]
00c71adf: PUSH ECX
00c71ae0: MOV ECX, ESI
00c71ae2: CALL EDX
00c71ae4: PUSH EBX
00c71ae5: MOV ECX, EAX
00c71ae7: CALL 0x00c71ab0
00c71aec: MOV EAX, dword ptr [ESP + 0x2c]
00c71af0: ADD EAX, 0x1
00c71af3: CMP EAX, EDI
00c71af5: MOV dword ptr [ESP + 0x2c], EAX
00c71af9: JC 0x00c71ad6
00c71afb: MOV EBP, dword ptr [ESI + 0x14]
00c71afe: MOV EAX, dword ptr [ESI + 0x18]
00c71b01: XOR EBX, EBX
00c71b03: XOR EDI, EDI
00c71b05: CMP EBP, EAX
00c71b07: MOV dword ptr [ESP + 0x18], EDI
00c71b0b: MOV dword ptr [ESP + 0x1c], EBX
00c71b0f: MOV dword ptr [ESP + 0x20], EBX
00c71b13: MOV dword ptr [ESP + 0x24], 0x107ae58
00c71b1b: MOV dword ptr [ESP + 0x2c], EBP
00c71b1f: MOV dword ptr [ESP + 0x14], EAX
00c71b23: JZ 0x00c71bde
00c71b29: LEA ESP, [ESP]
00c71b30: MOV EDI, dword ptr [EBP]
00c71b33: TEST EDI, EDI
00c71b35: JZ 0x00c71bc9
00c71b3b: MOV EAX, [0x011ea290]
00c71b40: PUSH EAX
00c71b41: MOV ECX, EDI
00c71b43: CALL 0x00934260
00c71b48: TEST EAX, EAX
00c71b4a: JZ 0x00c71bc9
00c71b4c: MOV ECX, EAX
00c71b4e: CALL 0x0095a610
00c71b53: CMP EAX, 0x1
00c71b56: JBE 0x00c71bc9
00c71b58: LEA EAX, [EDI + 0x4]
00c71b5b: MOV dword ptr [ESP + 0x10], EDI
00c71b5f: MOV ECX, EAX
00c71b61: MOV EDX, 0x1
00c71b66: XADD.LOCK dword ptr [ECX], EDX
00c71b6a: CMP EBX, dword ptr [ESP + 0x20]
00c71b6e: JNC 0x00c71b8a
00c71b70: MOV ECX, EBX
00c71b72: ADD EBX, 0x4
00c71b75: TEST ECX, ECX
00c71b77: MOV dword ptr [ESP + 0x1c], EBX
00c71b7b: JZ 0x00c71ba1
00c71b7d: MOV dword ptr [ECX], EDI
00c71b7f: MOV ECX, 0x1
00c71b84: XADD.LOCK dword ptr [EAX], ECX
00c71b88: JMP 0x00c71ba1
00c71b8a: LEA EDX, [ESP + 0x10]
00c71b8e: PUSH EDX
00c71b8f: PUSH EBX
00c71b90: LEA ECX, [ESP + 0x20]
00c71b94: CALL 0x00876270
00c71b99: MOV EBX, dword ptr [ESP + 0x1c]
00c71b9d: MOV EDI, dword ptr [ESP + 0x10]
00c71ba1: TEST EDI, EDI
00c71ba3: JZ 0x00c71bc5
00c71ba5: LEA EAX, [EDI + 0x4]
00c71ba8: MOV ECX, EAX
00c71baa: OR EDX, 0xffffffff
00c71bad: XADD.LOCK dword ptr [ECX], EDX
00c71bb1: DEC EDX
00c71bb2: JNZ 0x00c71bc5
00c71bb4: MOV ECX, 0x1
00c71bb9: XCHG dword ptr [EAX], ECX
00c71bbb: MOV EDX, dword ptr [EDI]
00c71bbd: MOV EAX, dword ptr [EDX]
00c71bbf: PUSH 0x1
00c71bc1: MOV ECX, EDI
00c71bc3: CALL EAX
00c71bc5: MOV EBP, dword ptr [ESP + 0x2c]
00c71bc9: ADD EBP, 0x4
00c71bcc: CMP EBP, dword ptr [ESP + 0x14]
00c71bd0: MOV dword ptr [ESP + 0x2c], EBP
00c71bd4: JNZ 0x00c71b30
00c71bda: MOV EDI, dword ptr [ESP + 0x18]
00c71bde: CMP EDI, EBX
00c71be0: JZ 0x00c71c1b
00c71be2: MOV EBP, dword ptr [EDI]
00c71be4: TEST EBP, EBP
00c71be6: JZ 0x00c71bf8
00c71be8: MOV ECX, dword ptr [0x011ea290]
00c71bee: PUSH ECX
00c71bef: MOV ECX, EBP
00c71bf1: CALL 0x00934260
00c71bf6: JMP 0x00c71bfa
00c71bf8: XOR EAX, EAX
00c71bfa: PUSH 0x0
00c71bfc: PUSH ESI
00c71bfd: MOV ECX, EAX
00c71bff: CALL 0x0095c620
00c71c04: MOV EDX, dword ptr [ESI]
00c71c06: MOV EAX, dword ptr [EDX + 0x3c]
00c71c09: PUSH 0x1
00c71c0b: PUSH EBP
00c71c0c: MOV ECX, ESI
00c71c0e: CALL EAX
00c71c10: ADD EDI, 0x4
00c71c13: CMP EDI, EBX
00c71c15: JNZ 0x00c71be2
00c71c17: MOV EDI, dword ptr [ESP + 0x18]
00c71c1b: PUSH EBX
00c71c1c: PUSH EDI
00c71c1d: LEA ECX, [ESP + 0x20]
00c71c21: CALL 0x00be7d50
00c71c26: TEST EDI, EDI
00c71c28: JZ 0x00c71c33
00c71c2a: PUSH EDI
00c71c2b: CALL 0x004e44e0
00c71c30: ADD ESP, 0x4
00c71c33: POP EDI
00c71c34: POP ESI
00c71c35: POP EBP
00c71c36: POP EBX
00c71c37: ADD ESP, 0x18
00c71c3a: RET 0x4

Total instructions: 140

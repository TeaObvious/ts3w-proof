# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_00c6dcd0, complete owned contiguous [00C6DCD0,00C6DD42), 48 instructions/114 bytes.
# Explicit /TS3W.exe read-only MCP listing; original PE bytes independently decoded and compared.
# No DB mutation or save. C pair qualifies ABI and unresolved dependencies.

ORIGINAL BYTES
00c6dcd0: 53 8b 5c 24 10 84 db 55 8b 6c 24 18 56 8b f1 74
00c6dce0: 47 8b 06 8b 50 58 57 ff d2 8b f8 85 ff c7 44 24
00c6dcf0: 1c 00 00 00 00 76 30 8b 06 8b 50 4c 8d 4c 24 1c
00c6dd00: 51 8b ce ff d2 8b 4c 24 18 8b 54 24 14 55 53 51
00c6dd10: 52 8b c8 e8 b8 ff ff ff 8b 44 24 1c 83 c0 01 3b
00c6dd20: c7 89 44 24 1c 72 d0 5f 55 8d 44 24 18 50 8d 4c
00c6dd30: 24 18 51 56 e8 97 f8 ce ff 83 c4 10 5e 5d 5b c2
00c6dd40: 10 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00c6dcd0
Entry Point: 00c6dcd0

00c6dcd0: PUSH EBX
00c6dcd1: MOV EBX, dword ptr [ESP + 0x10]
00c6dcd5: TEST BL, BL
00c6dcd7: PUSH EBP
00c6dcd8: MOV EBP, dword ptr [ESP + 0x18]
00c6dcdc: PUSH ESI
00c6dcdd: MOV ESI, ECX
00c6dcdf: JZ 0x00c6dd28
00c6dce1: MOV EAX, dword ptr [ESI]
00c6dce3: MOV EDX, dword ptr [EAX + 0x58]
00c6dce6: PUSH EDI
00c6dce7: CALL EDX
00c6dce9: MOV EDI, EAX
00c6dceb: TEST EDI, EDI
00c6dced: MOV dword ptr [ESP + 0x1c], 0x0
00c6dcf5: JBE 0x00c6dd27
00c6dcf7: MOV EAX, dword ptr [ESI]
00c6dcf9: MOV EDX, dword ptr [EAX + 0x4c]
00c6dcfc: LEA ECX, [ESP + 0x1c]
00c6dd00: PUSH ECX
00c6dd01: MOV ECX, ESI
00c6dd03: CALL EDX
00c6dd05: MOV ECX, dword ptr [ESP + 0x18]
00c6dd09: MOV EDX, dword ptr [ESP + 0x14]
00c6dd0d: PUSH EBP
00c6dd0e: PUSH EBX
00c6dd0f: PUSH ECX
00c6dd10: PUSH EDX
00c6dd11: MOV ECX, EAX
00c6dd13: CALL 0x00c6dcd0
00c6dd18: MOV EAX, dword ptr [ESP + 0x1c]
00c6dd1c: ADD EAX, 0x1
00c6dd1f: CMP EAX, EDI
00c6dd21: MOV dword ptr [ESP + 0x1c], EAX
00c6dd25: JC 0x00c6dcf7
00c6dd27: POP EDI
00c6dd28: PUSH EBP
00c6dd29: LEA EAX, [ESP + 0x18]
00c6dd2d: PUSH EAX
00c6dd2e: LEA ECX, [ESP + 0x18]
00c6dd32: PUSH ECX
00c6dd33: PUSH ESI
00c6dd34: CALL 0x0095d5d0
00c6dd39: ADD ESP, 0x10
00c6dd3c: POP ESI
00c6dd3d: POP EBP
00c6dd3e: POP EBX
00c6dd3f: RET 0x10

Total instructions: 48

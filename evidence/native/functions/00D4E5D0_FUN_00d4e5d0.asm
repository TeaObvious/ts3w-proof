# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; existing FUN_00d4e5d0, complete owned listing.
Envelope [00d4e5d0,00d4e66e), 158 owned bytes/61 instructions; no gaps/padding.
Explicit /TS3W.exe serial readonly MCP, pristine PE and independent objdump checked; no DB mutation/save.

ORIGINAL ENVELOPE BYTES
00d4e5d0: 83 ec 14 53 56 8b 74 24 20 8b 46 04 57 8b 3e 3b
00d4e5e0: f8 89 4c 24 0c b3 01 89 44 24 24 74 76 55 33 ed
00d4e5f0: 8b 86 10 01 00 00 8b 8e 0c 01 00 00 0f b6 96 14
00d4e600: 01 00 00 55 55 50 51 8b 8e 00 01 00 00 52 8b 96
00d4e610: fc 00 00 00 8d 44 24 28 50 8b 47 10 51 52 50 8d
00d4e620: 46 78 50 89 6c 24 3c 89 6c 24 40 89 6c 24 44 89
00d4e630: 6c 24 48 e8 68 d5 ff ff 83 c4 28 55 8d 4c 24 18
00d4e640: 51 8b 4c 24 18 e8 66 e9 ff ff 22 d8 74 09 83 c7
00d4e650: 18 3b 7c 24 28 75 99 5d 5f 5e 8a c3 5b 83 c4 14
00d4e660: c2 04 00 5f 5e 8a c3 5b 83 c4 14 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d4e5d0
Entry Point: 00d4e5d0

00d4e5d0: SUB ESP, 0x14
00d4e5d3: PUSH EBX
00d4e5d4: PUSH ESI
00d4e5d5: MOV ESI, dword ptr [ESP + 0x20]
00d4e5d9: MOV EAX, dword ptr [ESI + 0x4]
00d4e5dc: PUSH EDI
00d4e5dd: MOV EDI, dword ptr [ESI]
00d4e5df: CMP EDI, EAX
00d4e5e1: MOV dword ptr [ESP + 0xc], ECX
00d4e5e5: MOV BL, 0x1
00d4e5e7: MOV dword ptr [ESP + 0x24], EAX
00d4e5eb: JZ 0x00d4e663
00d4e5ed: PUSH EBP
00d4e5ee: XOR EBP, EBP
00d4e5f0: MOV EAX, dword ptr [ESI + 0x110]
00d4e5f6: MOV ECX, dword ptr [ESI + 0x10c]
00d4e5fc: MOVZX EDX, byte ptr [ESI + 0x114]
00d4e603: PUSH EBP
00d4e604: PUSH EBP
00d4e605: PUSH EAX
00d4e606: PUSH ECX
00d4e607: MOV ECX, dword ptr [ESI + 0x100]
00d4e60d: PUSH EDX
00d4e60e: MOV EDX, dword ptr [ESI + 0xfc]
00d4e614: LEA EAX, [ESP + 0x28]
00d4e618: PUSH EAX
00d4e619: MOV EAX, dword ptr [EDI + 0x10]
00d4e61c: PUSH ECX
00d4e61d: PUSH EDX
00d4e61e: PUSH EAX
00d4e61f: LEA EAX, [ESI + 0x78]
00d4e622: PUSH EAX
00d4e623: MOV dword ptr [ESP + 0x3c], EBP
00d4e627: MOV dword ptr [ESP + 0x40], EBP
00d4e62b: MOV dword ptr [ESP + 0x44], EBP
00d4e62f: MOV dword ptr [ESP + 0x48], EBP
00d4e633: CALL 0x00d4bba0
00d4e638: ADD ESP, 0x28
00d4e63b: PUSH EBP
00d4e63c: LEA ECX, [ESP + 0x18]
00d4e640: PUSH ECX
00d4e641: MOV ECX, dword ptr [ESP + 0x18]
00d4e645: CALL 0x00d4cfb0
00d4e64a: AND BL, AL
00d4e64c: JZ 0x00d4e657
00d4e64e: ADD EDI, 0x18
00d4e651: CMP EDI, dword ptr [ESP + 0x28]
00d4e655: JNZ 0x00d4e5f0
00d4e657: POP EBP
00d4e658: POP EDI
00d4e659: POP ESI
00d4e65a: MOV AL, BL
00d4e65c: POP EBX
00d4e65d: ADD ESP, 0x14
00d4e660: RET 0x4
00d4e663: POP EDI
00d4e664: POP ESI
00d4e665: MOV AL, BL
00d4e667: POP EBX
00d4e668: ADD ESP, 0x14
00d4e66b: RET 0x4

Total instructions: 61

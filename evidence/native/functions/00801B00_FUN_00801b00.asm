# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing FUN_00801b00 owned Listing.
Readonly explicit /TS3W.exe metadata range[00801b00,00801b57]; 88ownedbytes/41instructions, no gap/padding/data.
PristinePE/independentdecode matched; noDBmutation/save.

ORIGINAL ENVELOPE BYTES
00801b00: 53 8b 5c 24 08 56 8b f1 8b 46 20 8b 4e 24 3b c1
00801b10: 57 74 0b 39 18 74 0b 83 c0 10 3b c1 75 f5 33 ff
00801b20: eb 07 8d 78 04 85 ff 75 27 8b 4e 0c 85 c9 74 20
00801b30: 53 e8 2a bd ff ff 85 c0 74 16 50 8b ce e8 4e ff
00801b40: ff ff 53 8b ce e8 c6 e4 ff ff 5f 5e 5b c2 04 00
00801b50: 8b c7 5f 5e 5b c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00801b00
Entry Point: 00801b00

00801b00: PUSH EBX
00801b01: MOV EBX, dword ptr [ESP + 0x8]
00801b05: PUSH ESI
00801b06: MOV ESI, ECX
00801b08: MOV EAX, dword ptr [ESI + 0x20]
00801b0b: MOV ECX, dword ptr [ESI + 0x24]
00801b0e: CMP EAX, ECX
00801b10: PUSH EDI
00801b11: JZ 0x00801b1e
00801b13: CMP dword ptr [EAX], EBX
00801b15: JZ 0x00801b22
00801b17: ADD EAX, 0x10
00801b1a: CMP EAX, ECX
00801b1c: JNZ 0x00801b13
00801b1e: XOR EDI, EDI
00801b20: JMP 0x00801b29
00801b22: LEA EDI, [EAX + 0x4]
00801b25: TEST EDI, EDI
00801b27: JNZ 0x00801b50
00801b29: MOV ECX, dword ptr [ESI + 0xc]
00801b2c: TEST ECX, ECX
00801b2e: JZ 0x00801b50
00801b30: PUSH EBX
00801b31: CALL 0x007fd860
00801b36: TEST EAX, EAX
00801b38: JZ 0x00801b50
00801b3a: PUSH EAX
00801b3b: MOV ECX, ESI
00801b3d: CALL 0x00801a90
00801b42: PUSH EBX
00801b43: MOV ECX, ESI
00801b45: CALL 0x00800010
00801b4a: POP EDI
00801b4b: POP ESI
00801b4c: POP EBX
00801b4d: RET 0x4
00801b50: MOV EAX, EDI
00801b52: POP EDI
00801b53: POP ESI
00801b54: POP EBX
00801b55: RET 0x4

Total instructions: 41

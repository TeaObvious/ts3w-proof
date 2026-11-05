# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing FUN_00801b80 owned Listing.
Readonly explicit /TS3W.exe metadata range[00801b80,00801b9c]; 29ownedbytes/10instructions, no gap/padding/data.
PristinePE/independentdecode matched; noDBmutation/save.

ORIGINAL ENVELOPE BYTES
00801b80: 8b 44 24 04 50 e8 76 ff ff ff 85 c0 74 0c 8b 4c
00801b90: 24 08 51 8b c8 e8 e6 b5 ff ff c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00801b80
Entry Point: 00801b80

00801b80: MOV EAX, dword ptr [ESP + 0x4]
00801b84: PUSH EAX
00801b85: CALL 0x00801b00
00801b8a: TEST EAX, EAX
00801b8c: JZ 0x00801b9a
00801b8e: MOV ECX, dword ptr [ESP + 0x8]
00801b92: PUSH ECX
00801b93: MOV ECX, EAX
00801b95: CALL 0x007fd180
00801b9a: RET 0x8

Total instructions: 10

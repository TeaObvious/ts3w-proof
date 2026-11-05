# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[00581c40,00581c8a),74bytes/26instructions; all bytes and starts verified against authoritative PE.

ECX SceneEntity receiver, one low-byte consume flag stack word, EAX record pointer, RET4. If receiver+0C bit4 is clear, inspect saved record and its full two-word parent identity; nonzero parent is looked up through937570/937F80. Missing lookup leaves bit4 clear; other shown paths OR bit4. Independently loads current record pointer and, for nonzero consume flag, zeroes receiver+18 before returning it. This is not a Boolean success result or a null-record rejection. 582D40 Unparent passes1 before selecting detach or direct saved-parent restoration. Full bit4 producer/reset/cache interpretation and original object/namespace/allocator lifetime remain open.

ORIGINAL OWNED BYTES
00581c40: 56
00581c41: 8b f1
00581c43: f7 46 0c 04 00 00 00
00581c4a: 75 29
00581c4c: 8b 46 18
00581c4f: 85 c0
00581c51: 74 1e
00581c53: 8b 08
00581c55: 0b 48 04
00581c58: 74 17
00581c5a: 8b 50 04
00581c5d: 8b 00
00581c5f: 52
00581c60: 50
00581c61: e8 0a 59 3b 00
00581c66: 8b c8
00581c68: e8 13 63 3b 00
00581c6d: 85 c0
00581c6f: 74 04
00581c71: 83 4e 0c 04
00581c75: 80 7c 24 08 00
00581c7a: 8b 46 18
00581c7d: 74 07
00581c7f: c7 46 18 00 00 00 00
00581c86: 5e
00581c87: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00581c40
Entry Point: 00581c40

00581c40: PUSH ESI
00581c41: MOV ESI, ECX
00581c43: TEST dword ptr [ESI + 0xc], 0x4
00581c4a: JNZ 0x00581c75
00581c4c: MOV EAX, dword ptr [ESI + 0x18]
00581c4f: TEST EAX, EAX
00581c51: JZ 0x00581c71
00581c53: MOV ECX, dword ptr [EAX]
00581c55: OR ECX, dword ptr [EAX + 0x4]
00581c58: JZ 0x00581c71
00581c5a: MOV EDX, dword ptr [EAX + 0x4]
00581c5d: MOV EAX, dword ptr [EAX]
00581c5f: PUSH EDX
00581c60: PUSH EAX
00581c61: CALL 0x00937570
00581c66: MOV ECX, EAX
00581c68: CALL 0x00937f80
00581c6d: TEST EAX, EAX
00581c6f: JZ 0x00581c75
00581c71: OR dword ptr [ESI + 0xc], 0x4
00581c75: CMP byte ptr [ESP + 0x8], 0x0
00581c7a: MOV EAX, dword ptr [ESI + 0x18]
00581c7d: JZ 0x00581c86
00581c7f: MOV dword ptr [ESI + 0x18], 0x0
00581c86: POP ESI
00581c87: RET 0x4

Total instructions: 26
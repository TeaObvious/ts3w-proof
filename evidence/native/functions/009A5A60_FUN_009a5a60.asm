# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_009a5a60, full owned listing: 24 instructions/79 owned bytes.
# Envelope [009A5A60,009A5AAF) 79 bytes. No nonowned gap.
# Explicit /TS3W.exe read-only MCP; pristine bytes independently decoded. No DB mutation/save.

ORIGINAL ENVELOPE BYTES
009a5a60: 56 8b f1 8b 46 3c 8b 4e 38 57 8d 7e 34 50 51 8b
009a5a70: cf e8 4a c5 ff ff c7 47 0c 00 00 00 00 8b 96 94
009a5a80: 00 00 00 8b 86 90 00 00 00 8d be 8c 00 00 00 52
009a5a90: 50 8b cf e8 68 dc ff ff c7 47 0c 00 00 00 00 5f
009a5aa0: c7 46 74 00 00 00 00 8b ce 5e e9 f1 fd ff ff

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_009a5a60
Entry Point: 009a5a60

009a5a60: PUSH ESI
009a5a61: MOV ESI, ECX
009a5a63: MOV EAX, dword ptr [ESI + 0x3c]
009a5a66: MOV ECX, dword ptr [ESI + 0x38]
009a5a69: PUSH EDI
009a5a6a: LEA EDI, [ESI + 0x34]
009a5a6d: PUSH EAX
009a5a6e: PUSH ECX
009a5a6f: MOV ECX, EDI
009a5a71: CALL 0x009a1fc0
009a5a76: MOV dword ptr [EDI + 0xc], 0x0
009a5a7d: MOV EDX, dword ptr [ESI + 0x94]
009a5a83: MOV EAX, dword ptr [ESI + 0x90]
009a5a89: LEA EDI, [ESI + 0x8c]
009a5a8f: PUSH EDX
009a5a90: PUSH EAX
009a5a91: MOV ECX, EDI
009a5a93: CALL 0x009a3700
009a5a98: MOV dword ptr [EDI + 0xc], 0x0
009a5a9f: POP EDI
009a5aa0: MOV dword ptr [ESI + 0x74], 0x0
009a5aa7: MOV ECX, ESI
009a5aa9: POP ESI
009a5aaa: JMP 0x009a58a0

Total instructions: 24

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_004dbd70, full owned listing: 17 instructions/42 owned bytes.
# Envelope [004DBD70,004DBD9A) 42 bytes. No nonowned gap.
# Explicit /TS3W.exe read-only MCP; pristine bytes independently decoded. No DB mutation/save.

ORIGINAL ENVELOPE BYTES
004dbd70: 8b 44 24 04 85 c0 74 1f 66 83 38 00 74 19 50 ff
004dbd80: 15 c8 61 f9 00 83 f8 ff 74 0a a8 10 75 06 b8 01
004dbd90: 00 00 00 c3 33 c0 c3 32 c0 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_004dbd70
Entry Point: 004dbd70

004dbd70: MOV EAX, dword ptr [ESP + 0x4]
004dbd74: TEST EAX, EAX
004dbd76: JZ 0x004dbd97
004dbd78: CMP word ptr [EAX], 0x0
004dbd7c: JZ 0x004dbd97
004dbd7e: PUSH EAX
004dbd7f: CALL dword ptr [0x00f961c8]
004dbd85: CMP EAX, -0x1
004dbd88: JZ 0x004dbd94
004dbd8a: TEST AL, 0x10
004dbd8c: JNZ 0x004dbd94
004dbd8e: MOV EAX, 0x1
004dbd93: RET
004dbd94: XOR EAX, EAX
004dbd96: RET
004dbd97: XOR AL, AL
004dbd99: RET

Total instructions: 17

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; existing FUN_009a58a0, full owned listing: 48 instructions/130 owned bytes.
# Envelope [009A58A0,009A5922) 130 bytes. No nonowned gap.
# Explicit /TS3W.exe read-only MCP; pristine bytes independently decoded. No DB mutation/save.

ORIGINAL ENVELOPE BYTES
009a58a0: 51 53 56 57 8b f9 8b 87 94 00 00 00 8b 8f 90 00
009a58b0: 00 00 8d b7 8c 00 00 00 50 51 8b ce e8 3f de ff
009a58c0: ff 6a 00 6a 00 8d 57 14 52 8b cf c7 46 0c 00 00
009a58d0: 00 00 e8 29 fd ff ff b9 e0 ed 1c 01 33 f6 e8 3d
009a58e0: fd be ff 8b d8 85 db 76 34 8d a4 24 00 00 00 00
009a58f0: 8b cb 2b ce 8d 44 24 0c 83 e9 01 50 51 b9 e0 ed
009a5900: 1c 01 e8 39 fd be ff 8b 54 24 0c 52 6a 01 50 8b
009a5910: cf e8 ea fc ff ff 83 c6 01 3b f3 72 d3 5f 5e 5b
009a5920: 59 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_009a58a0
Entry Point: 009a58a0

009a58a0: PUSH ECX
009a58a1: PUSH EBX
009a58a2: PUSH ESI
009a58a3: PUSH EDI
009a58a4: MOV EDI, ECX
009a58a6: MOV EAX, dword ptr [EDI + 0x94]
009a58ac: MOV ECX, dword ptr [EDI + 0x90]
009a58b2: LEA ESI, [EDI + 0x8c]
009a58b8: PUSH EAX
009a58b9: PUSH ECX
009a58ba: MOV ECX, ESI
009a58bc: CALL 0x009a3700
009a58c1: PUSH 0x0
009a58c3: PUSH 0x0
009a58c5: LEA EDX, [EDI + 0x14]
009a58c8: PUSH EDX
009a58c9: MOV ECX, EDI
009a58cb: MOV dword ptr [ESI + 0xc], 0x0
009a58d2: CALL 0x009a5600
009a58d7: MOV ECX, 0x11cede0
009a58dc: XOR ESI, ESI
009a58de: CALL 0x00595620
009a58e3: MOV EBX, EAX
009a58e5: TEST EBX, EBX
009a58e7: JBE 0x009a591d
009a58e9: LEA ESP, [ESP]
009a58f0: MOV ECX, EBX
009a58f2: SUB ECX, ESI
009a58f4: LEA EAX, [ESP + 0xc]
009a58f8: SUB ECX, 0x1
009a58fb: PUSH EAX
009a58fc: PUSH ECX
009a58fd: MOV ECX, 0x11cede0
009a5902: CALL 0x00595640
009a5907: MOV EDX, dword ptr [ESP + 0xc]
009a590b: PUSH EDX
009a590c: PUSH 0x1
009a590e: PUSH EAX
009a590f: MOV ECX, EDI
009a5911: CALL 0x009a5600
009a5916: ADD ESI, 0x1
009a5919: CMP ESI, EBX
009a591b: JC 0x009a58f0
009a591d: POP EDI
009a591e: POP ESI
009a591f: POP EBX
009a5920: POP ECX
009a5921: RET

Total instructions: 48

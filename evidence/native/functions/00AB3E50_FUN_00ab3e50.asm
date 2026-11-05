# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00ab3e50,00ab3ea7]. 88owned bytes/32instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

ECX compressedgrid plus x/z/storagelevel, RET0C EAXborrowed4wordptr. Blockindex=((field20*level+arithmetic(x>>2))*field24+arithmetic(z>>2)); UInt16tag48. Bit8000 chooses uniform38+blockindex*16, else dense28+((z&3)+((x&3)+tag*4)*4)*16. Bounds supplied by caller, no own guard or borrowed lifetime extension.

ORIGINAL OWNED BYTES
00ab3e50: 8b 41 20
00ab3e53: 0f af 44 24 0c
00ab3e58: 8b 54 24 04
00ab3e5c: 56
00ab3e5d: 8b f2
00ab3e5f: c1 fe 02
00ab3e62: 03 c6
00ab3e64: 0f af 41 24
00ab3e68: 8b 74 24 0c
00ab3e6c: 57
00ab3e6d: 8b fe
00ab3e6f: c1 ff 02
00ab3e72: 03 c7
00ab3e74: 8b 79 48
00ab3e77: 0f b7 3c 47
00ab3e7b: f7 c7 00 80 00 00
00ab3e81: 74 0b
00ab3e83: c1 e0 04
00ab3e86: 03 41 38
00ab3e89: 5f
00ab3e8a: 5e
00ab3e8b: c2 0c 00
00ab3e8e: 0f b7 c7
00ab3e91: 83 e2 03
00ab3e94: 8d 14 82
00ab3e97: 83 e6 03
00ab3e9a: 8d 04 96
00ab3e9d: c1 e0 04
00ab3ea0: 03 41 28
00ab3ea3: 5f
00ab3ea4: 5e
00ab3ea5: c2 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00ab3e50
Entry Point: 00ab3e50

00ab3e50: MOV EAX, dword ptr [ECX + 0x20]
00ab3e53: IMUL EAX, dword ptr [ESP + 0xc]
00ab3e58: MOV EDX, dword ptr [ESP + 0x4]
00ab3e5c: PUSH ESI
00ab3e5d: MOV ESI, EDX
00ab3e5f: SAR ESI, 0x2
00ab3e62: ADD EAX, ESI
00ab3e64: IMUL EAX, dword ptr [ECX + 0x24]
00ab3e68: MOV ESI, dword ptr [ESP + 0xc]
00ab3e6c: PUSH EDI
00ab3e6d: MOV EDI, ESI
00ab3e6f: SAR EDI, 0x2
00ab3e72: ADD EAX, EDI
00ab3e74: MOV EDI, dword ptr [ECX + 0x48]
00ab3e77: MOVZX EDI, word ptr [EDI + EAX*0x2]
00ab3e7b: TEST EDI, 0x8000
00ab3e81: JZ 0x00ab3e8e
00ab3e83: SHL EAX, 0x4
00ab3e86: ADD EAX, dword ptr [ECX + 0x38]
00ab3e89: POP EDI
00ab3e8a: POP ESI
00ab3e8b: RET 0xc
00ab3e8e: MOVZX EAX, DI
00ab3e91: AND EDX, 0x3
00ab3e94: LEA EDX, [EDX + EAX*0x4]
00ab3e97: AND ESI, 0x3
00ab3e9a: LEA EAX, [ESI + EDX*0x4]
00ab3e9d: SHL EAX, 0x4
00ab3ea0: ADD EAX, dword ptr [ECX + 0x28]
00ab3ea3: POP EDI
00ab3ea4: POP ESI
00ab3ea5: RET 0xc

Total instructions: 32
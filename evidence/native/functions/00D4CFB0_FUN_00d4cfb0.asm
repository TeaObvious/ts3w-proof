# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; existing FUN_00d4cfb0, complete owned listing.
Envelope [00d4cfb0,00d4d16c), 444 owned bytes/159 instructions; no gaps/padding.
Explicit /TS3W.exe serial readonly MCP, pristine PE and independent objdump checked; no DB mutation/save.

ORIGINAL ENVELOPE BYTES
00d4cfb0: 83 ec 1c 57 8b f9 89 7c 24 04 e8 c1 2e 76 ff 85
00d4cfc0: c0 75 09 32 c0 5f 83 c4 1c c2 08 00 8b 10 53 8b
00d4cfd0: 5c 24 28 55 56 8b c8 8b 42 44 53 ff d0 53 8b cf
00d4cfe0: 8b e8 e8 f9 e1 ff ff 8b f0 81 fe ec 4b 5b 8a 74
00d4cff0: 7f 81 fe ee be 0b ae 74 77 81 fe a8 ac 8a 8c 74
00d4d000: 6f 81 fe 71 6b e5 9a 75 26 6a 00 6a 01 8d 4c 24
00d4d010: 38 51 8b 0d 34 e0 1e 01 53 c6 44 24 40 00 e8 ed
00d4d020: 0e f4 ff 5e 5d 5b b0 01 5f 83 c4 1c c2 08 00 81
00d4d030: fe 51 5b c0 16 0f 84 83 00 00 00 80 7f 59 00 0f
00d4d040: 84 16 01 00 00 53 8b cf e8 93 e1 ff ff 50 8b cf
00d4d050: e8 6b ed ff ff 3b e8 0f 84 fe 00 00 00 33 ed 5e
00d4d060: 33 c0 85 ed 5d 5b 0f 95 c0 5f 83 c4 1c c2 08 00
00d4d070: 8d 4c 24 14 c6 44 24 30 00 e8 82 a8 a8 ff 8b 3d
00d4d080: a4 a6 1e 01 85 ff 74 4d 8d 54 24 14 52 8b cf e8
00d4d090: 1c 46 c5 ff 84 c0 74 3d 39 6c 24 14 74 32 53 8b
00d4d0a0: cf e8 da 4e c5 ff 84 c0 74 20 8b 44 24 34 85 c0
00d4d0b0: 74 03 c6 00 01 8d 4c 24 14 e8 d2 a8 a8 ff 5e 5d
00d4d0c0: 5b b0 01 5f 83 c4 1c c2 08 00 39 6c 24 14 75 05
00d4d0d0: c6 44 24 30 01 81 fe ec 4b 5b 8a b2 01 75 34 80
00d4d0e0: 7c 24 30 00 75 2d 85 ed 74 29 8b 0d c4 db 1e 01
00d4d0f0: 85 c9 74 1f 8b 81 b0 00 00 00 85 c0 74 05 8b 40
00d4d100: 70 eb 02 33 c0 3b e8 74 0a 3b a9 84 00 00 00 74
00d4d110: 02 32 d2 80 7c 24 30 00 c7 44 24 34 00 00 00 00
00d4d120: 75 30 84 d2 74 2c 8b 4c 24 10 8d 44 24 34 50 53
00d4d130: e8 6b fc ff ff 84 c0 8b 44 24 34 74 06 3b e8 74
00d4d140: 02 33 ed 85 c0 74 0b 8b 50 04 8d 48 04 8b 42 04
00d4d150: ff d0 8d 4c 24 14 e8 35 a8 a8 ff 5e 33 c0 85 ed
00d4d160: 5d 5b 0f 95 c0 5f 83 c4 1c c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d4cfb0
Entry Point: 00d4cfb0

00d4cfb0: SUB ESP, 0x1c
00d4cfb3: PUSH EDI
00d4cfb4: MOV EDI, ECX
00d4cfb6: MOV dword ptr [ESP + 0x4], EDI
00d4cfba: CALL 0x004afe80
00d4cfbf: TEST EAX, EAX
00d4cfc1: JNZ 0x00d4cfcc
00d4cfc3: XOR AL, AL
00d4cfc5: POP EDI
00d4cfc6: ADD ESP, 0x1c
00d4cfc9: RET 0x8
00d4cfcc: MOV EDX, dword ptr [EAX]
00d4cfce: PUSH EBX
00d4cfcf: MOV EBX, dword ptr [ESP + 0x28]
00d4cfd3: PUSH EBP
00d4cfd4: PUSH ESI
00d4cfd5: MOV ECX, EAX
00d4cfd7: MOV EAX, dword ptr [EDX + 0x44]
00d4cfda: PUSH EBX
00d4cfdb: CALL EAX
00d4cfdd: PUSH EBX
00d4cfde: MOV ECX, EDI
00d4cfe0: MOV EBP, EAX
00d4cfe2: CALL 0x00d4b1e0
00d4cfe7: MOV ESI, EAX
00d4cfe9: CMP ESI, 0x8a5b4bec
00d4cfef: JZ 0x00d4d070
00d4cff1: CMP ESI, 0xae0bbeee
00d4cff7: JZ 0x00d4d070
00d4cff9: CMP ESI, 0x8c8aaca8
00d4cfff: JZ 0x00d4d070
00d4d001: CMP ESI, 0x9ae56b71
00d4d007: JNZ 0x00d4d02f
00d4d009: PUSH 0x0
00d4d00b: PUSH 0x1
00d4d00d: LEA ECX, [ESP + 0x38]
00d4d011: PUSH ECX
00d4d012: MOV ECX, dword ptr [0x011ee034]
00d4d018: PUSH EBX
00d4d019: MOV byte ptr [ESP + 0x40], 0x0
00d4d01e: CALL 0x00c8df10
00d4d023: POP ESI
00d4d024: POP EBP
00d4d025: POP EBX
00d4d026: MOV AL, 0x1
00d4d028: POP EDI
00d4d029: ADD ESP, 0x1c
00d4d02c: RET 0x8
00d4d02f: CMP ESI, 0x16c05b51
00d4d035: JZ 0x00d4d0be
00d4d03b: CMP byte ptr [EDI + 0x59], 0x0
00d4d03f: JZ 0x00d4d15b
00d4d045: PUSH EBX
00d4d046: MOV ECX, EDI
00d4d048: CALL 0x00d4b1e0
00d4d04d: PUSH EAX
00d4d04e: MOV ECX, EDI
00d4d050: CALL 0x00d4bdc0
00d4d055: CMP EBP, EAX
00d4d057: JZ 0x00d4d15b
00d4d05d: XOR EBP, EBP
00d4d05f: POP ESI
00d4d060: XOR EAX, EAX
00d4d062: TEST EBP, EBP
00d4d064: POP EBP
00d4d065: POP EBX
00d4d066: SETNZ AL
00d4d069: POP EDI
00d4d06a: ADD ESP, 0x1c
00d4d06d: RET 0x8
00d4d070: LEA ECX, [ESP + 0x14]
00d4d074: MOV byte ptr [ESP + 0x30], 0x0
00d4d079: CALL 0x007d7900
00d4d07e: MOV EDI, dword ptr [0x011ea6a4]
00d4d084: TEST EDI, EDI
00d4d086: JZ 0x00d4d0d5
00d4d088: LEA EDX, [ESP + 0x14]
00d4d08c: PUSH EDX
00d4d08d: MOV ECX, EDI
00d4d08f: CALL 0x009a16b0
00d4d094: TEST AL, AL
00d4d096: JZ 0x00d4d0d5
00d4d098: CMP dword ptr [ESP + 0x14], EBP
00d4d09c: JZ 0x00d4d0d0
00d4d09e: PUSH EBX
00d4d09f: MOV ECX, EDI
00d4d0a1: CALL 0x009a1f80
00d4d0a6: TEST AL, AL
00d4d0a8: JZ 0x00d4d0ca
00d4d0aa: MOV EAX, dword ptr [ESP + 0x34]
00d4d0ae: TEST EAX, EAX
00d4d0b0: JZ 0x00d4d0b5
00d4d0b2: MOV byte ptr [EAX], 0x1
00d4d0b5: LEA ECX, [ESP + 0x14]
00d4d0b9: CALL 0x007d7990
00d4d0be: POP ESI
00d4d0bf: POP EBP
00d4d0c0: POP EBX
00d4d0c1: MOV AL, 0x1
00d4d0c3: POP EDI
00d4d0c4: ADD ESP, 0x1c
00d4d0c7: RET 0x8
00d4d0ca: CMP dword ptr [ESP + 0x14], EBP
00d4d0ce: JNZ 0x00d4d0d5
00d4d0d0: MOV byte ptr [ESP + 0x30], 0x1
00d4d0d5: CMP ESI, 0x8a5b4bec
00d4d0db: MOV DL, 0x1
00d4d0dd: JNZ 0x00d4d113
00d4d0df: CMP byte ptr [ESP + 0x30], 0x0
00d4d0e4: JNZ 0x00d4d113
00d4d0e6: TEST EBP, EBP
00d4d0e8: JZ 0x00d4d113
00d4d0ea: MOV ECX, dword ptr [0x011edbc4]
00d4d0f0: TEST ECX, ECX
00d4d0f2: JZ 0x00d4d113
00d4d0f4: MOV EAX, dword ptr [ECX + 0xb0]
00d4d0fa: TEST EAX, EAX
00d4d0fc: JZ 0x00d4d103
00d4d0fe: MOV EAX, dword ptr [EAX + 0x70]
00d4d101: JMP 0x00d4d105
00d4d103: XOR EAX, EAX
00d4d105: CMP EBP, EAX
00d4d107: JZ 0x00d4d113
00d4d109: CMP EBP, dword ptr [ECX + 0x84]
00d4d10f: JZ 0x00d4d113
00d4d111: XOR DL, DL
00d4d113: CMP byte ptr [ESP + 0x30], 0x0
00d4d118: MOV dword ptr [ESP + 0x34], 0x0
00d4d120: JNZ 0x00d4d152
00d4d122: TEST DL, DL
00d4d124: JZ 0x00d4d152
00d4d126: MOV ECX, dword ptr [ESP + 0x10]
00d4d12a: LEA EAX, [ESP + 0x34]
00d4d12e: PUSH EAX
00d4d12f: PUSH EBX
00d4d130: CALL 0x00d4cda0
00d4d135: TEST AL, AL
00d4d137: MOV EAX, dword ptr [ESP + 0x34]
00d4d13b: JZ 0x00d4d143
00d4d13d: CMP EBP, EAX
00d4d13f: JZ 0x00d4d143
00d4d141: XOR EBP, EBP
00d4d143: TEST EAX, EAX
00d4d145: JZ 0x00d4d152
00d4d147: MOV EDX, dword ptr [EAX + 0x4]
00d4d14a: LEA ECX, [EAX + 0x4]
00d4d14d: MOV EAX, dword ptr [EDX + 0x4]
00d4d150: CALL EAX
00d4d152: LEA ECX, [ESP + 0x14]
00d4d156: CALL 0x007d7990
00d4d15b: POP ESI
00d4d15c: XOR EAX, EAX
00d4d15e: TEST EBP, EBP
00d4d160: POP EBP
00d4d161: POP EBX
00d4d162: SETNZ AL
00d4d165: POP EDI
00d4d166: ADD ESP, 0x1c
00d4d169: RET 0x8

Total instructions: 159

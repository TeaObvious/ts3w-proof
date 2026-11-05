# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[00958b10,00958d3b]; 556bytes/164instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECX childTransform, three stack words explicitBoneBYTE, point, parentObject; RET0C void. Creates9375C04F body childGUID/parentGUID, mode, resolved boneINDEX and offset vectors. Point virtual+8(3) exposes containment flags40000000 and00800000. Explicit bone selects1/3; ordinary point virtual+10 true and no height-adjust selects2/3; else4 copies authored matrix and optional height callback. The predicate is NOT a Sim test: selected point vtables all use799BD0 testing point+10!=0. 80D610 uses ECXpoint plus stackparent and returns575C80 model index orFFFFFFFF, not original hash. C omitted ECX and false uninitialized flag aliases; actual booleans start0. Position helper fourth lane overwritten with1; rotation XYZ fed to later Euler consumer. Command enqueue693380 is not completion.

ORIGINAL BYTES
00958b10: 55 8b ec 83 e4 f0 81 ec e4 00 00 00 8b 41 04 8b
00958b20: 48 08 8b 40 0c 53 56 89 4c 24 64 57 8d 4c 24 70
00958b30: c7 44 24 60 4f c0 75 93 89 44 24 6c c7 44 24 64
00958b40: ac c8 17 01 e8 f7 b1 fe ff 8b 30 8b 5d 10 8b 43
00958b50: 08 8b 7d 0c 89 46 08 8b 4b 0c 89 4e 0c 8b 17 8b
00958b60: 42 08 6a 03 8b cf c6 44 24 12 00 c6 44 24 13 00
00958b70: ff d0 85 c0 b9 01 00 00 00 74 19 8b 40 18 a9 00
00958b80: 00 00 40 74 04 88 4c 24 0e a9 00 00 80 00 74 04
00958b90: 88 4c 24 0f 80 7d 08 00 74 61 80 7c 24 0e 00 74
00958ba0: 47 f3 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 1c 0f
00958bb0: 57 c0 c7 46 10 03 00 00 00 f3 0f 11 44 24 18 f3
00958bc0: 0f 11 44 24 14 f3 0f 11 44 24 10 0f 28 44 24 10
00958bd0: 0f 29 46 20 53 8b cf 0f 29 46 30 e8 30 4a eb ff
00958be0: 89 46 14 e9 2b 01 00 00 89 4e 10 53 8b cf e8 1d
00958bf0: 4a eb ff 89 46 14 e9 18 01 00 00 80 7c 24 0f 00
00958c00: 75 40 8b 17 8b 42 10 8b cf ff d0 84 c0 74 33 33
00958c10: c9 38 4c 24 0e 53 0f 95 c1 83 c1 02 89 4e 10 8b
00958c20: cf e8 ea 49 eb ff 8d 54 24 10 52 8b cf 89 46 14
00958c30: e8 1b 4a eb ff 0f 28 00 8d 44 24 10 50 e9 a7 00
00958c40: 00 00 c7 46 10 04 00 00 00 8b 17 8b 42 18 8b cf
00958c50: ff d0 80 7c 24 0f 00 0f 28 00 0f 29 44 24 20 0f
00958c60: 28 40 10 0f 29 44 24 30 0f 28 40 20 0f 29 44 24
00958c70: 40 0f 28 40 30 0f 29 44 24 50 74 35 8b 0d 58 a1
00958c80: 1e 01 51 8b cb e8 d6 b5 fd ff 8d 94 24 b0 00 00
00958c90: 00 52 8b c8 e8 f7 ed ff ff 8b 07 8b 40 20 6a 00
00958ca0: 8d 4c 24 24 51 8d 94 24 b8 00 00 00 52 8b cf ff
00958cb0: d0 0f 28 44 24 20 0f 29 46 40 0f 28 44 24 30 0f
00958cc0: 29 46 50 0f 28 44 24 40 8d 4c 24 10 0f 29 46 60
00958cd0: 0f 28 44 24 50 51 8b cf 0f 29 46 70 e8 6f 49 eb
00958ce0: ff 0f 28 00 8d 54 24 10 52 0f 29 44 24 14 f3 0f
00958cf0: 10 05 f8 98 f9 00 f3 0f 11 44 24 20 0f 28 44 24
00958d00: 14 8b cf 0f 29 46 20 e8 a4 49 eb ff 0f 28 00 0f
00958d10: 29 46 30 8d 44 24 60 50 e8 63 a6 d3 ff 8b 4c 24
00958d20: 68 83 c4 04 85 c9 74 0b 8b 11 8b 12 8d 44 24 70
00958d30: 50 ff d2 5f 5e 5b 8b e5 5d c2 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00958b10
Entry Point: 00958b10

00958b10: PUSH EBP
00958b11: MOV EBP, ESP
00958b13: AND ESP, 0xfffffff0
00958b16: SUB ESP, 0xe4
00958b1c: MOV EAX, dword ptr [ECX + 0x4]
00958b1f: MOV ECX, dword ptr [EAX + 0x8]
00958b22: MOV EAX, dword ptr [EAX + 0xc]
00958b25: PUSH EBX
00958b26: PUSH ESI
00958b27: MOV dword ptr [ESP + 0x64], ECX
00958b2b: PUSH EDI
00958b2c: LEA ECX, [ESP + 0x70]
00958b30: MOV dword ptr [ESP + 0x60], 0x9375c04f
00958b38: MOV dword ptr [ESP + 0x6c], EAX
00958b3c: MOV dword ptr [ESP + 0x64], 0x117c8ac
00958b44: CALL 0x00943d40
00958b49: MOV ESI, dword ptr [EAX]
00958b4b: MOV EBX, dword ptr [EBP + 0x10]
00958b4e: MOV EAX, dword ptr [EBX + 0x8]
00958b51: MOV EDI, dword ptr [EBP + 0xc]
00958b54: MOV dword ptr [ESI + 0x8], EAX
00958b57: MOV ECX, dword ptr [EBX + 0xc]
00958b5a: MOV dword ptr [ESI + 0xc], ECX
00958b5d: MOV EDX, dword ptr [EDI]
00958b5f: MOV EAX, dword ptr [EDX + 0x8]
00958b62: PUSH 0x3
00958b64: MOV ECX, EDI
00958b66: MOV byte ptr [ESP + 0x12], 0x0
00958b6b: MOV byte ptr [ESP + 0x13], 0x0
00958b70: CALL EAX
00958b72: TEST EAX, EAX
00958b74: MOV ECX, 0x1
00958b79: JZ 0x00958b94
00958b7b: MOV EAX, dword ptr [EAX + 0x18]
00958b7e: TEST EAX, 0x40000000
00958b83: JZ 0x00958b89
00958b85: MOV byte ptr [ESP + 0xe], CL
00958b89: TEST EAX, 0x800000
00958b8e: JZ 0x00958b94
00958b90: MOV byte ptr [ESP + 0xf], CL
00958b94: CMP byte ptr [EBP + 0x8], 0x0
00958b98: JZ 0x00958bfb
00958b9a: CMP byte ptr [ESP + 0xe], 0x0
00958b9f: JZ 0x00958be8
00958ba1: MOVSS XMM0, dword ptr [0x00f998f8]
00958ba9: MOVSS dword ptr [ESP + 0x1c], XMM0
00958baf: XORPS XMM0, XMM0
00958bb2: MOV dword ptr [ESI + 0x10], 0x3
00958bb9: MOVSS dword ptr [ESP + 0x18], XMM0
00958bbf: MOVSS dword ptr [ESP + 0x14], XMM0
00958bc5: MOVSS dword ptr [ESP + 0x10], XMM0
00958bcb: MOVAPS XMM0, xmmword ptr [ESP + 0x10]
00958bd0: MOVAPS xmmword ptr [ESI + 0x20], XMM0
00958bd4: PUSH EBX
00958bd5: MOV ECX, EDI
00958bd7: MOVAPS xmmword ptr [ESI + 0x30], XMM0
00958bdb: CALL 0x0080d610
00958be0: MOV dword ptr [ESI + 0x14], EAX
00958be3: JMP 0x00958d13
00958be8: MOV dword ptr [ESI + 0x10], ECX
00958beb: PUSH EBX
00958bec: MOV ECX, EDI
00958bee: CALL 0x0080d610
00958bf3: MOV dword ptr [ESI + 0x14], EAX
00958bf6: JMP 0x00958d13
00958bfb: CMP byte ptr [ESP + 0xf], 0x0
00958c00: JNZ 0x00958c42
00958c02: MOV EDX, dword ptr [EDI]
00958c04: MOV EAX, dword ptr [EDX + 0x10]
00958c07: MOV ECX, EDI
00958c09: CALL EAX
00958c0b: TEST AL, AL
00958c0d: JZ 0x00958c42
00958c0f: XOR ECX, ECX
00958c11: CMP byte ptr [ESP + 0xe], CL
00958c15: PUSH EBX
00958c16: SETNZ CL
00958c19: ADD ECX, 0x2
00958c1c: MOV dword ptr [ESI + 0x10], ECX
00958c1f: MOV ECX, EDI
00958c21: CALL 0x0080d610
00958c26: LEA EDX, [ESP + 0x10]
00958c2a: PUSH EDX
00958c2b: MOV ECX, EDI
00958c2d: MOV dword ptr [ESI + 0x14], EAX
00958c30: CALL 0x0080d650
00958c35: MOVAPS XMM0, xmmword ptr [EAX]
00958c38: LEA EAX, [ESP + 0x10]
00958c3c: PUSH EAX
00958c3d: JMP 0x00958ce9
00958c42: MOV dword ptr [ESI + 0x10], 0x4
00958c49: MOV EDX, dword ptr [EDI]
00958c4b: MOV EAX, dword ptr [EDX + 0x18]
00958c4e: MOV ECX, EDI
00958c50: CALL EAX
00958c52: CMP byte ptr [ESP + 0xf], 0x0
00958c57: MOVAPS XMM0, xmmword ptr [EAX]
00958c5a: MOVAPS xmmword ptr [ESP + 0x20], XMM0
00958c5f: MOVAPS XMM0, xmmword ptr [EAX + 0x10]
00958c63: MOVAPS xmmword ptr [ESP + 0x30], XMM0
00958c68: MOVAPS XMM0, xmmword ptr [EAX + 0x20]
00958c6c: MOVAPS xmmword ptr [ESP + 0x40], XMM0
00958c71: MOVAPS XMM0, xmmword ptr [EAX + 0x30]
00958c75: MOVAPS xmmword ptr [ESP + 0x50], XMM0
00958c7a: JZ 0x00958cb1
00958c7c: MOV ECX, dword ptr [0x011ea158]
00958c82: PUSH ECX
00958c83: MOV ECX, EBX
00958c85: CALL 0x00934260
00958c8a: LEA EDX, [ESP + 0xb0]
00958c91: PUSH EDX
00958c92: MOV ECX, EAX
00958c94: CALL 0x00957a90
00958c99: MOV EAX, dword ptr [EDI]
00958c9b: MOV EAX, dword ptr [EAX + 0x20]
00958c9e: PUSH 0x0
00958ca0: LEA ECX, [ESP + 0x24]
00958ca4: PUSH ECX
00958ca5: LEA EDX, [ESP + 0xb8]
00958cac: PUSH EDX
00958cad: MOV ECX, EDI
00958caf: CALL EAX
00958cb1: MOVAPS XMM0, xmmword ptr [ESP + 0x20]
00958cb6: MOVAPS xmmword ptr [ESI + 0x40], XMM0
00958cba: MOVAPS XMM0, xmmword ptr [ESP + 0x30]
00958cbf: MOVAPS xmmword ptr [ESI + 0x50], XMM0
00958cc3: MOVAPS XMM0, xmmword ptr [ESP + 0x40]
00958cc8: LEA ECX, [ESP + 0x10]
00958ccc: MOVAPS xmmword ptr [ESI + 0x60], XMM0
00958cd0: MOVAPS XMM0, xmmword ptr [ESP + 0x50]
00958cd5: PUSH ECX
00958cd6: MOV ECX, EDI
00958cd8: MOVAPS xmmword ptr [ESI + 0x70], XMM0
00958cdc: CALL 0x0080d650
00958ce1: MOVAPS XMM0, xmmword ptr [EAX]
00958ce4: LEA EDX, [ESP + 0x10]
00958ce8: PUSH EDX
00958ce9: MOVAPS xmmword ptr [ESP + 0x14], XMM0
00958cee: MOVSS XMM0, dword ptr [0x00f998f8]
00958cf6: MOVSS dword ptr [ESP + 0x20], XMM0
00958cfc: MOVAPS XMM0, xmmword ptr [ESP + 0x14]
00958d01: MOV ECX, EDI
00958d03: MOVAPS xmmword ptr [ESI + 0x20], XMM0
00958d07: CALL 0x0080d6b0
00958d0c: MOVAPS XMM0, xmmword ptr [EAX]
00958d0f: MOVAPS xmmword ptr [ESI + 0x30], XMM0
00958d13: LEA EAX, [ESP + 0x60]
00958d17: PUSH EAX
00958d18: CALL 0x00693380
00958d1d: MOV ECX, dword ptr [ESP + 0x68]
00958d21: ADD ESP, 0x4
00958d24: TEST ECX, ECX
00958d26: JZ 0x00958d33
00958d28: MOV EDX, dword ptr [ECX]
00958d2a: MOV EDX, dword ptr [EDX]
00958d2c: LEA EAX, [ESP + 0x70]
00958d30: PUSH EAX
00958d31: CALL EDX
00958d33: POP EDI
00958d34: POP ESI
00958d35: POP EBX
00958d36: MOV ESP, EBP
00958d38: POP EBP
00958d39: RET 0xc

Total instructions: 164
# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a5e360,00a5e474], 277 bytes/92 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

Physical ECX swap is saved at entry despite stored C stdcall missing it; point/mode two stack words RET8. 16-byte aligned point copied, containing-lot C687D0, AB1020 and AFDE10 AL gates, ADC860, B04090 locator then A8FA90 current pattern four-key copy. Nonzero returned fourth lane gates writes swap+42 mode,+41=1,+30 float4 point. No retained hover record. Do not interpret decompiler local_74 as initialized by a C assignment; it is the saved ECX receiver.

ORIGINAL BYTES
00a5e360: 55 8b ec 83 e4 f0 83 ec 74 53 89 4c 24 14 8b 0d
00a5e370: c4 db 1e 01 85 c9 56 57 75 0b 32 c0 5f 5e 5b 8b
00a5e380: e5 5d c2 08 00 8b 7d 08 0f 28 07 0f 29 44 24 20
00a5e390: d9 44 24 28 83 ec 08 d9 5c 24 04 0f 29 44 24 38
00a5e3a0: d9 44 24 38 d9 1c 24 e8 24 a4 20 00 8b f0 85 f6
00a5e3b0: 74 c8 8b ce e8 67 2c 05 00 84 c0 74 bd f3 0f 10
00a5e3c0: 05 18 b2 fa 00 8d 44 24 20 50 57 56 f3 0f 11 44
00a5e3d0: 24 2c f3 0f 11 44 24 30 c7 44 24 34 00 00 00 00
00a5e3e0: e8 7b e4 07 00 6a 00 6a 00 6a 01 8d 4c 24 38 51
00a5e3f0: 56 e8 1a fa 09 00 83 c4 20 84 c0 0f 84 79 ff ff
00a5e400: ff 8b 5d 0c 53 6a 01 0c ff 6a 00 56 8d 54 24 30
00a5e410: 88 44 24 28 88 44 24 29 88 44 24 2b 52 8d 44 24
00a5e420: 2c 50 c6 44 24 32 00 e8 64 5c 0a 00 83 c4 18 8d
00a5e430: 4c 24 40 e8 38 d6 09 00 8d 4c 24 40 51 8b 8e 90
00a5e440: 02 00 00 8d 54 24 1c 52 e8 43 16 03 00 83 7c 24
00a5e450: 78 00 0f 84 22 ff ff ff 8b 44 24 1c 88 58 42 c6
00a5e460: 40 41 01 0f 28 07 5f 5e 0f 29 40 30 b0 01 5b 8b
00a5e470: e5 5d c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a5e360
Entry Point: 00a5e360

00a5e360: PUSH EBP
00a5e361: MOV EBP, ESP
00a5e363: AND ESP, 0xfffffff0
00a5e366: SUB ESP, 0x74
00a5e369: PUSH EBX
00a5e36a: MOV dword ptr [ESP + 0x14], ECX
00a5e36e: MOV ECX, dword ptr [0x011edbc4]
00a5e374: TEST ECX, ECX
00a5e376: PUSH ESI
00a5e377: PUSH EDI
00a5e378: JNZ 0x00a5e385
00a5e37a: XOR AL, AL
00a5e37c: POP EDI
00a5e37d: POP ESI
00a5e37e: POP EBX
00a5e37f: MOV ESP, EBP
00a5e381: POP EBP
00a5e382: RET 0x8
00a5e385: MOV EDI, dword ptr [EBP + 0x8]
00a5e388: MOVAPS XMM0, xmmword ptr [EDI]
00a5e38b: MOVAPS xmmword ptr [ESP + 0x20], XMM0
00a5e390: FLD float ptr [ESP + 0x28]
00a5e394: SUB ESP, 0x8
00a5e397: FSTP float ptr [ESP + 0x4]
00a5e39b: MOVAPS xmmword ptr [ESP + 0x38], XMM0
00a5e3a0: FLD float ptr [ESP + 0x38]
00a5e3a4: FSTP float ptr [ESP]
00a5e3a7: CALL 0x00c687d0
00a5e3ac: MOV ESI, EAX
00a5e3ae: TEST ESI, ESI
00a5e3b0: JZ 0x00a5e37a
00a5e3b2: MOV ECX, ESI
00a5e3b4: CALL 0x00ab1020
00a5e3b9: TEST AL, AL
00a5e3bb: JZ 0x00a5e37a
00a5e3bd: MOVSS XMM0, dword ptr [0x00fab218]
00a5e3c5: LEA EAX, [ESP + 0x20]
00a5e3c9: PUSH EAX
00a5e3ca: PUSH EDI
00a5e3cb: PUSH ESI
00a5e3cc: MOVSS dword ptr [ESP + 0x2c], XMM0
00a5e3d2: MOVSS dword ptr [ESP + 0x30], XMM0
00a5e3d8: MOV dword ptr [ESP + 0x34], 0x0
00a5e3e0: CALL 0x00adc860
00a5e3e5: PUSH 0x0
00a5e3e7: PUSH 0x0
00a5e3e9: PUSH 0x1
00a5e3eb: LEA ECX, [ESP + 0x38]
00a5e3ef: PUSH ECX
00a5e3f0: PUSH ESI
00a5e3f1: CALL 0x00afde10
00a5e3f6: ADD ESP, 0x20
00a5e3f9: TEST AL, AL
00a5e3fb: JZ 0x00a5e37a
00a5e401: MOV EBX, dword ptr [EBP + 0xc]
00a5e404: PUSH EBX
00a5e405: PUSH 0x1
00a5e407: OR AL, 0xff
00a5e409: PUSH 0x0
00a5e40b: PUSH ESI
00a5e40c: LEA EDX, [ESP + 0x30]
00a5e410: MOV byte ptr [ESP + 0x28], AL
00a5e414: MOV byte ptr [ESP + 0x29], AL
00a5e418: MOV byte ptr [ESP + 0x2b], AL
00a5e41c: PUSH EDX
00a5e41d: LEA EAX, [ESP + 0x2c]
00a5e421: PUSH EAX
00a5e422: MOV byte ptr [ESP + 0x32], 0x0
00a5e427: CALL 0x00b04090
00a5e42c: ADD ESP, 0x18
00a5e42f: LEA ECX, [ESP + 0x40]
00a5e433: CALL 0x00afba70
00a5e438: LEA ECX, [ESP + 0x40]
00a5e43c: PUSH ECX
00a5e43d: MOV ECX, dword ptr [ESI + 0x290]
00a5e443: LEA EDX, [ESP + 0x1c]
00a5e447: PUSH EDX
00a5e448: CALL 0x00a8fa90
00a5e44d: CMP dword ptr [ESP + 0x78], 0x0
00a5e452: JZ 0x00a5e37a
00a5e458: MOV EAX, dword ptr [ESP + 0x1c]
00a5e45c: MOV byte ptr [EAX + 0x42], BL
00a5e45f: MOV byte ptr [EAX + 0x41], 0x1
00a5e463: MOVAPS XMM0, xmmword ptr [EDI]
00a5e466: POP EDI
00a5e467: POP ESI
00a5e468: MOVAPS xmmword ptr [EAX + 0x30], XMM0
00a5e46c: MOV AL, 0x1
00a5e46e: POP EBX
00a5e46f: MOV ESP, EBP
00a5e471: POP EBP
00a5e472: RET 0x8

Total instructions: 92
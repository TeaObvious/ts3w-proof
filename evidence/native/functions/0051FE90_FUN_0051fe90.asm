# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing owned body[0051fe90,0051ff6e], 223bytes/68instructions. Readonly GhidrAssist Listing/metadata plus original PE byte/start check. No database/body/prototype repair, analysis, annotation save or original-byte mutation.

ECX output float4, two input rectangle pointers, void RET8. Zero-width or zero-height second input copies first; degenerate first copies second; otherwise ordered SSE comparisons choose each min/max lane. Input/output alias at7EC490 is intentional. UCOMISS/LAHF/TEST parity paths, NaN selection, CVTT and machine FP controls are not a generic Math.Min/Max equivalence proof.

ORIGINAL BYTES
0051fe90: 8b 54 24 08 f3 0f 10 02 f3 0f 10 4a 08 0f 2e c8
0051fea0: 9f f6 c4 44 0f 8b a8 00 00 00 f3 0f 10 4a 0c 0f
0051feb0: 2e 4a 04 9f f6 c4 44 0f 8b 95 00 00 00 56 8b 74
0051fec0: 24 08 f3 0f 10 0e f3 0f 10 56 08 0f 2e d1 9f f6
0051fed0: c4 44 7b 64 f3 0f 10 56 0c 0f 2e 56 04 9f f6 c4
0051fee0: 44 7b 55 0f 2f c1 76 03 0f 28 c1 f3 0f 11 01 f3
0051fef0: 0f 10 46 04 f3 0f 10 4a 04 0f 2f c8 77 03 0f 28
0051ff00: c1 f3 0f 11 41 04 f3 0f 10 46 08 f3 0f 10 4a 08
0051ff10: 0f 2f c1 77 03 0f 28 c1 f3 0f 11 41 08 f3 0f 10
0051ff20: 46 0c f3 0f 10 4a 0c 0f 2f c1 77 03 0f 28 c1 f3
0051ff30: 0f 11 41 0c 5e c2 08 00 f3 0f 11 01 d9 42 04 d9
0051ff40: 59 04 5e d9 42 08 d9 59 08 d9 42 0c d9 59 0c c2
0051ff50: 08 00 8b 44 24 04 d9 00 d9 19 d9 40 04 d9 59 04
0051ff60: d9 40 08 d9 59 08 d9 40 0c d9 59 0c c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0051fe90
Entry Point: 0051fe90

0051fe90: MOV EDX, dword ptr [ESP + 0x8]
0051fe94: MOVSS XMM0, dword ptr [EDX]
0051fe98: MOVSS XMM1, dword ptr [EDX + 0x8]
0051fe9d: UCOMISS XMM1, XMM0
0051fea0: LAHF
0051fea1: TEST AH, 0x44
0051fea4: JNP 0x0051ff52
0051feaa: MOVSS XMM1, dword ptr [EDX + 0xc]
0051feaf: UCOMISS XMM1, dword ptr [EDX + 0x4]
0051feb3: LAHF
0051feb4: TEST AH, 0x44
0051feb7: JNP 0x0051ff52
0051febd: PUSH ESI
0051febe: MOV ESI, dword ptr [ESP + 0x8]
0051fec2: MOVSS XMM1, dword ptr [ESI]
0051fec6: MOVSS XMM2, dword ptr [ESI + 0x8]
0051fecb: UCOMISS XMM2, XMM1
0051fece: LAHF
0051fecf: TEST AH, 0x44
0051fed2: JNP 0x0051ff38
0051fed4: MOVSS XMM2, dword ptr [ESI + 0xc]
0051fed9: UCOMISS XMM2, dword ptr [ESI + 0x4]
0051fedd: LAHF
0051fede: TEST AH, 0x44
0051fee1: JNP 0x0051ff38
0051fee3: COMISS XMM0, XMM1
0051fee6: JBE 0x0051feeb
0051fee8: MOVAPS XMM0, XMM1
0051feeb: MOVSS dword ptr [ECX], XMM0
0051feef: MOVSS XMM0, dword ptr [ESI + 0x4]
0051fef4: MOVSS XMM1, dword ptr [EDX + 0x4]
0051fef9: COMISS XMM1, XMM0
0051fefc: JA 0x0051ff01
0051fefe: MOVAPS XMM0, XMM1
0051ff01: MOVSS dword ptr [ECX + 0x4], XMM0
0051ff06: MOVSS XMM0, dword ptr [ESI + 0x8]
0051ff0b: MOVSS XMM1, dword ptr [EDX + 0x8]
0051ff10: COMISS XMM0, XMM1
0051ff13: JA 0x0051ff18
0051ff15: MOVAPS XMM0, XMM1
0051ff18: MOVSS dword ptr [ECX + 0x8], XMM0
0051ff1d: MOVSS XMM0, dword ptr [ESI + 0xc]
0051ff22: MOVSS XMM1, dword ptr [EDX + 0xc]
0051ff27: COMISS XMM0, XMM1
0051ff2a: JA 0x0051ff2f
0051ff2c: MOVAPS XMM0, XMM1
0051ff2f: MOVSS dword ptr [ECX + 0xc], XMM0
0051ff34: POP ESI
0051ff35: RET 0x8
0051ff38: MOVSS dword ptr [ECX], XMM0
0051ff3c: FLD float ptr [EDX + 0x4]
0051ff3f: FSTP float ptr [ECX + 0x4]
0051ff42: POP ESI
0051ff43: FLD float ptr [EDX + 0x8]
0051ff46: FSTP float ptr [ECX + 0x8]
0051ff49: FLD float ptr [EDX + 0xc]
0051ff4c: FSTP float ptr [ECX + 0xc]
0051ff4f: RET 0x8
0051ff52: MOV EAX, dword ptr [ESP + 0x4]
0051ff56: FLD float ptr [EAX]
0051ff58: FSTP float ptr [ECX]
0051ff5a: FLD float ptr [EAX + 0x4]
0051ff5d: FSTP float ptr [ECX + 0x4]
0051ff60: FLD float ptr [EAX + 0x8]
0051ff63: FSTP float ptr [ECX + 0x8]
0051ff66: FLD float ptr [EAX + 0xc]
0051ff69: FSTP float ptr [ECX + 0xc]
0051ff6c: RET 0x8

Total instructions: 68
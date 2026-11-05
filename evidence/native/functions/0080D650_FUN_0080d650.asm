# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[0080d650,0080d6a5]; 86bytes/26instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXpoint/out aligned16byte vector stackword RET4. Absent auxiliary pointer+14 writes four +0 words. Present pointer copies itsXYZ and duplicates X into fourth lane. Sender958B10 later forces positionW=1; do not infer vectorW=1 here. Source auxiliary pointer writer950970/9DE4D0 is borrowed, no local retain.

ORIGINAL BYTES
0080d650: 55 8b ec 83 e4 f0 83 ec 10 83 79 14 00 74 38 8b
0080d660: 41 14 f3 0f 10 48 08 f3 0f 10 00 f3 0f 11 4c 24
0080d670: 08 f3 0f 10 48 04 8b 45 08 f3 0f 11 44 24 0c f3
0080d680: 0f 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 0f 29
0080d690: 00 8b e5 5d c2 04 00 8b 45 08 0f 57 c0 0f 29 00
0080d6a0: 8b e5 5d c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0080d650
Entry Point: 0080d650

0080d650: PUSH EBP
0080d651: MOV EBP, ESP
0080d653: AND ESP, 0xfffffff0
0080d656: SUB ESP, 0x10
0080d659: CMP dword ptr [ECX + 0x14], 0x0
0080d65d: JZ 0x0080d697
0080d65f: MOV EAX, dword ptr [ECX + 0x14]
0080d662: MOVSS XMM1, dword ptr [EAX + 0x8]
0080d667: MOVSS XMM0, dword ptr [EAX]
0080d66b: MOVSS dword ptr [ESP + 0x8], XMM1
0080d671: MOVSS XMM1, dword ptr [EAX + 0x4]
0080d676: MOV EAX, dword ptr [EBP + 0x8]
0080d679: MOVSS dword ptr [ESP + 0xc], XMM0
0080d67f: MOVSS dword ptr [ESP + 0x4], XMM1
0080d685: MOVSS dword ptr [ESP], XMM0
0080d68a: MOVAPS XMM0, xmmword ptr [ESP]
0080d68e: MOVAPS xmmword ptr [EAX], XMM0
0080d691: MOV ESP, EBP
0080d693: POP EBP
0080d694: RET 0x4
0080d697: MOV EAX, dword ptr [EBP + 0x8]
0080d69a: XORPS XMM0, XMM0
0080d69d: MOVAPS xmmword ptr [EAX], XMM0
0080d6a0: MOV ESP, EBP
0080d6a2: POP EBP
0080d6a3: RET 0x4

Total instructions: 26
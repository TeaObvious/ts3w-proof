# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[0080d6b0,0080d706]; 87bytes/26instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXpoint/out aligned16byte vector stackword RET4. Absent auxiliary pointer+14 writes four +0 words. Present pointer copies float words+0C/+10/+14 and duplicates first into fourth lane. Consumer703CA0 interprets first three as Euler angles via fsin/fcos, not quaternionXYZW despite source comments; exact angle conventions/FP behavior not fully certified.

ORIGINAL BYTES
0080d6b0: 55 8b ec 83 e4 f0 83 ec 10 83 79 14 00 74 39 8b
0080d6c0: 41 14 f3 0f 10 48 14 f3 0f 10 40 0c f3 0f 11 4c
0080d6d0: 24 08 f3 0f 10 48 10 8b 45 08 f3 0f 11 44 24 0c
0080d6e0: f3 0f 11 4c 24 04 f3 0f 11 04 24 0f 28 04 24 0f
0080d6f0: 29 00 8b e5 5d c2 04 00 8b 45 08 0f 57 c0 0f 29
0080d700: 00 8b e5 5d c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0080d6b0
Entry Point: 0080d6b0

0080d6b0: PUSH EBP
0080d6b1: MOV EBP, ESP
0080d6b3: AND ESP, 0xfffffff0
0080d6b6: SUB ESP, 0x10
0080d6b9: CMP dword ptr [ECX + 0x14], 0x0
0080d6bd: JZ 0x0080d6f8
0080d6bf: MOV EAX, dword ptr [ECX + 0x14]
0080d6c2: MOVSS XMM1, dword ptr [EAX + 0x14]
0080d6c7: MOVSS XMM0, dword ptr [EAX + 0xc]
0080d6cc: MOVSS dword ptr [ESP + 0x8], XMM1
0080d6d2: MOVSS XMM1, dword ptr [EAX + 0x10]
0080d6d7: MOV EAX, dword ptr [EBP + 0x8]
0080d6da: MOVSS dword ptr [ESP + 0xc], XMM0
0080d6e0: MOVSS dword ptr [ESP + 0x4], XMM1
0080d6e6: MOVSS dword ptr [ESP], XMM0
0080d6eb: MOVAPS XMM0, xmmword ptr [ESP]
0080d6ef: MOVAPS xmmword ptr [EAX], XMM0
0080d6f2: MOV ESP, EBP
0080d6f4: POP EBP
0080d6f5: RET 0x4
0080d6f8: MOV EAX, dword ptr [EBP + 0x8]
0080d6fb: XORPS XMM0, XMM0
0080d6fe: MOVAPS xmmword ptr [EAX], XMM0
0080d701: MOV ESP, EBP
0080d703: POP EBP
0080d704: RET 0x4

Total instructions: 26
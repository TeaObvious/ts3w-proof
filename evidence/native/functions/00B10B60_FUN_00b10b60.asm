# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00b10b60,00b10bea], 139 bytes/49 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

cdecl point,outLot,outLocator three words plainRET, AL status. C687D0 containing lot failure leaves output untouched; found lot is written before ADC920 and B0D330, so later failure can retain outLot. No local explicit global-null guard here. Typed decompiler X/Z/level aliases reuse float4 input storage; physical input X at0 and Z at8. Full B0D330 distance/tie/corner/side/error policy remains open.

ORIGINAL BYTES
00b10b60: 55 8b ec 83 e4 f0 83 ec 28 8b 0d c4 db 1e 01 56
00b10b70: 57 8b 7d 08 0f 28 07 0f 29 44 24 10 d9 44 24 18
00b10b80: 83 ec 08 d9 5c 24 04 0f 29 44 24 28 d9 44 24 28
00b10b90: d9 1c 24 e8 38 7c 15 00 8b f0 85 f6 75 08 32 c0
00b10ba0: 5f 5e 8b e5 5d c3 8b 45 0c f3 0f 10 05 18 b2 fa
00b10bb0: 00 8d 4c 24 10 51 57 56 89 30 f3 0f 11 44 24 1c
00b10bc0: f3 0f 11 44 24 20 c7 44 24 24 00 00 00 00 e8 4d
00b10bd0: bd fc ff 8b 55 10 52 8d 44 24 20 50 56 e8 4e c7
00b10be0: ff ff 83 c4 18 5f 5e 8b e5 5d c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00b10b60
Entry Point: 00b10b60

00b10b60: PUSH EBP
00b10b61: MOV EBP, ESP
00b10b63: AND ESP, 0xfffffff0
00b10b66: SUB ESP, 0x28
00b10b69: MOV ECX, dword ptr [0x011edbc4]
00b10b6f: PUSH ESI
00b10b70: PUSH EDI
00b10b71: MOV EDI, dword ptr [EBP + 0x8]
00b10b74: MOVAPS XMM0, xmmword ptr [EDI]
00b10b77: MOVAPS xmmword ptr [ESP + 0x10], XMM0
00b10b7c: FLD float ptr [ESP + 0x18]
00b10b80: SUB ESP, 0x8
00b10b83: FSTP float ptr [ESP + 0x4]
00b10b87: MOVAPS xmmword ptr [ESP + 0x28], XMM0
00b10b8c: FLD float ptr [ESP + 0x28]
00b10b90: FSTP float ptr [ESP]
00b10b93: CALL 0x00c687d0
00b10b98: MOV ESI, EAX
00b10b9a: TEST ESI, ESI
00b10b9c: JNZ 0x00b10ba6
00b10b9e: XOR AL, AL
00b10ba0: POP EDI
00b10ba1: POP ESI
00b10ba2: MOV ESP, EBP
00b10ba4: POP EBP
00b10ba5: RET
00b10ba6: MOV EAX, dword ptr [EBP + 0xc]
00b10ba9: MOVSS XMM0, dword ptr [0x00fab218]
00b10bb1: LEA ECX, [ESP + 0x10]
00b10bb5: PUSH ECX
00b10bb6: PUSH EDI
00b10bb7: PUSH ESI
00b10bb8: MOV dword ptr [EAX], ESI
00b10bba: MOVSS dword ptr [ESP + 0x1c], XMM0
00b10bc0: MOVSS dword ptr [ESP + 0x20], XMM0
00b10bc6: MOV dword ptr [ESP + 0x24], 0x0
00b10bce: CALL 0x00adc920
00b10bd3: MOV EDX, dword ptr [EBP + 0x10]
00b10bd6: PUSH EDX
00b10bd7: LEA EAX, [ESP + 0x20]
00b10bdb: PUSH EAX
00b10bdc: PUSH ESI
00b10bdd: CALL 0x00b0d330
00b10be2: ADD ESP, 0x18
00b10be5: POP EDI
00b10be6: POP ESI
00b10be7: MOV ESP, EBP
00b10be9: POP EBP
00b10bea: RET

Total instructions: 49
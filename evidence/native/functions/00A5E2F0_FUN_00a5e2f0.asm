# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a5e2f0,00a5e354], 101 bytes/41 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

ECX swap and point stack word RET4; B10B60 gets fresh locator. Success only writes byte+40=1 and float4 point+30. No cache/COM preset transfer in this body.

ORIGINAL BYTES
00a5e2f0: 55 8b ec 83 e4 f0 83 ec 18 0c ff 56 8b f1 33 c9
00a5e300: 57 8b 7d 08 88 44 24 18 88 44 24 19 88 44 24 1b
00a5e310: 88 44 24 1c 8d 44 24 18 88 4c 24 1a 88 4c 24 1d
00a5e320: 89 4c 24 14 50 8d 4c 24 18 51 57 e8 30 28 0b 00
00a5e330: 83 c4 0c 84 c0 74 14 b0 01 88 46 40 0f 28 07 0f
00a5e340: 29 46 30 5f 5e 8b e5 5d c2 04 00 5f 32 c0 5e 8b
00a5e350: e5 5d c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a5e2f0
Entry Point: 00a5e2f0

00a5e2f0: PUSH EBP
00a5e2f1: MOV EBP, ESP
00a5e2f3: AND ESP, 0xfffffff0
00a5e2f6: SUB ESP, 0x18
00a5e2f9: OR AL, 0xff
00a5e2fb: PUSH ESI
00a5e2fc: MOV ESI, ECX
00a5e2fe: XOR ECX, ECX
00a5e300: PUSH EDI
00a5e301: MOV EDI, dword ptr [EBP + 0x8]
00a5e304: MOV byte ptr [ESP + 0x18], AL
00a5e308: MOV byte ptr [ESP + 0x19], AL
00a5e30c: MOV byte ptr [ESP + 0x1b], AL
00a5e310: MOV byte ptr [ESP + 0x1c], AL
00a5e314: LEA EAX, [ESP + 0x18]
00a5e318: MOV byte ptr [ESP + 0x1a], CL
00a5e31c: MOV byte ptr [ESP + 0x1d], CL
00a5e320: MOV dword ptr [ESP + 0x14], ECX
00a5e324: PUSH EAX
00a5e325: LEA ECX, [ESP + 0x18]
00a5e329: PUSH ECX
00a5e32a: PUSH EDI
00a5e32b: CALL 0x00b10b60
00a5e330: ADD ESP, 0xc
00a5e333: TEST AL, AL
00a5e335: JZ 0x00a5e34b
00a5e337: MOV AL, 0x1
00a5e339: MOV byte ptr [ESI + 0x40], AL
00a5e33c: MOVAPS XMM0, xmmword ptr [EDI]
00a5e33f: MOVAPS xmmword ptr [ESI + 0x30], XMM0
00a5e343: POP EDI
00a5e344: POP ESI
00a5e345: MOV ESP, EBP
00a5e347: POP EBP
00a5e348: RET 0x4
00a5e34b: POP EDI
00a5e34c: XOR AL, AL
00a5e34e: POP ESI
00a5e34f: MOV ESP, EBP
00a5e351: POP EBP
00a5e352: RET 0x4

Total instructions: 41
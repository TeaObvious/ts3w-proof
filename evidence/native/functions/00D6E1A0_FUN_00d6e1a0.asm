# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[00d6e1a0,00d6e262],195bytes/68instructions; byte/start verified against authoritativePE.

Physical cdecl one aligned four-lane point pointer, lowAL Boolean result, plainRET. World+74 weather receiver must exist. C68940 uses pointX/Z and stored0.125 allowance. A nonnull lot with room manager resolves local at-floor then room via B482C0(0,1); nonzeroAX rejects. Missing lot does not reject: D6E246 pushes0,1,lot-or-null,point, restores ECX weather manager and calls D6DFF0. Thus the public RainPuddle flag query reaches its off-lot sea/noise/wetness/normal branch. Inferred C uses int/float bit aliases for point lanes and upperEAX residue; these are not original conversion/undefined-source claims. World pointer admission/manager lifetime, complete room/terrain resource producers and final gameplay remain separate.

ORIGINAL OWNED BYTES
00d6e1a0: 55
00d6e1a1: 8b ec
00d6e1a3: 83 e4 f0
00d6e1a6: 83 ec 24
00d6e1a9: 8b 0d c4 db 1e 01
00d6e1af: 53
00d6e1b0: 8b 59 74
00d6e1b3: 85 db
00d6e1b5: 56
00d6e1b6: 57
00d6e1b7: 89 5c 24 0c
00d6e1bb: 0f 84 99 00 00 00
00d6e1c1: 8b 7d 08
00d6e1c4: d9 05 f8 92 fe 00
00d6e1ca: 0f 28 07
00d6e1cd: 83 ec 0c
00d6e1d0: d9 5c 24 08
00d6e1d4: 0f 29 44 24 1c
00d6e1d9: d9 44 24 24
00d6e1dd: 0f 29 44 24 2c
00d6e1e2: d9 5c 24 04
00d6e1e6: d9 44 24 2c
00d6e1ea: d9 1c 24
00d6e1ed: e8 4e a7 ef ff
00d6e1f2: 8b f0
00d6e1f4: 85 f6
00d6e1f6: 74 4e
00d6e1f8: 8b 9e 98 02 00 00
00d6e1fe: 85 db
00d6e200: 74 40
00d6e202: f3 0f 10 05 18 b2 fa 00
00d6e20a: 8d 44 24 10
00d6e20e: 50
00d6e20f: 57
00d6e210: 56
00d6e211: f3 0f 11 44 24 1c
00d6e217: f3 0f 11 44 24 20
00d6e21d: c7 44 24 24 00 00 00 00
00d6e225: e8 56 e7 d6 ff
00d6e22a: 83 c4 0c
00d6e22d: 6a 01
00d6e22f: 6a 00
00d6e231: 8d 4c 24 18
00d6e235: 51
00d6e236: 8b cb
00d6e238: e8 83 a0 dd ff
00d6e23d: 66 85 c0
00d6e240: 75 18
00d6e242: 8b 5c 24 0c
00d6e246: 6a 00
00d6e248: 6a 01
00d6e24a: 56
00d6e24b: 57
00d6e24c: 8b cb
00d6e24e: e8 9d fd ff ff
00d6e253: 5f
00d6e254: 5e
00d6e255: 5b
00d6e256: 8b e5
00d6e258: 5d
00d6e259: c3
00d6e25a: 5f
00d6e25b: 5e
00d6e25c: 32 c0
00d6e25e: 5b
00d6e25f: 8b e5
00d6e261: 5d
00d6e262: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d6e1a0
Entry Point: 00d6e1a0

00d6e1a0: PUSH EBP
00d6e1a1: MOV EBP, ESP
00d6e1a3: AND ESP, 0xfffffff0
00d6e1a6: SUB ESP, 0x24
00d6e1a9: MOV ECX, dword ptr [0x011edbc4]
00d6e1af: PUSH EBX
00d6e1b0: MOV EBX, dword ptr [ECX + 0x74]
00d6e1b3: TEST EBX, EBX
00d6e1b5: PUSH ESI
00d6e1b6: PUSH EDI
00d6e1b7: MOV dword ptr [ESP + 0xc], EBX
00d6e1bb: JZ 0x00d6e25a
00d6e1c1: MOV EDI, dword ptr [EBP + 0x8]
00d6e1c4: FLD float ptr [0x00fe92f8]
00d6e1ca: MOVAPS XMM0, xmmword ptr [EDI]
00d6e1cd: SUB ESP, 0xc
00d6e1d0: FSTP float ptr [ESP + 0x8]
00d6e1d4: MOVAPS xmmword ptr [ESP + 0x1c], XMM0
00d6e1d9: FLD float ptr [ESP + 0x24]
00d6e1dd: MOVAPS xmmword ptr [ESP + 0x2c], XMM0
00d6e1e2: FSTP float ptr [ESP + 0x4]
00d6e1e6: FLD float ptr [ESP + 0x2c]
00d6e1ea: FSTP float ptr [ESP]
00d6e1ed: CALL 0x00c68940
00d6e1f2: MOV ESI, EAX
00d6e1f4: TEST ESI, ESI
00d6e1f6: JZ 0x00d6e246
00d6e1f8: MOV EBX, dword ptr [ESI + 0x298]
00d6e1fe: TEST EBX, EBX
00d6e200: JZ 0x00d6e242
00d6e202: MOVSS XMM0, dword ptr [0x00fab218]
00d6e20a: LEA EAX, [ESP + 0x10]
00d6e20e: PUSH EAX
00d6e20f: PUSH EDI
00d6e210: PUSH ESI
00d6e211: MOVSS dword ptr [ESP + 0x1c], XMM0
00d6e217: MOVSS dword ptr [ESP + 0x20], XMM0
00d6e21d: MOV dword ptr [ESP + 0x24], 0x0
00d6e225: CALL 0x00adc980
00d6e22a: ADD ESP, 0xc
00d6e22d: PUSH 0x1
00d6e22f: PUSH 0x0
00d6e231: LEA ECX, [ESP + 0x18]
00d6e235: PUSH ECX
00d6e236: MOV ECX, EBX
00d6e238: CALL 0x00b482c0
00d6e23d: TEST AX, AX
00d6e240: JNZ 0x00d6e25a
00d6e242: MOV EBX, dword ptr [ESP + 0xc]
00d6e246: PUSH 0x0
00d6e248: PUSH 0x1
00d6e24a: PUSH ESI
00d6e24b: PUSH EDI
00d6e24c: MOV ECX, EBX
00d6e24e: CALL 0x00d6dff0
00d6e253: POP EDI
00d6e254: POP ESI
00d6e255: POP EBX
00d6e256: MOV ESP, EBP
00d6e258: POP EBP
00d6e259: RET
00d6e25a: POP EDI
00d6e25b: POP ESI
00d6e25c: XOR AL, AL
00d6e25e: POP EBX
00d6e25f: MOV ESP, EBP
00d6e261: POP EBP
00d6e262: RET

Total instructions: 68
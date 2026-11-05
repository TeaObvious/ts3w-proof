# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe owned ranges [(13773024, 13773302)]; 278 owned bytes/93 instructions. Internal unowned gaps excluded. All bytes/starts checked against authoritative pristine PE.

ECX undoable plus eight physical stack words/RET20hex. Requires nonnull bound lot. Exact-equality/bit18 gate precedes work. Captures level0 height, forwards physical inputs reordered into D223F0, compares resulting ground and invokes D21EC0 only when ground changed. Argument6 becomes D223F0 cutoff input8; inputs7/8 are forwarded before that cutoff. Actual bytes/instruction order govern ABI; generated float names and type casts do not establish types.

ORIGINAL OWNED BYTES
00d228e0: 51
00d228e1: 53
00d228e2: 8b d9
00d228e4: 8b 43 50
00d228e7: 85 c0
00d228e9: 0f 84 02 01 00 00
00d228ef: 8b 88 90 02 00 00
00d228f5: 55
00d228f6: 8b 6c 24 10
00d228fa: 8a 45 01
00d228fd: 8a 55 00
00d22900: 88 44 24 10
00d22904: 0f be 45 02
00d22908: 2b 41 10
00d2290b: 56
00d2290c: 8b 71 24
00d2290f: 0f af 46 04
00d22913: 57
00d22914: 0f be fa
00d22917: 03 c7
00d22919: 0f af 46 08
00d2291d: 0f be 7c 24 18
00d22922: 8b 76 10
00d22925: 03 c7
00d22927: f3 0f 10 04 86
00d2292c: 0f 2e 44 24 1c
00d22931: 9f
00d22932: f6 c4 44
00d22935: 7a 11
00d22937: 8b 44 24 28
00d2293b: 8b 00
00d2293d: c1 e8 12
00d22940: a8 01
00d22942: 0f 85 a6 00 00 00
00d22948: 8a 44 24 18
00d2294c: d9 44 24 24
00d22950: 88 44 24 11
00d22954: 8b 41 24
00d22957: 0f be 7c 24 11
00d2295c: 0f be f2
00d2295f: 88 54 24 10
00d22963: 8b 50 04
00d22966: 0f af 51 10
00d2296a: 8b ce
00d2296c: 2b ca
00d2296e: 0f af 48 08
00d22972: 8b 50 10
00d22975: 8b 44 24 2c
00d22979: 50
00d2297a: 8b 44 24 2c
00d2297e: 03 cf
00d22980: f3 0f 10 04 8a
00d22985: 8b 4c 24 38
00d22989: 8b 54 24 34
00d2298d: 51
00d2298e: 52
00d2298f: 50
00d22990: 51
00d22991: 8b 4c 24 34
00d22995: d9 1c 24
00d22998: 51
00d22999: d9 44 24 34
00d2299d: 51
00d2299e: 8b cb
00d229a0: d9 1c 24
00d229a3: 55
00d229a4: c6 44 24 32 00
00d229a9: f3 0f 11 44 24 38
00d229af: e8 3c fa ff ff
00d229b4: 8b 53 50
00d229b7: 8b 8a 90 02 00 00
00d229bd: 8b 41 24
00d229c0: 8b 50 04
00d229c3: 0f af 51 10
00d229c7: 2b f2
00d229c9: 0f af 70 08
00d229cd: 8b 40 10
00d229d0: 03 f7
00d229d2: f3 0f 10 04 b0
00d229d7: 0f 2e 44 24 18
00d229dc: 9f
00d229dd: f6 c4 44
00d229e0: 7b 0c
00d229e2: 8d 4c 24 10
00d229e6: 51
00d229e7: 8b cb
00d229e9: e8 d2 f4 ff ff
00d229ee: 5f
00d229ef: 5e
00d229f0: 5d
00d229f1: 5b
00d229f2: 59
00d229f3: c2 20 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d228e0
Entry Point: 00d228e0

00d228e0: PUSH ECX
00d228e1: PUSH EBX
00d228e2: MOV EBX, ECX
00d228e4: MOV EAX, dword ptr [EBX + 0x50]
00d228e7: TEST EAX, EAX
00d228e9: JZ 0x00d229f1
00d228ef: MOV ECX, dword ptr [EAX + 0x290]
00d228f5: PUSH EBP
00d228f6: MOV EBP, dword ptr [ESP + 0x10]
00d228fa: MOV AL, byte ptr [EBP + 0x1]
00d228fd: MOV DL, byte ptr [EBP]
00d22900: MOV byte ptr [ESP + 0x10], AL
00d22904: MOVSX EAX, byte ptr [EBP + 0x2]
00d22908: SUB EAX, dword ptr [ECX + 0x10]
00d2290b: PUSH ESI
00d2290c: MOV ESI, dword ptr [ECX + 0x24]
00d2290f: IMUL EAX, dword ptr [ESI + 0x4]
00d22913: PUSH EDI
00d22914: MOVSX EDI, DL
00d22917: ADD EAX, EDI
00d22919: IMUL EAX, dword ptr [ESI + 0x8]
00d2291d: MOVSX EDI, byte ptr [ESP + 0x18]
00d22922: MOV ESI, dword ptr [ESI + 0x10]
00d22925: ADD EAX, EDI
00d22927: MOVSS XMM0, dword ptr [ESI + EAX*0x4]
00d2292c: UCOMISS XMM0, dword ptr [ESP + 0x1c]
00d22931: LAHF
00d22932: TEST AH, 0x44
00d22935: JP 0x00d22948
00d22937: MOV EAX, dword ptr [ESP + 0x28]
00d2293b: MOV EAX, dword ptr [EAX]
00d2293d: SHR EAX, 0x12
00d22940: TEST AL, 0x1
00d22942: JNZ 0x00d229ee
00d22948: MOV AL, byte ptr [ESP + 0x18]
00d2294c: FLD float ptr [ESP + 0x24]
00d22950: MOV byte ptr [ESP + 0x11], AL
00d22954: MOV EAX, dword ptr [ECX + 0x24]
00d22957: MOVSX EDI, byte ptr [ESP + 0x11]
00d2295c: MOVSX ESI, DL
00d2295f: MOV byte ptr [ESP + 0x10], DL
00d22963: MOV EDX, dword ptr [EAX + 0x4]
00d22966: IMUL EDX, dword ptr [ECX + 0x10]
00d2296a: MOV ECX, ESI
00d2296c: SUB ECX, EDX
00d2296e: IMUL ECX, dword ptr [EAX + 0x8]
00d22972: MOV EDX, dword ptr [EAX + 0x10]
00d22975: MOV EAX, dword ptr [ESP + 0x2c]
00d22979: PUSH EAX
00d2297a: MOV EAX, dword ptr [ESP + 0x2c]
00d2297e: ADD ECX, EDI
00d22980: MOVSS XMM0, dword ptr [EDX + ECX*0x4]
00d22985: MOV ECX, dword ptr [ESP + 0x38]
00d22989: MOV EDX, dword ptr [ESP + 0x34]
00d2298d: PUSH ECX
00d2298e: PUSH EDX
00d2298f: PUSH EAX
00d22990: PUSH ECX
00d22991: MOV ECX, dword ptr [ESP + 0x34]
00d22995: FSTP float ptr [ESP]
00d22998: PUSH ECX
00d22999: FLD float ptr [ESP + 0x34]
00d2299d: PUSH ECX
00d2299e: MOV ECX, EBX
00d229a0: FSTP float ptr [ESP]
00d229a3: PUSH EBP
00d229a4: MOV byte ptr [ESP + 0x32], 0x0
00d229a9: MOVSS dword ptr [ESP + 0x38], XMM0
00d229af: CALL 0x00d223f0
00d229b4: MOV EDX, dword ptr [EBX + 0x50]
00d229b7: MOV ECX, dword ptr [EDX + 0x290]
00d229bd: MOV EAX, dword ptr [ECX + 0x24]
00d229c0: MOV EDX, dword ptr [EAX + 0x4]
00d229c3: IMUL EDX, dword ptr [ECX + 0x10]
00d229c7: SUB ESI, EDX
00d229c9: IMUL ESI, dword ptr [EAX + 0x8]
00d229cd: MOV EAX, dword ptr [EAX + 0x10]
00d229d0: ADD ESI, EDI
00d229d2: MOVSS XMM0, dword ptr [EAX + ESI*0x4]
00d229d7: UCOMISS XMM0, dword ptr [ESP + 0x18]
00d229dc: LAHF
00d229dd: TEST AH, 0x44
00d229e0: JNP 0x00d229ee
00d229e2: LEA ECX, [ESP + 0x10]
00d229e6: PUSH ECX
00d229e7: MOV ECX, EBX
00d229e9: CALL 0x00d21ec0
00d229ee: POP EDI
00d229ef: POP ESI
00d229f0: POP EBP
00d229f1: POP EBX
00d229f2: POP ECX
00d229f3: RET 0x20

Total instructions: 93
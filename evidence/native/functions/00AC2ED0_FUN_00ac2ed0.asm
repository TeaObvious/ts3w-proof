# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00ac2ed0,00ac2fc5]. 246owned bytes/91instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

ECX compressedgrid plus fourwords(valuesptr,x,z,storagelevel), void RET10. Same block/tag/cell selection as AB3E50; uniform unchanged4word returns; changeduniform expands viaAC08B0/AB42D0 then copies fourDWORDs. Allocator/refcounts/partialfault/concurrency remain open.

ORIGINAL OWNED BYTES
00ac2ed0: 83 ec 08
00ac2ed3: 8b 54 24 10
00ac2ed7: 53
00ac2ed8: 55
00ac2ed9: 56
00ac2eda: 8b f1
00ac2edc: 8b 46 20
00ac2edf: 0f af 44 24 24
00ac2ee4: 8b 6c 24 18
00ac2ee8: 8b ca
00ac2eea: c1 f9 02
00ac2eed: 03 c1
00ac2eef: 0f af 46 24
00ac2ef3: 57
00ac2ef4: 8b 7c 24 24
00ac2ef8: 8b cf
00ac2efa: c1 f9 02
00ac2efd: 03 c1
00ac2eff: 8b 4e 48
00ac2f02: 8d 1c 00
00ac2f05: 03 cb
00ac2f07: 66 f7 01 00 80
00ac2f0c: 89 5c 24 10
00ac2f10: 89 4c 24 14
00ac2f14: 74 7a
00ac2f16: c1 e0 04
00ac2f19: 8b d0
00ac2f1b: 8b 46 38
00ac2f1e: 33 c9
00ac2f20: 89 54 24 28
00ac2f24: 03 c2
00ac2f26: 8b 54 8d 00
00ac2f2a: 3b 10
00ac2f2c: 75 15
00ac2f2e: 83 c1 01
00ac2f31: 83 c0 04
00ac2f34: 83 f9 04
00ac2f37: 7c ed
00ac2f39: 5f
00ac2f3a: 5e
00ac2f3b: 5d
00ac2f3c: 5b
00ac2f3d: 83 c4 08
00ac2f40: c2 10 00
00ac2f43: 8b 7e 2c
00ac2f46: 2b 7e 28
00ac2f49: 8d 5e 28
00ac2f4c: c1 ff 04
00ac2f4f: 8d 47 10
00ac2f52: 50
00ac2f53: 8b cb
00ac2f55: e8 56 d9 ff ff
00ac2f5a: 8b 4e 38
00ac2f5d: 03 4c 24 28
00ac2f61: 8b 56 2c
00ac2f64: 8b c7
00ac2f66: 51
00ac2f67: c1 e0 04
00ac2f6a: 03 03
00ac2f6c: 52
00ac2f6d: 50
00ac2f6e: e8 5d 13 ff ff
00ac2f73: 8b 4e 48
00ac2f76: 8b 54 24 1c
00ac2f7a: 83 c4 0c
00ac2f7d: c1 ff 04
00ac2f80: 66 89 3c 0a
00ac2f84: 8b 7c 24 24
00ac2f88: 8b 4c 24 14
00ac2f8c: 8b 54 24 20
00ac2f90: 0f b7 01
00ac2f93: 83 e2 03
00ac2f96: 8d 0c 82
00ac2f99: 8b 55 00
00ac2f9c: 83 e7 03
00ac2f9f: 8d 04 8f
00ac2fa2: c1 e0 04
00ac2fa5: 03 46 28
00ac2fa8: 5f
00ac2fa9: 89 10
00ac2fab: 8b 4d 04
00ac2fae: 89 48 04
00ac2fb1: 8b 55 08
00ac2fb4: 89 50 08
00ac2fb7: 8b 4d 0c
00ac2fba: 5e
00ac2fbb: 5d
00ac2fbc: 89 48 0c
00ac2fbf: 5b
00ac2fc0: 83 c4 08
00ac2fc3: c2 10 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00ac2ed0
Entry Point: 00ac2ed0

00ac2ed0: SUB ESP, 0x8
00ac2ed3: MOV EDX, dword ptr [ESP + 0x10]
00ac2ed7: PUSH EBX
00ac2ed8: PUSH EBP
00ac2ed9: PUSH ESI
00ac2eda: MOV ESI, ECX
00ac2edc: MOV EAX, dword ptr [ESI + 0x20]
00ac2edf: IMUL EAX, dword ptr [ESP + 0x24]
00ac2ee4: MOV EBP, dword ptr [ESP + 0x18]
00ac2ee8: MOV ECX, EDX
00ac2eea: SAR ECX, 0x2
00ac2eed: ADD EAX, ECX
00ac2eef: IMUL EAX, dword ptr [ESI + 0x24]
00ac2ef3: PUSH EDI
00ac2ef4: MOV EDI, dword ptr [ESP + 0x24]
00ac2ef8: MOV ECX, EDI
00ac2efa: SAR ECX, 0x2
00ac2efd: ADD EAX, ECX
00ac2eff: MOV ECX, dword ptr [ESI + 0x48]
00ac2f02: LEA EBX, [EAX + EAX*0x1]
00ac2f05: ADD ECX, EBX
00ac2f07: TEST word ptr [ECX], 0x8000
00ac2f0c: MOV dword ptr [ESP + 0x10], EBX
00ac2f10: MOV dword ptr [ESP + 0x14], ECX
00ac2f14: JZ 0x00ac2f90
00ac2f16: SHL EAX, 0x4
00ac2f19: MOV EDX, EAX
00ac2f1b: MOV EAX, dword ptr [ESI + 0x38]
00ac2f1e: XOR ECX, ECX
00ac2f20: MOV dword ptr [ESP + 0x28], EDX
00ac2f24: ADD EAX, EDX
00ac2f26: MOV EDX, dword ptr [EBP + ECX*0x4]
00ac2f2a: CMP EDX, dword ptr [EAX]
00ac2f2c: JNZ 0x00ac2f43
00ac2f2e: ADD ECX, 0x1
00ac2f31: ADD EAX, 0x4
00ac2f34: CMP ECX, 0x4
00ac2f37: JL 0x00ac2f26
00ac2f39: POP EDI
00ac2f3a: POP ESI
00ac2f3b: POP EBP
00ac2f3c: POP EBX
00ac2f3d: ADD ESP, 0x8
00ac2f40: RET 0x10
00ac2f43: MOV EDI, dword ptr [ESI + 0x2c]
00ac2f46: SUB EDI, dword ptr [ESI + 0x28]
00ac2f49: LEA EBX, [ESI + 0x28]
00ac2f4c: SAR EDI, 0x4
00ac2f4f: LEA EAX, [EDI + 0x10]
00ac2f52: PUSH EAX
00ac2f53: MOV ECX, EBX
00ac2f55: CALL 0x00ac08b0
00ac2f5a: MOV ECX, dword ptr [ESI + 0x38]
00ac2f5d: ADD ECX, dword ptr [ESP + 0x28]
00ac2f61: MOV EDX, dword ptr [ESI + 0x2c]
00ac2f64: MOV EAX, EDI
00ac2f66: PUSH ECX
00ac2f67: SHL EAX, 0x4
00ac2f6a: ADD EAX, dword ptr [EBX]
00ac2f6c: PUSH EDX
00ac2f6d: PUSH EAX
00ac2f6e: CALL 0x00ab42d0
00ac2f73: MOV ECX, dword ptr [ESI + 0x48]
00ac2f76: MOV EDX, dword ptr [ESP + 0x1c]
00ac2f7a: ADD ESP, 0xc
00ac2f7d: SAR EDI, 0x4
00ac2f80: MOV word ptr [EDX + ECX*0x1], DI
00ac2f84: MOV EDI, dword ptr [ESP + 0x24]
00ac2f88: MOV ECX, dword ptr [ESP + 0x14]
00ac2f8c: MOV EDX, dword ptr [ESP + 0x20]
00ac2f90: MOVZX EAX, word ptr [ECX]
00ac2f93: AND EDX, 0x3
00ac2f96: LEA ECX, [EDX + EAX*0x4]
00ac2f99: MOV EDX, dword ptr [EBP]
00ac2f9c: AND EDI, 0x3
00ac2f9f: LEA EAX, [EDI + ECX*0x4]
00ac2fa2: SHL EAX, 0x4
00ac2fa5: ADD EAX, dword ptr [ESI + 0x28]
00ac2fa8: POP EDI
00ac2fa9: MOV dword ptr [EAX], EDX
00ac2fab: MOV ECX, dword ptr [EBP + 0x4]
00ac2fae: MOV dword ptr [EAX + 0x4], ECX
00ac2fb1: MOV EDX, dword ptr [EBP + 0x8]
00ac2fb4: MOV dword ptr [EAX + 0x8], EDX
00ac2fb7: MOV ECX, dword ptr [EBP + 0xc]
00ac2fba: POP ESI
00ac2fbb: POP EBP
00ac2fbc: MOV dword ptr [EAX + 0xc], ECX
00ac2fbf: POP EBX
00ac2fc0: ADD ESP, 0x8
00ac2fc3: RET 0x10

Total instructions: 91
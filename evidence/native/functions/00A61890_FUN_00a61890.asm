# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a61890,00a619d9], 330 bytes/111 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

cdecl point/mode/outPreset three words/plainRET. Same containing-lot/AB1020/local/AFDE10/B04090/A8FA90 chain as source binder. Nonzero fourth key lane enters broker virtual0C with actual local out-address, then5BF050 query. Success writes actual caller third pointer atEBP+10; failed query releases virtual4, AL0. Decompiler piVar5 initialized0 is a lost local-out alias, not actual dereference0 behavior. Broker/ref/query and original complete copy/selection ownership remain separate.

ORIGINAL BYTES
00a61890: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 68 85
00a618a0: c9 56 57 0f 84 1c 01 00 00 8b 7d 08 0f 28 07 0f
00a618b0: 29 44 24 10 d9 44 24 18 83 ec 08 d9 5c 24 04 0f
00a618c0: 29 44 24 28 d9 44 24 28 d9 1c 24 e8 00 6f 20 00
00a618d0: 8b f0 85 f6 0f 84 eb 00 00 00 8b ce e8 3f f7 04
00a618e0: 00 84 c0 0f 84 dc 00 00 00 f3 0f 10 05 18 b2 fa
00a618f0: 00 8d 44 24 10 50 57 56 f3 0f 11 44 24 1c f3 0f
00a61900: 11 44 24 20 c7 44 24 24 00 00 00 00 e8 4f af 07
00a61910: 00 6a 00 6a 00 6a 01 8d 4c 24 28 51 56 e8 ee c4
00a61920: 09 00 83 c4 20 84 c0 0f 84 98 00 00 00 8b 55 0c
00a61930: 52 0c ff 6a 01 6a 00 88 44 24 14 88 44 24 15 88
00a61940: 44 24 17 56 8d 44 24 20 50 8d 4c 24 1c 51 c6 44
00a61950: 24 22 00 e8 38 27 0a 00 83 c4 18 8d 4c 24 30 e8
00a61960: 0c a1 09 00 8b 8e 90 02 00 00 8d 54 24 30 52 8d
00a61970: 44 24 0c 50 e8 17 e1 02 00 83 7c 24 68 00 74 45
00a61980: e8 0b 7a d0 ff e8 f6 e4 a4 ff 8b 10 8b 52 0c 6a
00a61990: 00 6a 00 6a 00 6a 00 8d 4c 24 1c 51 8d 4c 24 74
00a619a0: 51 8b c8 ff d2 84 c0 74 1c 8b 44 24 0c 50 e8 9d
00a619b0: d6 b5 ff 83 c4 04 85 c0 75 13 8b 4c 24 0c 8b 11
00a619c0: 8b 42 04 ff d0 32 c0 5f 5e 8b e5 5d c3 8b 4d 10
00a619d0: 5f 89 01 b0 01 5e 8b e5 5d c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a61890
Entry Point: 00a61890

00a61890: PUSH EBP
00a61891: MOV EBP, ESP
00a61893: AND ESP, 0xfffffff0
00a61896: MOV ECX, dword ptr [0x011edbc4]
00a6189c: SUB ESP, 0x68
00a6189f: TEST ECX, ECX
00a618a1: PUSH ESI
00a618a2: PUSH EDI
00a618a3: JZ 0x00a619c5
00a618a9: MOV EDI, dword ptr [EBP + 0x8]
00a618ac: MOVAPS XMM0, xmmword ptr [EDI]
00a618af: MOVAPS xmmword ptr [ESP + 0x10], XMM0
00a618b4: FLD float ptr [ESP + 0x18]
00a618b8: SUB ESP, 0x8
00a618bb: FSTP float ptr [ESP + 0x4]
00a618bf: MOVAPS xmmword ptr [ESP + 0x28], XMM0
00a618c4: FLD float ptr [ESP + 0x28]
00a618c8: FSTP float ptr [ESP]
00a618cb: CALL 0x00c687d0
00a618d0: MOV ESI, EAX
00a618d2: TEST ESI, ESI
00a618d4: JZ 0x00a619c5
00a618da: MOV ECX, ESI
00a618dc: CALL 0x00ab1020
00a618e1: TEST AL, AL
00a618e3: JZ 0x00a619c5
00a618e9: MOVSS XMM0, dword ptr [0x00fab218]
00a618f1: LEA EAX, [ESP + 0x10]
00a618f5: PUSH EAX
00a618f6: PUSH EDI
00a618f7: PUSH ESI
00a618f8: MOVSS dword ptr [ESP + 0x1c], XMM0
00a618fe: MOVSS dword ptr [ESP + 0x20], XMM0
00a61904: MOV dword ptr [ESP + 0x24], 0x0
00a6190c: CALL 0x00adc860
00a61911: PUSH 0x0
00a61913: PUSH 0x0
00a61915: PUSH 0x1
00a61917: LEA ECX, [ESP + 0x28]
00a6191b: PUSH ECX
00a6191c: PUSH ESI
00a6191d: CALL 0x00afde10
00a61922: ADD ESP, 0x20
00a61925: TEST AL, AL
00a61927: JZ 0x00a619c5
00a6192d: MOV EDX, dword ptr [EBP + 0xc]
00a61930: PUSH EDX
00a61931: OR AL, 0xff
00a61933: PUSH 0x1
00a61935: PUSH 0x0
00a61937: MOV byte ptr [ESP + 0x14], AL
00a6193b: MOV byte ptr [ESP + 0x15], AL
00a6193f: MOV byte ptr [ESP + 0x17], AL
00a61943: PUSH ESI
00a61944: LEA EAX, [ESP + 0x20]
00a61948: PUSH EAX
00a61949: LEA ECX, [ESP + 0x1c]
00a6194d: PUSH ECX
00a6194e: MOV byte ptr [ESP + 0x22], 0x0
00a61953: CALL 0x00b04090
00a61958: ADD ESP, 0x18
00a6195b: LEA ECX, [ESP + 0x30]
00a6195f: CALL 0x00afba70
00a61964: MOV ECX, dword ptr [ESI + 0x290]
00a6196a: LEA EDX, [ESP + 0x30]
00a6196e: PUSH EDX
00a6196f: LEA EAX, [ESP + 0xc]
00a61973: PUSH EAX
00a61974: CALL 0x00a8fa90
00a61979: CMP dword ptr [ESP + 0x68], 0x0
00a6197e: JZ 0x00a619c5
00a61980: CALL 0x00769390
00a61985: CALL 0x004afe80
00a6198a: MOV EDX, dword ptr [EAX]
00a6198c: MOV EDX, dword ptr [EDX + 0xc]
00a6198f: PUSH 0x0
00a61991: PUSH 0x0
00a61993: PUSH 0x0
00a61995: PUSH 0x0
00a61997: LEA ECX, [ESP + 0x1c]
00a6199b: PUSH ECX
00a6199c: LEA ECX, [ESP + 0x74]
00a619a0: PUSH ECX
00a619a1: MOV ECX, EAX
00a619a3: CALL EDX
00a619a5: TEST AL, AL
00a619a7: JZ 0x00a619c5
00a619a9: MOV EAX, dword ptr [ESP + 0xc]
00a619ad: PUSH EAX
00a619ae: CALL 0x005bf050
00a619b3: ADD ESP, 0x4
00a619b6: TEST EAX, EAX
00a619b8: JNZ 0x00a619cd
00a619ba: MOV ECX, dword ptr [ESP + 0xc]
00a619be: MOV EDX, dword ptr [ECX]
00a619c0: MOV EAX, dword ptr [EDX + 0x4]
00a619c3: CALL EAX
00a619c5: XOR AL, AL
00a619c7: POP EDI
00a619c8: POP ESI
00a619c9: MOV ESP, EBP
00a619cb: POP EBP
00a619cc: RET
00a619cd: MOV ECX, dword ptr [EBP + 0x10]
00a619d0: POP EDI
00a619d1: MOV dword ptr [ECX], EAX
00a619d3: MOV AL, 0x1
00a619d5: POP ESI
00a619d6: MOV ESP, EBP
00a619d8: POP EBP
00a619d9: RET

Total instructions: 111
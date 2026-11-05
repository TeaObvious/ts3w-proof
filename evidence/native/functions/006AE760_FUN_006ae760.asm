# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[006ae760,006ae8a0],321bytes/91instructions. Readonly GhidrAssist metadata/Listing and independent originalPE byte/start verification. No DB/body/prototype repair, analysis, annotation/save or original-byte mutation.

Physical ECX manager, no stackarguments/plainRETvoid; inferredfastcall retained. Front queue40==50 returns. Objectvirtual4 beforestep, optional providerD0 virtual0 poses selectedhour (managerB4 unless positiveordered, thenqueuedhour);6B5860 lowAL completion; provider virtual4 clears afterward regardless completion. Successful positiveorderedqueuedtime computes wrappedspan24, storesB8/C0 and selects phase4+6B3030 for span<=12 orunordered, otherwisephase1/countdown10/span1. CompletedpointerFC and queuepop follow. Final6AE88B JMP objectvirtual8 is a tail dispatch, not the C warning jumptable; no virtualtarget/refcount meaning inferred. No queue/GPU readiness guarantee.

ORIGINAL OWNED BYTES
006ae760: 83 ec 0c
006ae763: 55
006ae764: 56
006ae765: 8b f1
006ae767: 8b 46 40
006ae76a: 3b 46 50
006ae76d: 8d 6e 38
006ae770: 0f 84 25 01 00 00
006ae776: 53
006ae777: 8b 5e 40
006ae77a: 57
006ae77b: 8b 3b
006ae77d: 85 ff
006ae77f: 74 09
006ae781: 8b 17
006ae783: 8b 42 04
006ae786: 8b cf
006ae788: ff d0
006ae78a: 85 ff
006ae78c: f3 0f 10 4b 04
006ae791: f3 0f 11 4c 24 18
006ae797: 0f 84 f0 00 00 00
006ae79d: f3 0f 10 86 b4 00 00 00
006ae7a5: 0f 2f 05 cc 4c 0f 01
006ae7ac: f3 0f 11 44 24 10
006ae7b2: 76 06
006ae7b4: f3 0f 11 4c 24 10
006ae7ba: 8b 8e d0 00 00 00
006ae7c0: 85 c9
006ae7c2: 74 0e
006ae7c4: 8b 11
006ae7c6: d9 44 24 10
006ae7ca: 8b 02
006ae7cc: 51
006ae7cd: d9 1c 24
006ae7d0: ff d0
006ae7d2: 8b cf
006ae7d4: e8 87 70 00 00
006ae7d9: 8b 8e d0 00 00 00
006ae7df: 85 c9
006ae7e1: 8a d8
006ae7e3: 74 07
006ae7e5: 8b 11
006ae7e7: 8b 42 04
006ae7ea: ff d0
006ae7ec: 84 db
006ae7ee: 0f 84 89 00 00 00
006ae7f4: f3 0f 10 4c 24 18
006ae7fa: 0f 2f 0d cc 4c 0f 01
006ae801: 76 6d
006ae803: f3 0f 10 96 b4 00 00 00
006ae80b: 0f 2f ca
006ae80e: 0f 28 c1
006ae811: f3 0f 5c c2
006ae815: 77 08
006ae817: f3 0f 58 05 30 4a ff 00
006ae81f: 0f 2f 05 94 ad fa 00
006ae826: f3 0f 11 86 c0 00 00 00
006ae82e: f3 0f 11 8e b8 00 00 00
006ae836: 76 26
006ae838: f3 0f 10 05 f8 98 f9 00
006ae840: c7 86 b0 00 00 00 01 00 00 00
006ae84a: c7 86 c4 00 00 00 0a 00 00 00
006ae854: f3 0f 11 86 c0 00 00 00
006ae85c: eb 12
006ae85e: 8b 4e 64
006ae861: c7 86 b0 00 00 00 04 00 00 00
006ae86b: e8 c0 47 00 00
006ae870: 8b cd
006ae872: 89 be fc 00 00 00
006ae878: e8 03 f9 ff ff
006ae87d: 8b 17
006ae87f: 8b 42 08
006ae882: 8b cf
006ae884: 5f
006ae885: 5b
006ae886: 5e
006ae887: 5d
006ae888: 83 c4 0c
006ae88b: ff e0
006ae88d: 5f
006ae88e: 5b
006ae88f: 5e
006ae890: 8b cd
006ae892: 5d
006ae893: 83 c4 0c
006ae896: e9 e5 f8 ff ff
006ae89b: 5e
006ae89c: 5d
006ae89d: 83 c4 0c
006ae8a0: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_006ae760
Entry Point: 006ae760

006ae760: SUB ESP, 0xc
006ae763: PUSH EBP
006ae764: PUSH ESI
006ae765: MOV ESI, ECX
006ae767: MOV EAX, dword ptr [ESI + 0x40]
006ae76a: CMP EAX, dword ptr [ESI + 0x50]
006ae76d: LEA EBP, [ESI + 0x38]
006ae770: JZ 0x006ae89b
006ae776: PUSH EBX
006ae777: MOV EBX, dword ptr [ESI + 0x40]
006ae77a: PUSH EDI
006ae77b: MOV EDI, dword ptr [EBX]
006ae77d: TEST EDI, EDI
006ae77f: JZ 0x006ae78a
006ae781: MOV EDX, dword ptr [EDI]
006ae783: MOV EAX, dword ptr [EDX + 0x4]
006ae786: MOV ECX, EDI
006ae788: CALL EAX
006ae78a: TEST EDI, EDI
006ae78c: MOVSS XMM1, dword ptr [EBX + 0x4]
006ae791: MOVSS dword ptr [ESP + 0x18], XMM1
006ae797: JZ 0x006ae88d
006ae79d: MOVSS XMM0, dword ptr [ESI + 0xb4]
006ae7a5: COMISS XMM0, dword ptr [0x010f4ccc]
006ae7ac: MOVSS dword ptr [ESP + 0x10], XMM0
006ae7b2: JBE 0x006ae7ba
006ae7b4: MOVSS dword ptr [ESP + 0x10], XMM1
006ae7ba: MOV ECX, dword ptr [ESI + 0xd0]
006ae7c0: TEST ECX, ECX
006ae7c2: JZ 0x006ae7d2
006ae7c4: MOV EDX, dword ptr [ECX]
006ae7c6: FLD float ptr [ESP + 0x10]
006ae7ca: MOV EAX, dword ptr [EDX]
006ae7cc: PUSH ECX
006ae7cd: FSTP float ptr [ESP]
006ae7d0: CALL EAX
006ae7d2: MOV ECX, EDI
006ae7d4: CALL 0x006b5860
006ae7d9: MOV ECX, dword ptr [ESI + 0xd0]
006ae7df: TEST ECX, ECX
006ae7e1: MOV BL, AL
006ae7e3: JZ 0x006ae7ec
006ae7e5: MOV EDX, dword ptr [ECX]
006ae7e7: MOV EAX, dword ptr [EDX + 0x4]
006ae7ea: CALL EAX
006ae7ec: TEST BL, BL
006ae7ee: JZ 0x006ae87d
006ae7f4: MOVSS XMM1, dword ptr [ESP + 0x18]
006ae7fa: COMISS XMM1, dword ptr [0x010f4ccc]
006ae801: JBE 0x006ae870
006ae803: MOVSS XMM2, dword ptr [ESI + 0xb4]
006ae80b: COMISS XMM1, XMM2
006ae80e: MOVAPS XMM0, XMM1
006ae811: SUBSS XMM0, XMM2
006ae815: JA 0x006ae81f
006ae817: ADDSS XMM0, dword ptr [0x00ff4a30]
006ae81f: COMISS XMM0, dword ptr [0x00faad94]
006ae826: MOVSS dword ptr [ESI + 0xc0], XMM0
006ae82e: MOVSS dword ptr [ESI + 0xb8], XMM1
006ae836: JBE 0x006ae85e
006ae838: MOVSS XMM0, dword ptr [0x00f998f8]
006ae840: MOV dword ptr [ESI + 0xb0], 0x1
006ae84a: MOV dword ptr [ESI + 0xc4], 0xa
006ae854: MOVSS dword ptr [ESI + 0xc0], XMM0
006ae85c: JMP 0x006ae870
006ae85e: MOV ECX, dword ptr [ESI + 0x64]
006ae861: MOV dword ptr [ESI + 0xb0], 0x4
006ae86b: CALL 0x006b3030
006ae870: MOV ECX, EBP
006ae872: MOV dword ptr [ESI + 0xfc], EDI
006ae878: CALL 0x006ae180
006ae87d: MOV EDX, dword ptr [EDI]
006ae87f: MOV EAX, dword ptr [EDX + 0x8]
006ae882: MOV ECX, EDI
006ae884: POP EDI
006ae885: POP EBX
006ae886: POP ESI
006ae887: POP EBP
006ae888: ADD ESP, 0xc
006ae88b: JMP EAX
006ae88d: POP EDI
006ae88e: POP EBX
006ae88f: POP ESI
006ae890: MOV ECX, EBP
006ae892: POP EBP
006ae893: ADD ESP, 0xc
006ae896: JMP 0x006ae180
006ae89b: POP ESI
006ae89c: POP EBP
006ae89d: ADD ESP, 0xc
006ae8a0: RET

Total instructions: 91
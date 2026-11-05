# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[006fc5f0,006fc76d]; 382bytes/105instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXchild, parentNode/descriptor two stackwordsRET8 void. Unlinks old node20, calls child virtual+28 withidentity, stores parent190. Parentnull clears mode100 and selflinks20; nonnull copies descriptor mode0->100,offset10..4C->110..14C,union50..8C->150..18C, links child20 into parent194 ring, calls6FB340 immediately then6FB2E0(parent) and childvirtual+5C. No model bind inverse is calculated in this body. Null child is not safely admitted despite initial branch. No locking/refcount/queue/GPU safety inferred.

ORIGINAL BYTES
006fc5f0: 55 8b ec 83 e4 f0 83 ec 54 53 8b d9 85 db 56 57
006fc600: 74 05 8d 4b 20 eb 02 33 c9 0f 57 c0 f3 0f 10 0d
006fc610: f8 98 f9 00 8b 41 04 8b 09 f3 0f 11 44 24 1c f3
006fc620: 0f 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 4c 24
006fc630: 10 0f 28 54 24 10 f3 0f 11 44 24 1c f3 0f 11 44
006fc640: 24 18 f3 0f 11 4c 24 14 f3 0f 11 44 24 10 89 08
006fc650: 0f 29 54 24 20 0f 28 54 24 10 f3 0f 11 44 24 1c
006fc660: f3 0f 11 4c 24 18 f3 0f 11 44 24 14 f3 0f 11 44
006fc670: 24 10 89 41 04 8b 03 8b 50 28 0f 29 54 24 30 0f
006fc680: 28 54 24 10 8d 4c 24 20 f3 0f 11 4c 24 1c f3 0f
006fc690: 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 44 24 10
006fc6a0: 0f 28 44 24 10 51 8b cb 0f 29 54 24 44 0f 29 44
006fc6b0: 24 54 ff d2 8b 55 08 85 d2 89 93 90 01 00 00 0f
006fc6c0: 84 85 00 00 00 8b 45 0c 8b 08 89 8b 00 01 00 00
006fc6d0: 0f 28 40 10 0f 29 83 10 01 00 00 0f 28 40 20 0f
006fc6e0: 29 83 20 01 00 00 0f 28 40 30 0f 29 83 30 01 00
006fc6f0: 00 0f 28 40 40 0f 29 83 40 01 00 00 8d 70 50 8d
006fc700: bb 50 01 00 00 b9 10 00 00 00 f3 a5 8b b2 98 01
006fc710: 00 00 8d 8a 94 01 00 00 8d 43 20 89 08 89 70 04
006fc720: 89 41 04 8b 48 04 89 01 52 8b cb e8 10 ec ff ff
006fc730: 8b 4d 08 e8 a8 eb ff ff 8b 13 8b 42 5c 8b cb ff
006fc740: d0 5f 5e 5b 8b e5 5d c2 08 00 8d 43 20 c7 83 00
006fc750: 01 00 00 00 00 00 00 89 00 89 40 04 8b 13 8b 42
006fc760: 5c 8b cb ff d0 5f 5e 5b 8b e5 5d c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_006fc5f0
Entry Point: 006fc5f0

006fc5f0: PUSH EBP
006fc5f1: MOV EBP, ESP
006fc5f3: AND ESP, 0xfffffff0
006fc5f6: SUB ESP, 0x54
006fc5f9: PUSH EBX
006fc5fa: MOV EBX, ECX
006fc5fc: TEST EBX, EBX
006fc5fe: PUSH ESI
006fc5ff: PUSH EDI
006fc600: JZ 0x006fc607
006fc602: LEA ECX, [EBX + 0x20]
006fc605: JMP 0x006fc609
006fc607: XOR ECX, ECX
006fc609: XORPS XMM0, XMM0
006fc60c: MOVSS XMM1, dword ptr [0x00f998f8]
006fc614: MOV EAX, dword ptr [ECX + 0x4]
006fc617: MOV ECX, dword ptr [ECX]
006fc619: MOVSS dword ptr [ESP + 0x1c], XMM0
006fc61f: MOVSS dword ptr [ESP + 0x18], XMM0
006fc625: MOVSS dword ptr [ESP + 0x14], XMM0
006fc62b: MOVSS dword ptr [ESP + 0x10], XMM1
006fc631: MOVAPS XMM2, xmmword ptr [ESP + 0x10]
006fc636: MOVSS dword ptr [ESP + 0x1c], XMM0
006fc63c: MOVSS dword ptr [ESP + 0x18], XMM0
006fc642: MOVSS dword ptr [ESP + 0x14], XMM1
006fc648: MOVSS dword ptr [ESP + 0x10], XMM0
006fc64e: MOV dword ptr [EAX], ECX
006fc650: MOVAPS xmmword ptr [ESP + 0x20], XMM2
006fc655: MOVAPS XMM2, xmmword ptr [ESP + 0x10]
006fc65a: MOVSS dword ptr [ESP + 0x1c], XMM0
006fc660: MOVSS dword ptr [ESP + 0x18], XMM1
006fc666: MOVSS dword ptr [ESP + 0x14], XMM0
006fc66c: MOVSS dword ptr [ESP + 0x10], XMM0
006fc672: MOV dword ptr [ECX + 0x4], EAX
006fc675: MOV EAX, dword ptr [EBX]
006fc677: MOV EDX, dword ptr [EAX + 0x28]
006fc67a: MOVAPS xmmword ptr [ESP + 0x30], XMM2
006fc67f: MOVAPS XMM2, xmmword ptr [ESP + 0x10]
006fc684: LEA ECX, [ESP + 0x20]
006fc688: MOVSS dword ptr [ESP + 0x1c], XMM1
006fc68e: MOVSS dword ptr [ESP + 0x18], XMM0
006fc694: MOVSS dword ptr [ESP + 0x14], XMM0
006fc69a: MOVSS dword ptr [ESP + 0x10], XMM0
006fc6a0: MOVAPS XMM0, xmmword ptr [ESP + 0x10]
006fc6a5: PUSH ECX
006fc6a6: MOV ECX, EBX
006fc6a8: MOVAPS xmmword ptr [ESP + 0x44], XMM2
006fc6ad: MOVAPS xmmword ptr [ESP + 0x54], XMM0
006fc6b2: CALL EDX
006fc6b4: MOV EDX, dword ptr [EBP + 0x8]
006fc6b7: TEST EDX, EDX
006fc6b9: MOV dword ptr [EBX + 0x190], EDX
006fc6bf: JZ 0x006fc74a
006fc6c5: MOV EAX, dword ptr [EBP + 0xc]
006fc6c8: MOV ECX, dword ptr [EAX]
006fc6ca: MOV dword ptr [EBX + 0x100], ECX
006fc6d0: MOVAPS XMM0, xmmword ptr [EAX + 0x10]
006fc6d4: MOVAPS xmmword ptr [EBX + 0x110], XMM0
006fc6db: MOVAPS XMM0, xmmword ptr [EAX + 0x20]
006fc6df: MOVAPS xmmword ptr [EBX + 0x120], XMM0
006fc6e6: MOVAPS XMM0, xmmword ptr [EAX + 0x30]
006fc6ea: MOVAPS xmmword ptr [EBX + 0x130], XMM0
006fc6f1: MOVAPS XMM0, xmmword ptr [EAX + 0x40]
006fc6f5: MOVAPS xmmword ptr [EBX + 0x140], XMM0
006fc6fc: LEA ESI, [EAX + 0x50]
006fc6ff: LEA EDI, [EBX + 0x150]
006fc705: MOV ECX, 0x10
006fc70a: MOVSD.REP ES:EDI, ESI
006fc70c: MOV ESI, dword ptr [EDX + 0x198]
006fc712: LEA ECX, [EDX + 0x194]
006fc718: LEA EAX, [EBX + 0x20]
006fc71b: MOV dword ptr [EAX], ECX
006fc71d: MOV dword ptr [EAX + 0x4], ESI
006fc720: MOV dword ptr [ECX + 0x4], EAX
006fc723: MOV ECX, dword ptr [EAX + 0x4]
006fc726: MOV dword ptr [ECX], EAX
006fc728: PUSH EDX
006fc729: MOV ECX, EBX
006fc72b: CALL 0x006fb340
006fc730: MOV ECX, dword ptr [EBP + 0x8]
006fc733: CALL 0x006fb2e0
006fc738: MOV EDX, dword ptr [EBX]
006fc73a: MOV EAX, dword ptr [EDX + 0x5c]
006fc73d: MOV ECX, EBX
006fc73f: CALL EAX
006fc741: POP EDI
006fc742: POP ESI
006fc743: POP EBX
006fc744: MOV ESP, EBP
006fc746: POP EBP
006fc747: RET 0x8
006fc74a: LEA EAX, [EBX + 0x20]
006fc74d: MOV dword ptr [EBX + 0x100], 0x0
006fc757: MOV dword ptr [EAX], EAX
006fc759: MOV dword ptr [EAX + 0x4], EAX
006fc75c: MOV EDX, dword ptr [EBX]
006fc75e: MOV EAX, dword ptr [EDX + 0x5c]
006fc761: MOV ECX, EBX
006fc763: CALL EAX
006fc765: POP EDI
006fc766: POP ESI
006fc767: POP EBX
006fc768: MOV ESP, EBP
006fc76a: POP EBP
006fc76b: RET 0x8

Total instructions: 105
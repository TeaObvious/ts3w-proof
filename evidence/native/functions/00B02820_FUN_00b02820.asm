# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00b02820,00b02878]. 89owned bytes/39instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

cdecl two raw IDs, ALBool/plainRET. Equal IDs true. Otherwise both nonFFFFFFFF must resolve via C8BBB0 and kindDWORD88 must agree. ID0 has no absence shortcut; caller AB67D0 handles selected missinglane before compatibility. Global bank initialization/provider population unresolved.

ORIGINAL OWNED BYTES
00b02820: 8b 44 24 04
00b02824: 53
00b02825: 8b 5c 24 0c
00b02829: 3b c3
00b0282b: 75 04
00b0282d: b0 01
00b0282f: 5b
00b02830: c3
00b02831: 83 f8 ff
00b02834: 57
00b02835: 74 3d
00b02837: 83 fb ff
00b0283a: 74 38
00b0283c: 56
00b0283d: 8b 35 34 e0 1e 01
00b02843: 50
00b02844: 8b ce
00b02846: e8 65 93 18 00
00b0284b: 53
00b0284c: 8b ce
00b0284e: 8b f8
00b02850: e8 5b 93 18 00
00b02855: 85 ff
00b02857: 5e
00b02858: 74 1a
00b0285a: 85 c0
00b0285c: 74 16
00b0285e: 8b 8f 88 00 00 00
00b02864: 33 d2
00b02866: 3b 88 88 00 00 00
00b0286c: 5f
00b0286d: 0f 94 c2
00b02870: 8a c2
00b02872: 5b
00b02873: c3
00b02874: 5f
00b02875: 32 c0
00b02877: 5b
00b02878: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00b02820
Entry Point: 00b02820

00b02820: MOV EAX, dword ptr [ESP + 0x4]
00b02824: PUSH EBX
00b02825: MOV EBX, dword ptr [ESP + 0xc]
00b02829: CMP EAX, EBX
00b0282b: JNZ 0x00b02831
00b0282d: MOV AL, 0x1
00b0282f: POP EBX
00b02830: RET
00b02831: CMP EAX, -0x1
00b02834: PUSH EDI
00b02835: JZ 0x00b02874
00b02837: CMP EBX, -0x1
00b0283a: JZ 0x00b02874
00b0283c: PUSH ESI
00b0283d: MOV ESI, dword ptr [0x011ee034]
00b02843: PUSH EAX
00b02844: MOV ECX, ESI
00b02846: CALL 0x00c8bbb0
00b0284b: PUSH EBX
00b0284c: MOV ECX, ESI
00b0284e: MOV EDI, EAX
00b02850: CALL 0x00c8bbb0
00b02855: TEST EDI, EDI
00b02857: POP ESI
00b02858: JZ 0x00b02874
00b0285a: TEST EAX, EAX
00b0285c: JZ 0x00b02874
00b0285e: MOV ECX, dword ptr [EDI + 0x88]
00b02864: XOR EDX, EDX
00b02866: CMP ECX, dword ptr [EAX + 0x88]
00b0286c: POP EDI
00b0286d: SETZ DL
00b02870: MOV AL, DL
00b02872: POP EBX
00b02873: RET
00b02874: POP EDI
00b02875: XOR AL, AL
00b02877: POP EBX
00b02878: RET

Total instructions: 39
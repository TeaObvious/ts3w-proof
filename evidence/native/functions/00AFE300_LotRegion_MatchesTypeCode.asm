# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00afe300,00afe32d]. 46owned bytes/16instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

cdecl rawID/requestedtype, ALBool/plainRET. Only FFFFFFFF rejects before C8BBB0. Resolved rowDWORD88 compared to requested type. No service-null guard in this selected body; do not invent safe initialization semantics.

ORIGINAL OWNED BYTES
00afe300: 8b 44 24 04
00afe304: 83 f8 ff
00afe307: 74 22
00afe309: 8b 0d 34 e0 1e 01
00afe30f: 50
00afe310: e8 9b d8 18 00
00afe315: 85 c0
00afe317: 74 12
00afe319: 8b 90 88 00 00 00
00afe31f: 33 c9
00afe321: 3b 54 24 08
00afe325: 0f 94 c1
00afe328: 8a c1
00afe32a: c3
00afe32b: 32 c0
00afe32d: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: LotRegion_MatchesTypeCode
Entry Point: 00afe300

00afe300: MOV EAX, dword ptr [ESP + 0x4]
00afe304: CMP EAX, -0x1
00afe307: JZ 0x00afe32b
00afe309: MOV ECX, dword ptr [0x011ee034]
00afe30f: PUSH EAX
00afe310: CALL 0x00c8bbb0
00afe315: TEST EAX, EAX
00afe317: JZ 0x00afe32b
00afe319: MOV EDX, dword ptr [EAX + 0x88]
00afe31f: XOR ECX, ECX
00afe321: CMP EDX, dword ptr [ESP + 0x8]
00afe325: SETZ CL
00afe328: MOV AL, CL
00afe32a: RET
00afe32b: XOR AL, AL
00afe32d: RET

Total instructions: 16
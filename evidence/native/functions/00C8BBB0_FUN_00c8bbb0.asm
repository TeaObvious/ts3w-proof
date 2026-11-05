# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00c8bbb0,00c8bbea]. 59owned bytes/25instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

ECX nativebank plus rawID, RET4 EAXproductptr/null. Walks24byte entries fromAC toB0, candidate pointer atentry10, compares 839640 DWORD08 to fullrawID, first match wins. Bank insertion/order and resource-key relationship remain open.

ORIGINAL OWNED BYTES
00c8bbb0: 53
00c8bbb1: 56
00c8bbb2: 8b b1 ac 00 00 00
00c8bbb8: 57
00c8bbb9: 8b b9 b0 00 00 00
00c8bbbf: 3b f7
00c8bbc1: 74 17
00c8bbc3: 8b 5c 24 10
00c8bbc7: 8b 4e 10
00c8bbca: e8 71 da ba ff
00c8bbcf: 3b c3
00c8bbd1: 74 0f
00c8bbd3: 83 c6 18
00c8bbd6: 3b f7
00c8bbd8: 75 ed
00c8bbda: 5f
00c8bbdb: 5e
00c8bbdc: 33 c0
00c8bbde: 5b
00c8bbdf: c2 04 00
00c8bbe2: 8b 46 10
00c8bbe5: 5f
00c8bbe6: 5e
00c8bbe7: 5b
00c8bbe8: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00c8bbb0
Entry Point: 00c8bbb0

00c8bbb0: PUSH EBX
00c8bbb1: PUSH ESI
00c8bbb2: MOV ESI, dword ptr [ECX + 0xac]
00c8bbb8: PUSH EDI
00c8bbb9: MOV EDI, dword ptr [ECX + 0xb0]
00c8bbbf: CMP ESI, EDI
00c8bbc1: JZ 0x00c8bbda
00c8bbc3: MOV EBX, dword ptr [ESP + 0x10]
00c8bbc7: MOV ECX, dword ptr [ESI + 0x10]
00c8bbca: CALL 0x00839640
00c8bbcf: CMP EAX, EBX
00c8bbd1: JZ 0x00c8bbe2
00c8bbd3: ADD ESI, 0x18
00c8bbd6: CMP ESI, EDI
00c8bbd8: JNZ 0x00c8bbc7
00c8bbda: POP EDI
00c8bbdb: POP ESI
00c8bbdc: XOR EAX, EAX
00c8bbde: POP EBX
00c8bbdf: RET 0x4
00c8bbe2: MOV EAX, dword ptr [ESI + 0x10]
00c8bbe5: POP EDI
00c8bbe6: POP ESI
00c8bbe7: POP EBX
00c8bbe8: RET 0x4

Total instructions: 25
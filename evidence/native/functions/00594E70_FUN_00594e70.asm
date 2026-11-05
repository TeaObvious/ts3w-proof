# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete contiguous owned Ghidra function body.
Entry 00594e70; current database symbol FUN_00594e70; envelope [00594e70,00594e93), 35 bytes.
Analyst descriptive alias: FrameTimer_StoreTimeScale (not a recovered symbol and not a database rename). ECX receiver, one binary32 stackword, RET4. Calls4E1C00, MOVSS input unchanged into receiver+68, calls4E1CC0. No clamp or finite validation in this body. EC13F0 uses receiver011CED48; EC1410 reads its+68 directly.
Paired pseudocode: 00594E70_FUN_00594e70.c

ORIGINAL BYTES
00594e70: 56 68 ec 8c fd 00 8b f1 e8 83 cd f4 ff f3 0f 10 
00594e80: 44 24 08 8b ce f3 0f 11 46 68 e8 31 ce f4 ff 5e 
00594e90: c2 04 00 

OWNED GHIDRA LISTING
00594e70: PUSH ESI
00594e71: PUSH 0xfd8cec
00594e76: MOV ESI,ECX
00594e78: CALL 0x004e1c00
00594e7d: MOVSS XMM0,dword ptr [ESP + 0x8]
00594e83: MOV ECX,ESI
00594e85: MOVSS dword ptr [ESI + 0x68],XMM0
00594e8a: CALL 0x004e1cc0
00594e8f: POP ESI
00594e90: RET 0x4

Owned instructions: 10

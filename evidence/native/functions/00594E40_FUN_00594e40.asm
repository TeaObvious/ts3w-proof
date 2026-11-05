# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete contiguous owned Ghidra function body.
Entry 00594e40; current database symbol FUN_00594e40; envelope [00594e40,00594e61), 33 bytes.
Analyst descriptive alias: FrameTimer_ClearPauseFlags (not a recovered symbol and not a database rename). ECX receiver, one UInt32 stackword, RET4. Calls4E1C00 then receiver+40 &= ~flags, then4E1CC0. EC13D0 supplies bit1. Child synchronization/initialization and other flag producers remain separate.
Paired pseudocode: 00594E40_FUN_00594e40.c

ORIGINAL BYTES
00594e40: 56 68 ec 8c fd 00 8b f1 e8 b3 cd f4 ff 8b 44 24 
00594e50: 08 f7 d0 21 46 40 8b ce e8 63 ce f4 ff 5e c2 04 
00594e60: 00 

OWNED GHIDRA LISTING
00594e40: PUSH ESI
00594e41: PUSH 0xfd8cec
00594e46: MOV ESI,ECX
00594e48: CALL 0x004e1c00
00594e4d: MOV EAX,dword ptr [ESP + 0x8]
00594e51: NOT EAX
00594e53: AND dword ptr [ESI + 0x40],EAX
00594e56: MOV ECX,ESI
00594e58: CALL 0x004e1cc0
00594e5d: POP ESI
00594e5e: RET 0x4

Owned instructions: 11

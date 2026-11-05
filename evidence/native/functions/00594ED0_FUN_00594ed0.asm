# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete contiguous owned Ghidra function body.
Entry 00594ed0; current database symbol FUN_00594ed0; envelope [00594ed0,00594ef1), 33 bytes.
Analyst descriptive alias: FrameTimer_HasPauseFlags (not a recovered symbol and not a database rename). ECX receiver, no stack arguments, plainRET. Calls4E1C00, CMP unsigned dword receiver+40,0; SETA BL; calls4E1CC0 then AL=BL. Decompiler LPCRITICAL_SECTION/LockSemaphore field names are inferred types, not established timer layout.
Paired pseudocode: 00594ED0_FUN_00594ed0.c

ORIGINAL BYTES
00594ed0: 53 56 68 ec 8c fd 00 8b f1 e8 22 cd f4 ff 83 7e 
00594ee0: 40 00 8b ce 0f 97 c3 e8 d4 cd f4 ff 5e 8a c3 5b 
00594ef0: c3 

OWNED GHIDRA LISTING
00594ed0: PUSH EBX
00594ed1: PUSH ESI
00594ed2: PUSH 0xfd8cec
00594ed7: MOV ESI,ECX
00594ed9: CALL 0x004e1c00
00594ede: CMP dword ptr [ESI + 0x40],0x0
00594ee2: MOV ECX,ESI
00594ee4: SETA BL
00594ee7: CALL 0x004e1cc0
00594eec: POP ESI
00594eed: MOV AL,BL
00594eef: POP EBX
00594ef0: RET

Owned instructions: 13

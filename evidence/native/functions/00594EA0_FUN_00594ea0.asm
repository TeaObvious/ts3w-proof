# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete contiguous owned Ghidra function body.
Entry 00594ea0; current database symbol FUN_00594ea0; envelope [00594ea0,00594ec3), 35 bytes.
Analyst descriptive alias: FrameTimer_StoreSpeedAndSetNotificationFlag (not a recovered symbol and not a database rename). ECX receiver, one Int32 stackword, RET4. Calls4E1C00, copies input to+6C, writes byte+70=1 even for equal value, calls4E1CC0. Existing594D40 reads/clears flag and can dispatch2CB180C0 with+6C; complete listener lifetime remains separate.
Paired pseudocode: 00594EA0_FUN_00594ea0.c

ORIGINAL BYTES
00594ea0: 56 68 ec 8c fd 00 8b f1 e8 53 cd f4 ff 8b 44 24 
00594eb0: 08 8b ce 89 46 6c c6 46 70 01 e8 01 ce f4 ff 5e 
00594ec0: c2 04 00 

OWNED GHIDRA LISTING
00594ea0: PUSH ESI
00594ea1: PUSH 0xfd8cec
00594ea6: MOV ESI,ECX
00594ea8: CALL 0x004e1c00
00594ead: MOV EAX,dword ptr [ESP + 0x8]
00594eb1: MOV ECX,ESI
00594eb3: MOV dword ptr [ESI + 0x6c],EAX
00594eb6: MOV byte ptr [ESI + 0x70],0x1
00594eba: CALL 0x004e1cc0
00594ebf: POP ESI
00594ec0: RET 0x4

Owned instructions: 11

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing owned body[007ecce0,007eccfa], 27bytes/8instructions. Readonly GhidrAssist Listing/metadata plus original PE byte/start check. No database/body/prototype repair, analysis, annotation save or original-byte mutation.

ECX ScrollAreaWinProc, parent/horizontal/vertical three stackwords, void RET0C. Stores settings+10 then+14 before calling7EC490 with same ECX and pushed parent. This physical receiver supplies the fields omitted by7EC490 C.

ORIGINAL BYTES
007ecce0: 8b 44 24 08 8b 54 24 0c 89 41 10 8b 44 24 04 50
007eccf0: 89 51 14 e8 98 f7 ff ff c2 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_007ecce0
Entry Point: 007ecce0

007ecce0: MOV EAX, dword ptr [ESP + 0x8]
007ecce4: MOV EDX, dword ptr [ESP + 0xc]
007ecce8: MOV dword ptr [ECX + 0x10], EAX
007ecceb: MOV EAX, dword ptr [ESP + 0x4]
007eccef: PUSH EAX
007eccf0: MOV dword ptr [ECX + 0x14], EDX
007eccf3: CALL 0x007ec490
007eccf8: RET 0xc

Total instructions: 8
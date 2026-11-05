# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC1.67; explicit GhidrAssist program /TS3W.exe
Analyst display alias: Steering_SetTravellingIntervalAndResetElapsed
Actual Ghidra name: FUN_00952240
Boundary: contiguous Ghidra-owned body [00952240,0095225c); 28 bytes.
Every byte independently matches the authoritative original PE. No database mutation or save.
Paired pseudocode: 00952240_FUN_00952240.c

ORIGINAL BYTES
00952240: f3 0f 10 44 24 04 f3 0f 11 81 e0 00 00 00 0f 57
00952250: c0 f3 0f 11 81 e4 00 00 00 c2 04 00

GHIDRA OWNED LISTING
00952240: MOVSS XMM0, dword ptr [ESP + 0x4]
00952246: MOVSS dword ptr [ECX + 0xe0], XMM0
0095224e: XORPS XMM0, XMM0
00952251: MOVSS dword ptr [ECX + 0xe4], XMM0
00952259: RET 0x4

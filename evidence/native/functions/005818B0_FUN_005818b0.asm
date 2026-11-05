# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[005818b0,005818d9),41bytes/16instructions; all bytes and starts verified against authoritative PE.

ECX SceneEntity receiver, one stack word with incoming record pointer, RET4. Reads receiver+18; oldnull stores incoming directly, oldnonnull calls4E44E0 then stores incoming after helper returns. No equality/alias guard or flags+0C reset occurs here. 582D40 calls this replacement at583058 before occupancy computation and either959F10 attach call; an ensuing occupied result6 does not roll this record back. No complete allocation/free/malformed pointer/callback/thread policy is inferred.

ORIGINAL OWNED BYTES
005818b0: 56
005818b1: 8b f1
005818b3: 8b 46 18
005818b6: 85 c0
005818b8: 74 14
005818ba: 50
005818bb: e8 20 2c f6 ff
005818c0: 8b 44 24 0c
005818c4: 83 c4 04
005818c7: 89 46 18
005818ca: 5e
005818cb: c2 04 00
005818ce: 8b 4c 24 08
005818d2: 89 4e 18
005818d5: 5e
005818d6: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_005818b0
Entry Point: 005818b0

005818b0: PUSH ESI
005818b1: MOV ESI, ECX
005818b3: MOV EAX, dword ptr [ESI + 0x18]
005818b6: TEST EAX, EAX
005818b8: JZ 0x005818ce
005818ba: PUSH EAX
005818bb: CALL 0x004e44e0
005818c0: MOV EAX, dword ptr [ESP + 0xc]
005818c4: ADD ESP, 0x4
005818c7: MOV dword ptr [ESI + 0x18], EAX
005818ca: POP ESI
005818cb: RET 0x4
005818ce: MOV ECX, dword ptr [ESP + 0x8]
005818d2: MOV dword ptr [ESI + 0x18], ECX
005818d5: POP ESI
005818d6: RET 0x4

Total instructions: 16
# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing complete ownedbody[0095e890,0095e8a3] 20bytes/6instructions. Fresh readonly metadata/Listing and all starts/bytes PEchecked, no function/prototype/bodyrepair/annotation/mutator/reanalysis/save/originalbytechange.

ECX VisualState plus rawUInt32hash, RET4void. Compare fullDWORD+14, equal no-op; changed stores exactinput BEFORE95E350 enqueues04D18170. This internal setter accepts0; it does not normalize empty-string seed811C9DC5. No dispatcher/result/resource rollback or GPU readiness is established.

ORIGINAL BYTES
0095e890: 8b 44 24 04 39 41 14 74 08 89 41 14 e8 af fa ff
0095e8a0: ff c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0095e890
Entry Point: 0095e890

0095e890: MOV EAX, dword ptr [ESP + 0x4]
0095e894: CMP dword ptr [ECX + 0x14], EAX
0095e897: JZ 0x0095e8a1
0095e899: MOV dword ptr [ECX + 0x14], EAX
0095e89c: CALL 0x0095e350
0095e8a1: RET 0x4

Total instructions: 6
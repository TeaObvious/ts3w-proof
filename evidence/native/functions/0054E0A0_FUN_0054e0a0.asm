# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; explicit /TS3W.exe existing owned body[0054e0a0,0054e0ce],47bytes/18instructions. Fresh readonly metadata/Listing, all starts and bytes independently PEdecoded; no gaps/prototype/bodyrepair/annotation/mutator/reanalysis/save.

cdecl two resource-key pointers/plainRET; compares four DWORDs in order0,8,C,4; full EAX0 equal/1 different. No guessed GUID semantics, partial key comparison or reference lifetime.

ORIGINAL BYTES
0054e0a0: 8b 44 24 04 8b 10 8b 4c 24 08 3b 11 75 1b 8b 50
0054e0b0: 08 3b 51 08 75 13 8b 50 0c 3b 51 0c 75 0b 8b 40
0054e0c0: 04 3b 41 04 75 03 33 c0 c3 b8 01 00 00 00 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0054e0a0
Entry Point: 0054e0a0

0054e0a0: MOV EAX, dword ptr [ESP + 0x4]
0054e0a4: MOV EDX, dword ptr [EAX]
0054e0a6: MOV ECX, dword ptr [ESP + 0x8]
0054e0aa: CMP EDX, dword ptr [ECX]
0054e0ac: JNZ 0x0054e0c9
0054e0ae: MOV EDX, dword ptr [EAX + 0x8]
0054e0b1: CMP EDX, dword ptr [ECX + 0x8]
0054e0b4: JNZ 0x0054e0c9
0054e0b6: MOV EDX, dword ptr [EAX + 0xc]
0054e0b9: CMP EDX, dword ptr [ECX + 0xc]
0054e0bc: JNZ 0x0054e0c9
0054e0be: MOV EAX, dword ptr [EAX + 0x4]
0054e0c1: CMP EAX, dword ptr [ECX + 0x4]
0054e0c4: JNZ 0x0054e0c9
0054e0c6: XOR EAX, EAX
0054e0c8: RET
0054e0c9: MOV EAX, 0x1
0054e0ce: RET

Total instructions: 18
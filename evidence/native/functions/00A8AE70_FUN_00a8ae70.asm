# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; explicit /TS3W.exe existing owned body[00a8ae70,00a8aef2],131bytes/49instructions. Fresh readonly metadata/Listing, all starts and bytes independently PEdecoded; no gaps/prototype/bodyrepair/annotation/mutator/reanalysis/save.

ECX64-byte pattern quad plus one pointer RET4; full EAX0 when all four resource keys equal,1 otherwise. First12dwords compare three keys; fourth at+30 through54E0A0. Not equality=true and not only first catalog key. No resource lookup or ownership action.

ORIGINAL BYTES
00a8ae70: 8b 44 24 04 8b 10 3b 11 75 71 8b 50 08 3b 51 08
00a8ae80: 75 69 8b 50 0c 3b 51 0c 75 61 8b 50 04 3b 51 04
00a8ae90: 75 59 8b 50 10 3b 51 10 75 51 8b 50 18 3b 51 18
00a8aea0: 75 49 8b 50 1c 3b 51 1c 75 41 8b 50 14 3b 51 14
00a8aeb0: 75 39 8b 50 20 3b 51 20 75 31 8b 50 28 3b 51 28
00a8aec0: 75 29 8b 50 2c 3b 51 2c 75 21 8b 50 24 3b 51 24
00a8aed0: 75 19 83 c1 30 51 83 c0 30 50 e8 c1 31 ac ff 83
00a8aee0: c4 08 84 c0 75 05 33 c0 c2 04 00 b8 01 00 00 00
00a8aef0: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a8ae70
Entry Point: 00a8ae70

00a8ae70: MOV EAX, dword ptr [ESP + 0x4]
00a8ae74: MOV EDX, dword ptr [EAX]
00a8ae76: CMP EDX, dword ptr [ECX]
00a8ae78: JNZ 0x00a8aeeb
00a8ae7a: MOV EDX, dword ptr [EAX + 0x8]
00a8ae7d: CMP EDX, dword ptr [ECX + 0x8]
00a8ae80: JNZ 0x00a8aeeb
00a8ae82: MOV EDX, dword ptr [EAX + 0xc]
00a8ae85: CMP EDX, dword ptr [ECX + 0xc]
00a8ae88: JNZ 0x00a8aeeb
00a8ae8a: MOV EDX, dword ptr [EAX + 0x4]
00a8ae8d: CMP EDX, dword ptr [ECX + 0x4]
00a8ae90: JNZ 0x00a8aeeb
00a8ae92: MOV EDX, dword ptr [EAX + 0x10]
00a8ae95: CMP EDX, dword ptr [ECX + 0x10]
00a8ae98: JNZ 0x00a8aeeb
00a8ae9a: MOV EDX, dword ptr [EAX + 0x18]
00a8ae9d: CMP EDX, dword ptr [ECX + 0x18]
00a8aea0: JNZ 0x00a8aeeb
00a8aea2: MOV EDX, dword ptr [EAX + 0x1c]
00a8aea5: CMP EDX, dword ptr [ECX + 0x1c]
00a8aea8: JNZ 0x00a8aeeb
00a8aeaa: MOV EDX, dword ptr [EAX + 0x14]
00a8aead: CMP EDX, dword ptr [ECX + 0x14]
00a8aeb0: JNZ 0x00a8aeeb
00a8aeb2: MOV EDX, dword ptr [EAX + 0x20]
00a8aeb5: CMP EDX, dword ptr [ECX + 0x20]
00a8aeb8: JNZ 0x00a8aeeb
00a8aeba: MOV EDX, dword ptr [EAX + 0x28]
00a8aebd: CMP EDX, dword ptr [ECX + 0x28]
00a8aec0: JNZ 0x00a8aeeb
00a8aec2: MOV EDX, dword ptr [EAX + 0x2c]
00a8aec5: CMP EDX, dword ptr [ECX + 0x2c]
00a8aec8: JNZ 0x00a8aeeb
00a8aeca: MOV EDX, dword ptr [EAX + 0x24]
00a8aecd: CMP EDX, dword ptr [ECX + 0x24]
00a8aed0: JNZ 0x00a8aeeb
00a8aed2: ADD ECX, 0x30
00a8aed5: PUSH ECX
00a8aed6: ADD EAX, 0x30
00a8aed9: PUSH EAX
00a8aeda: CALL 0x0054e0a0
00a8aedf: ADD ESP, 0x8
00a8aee2: TEST AL, AL
00a8aee4: JNZ 0x00a8aeeb
00a8aee6: XOR EAX, EAX
00a8aee8: RET 0x4
00a8aeeb: MOV EAX, 0x1
00a8aef0: RET 0x4

Total instructions: 49
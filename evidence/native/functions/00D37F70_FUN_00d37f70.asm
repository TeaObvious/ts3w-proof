# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; explicit /TS3W.exe existing owned body[00d37f70,00d37fc0],81bytes/24instructions. Fresh readonly metadata/Listing, all starts and bytes independently PEdecoded; no gaps/prototype/bodyrepair/annotation/mutator/reanalysis/save.

stdcall two words key pointer/depreciation RET8, x87ST0. Bank2 C8EA70 ->D1A900 exact thunk ->CEF6B0, missing0; low-byte depreciation rounds result tobinary32 before MULSS0.8. Unlike floor leaf no leading11EC8D0 comparison.

ORIGINAL BYTES
00d37f70: 51 8b 44 24 08 0f 57 c0 8b 0d 34 e0 1e 01 6a 01
00d37f80: 50 6a 02 f3 0f 11 44 24 0c e8 e2 6a f5 ff 85 c0
00d37f90: 74 28 50 e8 68 29 fe ff d9 54 24 04 83 c4 04 80
00d37fa0: 7c 24 0c 00 74 17 f3 0f 10 04 24 dd d8 f3 0f 59
00d37fb0: 05 1c e5 f9 00 f3 0f 11 04 24 d9 04 24 59 c2 08
00d37fc0: 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d37f70
Entry Point: 00d37f70

00d37f70: PUSH ECX
00d37f71: MOV EAX, dword ptr [ESP + 0x8]
00d37f75: XORPS XMM0, XMM0
00d37f78: MOV ECX, dword ptr [0x011ee034]
00d37f7e: PUSH 0x1
00d37f80: PUSH EAX
00d37f81: PUSH 0x2
00d37f83: MOVSS dword ptr [ESP + 0xc], XMM0
00d37f89: CALL 0x00c8ea70
00d37f8e: TEST EAX, EAX
00d37f90: JZ 0x00d37fba
00d37f92: PUSH EAX
00d37f93: CALL 0x00d1a900
00d37f98: FST float ptr [ESP + 0x4]
00d37f9c: ADD ESP, 0x4
00d37f9f: CMP byte ptr [ESP + 0xc], 0x0
00d37fa4: JZ 0x00d37fbd
00d37fa6: MOVSS XMM0, dword ptr [ESP]
00d37fab: FSTP ST0
00d37fad: MULSS XMM0, dword ptr [0x00f9e51c]
00d37fb5: MOVSS dword ptr [ESP], XMM0
00d37fba: FLD float ptr [ESP]
00d37fbd: POP ECX
00d37fbe: RET 0x8

Total instructions: 24
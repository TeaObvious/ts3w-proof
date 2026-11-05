# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; explicit /TS3W.exe existing owned body[00cb0e60,00cb0ed8],121bytes/36instructions. Fresh readonly metadata/Listing, all starts and bytes independently PEdecoded; no gaps/prototype/bodyrepair/annotation/mutator/reanalysis/save.

cdecl key pointer/low-byte depreciation/plainRET, x87ST0 price. Key comparison to runtime global11EC8D0 can return0; its full runtime identity is not inferred from initial bytes. Otherwise bank1 C8EA70 then CEF6B0. Nondepreciated result staysST0 untilcaller; depreciated result explicitly rounds tobinary32 then MULSS0.8 F9E51C and FLD. No host price finite/nonnegative validation in this leaf.

ORIGINAL BYTES
00cb0e60: 51 8b 44 24 08 8b 08 3b 0d d0 c8 1e 01 0f 57 c0
00cb0e70: f3 0f 11 04 24 75 21 8b 50 08 3b 15 d8 c8 1e 01
00cb0e80: 75 16 8b 48 0c 3b 0d dc c8 1e 01 75 0b 8b 50 04
00cb0e90: 3b 15 d4 c8 1e 01 74 3c 8b 0d 34 e0 1e 01 6a 01
00cb0ea0: 50 6a 01 e8 c8 db fd ff 85 c0 74 28 50 e8 fe e7
00cb0eb0: 03 00 d9 54 24 04 83 c4 04 80 7c 24 0c 00 74 17
00cb0ec0: f3 0f 10 04 24 dd d8 f3 0f 59 05 1c e5 f9 00 f3
00cb0ed0: 0f 11 04 24 d9 04 24 59 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00cb0e60
Entry Point: 00cb0e60

00cb0e60: PUSH ECX
00cb0e61: MOV EAX, dword ptr [ESP + 0x8]
00cb0e65: MOV ECX, dword ptr [EAX]
00cb0e67: CMP ECX, dword ptr [0x011ec8d0]
00cb0e6d: XORPS XMM0, XMM0
00cb0e70: MOVSS dword ptr [ESP], XMM0
00cb0e75: JNZ 0x00cb0e98
00cb0e77: MOV EDX, dword ptr [EAX + 0x8]
00cb0e7a: CMP EDX, dword ptr [0x011ec8d8]
00cb0e80: JNZ 0x00cb0e98
00cb0e82: MOV ECX, dword ptr [EAX + 0xc]
00cb0e85: CMP ECX, dword ptr [0x011ec8dc]
00cb0e8b: JNZ 0x00cb0e98
00cb0e8d: MOV EDX, dword ptr [EAX + 0x4]
00cb0e90: CMP EDX, dword ptr [0x011ec8d4]
00cb0e96: JZ 0x00cb0ed4
00cb0e98: MOV ECX, dword ptr [0x011ee034]
00cb0e9e: PUSH 0x1
00cb0ea0: PUSH EAX
00cb0ea1: PUSH 0x1
00cb0ea3: CALL 0x00c8ea70
00cb0ea8: TEST EAX, EAX
00cb0eaa: JZ 0x00cb0ed4
00cb0eac: PUSH EAX
00cb0ead: CALL 0x00cef6b0
00cb0eb2: FST float ptr [ESP + 0x4]
00cb0eb6: ADD ESP, 0x4
00cb0eb9: CMP byte ptr [ESP + 0xc], 0x0
00cb0ebe: JZ 0x00cb0ed7
00cb0ec0: MOVSS XMM0, dword ptr [ESP]
00cb0ec5: FSTP ST0
00cb0ec7: MULSS XMM0, dword ptr [0x00f9e51c]
00cb0ecf: MOVSS dword ptr [ESP], XMM0
00cb0ed4: FLD float ptr [ESP]
00cb0ed7: POP ECX
00cb0ed8: RET

Total instructions: 36
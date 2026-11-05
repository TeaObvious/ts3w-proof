# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[00d0a010,00d0a03c),44bytes/14instructions; all bytes and starts verified against authoritative PE.

Two physical binary32 stack words, full EAX0/1, cdecl plainRET. COMISS second,first then JA accepts ordered second>first. Otherwise x87 subtract/absolute, FCOMIP stored binary32 tolerance0108482C versus absolute difference, then JA accepts strictly smaller difference. Unordered falls through both JA and returns0. Actual C reverses that exceptional result; its apparent ordered expression is not authoritative. With first1 the current CLR area<0.9 test is not all-input numerical identity. Productive snapped manual tool coordinates do not yet establish an admitted fractional counterexample; no demonstrated gameplay defect or rounding-policy correction follows.

ORIGINAL OWNED BYTES
00d0a010: f3 0f 10 44 24 08
00d0a016: 0f 2f 44 24 04
00d0a01b: 77 19
00d0a01d: d9 44 24 04
00d0a021: d8 64 24 08
00d0a025: d9 e1
00d0a027: d9 05 2c 48 08 01
00d0a02d: df f1
00d0a02f: dd d8
00d0a031: 77 03
00d0a033: 33 c0
00d0a035: c3
00d0a036: b8 01 00 00 00
00d0a03b: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00d0a010
Entry Point: 00d0a010

00d0a010: MOVSS XMM0, dword ptr [ESP + 0x8]
00d0a016: COMISS XMM0, dword ptr [ESP + 0x4]
00d0a01b: JA 0x00d0a036
00d0a01d: FLD float ptr [ESP + 0x4]
00d0a021: FSUB float ptr [ESP + 0x8]
00d0a025: FABS
00d0a027: FLD float ptr [0x0108482c]
00d0a02d: FCOMIP ST0, ST1
00d0a02f: FSTP ST0
00d0a031: JA 0x00d0a036
00d0a033: XOR EAX, EAX
00d0a035: RET
00d0a036: MOV EAX, 0x1
00d0a03b: RET

Total instructions: 14
# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 explicit /TS3W.exe existing owned body[0095e970,0095e9eb],124bytes/47instructions; readonly metadata/Listing all starts and bytes independently PEchecked. No body/prototype repair, DBannotation/mutator/reanalysis/save or original byte change.

ECX VisualState plus nullable byte-pointer, RET4, AL1 only (upper EAX unspecified). Nonnull reads one byte and calls95E5F0 withmask10. Null starts true, obtains Transform through11EA158 and parent at+30, then parent VisualState aggregate39 when present. Instructions dereference owner before a later null gate and Transform+30 after possibly null component lookup: caller invariants unresolved; do not invent safe null fallback from suspicious C. Changed mask10 recursively emits event18. Not event23 material-key publisher95F960.

ORIGINAL BYTES
0095e970: 51 8b 44 24 08 85 c0 56 8b f1 c6 44 24 04 01 74
0095e980: 19 8a 00 88 44 24 04 8b 44 24 04 50 6a 10 e8 5d
0095e990: fc ff ff b0 01 5e 59 c2 04 00 8b 4e 04 85 c9 74
0095e9a0: 0e 8b 15 58 a1 1e 01 52 e8 b3 58 fd ff eb 02 33
0095e9b0: c0 8b 48 30 85 c9 74 1f a1 a8 a2 1e 01 50 e8 9d
0095e9c0: 58 fd ff 85 c0 74 10 8b 48 08 83 e1 39 80 f9 39
0095e9d0: 0f 94 c2 88 54 24 04 8b 44 24 04 50 6a 10 8b ce
0095e9e0: e8 0b fc ff ff b0 01 5e 59 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0095e970
Entry Point: 0095e970

0095e970: PUSH ECX
0095e971: MOV EAX, dword ptr [ESP + 0x8]
0095e975: TEST EAX, EAX
0095e977: PUSH ESI
0095e978: MOV ESI, ECX
0095e97a: MOV byte ptr [ESP + 0x4], 0x1
0095e97f: JZ 0x0095e99a
0095e981: MOV AL, byte ptr [EAX]
0095e983: MOV byte ptr [ESP + 0x4], AL
0095e987: MOV EAX, dword ptr [ESP + 0x4]
0095e98b: PUSH EAX
0095e98c: PUSH 0x10
0095e98e: CALL 0x0095e5f0
0095e993: MOV AL, 0x1
0095e995: POP ESI
0095e996: POP ECX
0095e997: RET 0x4
0095e99a: MOV ECX, dword ptr [ESI + 0x4]
0095e99d: TEST ECX, ECX
0095e99f: JZ 0x0095e9af
0095e9a1: MOV EDX, dword ptr [0x011ea158]
0095e9a7: PUSH EDX
0095e9a8: CALL 0x00934260
0095e9ad: JMP 0x0095e9b1
0095e9af: XOR EAX, EAX
0095e9b1: MOV ECX, dword ptr [EAX + 0x30]
0095e9b4: TEST ECX, ECX
0095e9b6: JZ 0x0095e9d7
0095e9b8: MOV EAX, [0x011ea2a8]
0095e9bd: PUSH EAX
0095e9be: CALL 0x00934260
0095e9c3: TEST EAX, EAX
0095e9c5: JZ 0x0095e9d7
0095e9c7: MOV ECX, dword ptr [EAX + 0x8]
0095e9ca: AND ECX, 0x39
0095e9cd: CMP CL, 0x39
0095e9d0: SETZ DL
0095e9d3: MOV byte ptr [ESP + 0x4], DL
0095e9d7: MOV EAX, dword ptr [ESP + 0x4]
0095e9db: PUSH EAX
0095e9dc: PUSH 0x10
0095e9de: MOV ECX, ESI
0095e9e0: CALL 0x0095e5f0
0095e9e5: MOV AL, 0x1
0095e9e7: POP ESI
0095e9e8: POP ECX
0095e9e9: RET 0x4

Total instructions: 47
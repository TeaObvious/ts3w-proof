# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing complete ownedbody[007d0020,007d004a] 43bytes/17instructions. Fresh readonly metadata/Listing and all starts/bytes PEchecked, no function/prototype/bodyrepair/annotation/mutator/reanalysis/save/originalbytechange.

Cdecl nonnullUTF16pointer/plainRET; scans through first zeroU16 and passes preceding unitcount to7CFEC0. Actual fullUInt32hash returns inEAX from callee and survives ADDESP8/POPESI/RET. Current Ghidra C returnvoid omits this result;78CF10 explicitly testsEAX and forwardsit. Count0 emptystring returns811C9DC5. No nullpointer check, CRT locale or nonASCII equivalence inferred. Existing body metadata includes the alignment LEA instruction; no body repair.

ORIGINAL BYTES
007d0020: 8b 54 24 04 8b c2 56 8d 70 02 8d 9b 00 00 00 00
007d0030: 66 8b 08 83 c0 02 66 85 c9 75 f5 2b c6 d1 f8 50
007d0040: 52 e8 7a fe ff ff 83 c4 08 5e c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_007d0020
Entry Point: 007d0020

007d0020: MOV EDX, dword ptr [ESP + 0x4]
007d0024: MOV EAX, EDX
007d0026: PUSH ESI
007d0027: LEA ESI, [EAX + 0x2]
007d002a: LEA EBX, [EBX]
007d0030: MOV CX, word ptr [EAX]
007d0033: ADD EAX, 0x2
007d0036: TEST CX, CX
007d0039: JNZ 0x007d0030
007d003b: SUB EAX, ESI
007d003d: SAR EAX, 0x1
007d003f: PUSH EAX
007d0040: PUSH EDX
007d0041: CALL 0x007cfec0
007d0046: ADD ESP, 0x8
007d0049: POP ESI
007d004a: RET

Total instructions: 17
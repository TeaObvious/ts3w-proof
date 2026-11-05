# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 explicit /TS3W.exe existing owned body[00c63930,00c63967],56bytes/18instructions; readonly metadata/Listing all starts and bytes independently PEchecked. No body/prototype repair, DBannotation/mutator/reanalysis/save or original byte change.

Physical ECX world-owner plus GUIDlow/high two stack words, RET8, only AL Boolean established. Current Ghidra C omits both key arguments;797F62..6C visibly pushes child GUIDhigh/low. Reads map atowner+3BC and sentinel via+3C0/+3C4;6286C0 lookup takes pointer to original contiguous two-word stack key, returns iterator whose node compares to sentinel. Predicate is membership, not a test of every Effect component or every script AutoDestroy bit. Insertion/removal and ownership require their actual producers.

ORIGINAL BYTES
00c63930: 8b 81 c4 03 00 00 8b 91 c0 03 00 00 83 ec 08 81
00c63940: c1 bc 03 00 00 56 8b 34 82 8d 44 24 10 50 8d 54
00c63950: 24 08 52 e8 68 4d 9c ff 33 c9 39 30 5e 0f 95 c1
00c63960: 8a c1 83 c4 08 c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00c63930
Entry Point: 00c63930

00c63930: MOV EAX, dword ptr [ECX + 0x3c4]
00c63936: MOV EDX, dword ptr [ECX + 0x3c0]
00c6393c: SUB ESP, 0x8
00c6393f: ADD ECX, 0x3bc
00c63945: PUSH ESI
00c63946: MOV ESI, dword ptr [EDX + EAX*0x4]
00c63949: LEA EAX, [ESP + 0x10]
00c6394d: PUSH EAX
00c6394e: LEA EDX, [ESP + 0x8]
00c63952: PUSH EDX
00c63953: CALL 0x006286c0
00c63958: XOR ECX, ECX
00c6395a: CMP dword ptr [EAX], ESI
00c6395c: POP ESI
00c6395d: SETNZ CL
00c63960: MOV AL, CL
00c63962: ADD ESP, 0x8
00c63965: RET 0x8

Total instructions: 18
# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing ownedbody[0079a5b0,0079a642] 147bytes/60instructions. Readonly metadata/Listing; all starts/bytes PEchecked. No new function, reanalysis, type/body/prototype repair, annotation mutation, DBsave or originalbytechange.

ECXsamplerpreset; reader stackwordRET4 meaningfulAL. Readraw byteLength, store count=byteLength>>3 before7D7A00(count,8) check. Does not locally reject low3 remainderbits. Allocate count*2DWORDs then4DD9D0 reads exactlycount*2 UInt32 usingreaderbyteorder. Saturatingallocationexpression is not null/transaction safety; count remainsstored oncheckfailure. Actual selected SMPS lengths48 divisible8; no malformed resource test or newDBtypes.

ORIGINAL BYTES
0079a5b0: 56 8b 74 24 08 8b 46 10 8b 56 08 57 8b f9 50 8d
0079a5c0: 4c 24 10 51 52 e8 b6 33 d4 ff 83 c4 0c 8b ce 50
0079a5d0: e8 1b d4 03 00 8b 44 24 0c c1 e8 03 6a 08 50 8b
0079a5e0: ce 89 47 04 e8 17 d4 03 00 84 c0 75 05 5f 5e c2
0079a5f0: 04 00 8b 47 04 33 c9 03 c0 ba 04 00 00 00 f7 e2
0079a600: 6a 00 0f 90 c1 6a 00 6a 00 6a 00 68 18 69 01 01
0079a610: f7 d9 0b c8 51 e8 e6 9e d4 ff 89 07 8b 7f 04 8b
0079a620: 4e 10 8b 56 08 51 03 ff 57 50 52 e8 a0 33 d4 ff
0079a630: 83 c4 28 8b ce 50 e8 b5 d3 03 00 8a 46 14 5f 5e
0079a640: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0079a5b0
Entry Point: 0079a5b0

0079a5b0: PUSH ESI
0079a5b1: MOV ESI, dword ptr [ESP + 0x8]
0079a5b5: MOV EAX, dword ptr [ESI + 0x10]
0079a5b8: MOV EDX, dword ptr [ESI + 0x8]
0079a5bb: PUSH EDI
0079a5bc: MOV EDI, ECX
0079a5be: PUSH EAX
0079a5bf: LEA ECX, [ESP + 0x10]
0079a5c3: PUSH ECX
0079a5c4: PUSH EDX
0079a5c5: CALL 0x004dd980
0079a5ca: ADD ESP, 0xc
0079a5cd: MOV ECX, ESI
0079a5cf: PUSH EAX
0079a5d0: CALL 0x007d79f0
0079a5d5: MOV EAX, dword ptr [ESP + 0xc]
0079a5d9: SHR EAX, 0x3
0079a5dc: PUSH 0x8
0079a5de: PUSH EAX
0079a5df: MOV ECX, ESI
0079a5e1: MOV dword ptr [EDI + 0x4], EAX
0079a5e4: CALL 0x007d7a00
0079a5e9: TEST AL, AL
0079a5eb: JNZ 0x0079a5f2
0079a5ed: POP EDI
0079a5ee: POP ESI
0079a5ef: RET 0x4
0079a5f2: MOV EAX, dword ptr [EDI + 0x4]
0079a5f5: XOR ECX, ECX
0079a5f7: ADD EAX, EAX
0079a5f9: MOV EDX, 0x4
0079a5fe: MUL EDX
0079a600: PUSH 0x0
0079a602: SETO CL
0079a605: PUSH 0x0
0079a607: PUSH 0x0
0079a609: PUSH 0x0
0079a60b: PUSH 0x1016918
0079a610: NEG ECX
0079a612: OR ECX, EAX
0079a614: PUSH ECX
0079a615: CALL 0x004e4500
0079a61a: MOV dword ptr [EDI], EAX
0079a61c: MOV EDI, dword ptr [EDI + 0x4]
0079a61f: MOV ECX, dword ptr [ESI + 0x10]
0079a622: MOV EDX, dword ptr [ESI + 0x8]
0079a625: PUSH ECX
0079a626: ADD EDI, EDI
0079a628: PUSH EDI
0079a629: PUSH EAX
0079a62a: PUSH EDX
0079a62b: CALL 0x004dd9d0
0079a630: ADD ESP, 0x28
0079a633: MOV ECX, ESI
0079a635: PUSH EAX
0079a636: CALL 0x007d79f0
0079a63b: MOV AL, byte ptr [ESI + 0x14]
0079a63e: POP EDI
0079a63f: POP ESI
0079a640: RET 0x4

Total instructions: 60
# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing ownedbody[0060f0a0,0060f111] 114bytes/43instructions. Readonly metadata/Listing; all starts/bytes PEchecked. No new function, reanalysis, type/body/prototype repair, annotation mutation, DBsave or originalbytechange.

ECXrenderDevice; stage,pairs,count three stackwordsRET0C void. Perstage stride74 base810, state-1 index. Changed rawvalue updates cache844+stage*74+4*(state-1) BEFORE device+0C COMvirtual+114(stage,state,value); HRESULT ignored. Equalvalue skipsCOM. Every visitedpair marks activeoverride bit(state-1) at87C+stage*74 even equality. Count0 no loop; no localstage/state validation, no CPU mip clamp, calleradmission not universal.

ORIGINAL BYTES
0060f0a0: 51 8b 44 24 08 6b c0 74 83 7c 24 10 00 8b d1 57
0060f0b0: 89 54 24 04 8d bc 10 10 08 00 00 74 50 53 8b 5c
0060f0c0: 24 14 55 56 8b 0b 8b 43 04 83 6c 24 20 01 8d 71
0060f0d0: ff 83 c3 08 39 44 b7 34 74 1d 50 51 8b 4c 24 20
0060f0e0: 89 44 b7 34 8b 52 0c 8b 2a 51 52 8b 95 14 01 00
0060f0f0: 00 ff d2 8b 54 24 10 b8 01 00 00 00 8b ce d3 e0
0060f100: 09 47 6c 83 7c 24 20 00 75 ba 5e 5d 5b 5f 59 c2
0060f110: 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0060f0a0
Entry Point: 0060f0a0

0060f0a0: PUSH ECX
0060f0a1: MOV EAX, dword ptr [ESP + 0x8]
0060f0a5: IMUL EAX, EAX, 0x74
0060f0a8: CMP dword ptr [ESP + 0x10], 0x0
0060f0ad: MOV EDX, ECX
0060f0af: PUSH EDI
0060f0b0: MOV dword ptr [ESP + 0x4], EDX
0060f0b4: LEA EDI, [EAX + EDX*0x1 + 0x810]
0060f0bb: JZ 0x0060f10d
0060f0bd: PUSH EBX
0060f0be: MOV EBX, dword ptr [ESP + 0x14]
0060f0c2: PUSH EBP
0060f0c3: PUSH ESI
0060f0c4: MOV ECX, dword ptr [EBX]
0060f0c6: MOV EAX, dword ptr [EBX + 0x4]
0060f0c9: SUB dword ptr [ESP + 0x20], 0x1
0060f0ce: LEA ESI, [ECX + -0x1]
0060f0d1: ADD EBX, 0x8
0060f0d4: CMP dword ptr [EDI + ESI*0x4 + 0x34], EAX
0060f0d8: JZ 0x0060f0f7
0060f0da: PUSH EAX
0060f0db: PUSH ECX
0060f0dc: MOV ECX, dword ptr [ESP + 0x20]
0060f0e0: MOV dword ptr [EDI + ESI*0x4 + 0x34], EAX
0060f0e4: MOV EDX, dword ptr [EDX + 0xc]
0060f0e7: MOV EBP, dword ptr [EDX]
0060f0e9: PUSH ECX
0060f0ea: PUSH EDX
0060f0eb: MOV EDX, dword ptr [EBP + 0x114]
0060f0f1: CALL EDX
0060f0f3: MOV EDX, dword ptr [ESP + 0x10]
0060f0f7: MOV EAX, 0x1
0060f0fc: MOV ECX, ESI
0060f0fe: SHL EAX, CL
0060f100: OR dword ptr [EDI + 0x6c], EAX
0060f103: CMP dword ptr [ESP + 0x20], 0x0
0060f108: JNZ 0x0060f0c4
0060f10a: POP ESI
0060f10b: POP EBP
0060f10c: POP EBX
0060f10d: POP EDI
0060f10e: POP ECX
0060f10f: RET 0xc

Total instructions: 43
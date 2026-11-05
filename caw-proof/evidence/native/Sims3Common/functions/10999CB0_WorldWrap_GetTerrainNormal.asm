# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10999cb0..10999d22; WorldWrap_GetTerrainNormal
10999cb0: 55  PUSH EBP
10999cb1: 8bec  MOV EBP,ESP
10999cb3: 83e4f0  AND ESP,0xfffffff0
10999cb6: 83ec20  SUB ESP,0x20
10999cb9: d94510  FLD float ptr [EBP + 0x10]
10999cbc: 8b4d08  MOV ECX,dword ptr [EBP + 0x8]
10999cbf: 83ec08  SUB ESP,0x8
10999cc2: d95c2404  FSTP float ptr [ESP + 0x4]
10999cc6: 8d442418  LEA EAX,[ESP + 0x18]
10999cca: d9450c  FLD float ptr [EBP + 0xc]
10999ccd: d91c24  FSTP float ptr [ESP]
10999cd0: 50  PUSH EAX
10999cd1: e89a558aff  CALL 0x1023f270
10999cd6: 0f2800  MOVAPS XMM0,xmmword ptr [EAX]
10999cd9: 8b4514  MOV EAX,dword ptr [EBP + 0x14]
10999cdc: 0f290424  MOVAPS xmmword ptr [ESP],XMM0
10999ce0: f30f100c24  MOVSS XMM1,dword ptr [ESP]
10999ce5: 0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
10999cea: f30f110c24  MOVSS dword ptr [ESP],XMM1
10999cef: f30f104c2414  MOVSS XMM1,dword ptr [ESP + 0x14]
10999cf5: 8b0c24  MOV ECX,dword ptr [ESP]
10999cf8: 0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
10999cfd: f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
10999d03: 8908  MOV dword ptr [EAX],ECX
10999d05: f30f114c2404  MOVSS dword ptr [ESP + 0x4],XMM1
10999d0b: 8b542404  MOV EDX,dword ptr [ESP + 0x4]
10999d0f: f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
10999d15: 8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
10999d19: 895004  MOV dword ptr [EAX + 0x4],EDX
10999d1c: 894808  MOV dword ptr [EAX + 0x8],ECX
10999d1f: 8be5  MOV ESP,EBP
10999d21: 5d  POP EBP
10999d22: c3  RET

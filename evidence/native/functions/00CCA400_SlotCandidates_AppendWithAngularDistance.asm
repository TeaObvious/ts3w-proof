# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SlotCandidates_AppendWithAngularDistance(void * this, int param_1, undefined4 param_2, undefined4 param_3, undefined4 param_4, float param_5, undefined4 param_6)
Owned ranges: [[00cca400, 00cca4ca]]

00cca400  83ec28  SUB ESP,0x28
00cca403  56  PUSH ESI
00cca404  8b742430  MOV ESI,dword ptr [ESP + 0x30]
00cca408  85f6  TEST ESI,ESI
00cca40a  7408  JZ 0x00cca414
00cca40c  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00cca40f  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cca412  eb04  JMP 0x00cca418
00cca414  33c0  XOR EAX,EAX
00cca416  33d2  XOR EDX,EDX
00cca418  f30f10442444  MOVSS XMM0,dword ptr [ESP + 0x44]
00cca41e  f30f10542440  MOVSS XMM2,dword ptr [ESP + 0x40]
00cca424  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00cca42a  89442404  MOV dword ptr [ESP + 0x4],EAX
00cca42e  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00cca432  0f28c2  MOVAPS XMM0,XMM2
00cca435  f30f5c412c  SUBSS XMM0,dword ptr [ECX + 0x2c]
00cca43a  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00cca440  8944240c  MOV dword ptr [ESP + 0xc],EAX
00cca444  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00cca448  25ffffff7f  AND EAX,0x7fffffff
00cca44d  89542408  MOV dword ptr [ESP + 0x8],EDX
00cca451  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00cca455  89442430  MOV dword ptr [ESP + 0x30],EAX
00cca459  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00cca45f  0f28c8  MOVAPS XMM1,XMM0
00cca462  f30f590d2024fc00  MULSS XMM1,dword ptr [0x00fc2420]
00cca46a  89542410  MOV dword ptr [ESP + 0x10],EDX
00cca46e  f30f2cd1  CVTTSS2SI EDX,XMM1
00cca472  f30f100d84f20701  MOVSS XMM1,dword ptr [0x0107f284]
00cca47a  f30f2ada  CVTSI2SS XMM3,EDX
00cca47e  f30f59d9  MULSS XMM3,XMM1
00cca482  f30f5cc3  SUBSS XMM0,XMM3
00cca486  f30f101d80f20701  MOVSS XMM3,dword ptr [0x0107f280]
00cca48e  0f2fd8  COMISS XMM3,XMM0
00cca491  7608  JBE 0x00cca49b
00cca493  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00cca499  eb0a  JMP 0x00cca4a5
00cca49b  f30f5cc8  SUBSS XMM1,XMM0
00cca49f  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
00cca4a5  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00cca4a9  8d542404  LEA EDX,[ESP + 0x4]
00cca4ad  52  PUSH EDX
00cca4ae  83c130  ADD ECX,0x30
00cca4b1  89742420  MOV dword ptr [ESP + 0x20],ESI
00cca4b5  89442424  MOV dword ptr [ESP + 0x24],EAX
00cca4b9  f30f11542428  MOVSS dword ptr [ESP + 0x28],XMM2
00cca4bf  e85cfeffff  CALL 0x00cca320
00cca4c4  5e  POP ESI
00cca4c5  83c428  ADD ESP,0x28
00cca4c8  c21800  RET 0x18

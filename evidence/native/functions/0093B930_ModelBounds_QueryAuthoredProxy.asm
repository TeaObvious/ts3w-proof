# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ModelBounds_QueryAuthoredProxy(void * key, float * bounds8Floats, dword * auxWord)
Owned ranges: [[0093b930, 0093ba5d]]

0093b930  55  PUSH EBP
0093b931  8bec  MOV EBP,ESP
0093b933  83e4f0  AND ESP,0xfffffff0
0093b936  83ec1c  SUB ESP,0x1c
0093b939  56  PUSH ESI
0093b93a  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
0093b942  e83945b7ff  CALL 0x004afe80
0093b947  8bf0  MOV ESI,EAX
0093b949  85f6  TEST ESI,ESI
0093b94b  0f84f7000000  JZ 0x0093ba48
0093b951  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0093b955  85c9  TEST ECX,ECX
0093b957  740f  JZ 0x0093b968
0093b959  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
0093b961  8b01  MOV EAX,dword ptr [ECX]
0093b963  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0093b966  ffd2  CALL EDX
0093b968  8b06  MOV EAX,dword ptr [ESI]
0093b96a  8b5508  MOV EDX,dword ptr [EBP + 0x8]
0093b96d  8b400c  MOV EAX,dword ptr [EAX + 0xc]
0093b970  6a00  PUSH 0x0
0093b972  6a00  PUSH 0x0
0093b974  6a00  PUSH 0x0
0093b976  6a00  PUSH 0x0
0093b978  8d4c241c  LEA ECX,[ESP + 0x1c]
0093b97c  51  PUSH ECX
0093b97d  52  PUSH EDX
0093b97e  8bce  MOV ECX,ESI
0093b980  ffd0  CALL EAX
0093b982  84c0  TEST AL,AL
0093b984  0f84be000000  JZ 0x0093ba48
0093b98a  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0093b98e  85c9  TEST ECX,ECX
0093b990  0f84ab000000  JZ 0x0093ba41
0093b996  8b11  MOV EDX,dword ptr [ECX]
0093b998  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0093b99b  68afbab8b7  PUSH 0xb7b8baaf
0093b9a0  ffd0  CALL EAX
0093b9a2  8bf0  MOV ESI,EAX
0093b9a4  85f6  TEST ESI,ESI
0093b9a6  7408  JZ 0x0093b9b0
0093b9a8  8b16  MOV EDX,dword ptr [ESI]
0093b9aa  8b02  MOV EAX,dword ptr [EDX]
0093b9ac  8bce  MOV ECX,ESI
0093b9ae  ffd0  CALL EAX
0093b9b0  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0093b9b4  85f6  TEST ESI,ESI
0093b9b6  f30f104e40  MOVSS XMM1,dword ptr [ESI + 0x40]
0093b9bb  f30f104638  MOVSS XMM0,dword ptr [ESI + 0x38]
0093b9c0  8b450c  MOV EAX,dword ptr [EBP + 0xc]
0093b9c3  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
0093b9c9  f30f104e3c  MOVSS XMM1,dword ptr [ESI + 0x3c]
0093b9ce  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
0093b9d4  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
0093b9da  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
0093b9e0  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
0093b9e5  0f2900  MOVAPS xmmword ptr [EAX],XMM0
0093b9e8  f30f104e4c  MOVSS XMM1,dword ptr [ESI + 0x4c]
0093b9ed  f30f104644  MOVSS XMM0,dword ptr [ESI + 0x44]
0093b9f2  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
0093b9f8  f30f104e48  MOVSS XMM1,dword ptr [ESI + 0x48]
0093b9fd  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
0093ba03  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
0093ba09  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
0093ba0f  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
0093ba14  0f294010  MOVAPS xmmword ptr [EAX + 0x10],XMM0
0093ba18  8b5660  MOV EDX,dword ptr [ESI + 0x60]
0093ba1b  8b4510  MOV EAX,dword ptr [EBP + 0x10]
0093ba1e  8910  MOV dword ptr [EAX],EDX
0093ba20  740d  JZ 0x0093ba2f
0093ba22  8b16  MOV EDX,dword ptr [ESI]
0093ba24  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0093ba27  8bce  MOV ECX,ESI
0093ba29  ffd0  CALL EAX
0093ba2b  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0093ba2f  85c9  TEST ECX,ECX
0093ba31  7407  JZ 0x0093ba3a
0093ba33  8b11  MOV EDX,dword ptr [ECX]
0093ba35  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0093ba38  ffd0  CALL EAX
0093ba3a  b001  MOV AL,0x1
0093ba3c  5e  POP ESI
0093ba3d  8be5  MOV ESP,EBP
0093ba3f  5d  POP EBP
0093ba40  c3  RET
0093ba41  33f6  XOR ESI,ESI
0093ba43  e96cffffff  JMP 0x0093b9b4
0093ba48  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0093ba4c  85c9  TEST ECX,ECX
0093ba4e  7407  JZ 0x0093ba57
0093ba50  8b11  MOV EDX,dword ptr [ECX]
0093ba52  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0093ba55  ffd0  CALL EAX
0093ba57  32c0  XOR AL,AL
0093ba59  5e  POP ESI
0093ba5a  8be5  MOV ESP,EBP
0093ba5c  5d  POP EBP
0093ba5d  c3  RET

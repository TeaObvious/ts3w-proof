# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Geometry_PointInPolygonCrossing(float * param_1, float * param_2, int param_3)
Owned ranges: [[007cd9e0, 007cda80]]

007cd9e0  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007cd9e4  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007cd9e8  f30f1044d1fc  MOVSS XMM0,dword ptr [ECX + EDX*0x8 + -0x4]
007cd9ee  53  PUSH EBX
007cd9ef  55  PUSH EBP
007cd9f0  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
007cd9f4  f30f105504  MOVSS XMM2,dword ptr [EBP + 0x4]
007cd9f9  56  PUSH ESI
007cd9fa  8d74d1f8  LEA ESI,[ECX + EDX*0x8 + -0x8]
007cd9fe  32c0  XOR AL,AL
007cda00  0f2fc2  COMISS XMM0,XMM2
007cda03  57  PUSH EDI
007cda04  7204  JC 0x007cda0a
007cda06  b301  MOV BL,0x1
007cda08  eb02  JMP 0x007cda0c
007cda0a  32db  XOR BL,BL
007cda0c  85d2  TEST EDX,EDX
007cda0e  8bfa  MOV EDI,EDX
007cda10  746a  JZ 0x007cda7c
007cda12  f30f104104  MOVSS XMM0,dword ptr [ECX + 0x4]
007cda17  83ef01  SUB EDI,0x1
007cda1a  0f2fc2  COMISS XMM0,XMM2
007cda1d  7204  JC 0x007cda23
007cda1f  b201  MOV DL,0x1
007cda21  eb02  JMP 0x007cda25
007cda23  32d2  XOR DL,DL
007cda25  3ada  CMP BL,DL
007cda27  7448  JZ 0x007cda71
007cda29  f30f104904  MOVSS XMM1,dword ptr [ECX + 0x4]
007cda2e  f30f1001  MOVSS XMM0,dword ptr [ECX]
007cda32  f30f1026  MOVSS XMM4,dword ptr [ESI]
007cda36  f30f5ce0  SUBSS XMM4,XMM0
007cda3a  f30f5c4500  SUBSS XMM0,dword ptr [EBP]
007cda3f  0f28d9  MOVAPS XMM3,XMM1
007cda42  f30f5cda  SUBSS XMM3,XMM2
007cda46  f30f59dc  MULSS XMM3,XMM4
007cda4a  f30f106604  MOVSS XMM4,dword ptr [ESI + 0x4]
007cda4f  f30f5ce1  SUBSS XMM4,XMM1
007cda53  f30f59e0  MULSS XMM4,XMM0
007cda57  0f2fdc  COMISS XMM3,XMM4
007cda5a  7207  JC 0x007cda63
007cda5c  be01000000  MOV ESI,0x1
007cda61  eb02  JMP 0x007cda65
007cda63  33f6  XOR ESI,ESI
007cda65  0fb6da  MOVZX EBX,DL
007cda68  3bf3  CMP ESI,EBX
007cda6a  7505  JNZ 0x007cda71
007cda6c  84c0  TEST AL,AL
007cda6e  0f94c0  SETZ AL
007cda71  8bf1  MOV ESI,ECX
007cda73  83c108  ADD ECX,0x8
007cda76  85ff  TEST EDI,EDI
007cda78  8ada  MOV BL,DL
007cda7a  7596  JNZ 0x007cda12
007cda7c  5f  POP EDI
007cda7d  5e  POP ESI
007cda7e  5d  POP EBP
007cda7f  5b  POP EBX
007cda80  c3  RET

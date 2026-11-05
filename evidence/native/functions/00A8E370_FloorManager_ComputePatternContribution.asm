# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00a8e370, 00a8e411]]
Signature: ulonglong FloorManager_ComputePatternContribution(int param_1, uint param_2)

00a8e370  55  PUSH EBP
00a8e371  8bec  MOV EBP,ESP
00a8e373  83e4f8  AND ESP,0xfffffff8
00a8e376  83ec10  SUB ESP,0x10
00a8e379  d9ee  FLDZ
00a8e37b  53  PUSH EBX
00a8e37c  8b99d8000000  MOV EBX,dword ptr [ECX + 0xd8]
00a8e382  dd5c240c  FSTP double ptr [ESP + 0xc]
00a8e386  85db  TEST EBX,EBX
00a8e388  55  PUSH EBP
00a8e389  8b2d34e01e01  MOV EBP,dword ptr [0x011ee034]
00a8e38f  56  PUSH ESI
00a8e390  57  PUSH EDI
00a8e391  7468  JZ 0x00a8e3fb
00a8e393  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a8e396  8b30  MOV ESI,dword ptr [EAX]
00a8e398  85f6  TEST ESI,ESI
00a8e39a  8bf8  MOV EDI,EAX
00a8e39c  7512  JNZ 0x00a8e3b0
00a8e39e  397004  CMP dword ptr [EAX + 0x4],ESI
00a8e3a1  8d7804  LEA EDI,[EAX + 0x4]
00a8e3a4  7508  JNZ 0x00a8e3ae
00a8e3a6  83c704  ADD EDI,0x4
00a8e3a9  833f00  CMP dword ptr [EDI],0x0
00a8e3ac  74f8  JZ 0x00a8e3a6
00a8e3ae  8b37  MOV ESI,dword ptr [EDI]
00a8e3b0  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00a8e3b3  3b3488  CMP ESI,dword ptr [EAX + ECX*0x4]
00a8e3b6  7443  JZ 0x00a8e3fb
00a8e3b8  56  PUSH ESI
00a8e3b9  8bcd  MOV ECX,EBP
00a8e3bb  e820072000  CALL 0x00c8eae0
00a8e3c0  85c0  TEST EAX,EAX
00a8e3c2  741b  JZ 0x00a8e3df
00a8e3c4  8b5644  MOV EDX,dword ptr [ESI + 0x44]
00a8e3c7  db4644  FILD dword ptr [ESI + 0x44]
00a8e3ca  85d2  TEST EDX,EDX
00a8e3cc  7d06  JGE 0x00a8e3d4
00a8e3ce  d8054899f900  FADD float ptr [0x00f99948]
00a8e3d4  d84858  FMUL float ptr [EAX + 0x58]
00a8e3d7  dc442418  FADD double ptr [ESP + 0x18]
00a8e3db  dd5c2418  FSTP double ptr [ESP + 0x18]
00a8e3df  8b7648  MOV ESI,dword ptr [ESI + 0x48]
00a8e3e2  85f6  TEST ESI,ESI
00a8e3e4  750a  JNZ 0x00a8e3f0
00a8e3e6  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00a8e3e9  83c704  ADD EDI,0x4
00a8e3ec  85f6  TEST ESI,ESI
00a8e3ee  74f6  JZ 0x00a8e3e6
00a8e3f0  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00a8e3f3  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00a8e3f6  3b3481  CMP ESI,dword ptr [ECX + EAX*0x4]
00a8e3f9  75bd  JNZ 0x00a8e3b8
00a8e3fb  dd442418  FLD double ptr [ESP + 0x18]
00a8e3ff  dc0d5099f900  FMUL double ptr [0x00f99950]
00a8e405  e816124f00  CALL 0x00f7f620
00a8e40a  5f  POP EDI
00a8e40b  5e  POP ESI
00a8e40c  5d  POP EBP
00a8e40d  5b  POP EBX
00a8e40e  8be5  MOV ESP,EBP
00a8e410  5d  POP EBP
00a8e411  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ec560, 004ec5c7]]
Signature: uint RefPack_DecodeOrQuerySize(ushort * param_1, uint param_2, byte * param_3, uint param_4, uint ignoredWord5)

004ec560  56  PUSH ESI
004ec561  8b742408  MOV ESI,dword ptr [ESP + 0x8]
004ec565  668b06  MOV AX,word ptr [ESI]
004ec568  8ae8  MOV CH,AL
004ec56a  8acc  MOV CL,AH
004ec56c  0fb7c1  MOVZX EAX,CX
004ec56f  8bd0  MOV EDX,EAX
004ec571  81e2ff1f0000  AND EDX,0x1fff
004ec577  81fafb100000  CMP EDX,0x10fb
004ec57d  7542  JNZ 0x004ec5c1
004ec57f  2500800000  AND EAX,0x8000
004ec584  2d00800000  SUB EAX,0x8000
004ec589  f7d8  NEG EAX
004ec58b  1bc0  SBB EAX,EAX
004ec58d  83c004  ADD EAX,0x4
004ec590  50  PUSH EAX
004ec591  8d4602  LEA EAX,[ESI + 0x2]
004ec594  50  PUSH EAX
004ec595  e8a6f2ffff  CALL 0x004eb840
004ec59a  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004ec59e  83c408  ADD ESP,0x8
004ec5a1  85c9  TEST ECX,ECX
004ec5a3  741f  JZ 0x004ec5c4
004ec5a5  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004ec5a9  3bc2  CMP EAX,EDX
004ec5ab  7714  JA 0x004ec5c1
004ec5ad  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
004ec5b1  50  PUSH EAX
004ec5b2  56  PUSH ESI
004ec5b3  52  PUSH EDX
004ec5b4  51  PUSH ECX
004ec5b5  e846f3ffff  CALL 0x004eb900
004ec5ba  83c410  ADD ESP,0x10
004ec5bd  5e  POP ESI
004ec5be  c21400  RET 0x14
004ec5c1  83c8ff  OR EAX,0xffffffff
004ec5c4  5e  POP ESI
004ec5c5  c21400  RET 0x14

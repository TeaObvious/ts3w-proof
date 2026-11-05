# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ResourceReferences_ReadContextKey(void * this, void * param_1, undefined4 * param_2)
Owned ranges: [[007d7470, 007d74e6]]

007d7470  56  PUSH ESI
007d7471  8b742408  MOV ESI,dword ptr [ESP + 0x8]
007d7475  57  PUSH EDI
007d7476  8bf9  MOV EDI,ECX
007d7478  80bf8200000000  CMP byte ptr [EDI + 0x82],0x0
007d747f  7433  JZ 0x007d74b4
007d7481  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007d7484  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d7487  50  PUSH EAX
007d7488  8d4c2410  LEA ECX,[ESP + 0x10]
007d748c  51  PUSH ECX
007d748d  52  PUSH EDX
007d748e  e8ed64d0ff  CALL 0x004dd980
007d7493  83c40c  ADD ESP,0xc
007d7496  8bce  MOV ECX,ESI
007d7498  50  PUSH EAX
007d7499  e852050000  CALL 0x007d79f0
007d749e  8b442410  MOV EAX,dword ptr [ESP + 0x10]
007d74a2  50  PUSH EAX
007d74a3  8d4c2410  LEA ECX,[ESP + 0x10]
007d74a7  51  PUSH ECX
007d74a8  8bcf  MOV ECX,EDI
007d74aa  e8a1f6ffff  CALL 0x007d6b50
007d74af  5f  POP EDI
007d74b0  5e  POP ESI
007d74b1  c20800  RET 0x8
007d74b4  8b5610  MOV EDX,dword ptr [ESI + 0x10]
007d74b7  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d74ba  52  PUSH EDX
007d74bb  8d442410  LEA EAX,[ESP + 0x10]
007d74bf  50  PUSH EAX
007d74c0  51  PUSH ECX
007d74c1  e81a64d0ff  CALL 0x004dd8e0
007d74c6  83c40c  ADD ESP,0xc
007d74c9  8bce  MOV ECX,ESI
007d74cb  50  PUSH EAX
007d74cc  e81f050000  CALL 0x007d79f0
007d74d1  8b542410  MOV EDX,dword ptr [ESP + 0x10]
007d74d5  52  PUSH EDX
007d74d6  8d442410  LEA EAX,[ESP + 0x10]
007d74da  50  PUSH EAX
007d74db  8bcf  MOV ECX,EDI
007d74dd  e8aefcffff  CALL 0x007d7190
007d74e2  5f  POP EDI
007d74e3  5e  POP ESI
007d74e4  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 LotTerrain_BindLot(void * this, int param_1)
Owned ranges: [[00ae9bf0, 00ae9cd7]]

00ae9bf0  83ec10  SUB ESP,0x10
00ae9bf3  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ae9bf7  56  PUSH ESI
00ae9bf8  8bf1  MOV ESI,ECX
00ae9bfa  894604  MOV dword ptr [ESI + 0x4],EAX
00ae9bfd  c60601  MOV byte ptr [ESI],0x1
00ae9c00  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00ae9c06  894e08  MOV dword ptr [ESI + 0x8],ECX
00ae9c09  8b9074010000  MOV EDX,dword ptr [EAX + 0x174]
00ae9c0f  89560c  MOV dword ptr [ESI + 0xc],EDX
00ae9c12  8b8078010000  MOV EAX,dword ptr [EAX + 0x178]
00ae9c18  894610  MOV dword ptr [ESI + 0x10],EAX
00ae9c1b  8bc2  MOV EAX,EDX
00ae9c1d  8d0c8501000000  LEA ECX,[EAX*0x4 + 0x1]
00ae9c24  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ae9c27  8d51ff  LEA EDX,[ECX + -0x1]
00ae9c2a  8d048501000000  LEA EAX,[EAX*0x4 + 0x1]
00ae9c31  895624  MOV dword ptr [ESI + 0x24],EDX
00ae9c34  894620  MOV dword ptr [ESI + 0x20],EAX
00ae9c37  8d50ff  LEA EDX,[EAX + -0x1]
00ae9c3a  0fafc1  IMUL EAX,ECX
00ae9c3d  894e1c  MOV dword ptr [ESI + 0x1c],ECX
00ae9c40  57  PUSH EDI
00ae9c41  895628  MOV dword ptr [ESI + 0x28],EDX
00ae9c44  89462c  MOV dword ptr [ESI + 0x2c],EAX
00ae9c47  8b3d34e01e01  MOV EDI,dword ptr [0x011ee034]
00ae9c4d  8bcf  MOV ECX,EDI
00ae9c4f  e8dc171a00  CALL 0x00c8b430
00ae9c54  8b08  MOV ECX,dword ptr [EAX]
00ae9c56  894c2408  MOV dword ptr [ESP + 0x8],ECX
00ae9c5a  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ae9c5d  8954240c  MOV dword ptr [ESP + 0xc],EDX
00ae9c61  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00ae9c64  894c2410  MOV dword ptr [ESP + 0x10],ECX
00ae9c68  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00ae9c6b  6a01  PUSH 0x1
00ae9c6d  8d44240c  LEA EAX,[ESP + 0xc]
00ae9c71  50  PUSH EAX
00ae9c72  8bcf  MOV ECX,EDI
00ae9c74  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00ae9c78  e803521a00  CALL 0x00c8ee80
00ae9c7d  85c0  TEST EAX,EAX
00ae9c7f  742c  JZ 0x00ae9cad
00ae9c81  8b88c0000000  MOV ECX,dword ptr [EAX + 0xc0]
00ae9c87  05c0000000  ADD EAX,0xc0
00ae9c8c  898ef0000000  MOV dword ptr [ESI + 0xf0],ECX
00ae9c92  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00ae9c95  8996f4000000  MOV dword ptr [ESI + 0xf4],EDX
00ae9c9b  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00ae9c9e  898ef8000000  MOV dword ptr [ESI + 0xf8],ECX
00ae9ca4  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00ae9ca7  8996fc000000  MOV dword ptr [ESI + 0xfc],EDX
00ae9cad  8b86e8000000  MOV EAX,dword ptr [ESI + 0xe8]
00ae9cb3  8b0db00a1501  MOV ECX,dword ptr [0x01150ab0]
00ae9cb9  50  PUSH EAX
00ae9cba  68e4a40601  PUSH 0x106a4e4
00ae9cbf  51  PUSH ECX
00ae9cc0  e83b12aaff  CALL 0x0058af00
00ae9cc5  83c40c  ADD ESP,0xc
00ae9cc8  8986e8000000  MOV dword ptr [ESI + 0xe8],EAX
00ae9cce  5f  POP EDI
00ae9ccf  b001  MOV AL,0x1
00ae9cd1  5e  POP ESI
00ae9cd2  83c410  ADD ESP,0x10
00ae9cd5  c20400  RET 0x4

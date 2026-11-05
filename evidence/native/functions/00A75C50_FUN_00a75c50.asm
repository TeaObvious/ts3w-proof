# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00A75C50_FUN_00a75c50.c
Body [[00a75c50, 00a75d3b]]; envelope exclusive end 00a75d3c

GHIDRA LISTING (original bytes)
00a75c50  83ec0c  SUB ESP,0xc
00a75c53  0f57c0  XORPS XMM0,XMM0
00a75c56  8bd1  MOV EDX,ECX
00a75c58  837a2400  CMP dword ptr [EDX + 0x24],0x0
00a75c5c  89542404  MOV dword ptr [ESP + 0x4],EDX
00a75c60  f30f110424  MOVSS dword ptr [ESP],XMM0
00a75c65  0f84c8000000  JZ 0x00a75d33
00a75c6b  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a75c6f  53  PUSH EBX
00a75c70  8b18  MOV EBX,dword ptr [EAX]
00a75c72  3b5804  CMP EBX,dword ptr [EAX + 0x4]
00a75c75  55  PUSH EBP
00a75c76  8b2d34e01e01  MOV EBP,dword ptr [0x011ee034]
00a75c7c  0f84a5000000  JZ 0x00a75d27
00a75c82  56  PUSH ESI
00a75c83  57  PUSH EDI
00a75c84  eb04  JMP 0x00a75c8a
00a75c86  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a75c8a  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00a75c8d  8b03  MOV EAX,dword ptr [EBX]
00a75c8f  51  PUSH ECX
00a75c90  8b4a24  MOV ECX,dword ptr [EDX + 0x24]
00a75c93  50  PUSH EAX
00a75c94  e8e77f1f00  CALL 0x00c6dc80
00a75c99  8bf0  MOV ESI,EAX
00a75c9b  85f6  TEST ESI,ESI
00a75c9d  746a  JZ 0x00a75d09
00a75c9f  8d7e04  LEA EDI,[ESI + 0x4]
00a75ca2  8bc7  MOV EAX,EDI
00a75ca4  b901000000  MOV ECX,0x1
00a75ca9  f00fc108  XADD.LOCK dword ptr [EAX],ECX
00a75cad  8d5618  LEA EDX,[ESI + 0x18]
00a75cb0  52  PUSH EDX
00a75cb1  8bcd  MOV ECX,EBP
00a75cb3  e8f88e2100  CALL 0x00c8ebb0
00a75cb8  85c0  TEST EAX,EAX
00a75cba  7430  JZ 0x00a75cec
00a75cbc  8b88d0000000  MOV ECX,dword ptr [EAX + 0xd0]
00a75cc2  c1e906  SHR ECX,0x6
00a75cc5  f6c101  TEST CL,0x1
00a75cc8  7422  JZ 0x00a75cec
00a75cca  6a00  PUSH 0x0
00a75ccc  83c008  ADD EAX,0x8
00a75ccf  50  PUSH EAX
00a75cd0  8bcd  MOV ECX,EBP
00a75cd2  e8496b2100  CALL 0x00c8c820
00a75cd7  85c0  TEST EAX,EAX
00a75cd9  7411  JZ 0x00a75cec
00a75cdb  f30f104058  MOVSS XMM0,dword ptr [EAX + 0x58]
00a75ce0  f30f58442410  ADDSS XMM0,dword ptr [ESP + 0x10]
00a75ce6  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00a75cec  8bd7  MOV EDX,EDI
00a75cee  83c8ff  OR EAX,0xffffffff
00a75cf1  f00fc102  XADD.LOCK dword ptr [EDX],EAX
00a75cf5  48  DEC EAX
00a75cf6  7511  JNZ 0x00a75d09
00a75cf8  b901000000  MOV ECX,0x1
00a75cfd  870f  XCHG dword ptr [EDI],ECX
00a75cff  8b16  MOV EDX,dword ptr [ESI]
00a75d01  8b02  MOV EAX,dword ptr [EDX]
00a75d03  6a01  PUSH 0x1
00a75d05  8bce  MOV ECX,ESI
00a75d07  ffd0  CALL EAX
00a75d09  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00a75d0d  83c308  ADD EBX,0x8
00a75d10  3b5904  CMP EBX,dword ptr [ECX + 0x4]
00a75d13  0f856dffffff  JNZ 0x00a75c86
00a75d19  d9442410  FLD float ptr [ESP + 0x10]
00a75d1d  5f  POP EDI
00a75d1e  5e  POP ESI
00a75d1f  5d  POP EBP
00a75d20  5b  POP EBX
00a75d21  83c40c  ADD ESP,0xc
00a75d24  c20400  RET 0x4
00a75d27  d9442408  FLD float ptr [ESP + 0x8]
00a75d2b  5d  POP EBP
00a75d2c  5b  POP EBX
00a75d2d  83c40c  ADD ESP,0xc
00a75d30  c20400  RET 0x4
00a75d33  d90424  FLD float ptr [ESP]
00a75d36  83c40c  ADD ESP,0xc
00a75d39  c20400  RET 0x4

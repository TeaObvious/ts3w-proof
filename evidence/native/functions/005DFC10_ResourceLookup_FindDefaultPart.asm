# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint ResourceLookup_FindDefaultPart(void * this, uint param_1, uint param_2, uint param_3, uint * param_4)
Owned ranges: [[005dfc10, 005dfcbf]]

005dfc10  83ec10  SUB ESP,0x10
005dfc13  53  PUSH EBX
005dfc14  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
005dfc18  55  PUSH EBP
005dfc19  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
005dfc1d  56  PUSH ESI
005dfc1e  8bf1  MOV ESI,ECX
005dfc20  33c9  XOR ECX,ECX
005dfc22  8bc5  MOV EAX,EBP
005dfc24  c1e008  SHL EAX,0x8
005dfc27  0bc3  OR EAX,EBX
005dfc29  57  PUSH EDI
005dfc2a  894c2410  MOV dword ptr [ESP + 0x10],ECX
005dfc2e  894c2414  MOV dword ptr [ESP + 0x14],ECX
005dfc32  894c2418  MOV dword ptr [ESP + 0x18],ECX
005dfc36  c1e008  SHL EAX,0x8
005dfc39  0b44242c  OR EAX,dword ptr [ESP + 0x2c]
005dfc3d  8d4c2410  LEA ECX,[ESP + 0x10]
005dfc41  51  PUSH ECX
005dfc42  50  PUSH EAX
005dfc43  8d7e14  LEA EDI,[ESI + 0x14]
005dfc46  57  PUSH EDI
005dfc47  8bce  MOV ECX,ESI
005dfc49  c74424281053fe00  MOV dword ptr [ESP + 0x28],0xfe5310
005dfc51  e8cafcffff  CALL 0x005df920
005dfc56  84c0  TEST AL,AL
005dfc58  7433  JZ 0x005dfc8d
005dfc5a  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005dfc5e  8b10  MOV EDX,dword ptr [EAX]
005dfc60  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
005dfc64  8911  MOV dword ptr [ECX],EDX
005dfc66  8b5004  MOV EDX,dword ptr [EAX + 0x4]
005dfc69  895104  MOV dword ptr [ECX + 0x4],EDX
005dfc6c  8b5008  MOV EDX,dword ptr [EAX + 0x8]
005dfc6f  895108  MOV dword ptr [ECX + 0x8],EDX
005dfc72  8b500c  MOV EDX,dword ptr [EAX + 0xc]
005dfc75  50  PUSH EAX
005dfc76  89510c  MOV dword ptr [ECX + 0xc],EDX
005dfc79  e86248f0ff  CALL 0x004e44e0
005dfc7e  83c404  ADD ESP,0x4
005dfc81  5f  POP EDI
005dfc82  5e  POP ESI
005dfc83  5d  POP EBP
005dfc84  b001  MOV AL,0x1
005dfc86  5b  POP EBX
005dfc87  83c410  ADD ESP,0x10
005dfc8a  c21000  RET 0x10
005dfc8d  8b442430  MOV EAX,dword ptr [ESP + 0x30]
005dfc91  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
005dfc95  50  PUSH EAX
005dfc96  51  PUSH ECX
005dfc97  53  PUSH EBX
005dfc98  55  PUSH EBP
005dfc99  57  PUSH EDI
005dfc9a  8bce  MOV ECX,ESI
005dfc9c  e87ff9ffff  CALL 0x005df620
005dfca1  8ad8  MOV BL,AL
005dfca3  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005dfca7  85c0  TEST EAX,EAX
005dfca9  7409  JZ 0x005dfcb4
005dfcab  50  PUSH EAX
005dfcac  e82f48f0ff  CALL 0x004e44e0
005dfcb1  83c404  ADD ESP,0x4
005dfcb4  5f  POP EDI
005dfcb5  5e  POP ESI
005dfcb6  5d  POP EBP
005dfcb7  8ac3  MOV AL,BL
005dfcb9  5b  POP EBX
005dfcba  83c410  ADD ESP,0x10
005dfcbd  c21000  RET 0x10

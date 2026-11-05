# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined CeilingRenderManager_ApplyRoomData(void * this, int param_1)
Owned ranges: [[00a4ef30, 00a4effa]]

00a4ef30  83ec24  SUB ESP,0x24
00a4ef33  53  PUSH EBX
00a4ef34  56  PUSH ESI
00a4ef35  57  PUSH EDI
00a4ef36  8bd9  MOV EBX,ECX
00a4ef38  e8c3f2ffff  CALL 0x00a4e200
00a4ef3d  8b4318  MOV EAX,dword ptr [EBX + 0x18]
00a4ef40  50  PUSH EAX
00a4ef41  8d4c2410  LEA ECX,[ESP + 0x10]
00a4ef45  e806abffff  CALL 0x00a49a50
00a4ef4a  8b7c2434  MOV EDI,dword ptr [ESP + 0x34]
00a4ef4e  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00a4ef51  2b4f10  SUB ECX,dword ptr [EDI + 0x10]
00a4ef54  b867666666  MOV EAX,0x66666667
00a4ef59  f7e9  IMUL ECX
00a4ef5b  c1fa03  SAR EDX,0x3
00a4ef5e  33f6  XOR ESI,ESI
00a4ef60  8bc2  MOV EAX,EDX
00a4ef62  c1e81f  SHR EAX,0x1f
00a4ef65  03c2  ADD EAX,EDX
00a4ef67  89742414  MOV dword ptr [ESP + 0x14],ESI
00a4ef6b  89742418  MOV dword ptr [ESP + 0x18],ESI
00a4ef6f  8974241c  MOV dword ptr [ESP + 0x1c],ESI
00a4ef73  c7442420a0050601  MOV dword ptr [ESP + 0x20],0x10605a0
00a4ef7b  7451  JZ 0x00a4efce
00a4ef7d  55  PUSH EBP
00a4ef7e  8be8  MOV EBP,EAX
00a4ef80  8b5710  MOV EDX,dword ptr [EDI + 0x10]
00a4ef83  8d4c2418  LEA ECX,[ESP + 0x18]
00a4ef87  51  PUSH ECX
00a4ef88  03d6  ADD EDX,ESI
00a4ef8a  52  PUSH EDX
00a4ef8b  8d4c2418  LEA ECX,[ESP + 0x18]
00a4ef8f  e8bce5ffff  CALL 0x00a4d550
00a4ef94  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a4ef98  39442418  CMP dword ptr [ESP + 0x18],EAX
00a4ef9c  7519  JNZ 0x00a4efb7
00a4ef9e  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00a4efa1  8b543104  MOV EDX,dword ptr [ECX + ESI*0x1 + 0x4]
00a4efa5  3b543108  CMP EDX,dword ptr [ECX + ESI*0x1 + 0x8]
00a4efa9  8d443104  LEA EAX,[ECX + ESI*0x1 + 0x4]
00a4efad  7414  JZ 0x00a4efc3
00a4efaf  66837c242c00  CMP word ptr [ESP + 0x2c],0x0
00a4efb5  740c  JZ 0x00a4efc3
00a4efb7  8d442418  LEA EAX,[ESP + 0x18]
00a4efbb  50  PUSH EAX
00a4efbc  8bcb  MOV ECX,EBX
00a4efbe  e87df7ffff  CALL 0x00a4e740
00a4efc3  83c614  ADD ESI,0x14
00a4efc6  83ed01  SUB EBP,0x1
00a4efc9  75b5  JNZ 0x00a4ef80
00a4efcb  33f6  XOR ESI,ESI
00a4efcd  5d  POP EBP
00a4efce  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00a4efd2  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a4efd6  51  PUSH ECX
00a4efd7  52  PUSH EDX
00a4efd8  8d4c241c  LEA ECX,[ESP + 0x1c]
00a4efdc  e80f91ffff  CALL 0x00a480f0
00a4efe1  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00a4efe5  5f  POP EDI
00a4efe6  3bc6  CMP EAX,ESI
00a4efe8  5e  POP ESI
00a4efe9  5b  POP EBX
00a4efea  7409  JZ 0x00a4eff5
00a4efec  50  PUSH EAX
00a4efed  e8ee54a9ff  CALL 0x004e44e0
00a4eff2  83c404  ADD ESP,0x4
00a4eff5  83c424  ADD ESP,0x24
00a4eff8  c20400  RET 0x4

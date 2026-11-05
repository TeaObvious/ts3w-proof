# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ByteBlockGrid_ReadResourceHeader
Paired actual annotated Ghidra pseudocode: 00AEEF60_ByteBlockGrid_ReadResourceHeader.c
Owned ranges: [[00aeef60, 00aef074]]
Envelope bytes=277

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aeef60  83ec14  SUB ESP,0x14
00aeef63  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00aeef67  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00aeef6b  56  PUSH ESI
00aeef6c  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00aeef70  837e0400  CMP dword ptr [ESI + 0x4],0x0
00aeef74  57  PUSH EDI
00aeef75  8bf9  MOV EDI,ECX
00aeef77  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00aeef7b  8944240c  MOV dword ptr [ESP + 0xc],EAX
00aeef7f  894c2410  MOV dword ptr [ESP + 0x10],ECX
00aeef83  c74424147e84dc06  MOV dword ptr [ESP + 0x14],0x6dc847e
00aeef8b  89542418  MOV dword ptr [ESP + 0x18],EDX
00aeef8f  7516  JNZ 0x00aeefa7
00aeef91  6a00  PUSH 0x0
00aeef93  8d442410  LEA EAX,[ESP + 0x10]
00aeef97  50  PUSH EAX
00aeef98  8bce  MOV ECX,ESI
00aeef9a  e82195ceff  CALL 0x007d84c0
00aeef9f  84c0  TEST AL,AL
00aeefa1  0f84c3000000  JZ 0x00aef06a
00aeefa7  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeefaa  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aeefad  51  PUSH ECX
00aeefae  8d54240c  LEA EDX,[ESP + 0xc]
00aeefb2  52  PUSH EDX
00aeefb3  50  PUSH EAX
00aeefb4  e8c7e99eff  CALL 0x004dd980
00aeefb9  83c40c  ADD ESP,0xc
00aeefbc  8bce  MOV ECX,ESI
00aeefbe  50  PUSH EAX
00aeefbf  e82c8aceff  CALL 0x007d79f0
00aeefc4  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeefc7  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aeefca  51  PUSH ECX
00aeefcb  8d542424  LEA EDX,[ESP + 0x24]
00aeefcf  52  PUSH EDX
00aeefd0  50  PUSH EAX
00aeefd1  e8aae99eff  CALL 0x004dd980
00aeefd6  83c40c  ADD ESP,0xc
00aeefd9  8bce  MOV ECX,ESI
00aeefdb  50  PUSH EAX
00aeefdc  e80f8aceff  CALL 0x007d79f0
00aeefe1  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeefe4  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aeefe7  51  PUSH ECX
00aeefe8  8d542428  LEA EDX,[ESP + 0x28]
00aeefec  52  PUSH EDX
00aeefed  50  PUSH EAX
00aeefee  e88de99eff  CALL 0x004dd980
00aeeff3  83c40c  ADD ESP,0xc
00aeeff6  8bce  MOV ECX,ESI
00aeeff8  50  PUSH EAX
00aeeff9  e8f289ceff  CALL 0x007d79f0
00aeeffe  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00aef002  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00aef006  51  PUSH ECX
00aef007  52  PUSH EDX
00aef008  8bcf  MOV ECX,EDI
00aef00a  e831f7ffff  CALL 0x00aee740
00aef00f  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aef012  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aef015  50  PUSH EAX
00aef016  8d4c242c  LEA ECX,[ESP + 0x2c]
00aef01a  51  PUSH ECX
00aef01b  52  PUSH EDX
00aef01c  e85fe99eff  CALL 0x004dd980
00aef021  83c40c  ADD ESP,0xc
00aef024  8bce  MOV ECX,ESI
00aef026  50  PUSH EAX
00aef027  e8c489ceff  CALL 0x007d79f0
00aef02c  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00aef030  50  PUSH EAX
00aef031  8d4f20  LEA ECX,[EDI + 0x20]
00aef034  e8e73d92ff  CALL 0x00412e20
00aef039  8b4f30  MOV ECX,dword ptr [EDI + 0x30]
00aef03c  8b4734  MOV EAX,dword ptr [EDI + 0x34]
00aef03f  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aef042  2bc1  SUB EAX,ECX
00aef044  52  PUSH EDX
00aef045  d1f8  SAR EAX,0x1
00aef047  50  PUSH EAX
00aef048  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aef04b  51  PUSH ECX
00aef04c  50  PUSH EAX
00aef04d  e8cee89eff  CALL 0x004dd920
00aef052  83c410  ADD ESP,0x10
00aef055  8bce  MOV ECX,ESI
00aef057  50  PUSH EAX
00aef058  e89389ceff  CALL 0x007d79f0
00aef05d  807e1400  CMP byte ptr [ESI + 0x14],0x0
00aef061  7507  JNZ 0x00aef06a
00aef063  8bce  MOV ECX,ESI
00aef065  e8068aceff  CALL 0x007d7a70
00aef06a  8a4614  MOV AL,byte ptr [ESI + 0x14]
00aef06d  5f  POP EDI
00aef06e  5e  POP ESI
00aef06f  83c414  ADD ESP,0x14
00aef072  c21000  RET 0x10
Owned instructions=99 owned bytes=277 gap/nonowned bytes=0

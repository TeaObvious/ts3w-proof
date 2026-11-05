# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotGrid_ReadHeaderResource(void * this, pointer context, uint group, ulonglong lotId)
Owned ranges: [[00c6d950, 00c6da59]]

00c6d950  83ec18  SUB ESP,0x18
00c6d953  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00c6d957  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00c6d95b  56  PUSH ESI
00c6d95c  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00c6d960  837e0400  CMP dword ptr [ESI + 0x4],0x0
00c6d964  57  PUSH EDI
00c6d965  8bf9  MOV EDI,ECX
00c6d967  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00c6d96b  89442410  MOV dword ptr [ESP + 0x10],EAX
00c6d96f  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c6d973  c74424183a5325b1  MOV dword ptr [ESP + 0x18],0xb125533a
00c6d97b  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00c6d97f  7516  JNZ 0x00c6d997
00c6d981  6a00  PUSH 0x0
00c6d983  8d442414  LEA EAX,[ESP + 0x14]
00c6d987  50  PUSH EAX
00c6d988  8bce  MOV ECX,ESI
00c6d98a  e831abb6ff  CALL 0x007d84c0
00c6d98f  84c0  TEST AL,AL
00c6d991  0f84b8000000  JZ 0x00c6da4f
00c6d997  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d99a  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c6d99d  53  PUSH EBX
00c6d99e  55  PUSH EBP
00c6d99f  51  PUSH ECX
00c6d9a0  8d542418  LEA EDX,[ESP + 0x18]
00c6d9a4  52  PUSH EDX
00c6d9a5  50  PUSH EAX
00c6d9a6  e8d5ff86ff  CALL 0x004dd980
00c6d9ab  83c40c  ADD ESP,0xc
00c6d9ae  8bce  MOV ECX,ESI
00c6d9b0  50  PUSH EAX
00c6d9b1  e83aa0b6ff  CALL 0x007d79f0
00c6d9b6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d9b9  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c6d9bc  51  PUSH ECX
00c6d9bd  8d542434  LEA EDX,[ESP + 0x34]
00c6d9c1  52  PUSH EDX
00c6d9c2  50  PUSH EAX
00c6d9c3  e8b8ff86ff  CALL 0x004dd980
00c6d9c8  83c40c  ADD ESP,0xc
00c6d9cb  8bce  MOV ECX,ESI
00c6d9cd  50  PUSH EAX
00c6d9ce  e81da0b6ff  CALL 0x007d79f0
00c6d9d3  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d9d6  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c6d9d9  51  PUSH ECX
00c6d9da  8d542438  LEA EDX,[ESP + 0x38]
00c6d9de  52  PUSH EDX
00c6d9df  50  PUSH EAX
00c6d9e0  e89bff86ff  CALL 0x004dd980
00c6d9e5  83c40c  ADD ESP,0xc
00c6d9e8  8bce  MOV ECX,ESI
00c6d9ea  50  PUSH EAX
00c6d9eb  e800a0b6ff  CALL 0x007d79f0
00c6d9f0  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d9f3  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c6d9f6  51  PUSH ECX
00c6d9f7  8d542430  LEA EDX,[ESP + 0x30]
00c6d9fb  52  PUSH EDX
00c6d9fc  50  PUSH EAX
00c6d9fd  e87eff86ff  CALL 0x004dd980
00c6da02  83c40c  ADD ESP,0xc
00c6da05  8bce  MOV ECX,ESI
00c6da07  50  PUSH EAX
00c6da08  e8e39fb6ff  CALL 0x007d79f0
00c6da0d  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c6da11  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c6da15  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00c6da19  8bd8  MOV EBX,EAX
00c6da1b  0fafc1  IMUL EAX,ECX
00c6da1e  0faf442430  IMUL EAX,dword ptr [ESP + 0x30]
00c6da23  89542410  MOV dword ptr [ESP + 0x10],EDX
00c6da27  8b17  MOV EDX,dword ptr [EDI]
00c6da29  8be9  MOV EBP,ECX
00c6da2b  50  PUSH EAX
00c6da2c  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00c6da2f  8bcf  MOV ECX,EDI
00c6da31  ffd0  CALL EAX
00c6da33  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c6da37  896f08  MOV dword ptr [EDI + 0x8],EBP
00c6da3a  895f0c  MOV dword ptr [EDI + 0xc],EBX
00c6da3d  894f04  MOV dword ptr [EDI + 0x4],ECX
00c6da40  807e1400  CMP byte ptr [ESI + 0x14],0x0
00c6da44  5d  POP EBP
00c6da45  5b  POP EBX
00c6da46  7507  JNZ 0x00c6da4f
00c6da48  8bce  MOV ECX,ESI
00c6da4a  e821a0b6ff  CALL 0x007d7a70
00c6da4f  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c6da52  5f  POP EDI
00c6da53  5e  POP ESI
00c6da54  83c418  ADD ESP,0x18
00c6da57  c21000  RET 0x10

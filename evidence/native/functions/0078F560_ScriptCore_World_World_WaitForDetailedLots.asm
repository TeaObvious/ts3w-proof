# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[0078f560, 0078f668]]
Actual pseudocode: 0078F560_ScriptCore_World_World_WaitForDetailedLots.c
; Actual plate: Verified PC 1.67 registration table at 0x01163c30 (TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3). ScriptCore.World::World_WaitForDetailedLots [assembly=ScriptCore token=0x06000881; callback: System.Delegate, lotId: System.UInt64, maskFlags: System.UInt32; return=System.Void] The table establishes entry identity only. Parameter types/names come from pristine managed metadata; calling convention, argument stack use, returns and side effects require instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

0078f560  83ec20  SUB ESP,0x20
0078f563  53  PUSH EBX
0078f564  55  PUSH EBP
0078f565  56  PUSH ESI
0078f566  57  PUSH EDI
0078f567  e8249efdff  CALL 0x00769390
0078f56c  8bf0  MOV ESI,EAX
0078f56e  8b06  MOV EAX,dword ptr [ESI]
0078f570  8b9018010000  MOV EDX,dword ptr [EAX + 0x118]
0078f576  8bce  MOV ECX,ESI
0078f578  ffd2  CALL EDX
0078f57a  6a00  PUSH 0x0
0078f57c  6a00  PUSH 0x0
0078f57e  6a00  PUSH 0x0
0078f580  6a00  PUSH 0x0
0078f582  688c1a0101  PUSH 0x1011a8c
0078f587  6a28  PUSH 0x28
0078f589  8be8  MOV EBP,EAX
0078f58b  8bda  MOV EBX,EDX
0078f58d  e86e4fd5ff  CALL 0x004e4500
0078f592  83c418  ADD ESP,0x18
0078f595  85c0  TEST EAX,EAX
0078f597  747c  JZ 0x0078f615
0078f599  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
0078f59d  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
0078f5a1  51  PUSH ECX
0078f5a2  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
0078f5a6  52  PUSH EDX
0078f5a7  51  PUSH ECX
0078f5a8  53  PUSH EBX
0078f5a9  55  PUSH EBP
0078f5aa  8bc8  MOV ECX,EAX
0078f5ac  e8ef9effff  CALL 0x007894a0
0078f5b1  8bf8  MOV EDI,EAX
0078f5b3  85ff  TEST EDI,EDI
0078f5b5  745e  JZ 0x0078f615
0078f5b7  8b17  MOV EDX,dword ptr [EDI]
0078f5b9  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0078f5bc  8bcf  MOV ECX,EDI
0078f5be  ffd0  CALL EAX
0078f5c0  e8db9dfdff  CALL 0x007693a0
0078f5c5  85c0  TEST EAX,EAX
0078f5c7  7418  JZ 0x0078f5e1
0078f5c9  8b10  MOV EDX,dword ptr [EAX]
0078f5cb  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
0078f5ce  8d4f0c  LEA ECX,[EDI + 0xc]
0078f5d1  51  PUSH ECX
0078f5d2  6a00  PUSH 0x0
0078f5d4  8d4f08  LEA ECX,[EDI + 0x8]
0078f5d7  51  PUSH ECX
0078f5d8  68c720af55  PUSH 0x55af20c7
0078f5dd  8bc8  MOV ECX,EAX
0078f5df  ffd2  CALL EDX
0078f5e1  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
0078f5e5  8b06  MOV EAX,dword ptr [ESI]
0078f5e7  8b9020010000  MOV EDX,dword ptr [EAX + 0x120]
0078f5ed  6a00  PUSH 0x0
0078f5ef  51  PUSH ECX
0078f5f0  6aff  PUSH -0x1
0078f5f2  53  PUSH EBX
0078f5f3  55  PUSH EBP
0078f5f4  8bce  MOV ECX,ESI
0078f5f6  ffd2  CALL EDX
0078f5f8  8b06  MOV EAX,dword ptr [ESI]
0078f5fa  8b901c010000  MOV EDX,dword ptr [EAX + 0x11c]
0078f600  8bce  MOV ECX,ESI
0078f602  ffd2  CALL EDX
0078f604  8b07  MOV EAX,dword ptr [EDI]
0078f606  8b5008  MOV EDX,dword ptr [EAX + 0x8]
0078f609  8bcf  MOV ECX,EDI
0078f60b  ffd2  CALL EDX
0078f60d  5f  POP EDI
0078f60e  5e  POP ESI
0078f60f  5d  POP EBP
0078f610  5b  POP EBX
0078f611  83c420  ADD ESP,0x20
0078f614  c3  RET
0078f615  8b542434  MOV EDX,dword ptr [ESP + 0x34]
0078f619  6a00  PUSH 0x0
0078f61b  8d4c2414  LEA ECX,[ESP + 0x14]
0078f61f  51  PUSH ECX
0078f620  53  PUSH EBX
0078f621  bff4a6fb00  MOV EDI,0xfba6f4
0078f626  897c241c  MOV dword ptr [ESP + 0x1c],EDI
0078f62a  c644242c00  MOV byte ptr [ESP + 0x2c],0x0
0078f62f  66c74424260100  MOV word ptr [ESP + 0x26],0x1
0078f636  66c74424240000  MOV word ptr [ESP + 0x24],0x0
0078f63d  8b06  MOV EAX,dword ptr [ESI]
0078f63f  8b8030010000  MOV EAX,dword ptr [EAX + 0x130]
0078f645  55  PUSH EBP
0078f646  52  PUSH EDX
0078f647  8bce  MOV ECX,ESI
0078f649  ffd0  CALL EAX
0078f64b  f644241804  TEST byte ptr [ESP + 0x18],0x4
0078f650  897c2410  MOV dword ptr [ESP + 0x10],EDI
0078f654  740b  JZ 0x0078f661
0078f656  6a00  PUSH 0x0
0078f658  8d4c2414  LEA ECX,[ESP + 0x14]
0078f65c  e8ff60d6ff  CALL 0x004f5760
0078f661  5f  POP EDI
0078f662  5e  POP ESI
0078f663  5d  POP EBP
0078f664  5b  POP EBX
0078f665  83c420  ADD ESP,0x20
0078f668  c3  RET

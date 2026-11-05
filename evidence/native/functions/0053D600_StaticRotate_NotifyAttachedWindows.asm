# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D600_StaticRotate_NotifyAttachedWindows.c
Owned ranges: [[0053d600, 0053d62e]]

0053d600  56  PUSH ESI
0053d601  8b712c  MOV ESI,dword ptr [ECX + 0x2c]
0053d604  57  PUSH EDI
0053d605  8d7928  LEA EDI,[ECX + 0x28]
0053d608  3bf7  CMP ESI,EDI
0053d60a  7420  JZ 0x0053d62c
0053d60c  8d642400  LEA ESP,[ESP]
0053d610  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0053d613  8b01  MOV EAX,dword ptr [ECX]
0053d615  8b9098000000  MOV EDX,dword ptr [EAX + 0x98]
0053d61b  ffd2  CALL EDX
0053d61d  56  PUSH ESI
0053d61e  e80d3afaff  CALL 0x004e1030
0053d623  8bf0  MOV ESI,EAX
0053d625  83c404  ADD ESP,0x4
0053d628  3bf7  CMP ESI,EDI
0053d62a  75e4  JNZ 0x0053d610
0053d62c  5f  POP EDI
0053d62d  5e  POP ESI
0053d62e  c3  RET

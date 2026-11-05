# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053D7C0_StaticRotate_DetachWindow.c
Owned ranges: [[0053d7c0, 0053d802]]

0053d7c0  51  PUSH ECX
0053d7c1  56  PUSH ESI
0053d7c2  8bf1  MOV ESI,ECX
0053d7c4  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0053d7c8  8b01  MOV EAX,dword ptr [ECX]
0053d7ca  8b9098000000  MOV EDX,dword ptr [EAX + 0x98]
0053d7d0  ffd2  CALL EDX
0053d7d2  8d44240c  LEA EAX,[ESP + 0xc]
0053d7d6  50  PUSH EAX
0053d7d7  8d4c2408  LEA ECX,[ESP + 0x8]
0053d7db  83c624  ADD ESI,0x24
0053d7de  51  PUSH ECX
0053d7df  8bce  MOV ECX,ESI
0053d7e1  e80acf0800  CALL 0x005ca6f0
0053d7e6  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0053d7ea  8d5604  LEA EDX,[ESI + 0x4]
0053d7ed  3bc2  CMP EAX,EDX
0053d7ef  740d  JZ 0x0053d7fe
0053d7f1  50  PUSH EAX
0053d7f2  8d442410  LEA EAX,[ESP + 0x10]
0053d7f6  50  PUSH EAX
0053d7f7  8bce  MOV ECX,ESI
0053d7f9  e852ffffff  CALL 0x0053d750
0053d7fe  5e  POP ESI
0053d7ff  59  POP ECX
0053d800  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0053DAD0_StaticRotate_AttachWindow.c
Owned ranges: [[0053dad0, 0053db00]]

0053dad0  83ec08  SUB ESP,0x8
0053dad3  c6042400  MOV byte ptr [ESP],0x0
0053dad7  8b0424  MOV EAX,dword ptr [ESP]
0053dada  50  PUSH EAX
0053dadb  8d542410  LEA EDX,[ESP + 0x10]
0053dadf  52  PUSH EDX
0053dae0  8d442408  LEA EAX,[ESP + 0x8]
0053dae4  50  PUSH EAX
0053dae5  83c124  ADD ECX,0x24
0053dae8  e863feffff  CALL 0x0053d950
0053daed  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0053daf1  8b11  MOV EDX,dword ptr [ECX]
0053daf3  8b8298000000  MOV EAX,dword ptr [EDX + 0x98]
0053daf9  ffd0  CALL EAX
0053dafb  83c408  ADD ESP,0x8
0053dafe  c20400  RET 0x4

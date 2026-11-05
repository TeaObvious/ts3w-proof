# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[0078ecb0, 0078ed16]]
Actual pseudocode: 0078ECB0_FUN_0078ecb0.c

0078ecb0  83ec20  SUB ESP,0x20
0078ecb3  56  PUSH ESI
0078ecb4  8bf1  MOV ESI,ECX
0078ecb6  e8d5a6fdff  CALL 0x00769390
0078ecbb  85c0  TEST EAX,EAX
0078ecbd  7451  JZ 0x0078ed10
0078ecbf  8a4c2428  MOV CL,byte ptr [ESP + 0x28]
0078ecc3  8b10  MOV EDX,dword ptr [EAX]
0078ecc5  8b9224010000  MOV EDX,dword ptr [EDX + 0x124]
0078eccb  884c2414  MOV byte ptr [ESP + 0x14],CL
0078eccf  8d4c2404  LEA ECX,[ESP + 0x4]
0078ecd3  51  PUSH ECX
0078ecd4  8b4e14  MOV ECX,dword ptr [ESI + 0x14]
0078ecd7  51  PUSH ECX
0078ecd8  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0078ecdb  51  PUSH ECX
0078ecdc  8bc8  MOV ECX,EAX
0078ecde  c7442410f4a6fb00  MOV dword ptr [ESP + 0x10],0xfba6f4
0078ece6  66c744241a0100  MOV word ptr [ESP + 0x1a],0x1
0078eced  66c74424180000  MOV word ptr [ESP + 0x18],0x0
0078ecf4  ffd2  CALL EDX
0078ecf6  f644240c04  TEST byte ptr [ESP + 0xc],0x4
0078ecfb  c7442404f4a6fb00  MOV dword ptr [ESP + 0x4],0xfba6f4
0078ed03  740b  JZ 0x0078ed10
0078ed05  6a00  PUSH 0x0
0078ed07  8d4c2408  LEA ECX,[ESP + 0x8]
0078ed0b  e8506ad6ff  CALL 0x004f5760
0078ed10  5e  POP ESI
0078ed11  83c420  ADD ESP,0x20
0078ed14  c20400  RET 0x4

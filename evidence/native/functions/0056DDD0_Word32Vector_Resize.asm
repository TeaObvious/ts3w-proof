# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void Word32Vector_Resize(void * this, uint elementCount)
Owned ranges: [[0056ddd0, 0056de2d]]

0056ddd0  56  PUSH ESI
0056ddd1  57  PUSH EDI
0056ddd2  8bf9  MOV EDI,ECX
0056ddd4  8b7704  MOV ESI,dword ptr [EDI + 0x4]
0056ddd7  8b17  MOV EDX,dword ptr [EDI]
0056ddd9  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0056dddd  8bc6  MOV EAX,ESI
0056dddf  2bc2  SUB EAX,EDX
0056dde1  c1f802  SAR EAX,0x2
0056dde4  3bc8  CMP ECX,EAX
0056dde6  761e  JBE 0x0056de06
0056dde8  0f57c0  XORPS XMM0,XMM0
0056ddeb  8d54240c  LEA EDX,[ESP + 0xc]
0056ddef  52  PUSH EDX
0056ddf0  2bc8  SUB ECX,EAX
0056ddf2  51  PUSH ECX
0056ddf3  56  PUSH ESI
0056ddf4  8bcf  MOV ECX,EDI
0056ddf6  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
0056ddfc  e81ffdffff  CALL 0x0056db20
0056de01  5f  POP EDI
0056de02  5e  POP ESI
0056de03  c20400  RET 0x4
0056de06  53  PUSH EBX
0056de07  8bc6  MOV EAX,ESI
0056de09  2bc6  SUB EAX,ESI
0056de0b  50  PUSH EAX
0056de0c  8d1c8a  LEA EBX,[EDX + ECX*0x4]
0056de0f  56  PUSH ESI
0056de10  53  PUSH EBX
0056de11  ff158866f900  CALL dword ptr [0x00f96688]
0056de17  2bf3  SUB ESI,EBX
0056de19  c1fe02  SAR ESI,0x2
0056de1c  f7de  NEG ESI
0056de1e  83c40c  ADD ESP,0xc
0056de21  03f6  ADD ESI,ESI
0056de23  03f6  ADD ESI,ESI
0056de25  017704  ADD dword ptr [EDI + 0x4],ESI
0056de28  5b  POP EBX
0056de29  5f  POP EDI
0056de2a  5e  POP ESI
0056de2b  c20400  RET 0x4

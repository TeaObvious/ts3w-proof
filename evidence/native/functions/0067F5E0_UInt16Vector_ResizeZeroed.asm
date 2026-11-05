# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void UInt16Vector_ResizeZeroed(void * this, uint elementCount)
Owned ranges: [[0067f5e0, 0067f638]]

0067f5e0  56  PUSH ESI
0067f5e1  57  PUSH EDI
0067f5e2  8bf9  MOV EDI,ECX
0067f5e4  8b7704  MOV ESI,dword ptr [EDI + 0x4]
0067f5e7  8b17  MOV EDX,dword ptr [EDI]
0067f5e9  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0067f5ed  8bc6  MOV EAX,ESI
0067f5ef  2bc2  SUB EAX,EDX
0067f5f1  d1f8  SAR EAX,0x1
0067f5f3  3bc8  CMP ECX,EAX
0067f5f5  761d  JBE 0x0067f614
0067f5f7  8d54240c  LEA EDX,[ESP + 0xc]
0067f5fb  52  PUSH EDX
0067f5fc  2bc8  SUB ECX,EAX
0067f5fe  51  PUSH ECX
0067f5ff  56  PUSH ESI
0067f600  8bcf  MOV ECX,EDI
0067f602  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
0067f60a  e831fbffff  CALL 0x0067f140
0067f60f  5f  POP EDI
0067f610  5e  POP ESI
0067f611  c20400  RET 0x4
0067f614  53  PUSH EBX
0067f615  8bc6  MOV EAX,ESI
0067f617  2bc6  SUB EAX,ESI
0067f619  50  PUSH EAX
0067f61a  8d1c4a  LEA EBX,[EDX + ECX*0x2]
0067f61d  56  PUSH ESI
0067f61e  53  PUSH EBX
0067f61f  ff158866f900  CALL dword ptr [0x00f96688]
0067f625  2bf3  SUB ESI,EBX
0067f627  d1fe  SAR ESI,0x1
0067f629  83c40c  ADD ESP,0xc
0067f62c  f7de  NEG ESI
0067f62e  03f6  ADD ESI,ESI
0067f630  017704  ADD dword ptr [EDI + 0x4],ESI
0067f633  5b  POP EBX
0067f634  5f  POP EDI
0067f635  5e  POP ESI
0067f636  c20400  RET 0x4

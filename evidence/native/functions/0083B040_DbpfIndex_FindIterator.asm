# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[0083b040, 0083b0ab]]
Signature: undefined DbpfIndex_FindIterator(void * this, undefined4 * param_1, uint * param_2)

0083b040  83ec08  SUB ESP,0x8
0083b043  53  PUSH EBX
0083b044  8b5908  MOV EBX,dword ptr [ECX + 0x8]
0083b047  55  PUSH EBP
0083b048  56  PUSH ESI
0083b049  57  PUSH EDI
0083b04a  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
0083b04e  8b770c  MOV ESI,dword ptr [EDI + 0xc]
0083b051  3337  XOR ESI,dword ptr [EDI]
0083b053  33d2  XOR EDX,EDX
0083b055  8bc6  MOV EAX,ESI
0083b057  f7f3  DIV EBX
0083b059  8b6904  MOV EBP,dword ptr [ECX + 0x4]
0083b05c  56  PUSH ESI
0083b05d  57  PUSH EDI
0083b05e  8d449500  LEA EAX,[EBP + EDX*0x4]
0083b062  89442428  MOV dword ptr [ESP + 0x28],EAX
0083b066  8b00  MOV EAX,dword ptr [EAX]
0083b068  50  PUSH EAX
0083b069  e8e2afdaff  CALL 0x005e6050
0083b06e  85c0  TEST EAX,EAX
0083b070  740e  JZ 0x0083b080
0083b072  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
0083b076  89442410  MOV dword ptr [ESP + 0x10],EAX
0083b07a  894c2414  MOV dword ptr [ESP + 0x14],ECX
0083b07e  eb10  JMP 0x0083b090
0083b080  8b549d00  MOV EDX,dword ptr [EBP + EBX*0x4]
0083b084  8d449d00  LEA EAX,[EBP + EBX*0x4]
0083b088  89542410  MOV dword ptr [ESP + 0x10],EDX
0083b08c  89442414  MOV dword ptr [ESP + 0x14],EAX
0083b090  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
0083b094  5f  POP EDI
0083b095  8d4c240c  LEA ECX,[ESP + 0xc]
0083b099  8b11  MOV EDX,dword ptr [ECX]
0083b09b  8b4904  MOV ECX,dword ptr [ECX + 0x4]
0083b09e  5e  POP ESI
0083b09f  5d  POP EBP
0083b0a0  8910  MOV dword ptr [EAX],EDX
0083b0a2  894804  MOV dword ptr [EAX + 0x4],ECX
0083b0a5  5b  POP EBX
0083b0a6  83c408  ADD ESP,0x8
0083b0a9  c20800  RET 0x8

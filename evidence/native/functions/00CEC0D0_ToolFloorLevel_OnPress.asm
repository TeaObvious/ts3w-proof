# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ToolFloorLevel_OnPress(void * this, uint pressWord)
Owned ranges: [[00cec0d0, 00cec1b3]]

00cec0d0  56  PUSH ESI
00cec0d1  8bf1  MOV ESI,ECX
00cec0d3  807e5c00  CMP byte ptr [ESI + 0x5c],0x0
00cec0d7  0f85d1000000  JNZ 0x00cec1ae
00cec0dd  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00cec0e1  50  PUSH EAX
00cec0e2  e8496cfeff  CALL 0x00cd2d30
00cec0e7  84c0  TEST AL,AL
00cec0e9  7504  JNZ 0x00cec0ef
00cec0eb  5e  POP ESI
00cec0ec  c20400  RET 0x4
00cec0ef  807e1c00  CMP byte ptr [ESI + 0x1c],0x0
00cec0f3  740a  JZ 0x00cec0ff
00cec0f5  0f57c0  XORPS XMM0,XMM0
00cec0f8  f30f11466c  MOVSS dword ptr [ESI + 0x6c],XMM0
00cec0fd  eb21  JMP 0x00cec120
00cec0ff  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cec105  85c9  TEST ECX,ECX
00cec107  7417  JZ 0x00cec120
00cec109  6a01  PUSH 0x1
00cec10b  e8c031faff  CALL 0x00c8f2d0
00cec110  85c0  TEST EAX,EAX
00cec112  740c  JZ 0x00cec120
00cec114  50  PUSH EAX
00cec115  e8e6e70200  CALL 0x00d1a900
00cec11a  d95e6c  FSTP float ptr [ESI + 0x6c]
00cec11d  83c404  ADD ESP,0x4
00cec120  6a00  PUSH 0x0
00cec122  6a00  PUSH 0x0
00cec124  6a00  PUSH 0x0
00cec126  6a00  PUSH 0x0
00cec128  68902d0801  PUSH 0x1082d90
00cec12d  68b0000000  PUSH 0xb0
00cec132  e8c9837fff  CALL 0x004e4500
00cec137  83c418  ADD ESP,0x18
00cec13a  85c0  TEST EAX,EAX
00cec13c  740d  JZ 0x00cec14b
00cec13e  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cec141  51  PUSH ECX
00cec142  8bc8  MOV ECX,EAX
00cec144  e8c7560300  CALL 0x00d21810
00cec149  eb02  JMP 0x00cec14d
00cec14b  33c0  XOR EAX,EAX
00cec14d  57  PUSH EDI
00cec14e  8dbe80000000  LEA EDI,[ESI + 0x80]
00cec154  50  PUSH EAX
00cec155  8bcf  MOV ECX,EDI
00cec157  e834a487ff  CALL 0x00566590
00cec15c  8b0f  MOV ECX,dword ptr [EDI]
00cec15e  8b11  MOV EDX,dword ptr [ECX]
00cec160  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00cec163  ffd0  CALL EAX
00cec165  68fc2c0801  PUSH 0x1082cfc
00cec16a  8bce  MOV ECX,ESI
00cec16c  e89f1c0000  CALL 0x00cede10
00cec171  8b0d64451801  MOV ECX,dword ptr [0x01184564]
00cec177  32d2  XOR DL,DL
00cec179  d2e2  SHL DL,CL
00cec17b  8b0d60451801  MOV ECX,dword ptr [0x01184560]
00cec181  32c0  XOR AL,AL
00cec183  d2e0  SHL AL,CL
00cec185  8b0d5c451801  MOV ECX,dword ptr [0x0118455c]
00cec18b  0ad0  OR DL,AL
00cec18d  32c0  XOR AL,AL
00cec18f  d2e0  SHL AL,CL
00cec191  8b0d58451801  MOV ECX,dword ptr [0x01184558]
00cec197  0ad0  OR DL,AL
00cec199  32c0  XOR AL,AL
00cec19b  d2e0  SHL AL,CL
00cec19d  8bce  MOV ECX,ESI
00cec19f  0ad0  OR DL,AL
00cec1a1  885670  MOV byte ptr [ESI + 0x70],DL
00cec1a4  e8071a0000  CALL 0x00cedbb0
00cec1a9  c6465c01  MOV byte ptr [ESI + 0x5c],0x1
00cec1ad  5f  POP EDI
00cec1ae  b001  MOV AL,0x1
00cec1b0  5e  POP ESI
00cec1b1  c20400  RET 0x4

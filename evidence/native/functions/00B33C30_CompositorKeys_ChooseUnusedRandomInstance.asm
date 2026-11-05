# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: CompositorKeys_ChooseUnusedRandomInstance
Paired actual annotated Ghidra pseudocode: 00B33C30_CompositorKeys_ChooseUnusedRandomInstance.c
Owned ranges: [[00b33c30, 00b33cf1]]
Envelope bytes=194

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b33c30  83ec14  SUB ESP,0x14
00b33c33  53  PUSH EBX
00b33c34  55  PUSH EBP
00b33c35  56  PUSH ESI
00b33c36  57  PUSH EDI
00b33c37  894c2410  MOV dword ptr [ESP + 0x10],ECX
00b33c3b  e840c297ff  CALL 0x004afe80
00b33c40  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00b33c44  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
00b33c48  8bd8  MOV EBX,EAX
00b33c4a  33c0  XOR EAX,EAX
00b33c4c  8906  MOV dword ptr [ESI],EAX
00b33c4e  894604  MOV dword ptr [ESI + 0x4],EAX
00b33c51  894e08  MOV dword ptr [ESI + 0x8],ECX
00b33c54  89460c  MOV dword ptr [ESI + 0xc],EAX
00b33c57  c7442428e8030000  MOV dword ptr [ESP + 0x28],0x3e8
00b33c5f  90  NOP
00b33c60  837c242800  CMP dword ptr [ESP + 0x28],0x0
00b33c65  747f  JZ 0x00b33ce6
00b33c67  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00b33c6b  83c758  ADD EDI,0x58
00b33c6e  8bcf  MOV ECX,EDI
00b33c70  e89b6d9cff  CALL 0x004faa10
00b33c75  33d2  XOR EDX,EDX
00b33c77  b120  MOV CL,0x20
00b33c79  e822bd4400  CALL 0x00f7f9a0
00b33c7e  8bcf  MOV ECX,EDI
00b33c80  8be8  MOV EBP,EAX
00b33c82  89542418  MOV dword ptr [ESP + 0x18],EDX
00b33c86  e8856d9cff  CALL 0x004faa10
00b33c8b  33d2  XOR EDX,EDX
00b33c8d  0b542418  OR EDX,dword ptr [ESP + 0x18]
00b33c91  0bc5  OR EAX,EBP
00b33c93  895604  MOV dword ptr [ESI + 0x4],EDX
00b33c96  8906  MOV dword ptr [ESI],EAX
00b33c98  8b03  MOV EAX,dword ptr [EBX]
00b33c9a  8b5058  MOV EDX,dword ptr [EAX + 0x58]
00b33c9d  56  PUSH ESI
00b33c9e  8bcb  MOV ECX,EBX
00b33ca0  ffd2  CALL EDX
00b33ca2  85c0  TEST EAX,EAX
00b33ca4  7536  JNZ 0x00b33cdc
00b33ca6  8b03  MOV EAX,dword ptr [EBX]
00b33ca8  8b5044  MOV EDX,dword ptr [EAX + 0x44]
00b33cab  56  PUSH ESI
00b33cac  8bcb  MOV ECX,EBX
00b33cae  ffd2  CALL EDX
00b33cb0  85c0  TEST EAX,EAX
00b33cb2  7528  JNZ 0x00b33cdc
00b33cb4  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00b33cb8  8b8120010000  MOV EAX,dword ptr [ECX + 0x120]
00b33cbe  8b911c010000  MOV EDX,dword ptr [ECX + 0x11c]
00b33cc4  8b3c82  MOV EDI,dword ptr [EDX + EAX*0x4]
00b33cc7  81c118010000  ADD ECX,0x118
00b33ccd  56  PUSH ESI
00b33cce  8d442420  LEA EAX,[ESP + 0x20]
00b33cd2  50  PUSH EAX
00b33cd3  e8089dabff  CALL 0x005ed9e0
00b33cd8  3938  CMP dword ptr [EAX],EDI
00b33cda  740a  JZ 0x00b33ce6
00b33cdc  836c242801  SUB dword ptr [ESP + 0x28],0x1
00b33ce1  e97affffff  JMP 0x00b33c60
00b33ce6  5f  POP EDI
00b33ce7  8bc6  MOV EAX,ESI
00b33ce9  5e  POP ESI
00b33cea  5d  POP EBP
00b33ceb  5b  POP EBX
00b33cec  83c414  ADD ESP,0x14
00b33cef  c20800  RET 0x8
Owned instructions=69 owned bytes=194 gap/nonowned bytes=0

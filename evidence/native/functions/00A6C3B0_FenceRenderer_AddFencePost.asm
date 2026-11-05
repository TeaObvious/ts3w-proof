# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: FenceRenderer_AddFencePost
Paired actual annotated Ghidra pseudocode: 00A6C3B0_FenceRenderer_AddFencePost.c
Owned ranges: [[00a6c3b0, 00a6c46b]]
Envelope bytes=188

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00a6c3b0  83ec10  SUB ESP,0x10
00a6c3b3  53  PUSH EBX
00a6c3b4  55  PUSH EBP
00a6c3b5  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
00a6c3b9  56  PUSH ESI
00a6c3ba  57  PUSH EDI
00a6c3bb  33db  XOR EBX,EBX
00a6c3bd  6a01  PUSH 0x1
00a6c3bf  8bf9  MOV EDI,ECX
00a6c3c1  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a6c3c7  55  PUSH EBP
00a6c3c8  895c2418  MOV dword ptr [ESP + 0x18],EBX
00a6c3cc  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00a6c3d0  895c2420  MOV dword ptr [ESP + 0x20],EBX
00a6c3d4  895c2424  MOV dword ptr [ESP + 0x24],EBX
00a6c3d8  e883232200  CALL 0x00c8e760
00a6c3dd  8bf0  MOV ESI,EAX
00a6c3df  8bce  MOV ECX,ESI
00a6c3e1  e87a802200  CALL 0x00c94460
00a6c3e6  8b08  MOV ECX,dword ptr [EAX]
00a6c3e8  894c2410  MOV dword ptr [ESP + 0x10],ECX
00a6c3ec  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00a6c3ef  89542414  MOV dword ptr [ESP + 0x14],EDX
00a6c3f3  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00a6c3f6  3bcb  CMP ECX,EBX
00a6c3f8  894c2418  MOV dword ptr [ESP + 0x18],ECX
00a6c3fc  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00a6c3ff  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00a6c403  745d  JZ 0x00a6c462
00a6c405  399ee0000000  CMP dword ptr [ESI + 0xe0],EBX
00a6c40b  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a6c40f  0f95c1  SETNZ CL
00a6c412  884c2424  MOV byte ptr [ESP + 0x24],CL
00a6c416  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00a6c41a  52  PUSH EDX
00a6c41b  50  PUSH EAX
00a6c41c  8bce  MOV ECX,ESI
00a6c41e  e85d802200  CALL 0x00c94480
00a6c423  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a6c427  51  PUSH ECX
00a6c428  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00a6c42c  d91c24  FSTP float ptr [ESP]
00a6c42f  51  PUSH ECX
00a6c430  52  PUSH EDX
00a6c431  55  PUSH EBP
00a6c432  8d442428  LEA EAX,[ESP + 0x28]
00a6c436  50  PUSH EAX
00a6c437  8bcf  MOV ECX,EDI
00a6c439  e8d2f0ffff  CALL 0x00a6b510
00a6c43e  8b16  MOV EDX,dword ptr [ESI]
00a6c440  8b4224  MOV EAX,dword ptr [EDX + 0x24]
00a6c443  8bce  MOV ECX,ESI
00a6c445  ffd0  CALL EAX
00a6c447  84c0  TEST AL,AL
00a6c449  7517  JNZ 0x00a6c462
00a6c44b  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a6c44e  8b8954020000  MOV ECX,dword ptr [ECX + 0x254]
00a6c454  3bcb  CMP ECX,EBX
00a6c456  740a  JZ 0x00a6c462
00a6c458  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00a6c45c  52  PUSH EDX
00a6c45d  e83e900b00  CALL 0x00b254a0
00a6c462  5f  POP EDI
00a6c463  5e  POP ESI
00a6c464  5d  POP EBP
00a6c465  5b  POP EBX
00a6c466  83c410  ADD ESP,0x10
00a6c469  c21000  RET 0x10
Owned instructions=68 owned bytes=188 nonowned bytes=0

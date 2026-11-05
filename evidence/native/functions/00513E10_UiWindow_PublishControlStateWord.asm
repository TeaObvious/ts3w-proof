# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 00513E10_UiWindow_PublishControlStateWord.c
Owned ranges: [[00513e10, 00513e60]]

00513e10  83ec1c  SUB ESP,0x1c
00513e13  56  PUSH ESI
00513e14  8bf1  MOV ESI,ECX
00513e16  8b4674  MOV EAX,dword ptr [ESI + 0x74]
00513e19  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00513e1d  3bc8  CMP ECX,EAX
00513e1f  7439  JZ 0x00513e5a
00513e21  894e74  MOV dword ptr [ESI + 0x74],ECX
00513e24  894c2410  MOV dword ptr [ESP + 0x10],ECX
00513e28  89442414  MOV dword ptr [ESP + 0x14],EAX
00513e2c  8b06  MOV EAX,dword ptr [ESI]
00513e2e  8b9018010000  MOV EDX,dword ptr [EAX + 0x118]
00513e34  8d4c2404  LEA ECX,[ESP + 0x4]
00513e38  51  PUSH ECX
00513e39  8bce  MOV ECX,ESI
00513e3b  c744241012000000  MOV dword ptr [ESP + 0x10],0x12
00513e43  ffd2  CALL EDX
00513e45  83be0002000000  CMP dword ptr [ESI + 0x200],0x0
00513e4c  740c  JZ 0x00513e5a
00513e4e  8b06  MOV EAX,dword ptr [ESI]
00513e50  8b9090000000  MOV EDX,dword ptr [EAX + 0x90]
00513e56  8bce  MOV ECX,ESI
00513e58  ffd2  CALL EDX
00513e5a  5e  POP ESI
00513e5b  83c41c  ADD ESP,0x1c
00513e5e  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00549D80_UiLayout_ReleaseRootReferences.c
Owned ranges: [[00549d80, 00549dcb]]

00549d80  53  PUSH EBX
00549d81  56  PUSH ESI
00549d82  57  PUSH EDI
00549d83  8bf9  MOV EDI,ECX
00549d85  8b4f1c  MOV ECX,dword ptr [EDI + 0x1c]
00549d88  85c9  TEST ECX,ECX
00549d8a  7413  JZ 0x00549d9f
00549d8c  8b01  MOV EAX,dword ptr [ECX]
00549d8e  8b4014  MOV EAX,dword ptr [EAX + 0x14]
00549d91  57  PUSH EDI
00549d92  8d5708  LEA EDX,[EDI + 0x8]
00549d95  52  PUSH EDX
00549d96  ffd0  CALL EAX
00549d98  c7471c00000000  MOV dword ptr [EDI + 0x1c],0x0
00549d9f  8b17  MOV EDX,dword ptr [EDI]
00549da1  8b4210  MOV EAX,dword ptr [EDX + 0x10]
00549da4  8bcf  MOV ECX,EDI
00549da6  ffd0  CALL EAX
00549da8  8b5f68  MOV EBX,dword ptr [EDI + 0x68]
00549dab  8b7764  MOV ESI,dword ptr [EDI + 0x64]
00549dae  3bf3  CMP ESI,EBX
00549db0  7410  JZ 0x00549dc2
00549db2  8b0e  MOV ECX,dword ptr [ESI]
00549db4  8b11  MOV EDX,dword ptr [ECX]
00549db6  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00549db9  ffd0  CALL EAX
00549dbb  83c604  ADD ESI,0x4
00549dbe  3bf3  CMP ESI,EBX
00549dc0  75f0  JNZ 0x00549db2
00549dc2  8b4f64  MOV ECX,dword ptr [EDI + 0x64]
00549dc5  894f68  MOV dword ptr [EDI + 0x68],ECX
00549dc8  5f  POP EDI
00549dc9  5e  POP ESI
00549dca  5b  POP EBX
00549dcb  c3  RET

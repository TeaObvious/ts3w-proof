# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: float10 RoofManager_HighestHeightAtPoint(void * param_1, float param_2, undefined4 param_3)
Owned ranges: [[00b9a7a0, 00b9a829]]

00b9a7a0  83ec14  SUB ESP,0x14
00b9a7a3  0f57c0  XORPS XMM0,XMM0
00b9a7a6  53  PUSH EBX
00b9a7a7  56  PUSH ESI
00b9a7a8  57  PUSH EDI
00b9a7a9  8bf9  MOV EDI,ECX
00b9a7ab  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00b9a7ae  8b9880010000  MOV EBX,dword ptr [EAX + 0x180]
00b9a7b4  33f6  XOR ESI,ESI
00b9a7b6  85db  TEST EBX,EBX
00b9a7b8  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00b9a7be  7c5d  JL 0x00b9a81d
00b9a7c0  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00b9a7c6  6a01  PUSH 0x1
00b9a7c8  6a00  PUSH 0x0
00b9a7ca  8d4c241c  LEA ECX,[ESP + 0x1c]
00b9a7ce  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00b9a7d4  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00b9a7da  51  PUSH ECX
00b9a7db  8bcf  MOV ECX,EDI
00b9a7dd  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
00b9a7e3  89742428  MOV dword ptr [ESP + 0x28],ESI
00b9a7e7  e8c4a3ffff  CALL 0x00b94bb0
00b9a7ec  84c0  TEST AL,AL
00b9a7ee  7426  JZ 0x00b9a816
00b9a7f0  8d542410  LEA EDX,[ESP + 0x10]
00b9a7f4  52  PUSH EDX
00b9a7f5  6a00  PUSH 0x0
00b9a7f7  8d44241c  LEA EAX,[ESP + 0x1c]
00b9a7fb  50  PUSH EAX
00b9a7fc  8bcf  MOV ECX,EDI
00b9a7fe  e88df7ffff  CALL 0x00b99f90
00b9a803  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00b9a809  0f2f44240c  COMISS XMM0,dword ptr [ESP + 0xc]
00b9a80e  7606  JBE 0x00b9a816
00b9a810  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00b9a816  83c601  ADD ESI,0x1
00b9a819  3bf3  CMP ESI,EBX
00b9a81b  7ea3  JLE 0x00b9a7c0
00b9a81d  d944240c  FLD float ptr [ESP + 0xc]
00b9a821  5f  POP EDI
00b9a822  5e  POP ESI
00b9a823  5b  POP EBX
00b9a824  83c414  ADD ESP,0x14
00b9a827  c20800  RET 0x8

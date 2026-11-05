# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int * FUN_004b01c0(void * this, undefined4 param_1)
Owned ranges: [[004b01c0, 004b020a]]

004b01c0  53  PUSH EBX
004b01c1  8b99a4000000  MOV EBX,dword ptr [ECX + 0xa4]
004b01c7  56  PUSH ESI
004b01c8  8bb1a0000000  MOV ESI,dword ptr [ECX + 0xa0]
004b01ce  33c0  XOR EAX,EAX
004b01d0  3bf3  CMP ESI,EBX
004b01d2  7432  JZ 0x004b0206
004b01d4  55  PUSH EBP
004b01d5  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
004b01d9  57  PUSH EDI
004b01da  8d9b00000000  LEA EBX,[EBX]
004b01e0  8b3e  MOV EDI,dword ptr [ESI]
004b01e2  8b07  MOV EAX,dword ptr [EDI]
004b01e4  8b5018  MOV EDX,dword ptr [EAX + 0x18]
004b01e7  6a00  PUSH 0x0
004b01e9  55  PUSH EBP
004b01ea  8bcf  MOV ECX,EDI
004b01ec  ffd2  CALL EDX
004b01ee  84c0  TEST AL,AL
004b01f0  7510  JNZ 0x004b0202
004b01f2  83c608  ADD ESI,0x8
004b01f5  3bf3  CMP ESI,EBX
004b01f7  75e7  JNZ 0x004b01e0
004b01f9  5f  POP EDI
004b01fa  5d  POP EBP
004b01fb  5e  POP ESI
004b01fc  33c0  XOR EAX,EAX
004b01fe  5b  POP EBX
004b01ff  c20400  RET 0x4
004b0202  8bc7  MOV EAX,EDI
004b0204  5f  POP EDI
004b0205  5d  POP EBP
004b0206  5e  POP ESI
004b0207  5b  POP EBX
004b0208  c20400  RET 0x4

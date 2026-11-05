# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ac980, 004aca0d]]
Signature: int DbpfIndex_FindOrInsertRecord(void * this, uint * param_1)

004ac980  83ec30  SUB ESP,0x30
004ac983  56  PUSH ESI
004ac984  8b742438  MOV ESI,dword ptr [ESP + 0x38]
004ac988  57  PUSH EDI
004ac989  56  PUSH ESI
004ac98a  8d44240c  LEA EAX,[ESP + 0xc]
004ac98e  50  PUSH EAX
004ac98f  8bf9  MOV EDI,ECX
004ac991  e8aae63800  CALL 0x0083b040
004ac996  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
004ac999  8b5704  MOV EDX,dword ptr [EDI + 0x4]
004ac99c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
004ac9a0  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
004ac9a3  755e  JNZ 0x004aca03
004ac9a5  53  PUSH EBX
004ac9a6  8b1e  MOV EBX,dword ptr [ESI]
004ac9a8  33c0  XOR EAX,EAX
004ac9aa  33c9  XOR ECX,ECX
004ac9ac  33d2  XOR EDX,EDX
004ac9ae  894c2430  MOV dword ptr [ESP + 0x30],ECX
004ac9b2  88442440  MOV byte ptr [ESP + 0x40],AL
004ac9b6  6689442418  MOV word ptr [ESP + 0x18],AX
004ac9bb  8844241a  MOV byte ptr [ESP + 0x1a],AL
004ac9bf  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004ac9c3  89542434  MOV dword ptr [ESP + 0x34],EDX
004ac9c7  8b542440  MOV EDX,dword ptr [ESP + 0x40]
004ac9cb  895c241c  MOV dword ptr [ESP + 0x1c],EBX
004ac9cf  8b5e04  MOV EBX,dword ptr [ESI + 0x4]
004ac9d2  8944242c  MOV dword ptr [ESP + 0x2c],EAX
004ac9d6  52  PUSH EDX
004ac9d7  894c243c  MOV dword ptr [ESP + 0x3c],ECX
004ac9db  8d442420  LEA EAX,[ESP + 0x20]
004ac9df  895c2424  MOV dword ptr [ESP + 0x24],EBX
004ac9e3  8b5e08  MOV EBX,dword ptr [ESI + 0x8]
004ac9e6  8b760c  MOV ESI,dword ptr [ESI + 0xc]
004ac9e9  50  PUSH EAX
004ac9ea  8d4c2414  LEA ECX,[ESP + 0x14]
004ac9ee  51  PUSH ECX
004ac9ef  8bcf  MOV ECX,EDI
004ac9f1  895c2430  MOV dword ptr [ESP + 0x30],EBX
004ac9f5  89742434  MOV dword ptr [ESP + 0x34],ESI
004ac9f9  e802efffff  CALL 0x004ab900
004ac9fe  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
004aca02  5b  POP EBX
004aca03  5f  POP EDI
004aca04  83c010  ADD EAX,0x10
004aca07  5e  POP ESI
004aca08  83c430  ADD ESP,0x30
004aca0b  c20400  RET 0x4

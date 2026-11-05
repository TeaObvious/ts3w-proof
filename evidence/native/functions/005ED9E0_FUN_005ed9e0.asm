# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FUN_005ed9e0(void * this, undefined4 * param_1, uint * param_2)
Owned ranges: [[005ed9e0, 005eda4b]]

005ed9e0  83ec08  SUB ESP,0x8
005ed9e3  53  PUSH EBX
005ed9e4  8b5908  MOV EBX,dword ptr [ECX + 0x8]
005ed9e7  55  PUSH EBP
005ed9e8  56  PUSH ESI
005ed9e9  57  PUSH EDI
005ed9ea  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
005ed9ee  8b770c  MOV ESI,dword ptr [EDI + 0xc]
005ed9f1  3337  XOR ESI,dword ptr [EDI]
005ed9f3  33d2  XOR EDX,EDX
005ed9f5  8bc6  MOV EAX,ESI
005ed9f7  f7f3  DIV EBX
005ed9f9  8b6904  MOV EBP,dword ptr [ECX + 0x4]
005ed9fc  56  PUSH ESI
005ed9fd  57  PUSH EDI
005ed9fe  8d449500  LEA EAX,[EBP + EDX*0x4]
005eda02  89442428  MOV dword ptr [ESP + 0x28],EAX
005eda06  8b00  MOV EAX,dword ptr [EAX]
005eda08  50  PUSH EAX
005eda09  e8024f2c00  CALL 0x008b2910
005eda0e  85c0  TEST EAX,EAX
005eda10  740e  JZ 0x005eda20
005eda12  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
005eda16  89442410  MOV dword ptr [ESP + 0x10],EAX
005eda1a  894c2414  MOV dword ptr [ESP + 0x14],ECX
005eda1e  eb10  JMP 0x005eda30
005eda20  8b549d00  MOV EDX,dword ptr [EBP + EBX*0x4]
005eda24  8d449d00  LEA EAX,[EBP + EBX*0x4]
005eda28  89542410  MOV dword ptr [ESP + 0x10],EDX
005eda2c  89442414  MOV dword ptr [ESP + 0x14],EAX
005eda30  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
005eda34  5f  POP EDI
005eda35  8d4c240c  LEA ECX,[ESP + 0xc]
005eda39  8b11  MOV EDX,dword ptr [ECX]
005eda3b  8b4904  MOV ECX,dword ptr [ECX + 0x4]
005eda3e  5e  POP ESI
005eda3f  5d  POP EBP
005eda40  8910  MOV dword ptr [EAX],EDX
005eda42  894804  MOV dword ptr [EAX + 0x4],ECX
005eda45  5b  POP EBX
005eda46  83c408  ADD ESP,0x8
005eda49  c20800  RET 0x8

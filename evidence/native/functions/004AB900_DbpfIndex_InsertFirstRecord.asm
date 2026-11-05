# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ab900, 004ab9f4]]
Signature: int * DbpfIndex_InsertFirstRecord(void * this, int * param_1, uint * param_2, uint ignoredStackWord)

004ab900  83ec0c  SUB ESP,0xc
004ab903  53  PUSH EBX
004ab904  55  PUSH EBP
004ab905  56  PUSH ESI
004ab906  8b742420  MOV ESI,dword ptr [ESP + 0x20]
004ab90a  8b5e0c  MOV EBX,dword ptr [ESI + 0xc]
004ab90d  331e  XOR EBX,dword ptr [ESI]
004ab90f  8be9  MOV EBP,ECX
004ab911  57  PUSH EDI
004ab912  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
004ab915  33d2  XOR EDX,EDX
004ab917  8bc3  MOV EAX,EBX
004ab919  f7f7  DIV EDI
004ab91b  8b4504  MOV EAX,dword ptr [EBP + 0x4]
004ab91e  8b0c90  MOV ECX,dword ptr [EAX + EDX*0x4]
004ab921  53  PUSH EBX
004ab922  56  PUSH ESI
004ab923  51  PUSH ECX
004ab924  8bcd  MOV ECX,EBP
004ab926  8d0490  LEA EAX,[EAX + EDX*0x4]
004ab929  89542430  MOV dword ptr [ESP + 0x30],EDX
004ab92d  8944241c  MOV dword ptr [ESP + 0x1c],EAX
004ab931  e81aa71300  CALL 0x005e6050
004ab936  85c0  TEST EAX,EAX
004ab938  0f859a000000  JNZ 0x004ab9d8
004ab93e  8b550c  MOV EDX,dword ptr [EBP + 0xc]
004ab941  6a01  PUSH 0x1
004ab943  52  PUSH EDX
004ab944  57  PUSH EDI
004ab945  8d442420  LEA EAX,[ESP + 0x20]
004ab949  50  PUSH EAX
004ab94a  8d4d10  LEA ECX,[EBP + 0x10]
004ab94d  e86e550300  CALL 0x004e0ec0
004ab952  8b4520  MOV EAX,dword ptr [EBP + 0x20]
004ab955  8b4d1c  MOV ECX,dword ptr [EBP + 0x1c]
004ab958  8b11  MOV EDX,dword ptr [ECX]
004ab95a  8b5208  MOV EDX,dword ptr [EDX + 0x8]
004ab95d  50  PUSH EAX
004ab95e  8b4524  MOV EAX,dword ptr [EBP + 0x24]
004ab961  50  PUSH EAX
004ab962  6a28  PUSH 0x28
004ab964  ffd2  CALL EDX
004ab966  85c0  TEST EAX,EAX
004ab968  89442410  MOV dword ptr [ESP + 0x10],EAX
004ab96c  7409  JZ 0x004ab977
004ab96e  b908000000  MOV ECX,0x8
004ab973  8bf8  MOV EDI,EAX
004ab975  f3a5  MOVSD.REP ES:EDI,ESI
004ab977  c7402000000000  MOV dword ptr [EAX + 0x20],0x0
004ab97e  807c241400  CMP byte ptr [ESP + 0x14],0x0
004ab983  741a  JZ 0x004ab99f
004ab985  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004ab989  33d2  XOR EDX,EDX
004ab98b  8bc3  MOV EAX,EBX
004ab98d  f7f1  DIV ECX
004ab98f  51  PUSH ECX
004ab990  8bcd  MOV ECX,EBP
004ab992  89542428  MOV dword ptr [ESP + 0x28],EDX
004ab996  e835f0ffff  CALL 0x004aa9d0
004ab99b  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004ab99f  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
004ab9a3  8b5504  MOV EDX,dword ptr [EBP + 0x4]
004ab9a6  03c9  ADD ECX,ECX
004ab9a8  03c9  ADD ECX,ECX
004ab9aa  8b1411  MOV EDX,dword ptr [ECX + EDX*0x1]
004ab9ad  895020  MOV dword ptr [EAX + 0x20],EDX
004ab9b0  8b5504  MOV EDX,dword ptr [EBP + 0x4]
004ab9b3  890411  MOV dword ptr [ECX + EDX*0x1],EAX
004ab9b6  8b542420  MOV EDX,dword ptr [ESP + 0x20]
004ab9ba  83450c01  ADD dword ptr [EBP + 0xc],0x1
004ab9be  8902  MOV dword ptr [EDX],EAX
004ab9c0  8b4504  MOV EAX,dword ptr [EBP + 0x4]
004ab9c3  5f  POP EDI
004ab9c4  5e  POP ESI
004ab9c5  03c1  ADD EAX,ECX
004ab9c7  5d  POP EBP
004ab9c8  894204  MOV dword ptr [EDX + 0x4],EAX
004ab9cb  c6420801  MOV byte ptr [EDX + 0x8],0x1
004ab9cf  8bc2  MOV EAX,EDX
004ab9d1  5b  POP EBX
004ab9d2  83c40c  ADD ESP,0xc
004ab9d5  c20c00  RET 0xc
004ab9d8  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
004ab9dc  8b542410  MOV EDX,dword ptr [ESP + 0x10]
004ab9e0  5f  POP EDI
004ab9e1  5e  POP ESI
004ab9e2  5d  POP EBP
004ab9e3  8901  MOV dword ptr [ECX],EAX
004ab9e5  895104  MOV dword ptr [ECX + 0x4],EDX
004ab9e8  c6410800  MOV byte ptr [ECX + 0x8],0x0
004ab9ec  8bc1  MOV EAX,ECX
004ab9ee  5b  POP EBX
004ab9ef  83c40c  ADD ESP,0xc
004ab9f2  c20c00  RET 0xc

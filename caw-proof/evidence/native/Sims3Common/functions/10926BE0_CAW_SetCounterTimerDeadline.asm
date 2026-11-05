# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10926be0..10926c5a; CAW_SetCounterTimerDeadline
10926be0: 83ec08  SUB ESP,0x8
10926be3: 56  PUSH ESI
10926be4: 57  PUSH EDI
10926be5: 8b3da4b2aa10  MOV EDI,dword ptr [0x10aab2a4]
10926beb: 8d442408  LEA EAX,[ESP + 0x8]
10926bef: 50  PUSH EAX
10926bf0: 8bf1  MOV ESI,ECX
10926bf2: ffd7  CALL EDI
10926bf4: db442414  FILD dword ptr [ESP + 0x14]
10926bf8: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
10926bfc: 85c9  TEST ECX,ECX
10926bfe: 7d06  JGE 0x10926c06
10926c00: d80590e1aa10  FADD float ptr [0x10aae190]
10926c06: d87614  FDIV float ptr [ESI + 0x14]
10926c09: e8589d1600  CALL 0x10a90966
10926c0e: 03442408  ADD EAX,dword ptr [ESP + 0x8]
10926c12: 1354240c  ADC EDX,dword ptr [ESP + 0xc]
10926c16: 807c241800  CMP byte ptr [ESP + 0x18],0x0
10926c1b: 894618  MOV dword ptr [ESI + 0x18],EAX
10926c1e: 89561c  MOV dword ptr [ESI + 0x1c],EDX
10926c21: 7430  JZ 0x10926c53
10926c23: 8b16  MOV EDX,dword ptr [ESI]
10926c25: 0b5604  OR EDX,dword ptr [ESI + 0x4]
10926c28: 7529  JNZ 0x10926c53
10926c2a: 837e1001  CMP dword ptr [ESI + 0x10],0x1
10926c2e: 750f  JNZ 0x10926c3f
10926c30: 0f31  RDTSC
10926c32: 5f  POP EDI
10926c33: 8906  MOV dword ptr [ESI],EAX
10926c35: 895604  MOV dword ptr [ESI + 0x4],EDX
10926c38: 5e  POP ESI
10926c39: 83c408  ADD ESP,0x8
10926c3c: c20800  RET 0x8
10926c3f: 8d442408  LEA EAX,[ESP + 0x8]
10926c43: 50  PUSH EAX
10926c44: ffd7  CALL EDI
10926c46: 8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
10926c4a: 8b54240c  MOV EDX,dword ptr [ESP + 0xc]
10926c4e: 890e  MOV dword ptr [ESI],ECX
10926c50: 895604  MOV dword ptr [ESI + 0x4],EDX
10926c53: 5f  POP EDI
10926c54: 5e  POP ESI
10926c55: 83c408  ADD ESP,0x8
10926c58: c20800  RET 0x8

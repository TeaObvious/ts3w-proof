# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10521c90..10521cc8; CAW_KeyNameMapFindInstance
10521c90: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
10521c94: 83ec08  SUB ESP,0x8
10521c97: 56  PUSH ESI
10521c98: 8d7128  LEA ESI,[ECX + 0x28]
10521c9b: 50  PUSH EAX
10521c9c: 8d4c2408  LEA ECX,[ESP + 0x8]
10521ca0: 51  PUSH ECX
10521ca1: 8bce  MOV ECX,ESI
10521ca3: e858073100  CALL 0x10832400
10521ca8: 8b5608  MOV EDX,dword ptr [ESI + 0x8]
10521cab: 8b4e04  MOV ECX,dword ptr [ESI + 0x4]
10521cae: 8b442404  MOV EAX,dword ptr [ESP + 0x4]
10521cb2: 3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
10521cb5: 5e  POP ESI
10521cb6: 7508  JNZ 0x10521cc0
10521cb8: 33c0  XOR EAX,EAX
10521cba: 83c408  ADD ESP,0x8
10521cbd: c20400  RET 0x4
10521cc0: 8b4008  MOV EAX,dword ptr [EAX + 0x8]
10521cc3: 83c408  ADD ESP,0x8
10521cc6: c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f4350..101f4396; CAW_RefreshTerrainTriangleBudgetThresholds
101f4350: 57  PUSH EDI
101f4351: 8bf9  MOV EDI,ECX
101f4353: 807f4800  CMP byte ptr [EDI + 0x48],0x0
101f4357: 750b  JNZ 0x101f4364
101f4359: e822ffffff  CALL 0x101f4280
101f435e: c6474801  MOV byte ptr [EDI + 0x48],0x1
101f4362: 5f  POP EDI
101f4363: c3  RET
101f4364: 53  PUSH EBX
101f4365: 56  PUSH ESI
101f4366: 8d7754  LEA ESI,[EDI + 0x54]
101f4369: bb02000000  MOV EBX,0x2
101f436e: 8bff  MOV EDI,EDI
101f4370: 8b4f68  MOV ECX,dword ptr [EDI + 0x68]
101f4373: 85c9  TEST ECX,ECX
101f4375: 7414  JZ 0x101f438b
101f4377: 8b46f8  MOV EAX,dword ptr [ESI + -0x8]
101f437a: 8b56fc  MOV EDX,dword ptr [ESI + -0x4]
101f437d: 50  PUSH EAX
101f437e: 6800010000  PUSH 0x100
101f4383: 52  PUSH EDX
101f4384: e8c7a40600  CALL 0x1025e850
101f4389: d91e  FSTP float ptr [ESI]
101f438b: 83c60c  ADD ESI,0xc
101f438e: 83eb01  SUB EBX,0x1
101f4391: 75dd  JNZ 0x101f4370
101f4393: 5e  POP ESI
101f4394: 5b  POP EBX
101f4395: 5f  POP EDI
101f4396: c3  RET

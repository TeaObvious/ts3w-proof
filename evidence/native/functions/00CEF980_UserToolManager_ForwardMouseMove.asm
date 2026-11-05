# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00cef980 UserToolManager_ForwardMouseMove
# Body [[00cef980, 00cefa29]]; owned bytes=170
# ECX manager, three stack words, RET0Chex. Applies UI modifiers then floors client x/y with integer conversion/residual adjustment before tool virtual14. World-owner guard/enter/leave remains native.
00cef980  83ec08  SUB ESP,0x8
00cef983  56  PUSH ESI
00cef984  8bf1  MOV ESI,ECX
00cef986  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00cef989  85c0  TEST EAX,EAX
00cef98b  0f8492000000  JZ 0x00cefa23
00cef991  57  PUSH EDI
00cef992  8b780c  MOV EDI,dword ptr [EAX + 0xc]
00cef995  85ff  TEST EDI,EDI
00cef997  740d  JZ 0x00cef9a6
00cef999  8d87d0000000  LEA EAX,[EDI + 0xd0]
00cef99f  50  PUSH EAX
00cef9a0  ff152c61f900  CALL dword ptr [0x00f9612c]
00cef9a6  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef9a9  8b11  MOV EDX,dword ptr [ECX]
00cef9ab  8b422c  MOV EAX,dword ptr [EDX + 0x2c]
00cef9ae  ffd0  CALL EAX
00cef9b0  84c0  TEST AL,AL
00cef9b2  755d  JNZ 0x00cefa11
00cef9b4  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00cef9b8  51  PUSH ECX
00cef9b9  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef9bc  e86feffdff  CALL 0x00cce930
00cef9c1  8b4e2c  MOV ECX,dword ptr [ESI + 0x2c]
00cef9c4  d9442418  FLD float ptr [ESP + 0x18]
00cef9c8  db54241c  FIST dword ptr [ESP + 0x1c]
00cef9cc  db44241c  FILD dword ptr [ESP + 0x1c]
00cef9d0  dee9  FSUBP
00cef9d2  d95c2408  FSTP float ptr [ESP + 0x8]
00cef9d6  817c240801000080  CMP dword ptr [ESP + 0x8],0x80000001
00cef9de  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00cef9e2  83d0ff  ADC EAX,-0x1
00cef9e5  8bd0  MOV EDX,EAX
00cef9e7  d9442414  FLD float ptr [ESP + 0x14]
00cef9eb  db54240c  FIST dword ptr [ESP + 0xc]
00cef9ef  db44240c  FILD dword ptr [ESP + 0xc]
00cef9f3  dee9  FSUBP
00cef9f5  d95c2418  FSTP float ptr [ESP + 0x18]
00cef9f9  817c241801000080  CMP dword ptr [ESP + 0x18],0x80000001
00cefa01  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00cefa05  83d0ff  ADC EAX,-0x1
00cefa08  8b31  MOV ESI,dword ptr [ECX]
00cefa0a  52  PUSH EDX
00cefa0b  8b5614  MOV EDX,dword ptr [ESI + 0x14]
00cefa0e  50  PUSH EAX
00cefa0f  ffd2  CALL EDX
00cefa11  85ff  TEST EDI,EDI
00cefa13  740d  JZ 0x00cefa22
00cefa15  81c7d0000000  ADD EDI,0xd0
00cefa1b  57  PUSH EDI
00cefa1c  ff153061f900  CALL dword ptr [0x00f96130]
00cefa22  5f  POP EDI
00cefa23  5e  POP ESI
00cefa24  83c408  ADD ESP,0x8
00cefa27  c20c00  RET 0xc

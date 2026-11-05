# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053FF30_UiTextEdit_HandleCharacter.c
Owned ranges: [[0053ff30, 0053ffdc]]

0053ff30  f6815802000001  TEST byte ptr [ECX + 0x258],0x1
0053ff37  0f859b000000  JNZ 0x0053ffd8
0053ff3d  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0053ff41  663d2000  CMP AX,0x20
0053ff45  7323  JNC 0x0053ff6a
0053ff47  0fb7c0  MOVZX EAX,AX
0053ff4a  83e809  SUB EAX,0x9
0053ff4d  7467  JZ 0x0053ffb6
0053ff4f  83e801  SUB EAX,0x1
0053ff52  7459  JZ 0x0053ffad
0053ff54  83e803  SUB EAX,0x3
0053ff57  755d  JNZ 0x0053ffb6
0053ff59  f6815802000002  TEST byte ptr [ECX + 0x258],0x2
0053ff60  7454  JZ 0x0053ffb6
0053ff62  c74424080a000000  MOV dword ptr [ESP + 0x8],0xa
0053ff6a  8b81c4020000  MOV EAX,dword ptr [ECX + 0x2c4]
0053ff70  3b81c8020000  CMP EAX,dword ptr [ECX + 0x2c8]
0053ff76  7543  JNZ 0x0053ffbb
0053ff78  8b9158020000  MOV EDX,dword ptr [ECX + 0x258]
0053ff7e  c1ea03  SHR EDX,0x3
0053ff81  f6c201  TEST DL,0x1
0053ff84  7435  JZ 0x0053ffbb
0053ff86  8b9150020000  MOV EDX,dword ptr [ECX + 0x250]
0053ff8c  56  PUSH ESI
0053ff8d  6a01  PUSH 0x1
0053ff8f  6a01  PUSH 0x1
0053ff91  8d742414  LEA ESI,[ESP + 0x14]
0053ff95  56  PUSH ESI
0053ff96  81c150020000  ADD ECX,0x250
0053ff9c  6a01  PUSH 0x1
0053ff9e  50  PUSH EAX
0053ff9f  8b828c000000  MOV EAX,dword ptr [EDX + 0x8c]
0053ffa5  ffd0  CALL EAX
0053ffa7  5e  POP ESI
0053ffa8  b001  MOV AL,0x1
0053ffaa  c20800  RET 0x8
0053ffad  f6815802000002  TEST byte ptr [ECX + 0x258],0x2
0053ffb4  75b4  JNZ 0x0053ff6a
0053ffb6  32c0  XOR AL,AL
0053ffb8  c20800  RET 0x8
0053ffbb  8b9150020000  MOV EDX,dword ptr [ECX + 0x250]
0053ffc1  8b9288000000  MOV EDX,dword ptr [EDX + 0x88]
0053ffc7  6a01  PUSH 0x1
0053ffc9  81c150020000  ADD ECX,0x250
0053ffcf  6a01  PUSH 0x1
0053ffd1  8d442410  LEA EAX,[ESP + 0x10]
0053ffd5  50  PUSH EAX
0053ffd6  ffd2  CALL EDX
0053ffd8  b001  MOV AL,0x1
0053ffda  c20800  RET 0x8

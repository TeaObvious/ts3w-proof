# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00d00e90 ObjectTool_ApplyCurrentYaw
# Body [[00d00e90, 00d00fe3]]; owned bytes=340
# ECX tool, byte argument in one stack word, RET4. Existing attachment/wall403F path delegates separately; ordinary path invokes current tool virtual80(current raw yaw,1). Object vtable01084370+80 resolvesCFF160. No virtual-target guess from method name.
00d00e90  51  PUSH ECX
00d00e91  56  PUSH ESI
00d00e92  8bf1  MOV ESI,ECX
00d00e94  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00d00e9b  7405  JZ 0x00d00ea2
00d00e9d  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00d00ea0  eb03  JMP 0x00d00ea5
00d00ea2  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00d00ea5  85c0  TEST EAX,EAX
00d00ea7  7405  JZ 0x00d00eae
00d00ea9  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00d00eac  eb02  JMP 0x00d00eb0
00d00eae  33c0  XOR EAX,EAX
00d00eb0  6a00  PUSH 0x0
00d00eb2  50  PUSH EAX
00d00eb3  e87810e0ff  CALL 0x00b01f30
00d00eb8  83c408  ADD ESP,0x8
00d00ebb  85c0  TEST EAX,EAX
00d00ebd  0f8504010000  JNZ 0x00d00fc7
00d00ec3  8b86b8010000  MOV EAX,dword ptr [ESI + 0x1b8]
00d00ec9  85c0  TEST EAX,EAX
00d00ecb  0f84f6000000  JZ 0x00d00fc7
00d00ed1  50  PUSH EAX
00d00ed2  e8b9b1dfff  CALL 0x00afc090
00d00ed7  83c404  ADD ESP,0x4
00d00eda  84c0  TEST AL,AL
00d00edc  0f84e5000000  JZ 0x00d00fc7
00d00ee2  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00d00ee9  57  PUSH EDI
00d00eea  bf01000000  MOV EDI,0x1
00d00eef  7405  JZ 0x00d00ef6
00d00ef1  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00d00ef4  eb03  JMP 0x00d00ef9
00d00ef6  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00d00ef9  85c0  TEST EAX,EAX
00d00efb  7405  JZ 0x00d00f02
00d00efd  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00d00f00  eb02  JMP 0x00d00f04
00d00f02  33c0  XOR EAX,EAX
00d00f04  50  PUSH EAX
00d00f05  e8a6eddfff  CALL 0x00affcb0
00d00f0a  8844240c  MOV byte ptr [ESP + 0xc],AL
00d00f0e  8b86b8010000  MOV EAX,dword ptr [ESI + 0x1b8]
00d00f14  83c404  ADD ESP,0x4
00d00f17  85c0  TEST EAX,EAX
00d00f19  7426  JZ 0x00d00f41
00d00f1b  8b88d8000000  MOV ECX,dword ptr [EAX + 0xd8]
00d00f21  2b88d4000000  SUB ECX,dword ptr [EAX + 0xd4]
00d00f27  b867666666  MOV EAX,0x66666667
00d00f2c  f7e9  IMUL ECX
00d00f2e  c1fa04  SAR EDX,0x4
00d00f31  8bc2  MOV EAX,EDX
00d00f33  c1e81f  SHR EAX,0x1f
00d00f36  03c2  ADD EAX,EDX
00d00f38  7407  JZ 0x00d00f41
00d00f3a  bf02000000  MOV EDI,0x2
00d00f3f  eb27  JMP 0x00d00f68
00d00f41  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00d00f48  7405  JZ 0x00d00f4f
00d00f4a  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00d00f4d  eb03  JMP 0x00d00f52
00d00f4f  8b465c  MOV EAX,dword ptr [ESI + 0x5c]
00d00f52  85c0  TEST EAX,EAX
00d00f54  7405  JZ 0x00d00f5b
00d00f56  8b4058  MOV EAX,dword ptr [EAX + 0x58]
00d00f59  eb02  JMP 0x00d00f5d
00d00f5b  33c0  XOR EAX,EAX
00d00f5d  6a01  PUSH 0x1
00d00f5f  50  PUSH EAX
00d00f60  e81beddfff  CALL 0x00affc80
00d00f65  83c408  ADD ESP,0x8
00d00f68  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d00f6c  d986e0000000  FLD float ptr [ESI + 0xe0]
00d00f72  51  PUSH ECX
00d00f73  51  PUSH ECX
00d00f74  d91c24  FSTP float ptr [ESP]
00d00f77  8d96b8000000  LEA EDX,[ESI + 0xb8]
00d00f7d  52  PUSH EDX
00d00f7e  57  PUSH EDI
00d00f7f  8bce  MOV ECX,ESI
00d00f81  e88ae6ffff  CALL 0x00cff610
00d00f86  80bef702000000  CMP byte ptr [ESI + 0x2f7],0x0
00d00f8d  5f  POP EDI
00d00f8e  7405  JZ 0x00d00f95
00d00f90  8b7660  MOV ESI,dword ptr [ESI + 0x60]
00d00f93  eb03  JMP 0x00d00f98
00d00f95  8b765c  MOV ESI,dword ptr [ESI + 0x5c]
00d00f98  85f6  TEST ESI,ESI
00d00f9a  7416  JZ 0x00d00fb2
00d00f9c  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00d00fa0  8b7658  MOV ESI,dword ptr [ESI + 0x58]
00d00fa3  50  PUSH EAX
00d00fa4  56  PUSH ESI
00d00fa5  e8d6ecdfff  CALL 0x00affc80
00d00faa  83c408  ADD ESP,0x8
00d00fad  5e  POP ESI
00d00fae  59  POP ECX
00d00faf  c20400  RET 0x4
00d00fb2  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00d00fb6  50  PUSH EAX
00d00fb7  33f6  XOR ESI,ESI
00d00fb9  56  PUSH ESI
00d00fba  e8c1ecdfff  CALL 0x00affc80
00d00fbf  83c408  ADD ESP,0x8
00d00fc2  5e  POP ESI
00d00fc3  59  POP ECX
00d00fc4  c20400  RET 0x4
00d00fc7  8b16  MOV EDX,dword ptr [ESI]
00d00fc9  d986e0000000  FLD float ptr [ESI + 0xe0]
00d00fcf  8b8280000000  MOV EAX,dword ptr [EDX + 0x80]
00d00fd5  6a01  PUSH 0x1
00d00fd7  51  PUSH ECX
00d00fd8  8bce  MOV ECX,ESI
00d00fda  d91c24  FSTP float ptr [ESP]
00d00fdd  ffd0  CALL EAX
00d00fdf  5e  POP ESI
00d00fe0  59  POP ECX
00d00fe1  c20400  RET 0x4

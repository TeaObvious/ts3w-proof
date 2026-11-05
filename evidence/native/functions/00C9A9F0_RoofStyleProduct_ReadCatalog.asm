# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: RoofStyleProduct_ReadCatalog
Paired actual annotated Ghidra pseudocode: 00C9A9F0_RoofStyleProduct_ReadCatalog.c
Owned ranges: [[00c9a9f0, 00c9abb1]]
Envelope bytes=450

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c9a9f0  83ec30  SUB ESP,0x30
00c9a9f3  53  PUSH EBX
00c9a9f4  56  PUSH ESI
00c9a9f5  57  PUSH EDI
00c9a9f6  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
00c9a9fa  6a01  PUSH 0x1
00c9a9fc  8bf1  MOV ESI,ECX
00c9a9fe  57  PUSH EDI
00c9a9ff  8d4c242c  LEA ECX,[ESP + 0x2c]
00c9aa03  e8d8e9b3ff  CALL 0x007d93e0
00c9aa08  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00c9aa0c  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c9aa10  50  PUSH EAX
00c9aa11  8d4c2444  LEA ECX,[ESP + 0x44]
00c9aa15  51  PUSH ECX
00c9aa16  52  PUSH EDX
00c9aa17  e8642f84ff  CALL 0x004dd980
00c9aa1c  83c40c  ADD ESP,0xc
00c9aa1f  8d4c2424  LEA ECX,[ESP + 0x24]
00c9aa23  50  PUSH EAX
00c9aa24  e8c7cfb3ff  CALL 0x007d79f0
00c9aa29  8d44240c  LEA EAX,[ESP + 0xc]
00c9aa2d  50  PUSH EAX
00c9aa2e  8d4c2418  LEA ECX,[ESP + 0x18]
00c9aa32  c7442410e4d20701  MOV dword ptr [ESP + 0x10],0x107d2e4
00c9aa3a  e8c1eab3ff  CALL 0x007d9500
00c9aa3f  bb02000000  MOV EBX,0x2
00c9aa44  395c2440  CMP dword ptr [ESP + 0x40],EBX
00c9aa48  723b  JC 0x00c9aa85
00c9aa4a  8d4c2414  LEA ECX,[ESP + 0x14]
00c9aa4e  51  PUSH ECX
00c9aa4f  8d542428  LEA EDX,[ESP + 0x28]
00c9aa53  52  PUSH EDX
00c9aa54  e8172bd0ff  CALL 0x0099d570
00c9aa59  83c408  ADD ESP,0x8
00c9aa5c  84c0  TEST AL,AL
00c9aa5e  7525  JNZ 0x00c9aa85
00c9aa60  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c9aa64  85c0  TEST EAX,EAX
00c9aa66  7409  JZ 0x00c9aa71
00c9aa68  50  PUSH EAX
00c9aa69  e8729a84ff  CALL 0x004e44e0
00c9aa6e  83c404  ADD ESP,0x4
00c9aa71  8d4c2424  LEA ECX,[ESP + 0x24]
00c9aa75  e816cfb3ff  CALL 0x007d7990
00c9aa7a  5f  POP EDI
00c9aa7b  5e  POP ESI
00c9aa7c  32c0  XOR AL,AL
00c9aa7e  5b  POP EBX
00c9aa7f  83c430  ADD ESP,0x30
00c9aa82  c20400  RET 0x4
00c9aa85  57  PUSH EDI
00c9aa86  8bce  MOV ECX,ESI
00c9aa88  e87386ffff  CALL 0x00c93100
00c9aa8d  8b442434  MOV EAX,dword ptr [ESP + 0x34]
00c9aa91  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c9aa95  50  PUSH EAX
00c9aa96  8d4c2414  LEA ECX,[ESP + 0x14]
00c9aa9a  51  PUSH ECX
00c9aa9b  52  PUSH EDX
00c9aa9c  e8df2e84ff  CALL 0x004dd980
00c9aaa1  83c40c  ADD ESP,0xc
00c9aaa4  8d4c2424  LEA ECX,[ESP + 0x24]
00c9aaa8  50  PUSH EAX
00c9aaa9  e842cfb3ff  CALL 0x007d79f0
00c9aaae  395c2440  CMP dword ptr [ESP + 0x40],EBX
00c9aab2  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00c9aab6  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c9aabc  723f  JC 0x00c9aafd
00c9aabe  8d8e90000000  LEA ECX,[ESI + 0x90]
00c9aac4  51  PUSH ECX
00c9aac5  8d542418  LEA EDX,[ESP + 0x18]
00c9aac9  52  PUSH EDX
00c9aaca  8d44242c  LEA EAX,[ESP + 0x2c]
00c9aace  50  PUSH EAX
00c9aacf  e8fc84ffff  CALL 0x00c92fd0
00c9aad4  83c40c  ADD ESP,0xc
00c9aad7  84c0  TEST AL,AL
00c9aad9  7485  JZ 0x00c9aa60
00c9aadb  8d8ea0000000  LEA ECX,[ESI + 0xa0]
00c9aae1  51  PUSH ECX
00c9aae2  8d542418  LEA EDX,[ESP + 0x18]
00c9aae6  52  PUSH EDX
00c9aae7  8d44242c  LEA EAX,[ESP + 0x2c]
00c9aaeb  50  PUSH EAX
00c9aaec  e8df84ffff  CALL 0x00c92fd0
00c9aaf1  83c40c  ADD ESP,0xc
00c9aaf4  84c0  TEST AL,AL
00c9aaf6  754b  JNZ 0x00c9ab43
00c9aaf8  e963ffffff  JMP 0x00c9aa60
00c9aafd  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9ab01  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c9ab05  51  PUSH ECX
00c9ab06  8d9690000000  LEA EDX,[ESI + 0x90]
00c9ab0c  52  PUSH EDX
00c9ab0d  50  PUSH EAX
00c9ab0e  e84dccb3ff  CALL 0x007d7760
00c9ab13  83c40c  ADD ESP,0xc
00c9ab16  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ab1a  50  PUSH EAX
00c9ab1b  e8d0ceb3ff  CALL 0x007d79f0
00c9ab20  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9ab24  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c9ab28  51  PUSH ECX
00c9ab29  8d96a0000000  LEA EDX,[ESI + 0xa0]
00c9ab2f  52  PUSH EDX
00c9ab30  50  PUSH EAX
00c9ab31  e82accb3ff  CALL 0x007d7760
00c9ab36  83c40c  ADD ESP,0xc
00c9ab39  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ab3d  50  PUSH EAX
00c9ab3e  e8adceb3ff  CALL 0x007d79f0
00c9ab43  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9ab47  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c9ab4b  51  PUSH ECX
00c9ab4c  8d96b0000000  LEA EDX,[ESI + 0xb0]
00c9ab52  52  PUSH EDX
00c9ab53  50  PUSH EAX
00c9ab54  e8272e84ff  CALL 0x004dd980
00c9ab59  83c40c  ADD ESP,0xc
00c9ab5c  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ab60  50  PUSH EAX
00c9ab61  e88aceb3ff  CALL 0x007d79f0
00c9ab66  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c9ab6a  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00c9ab6e  51  PUSH ECX
00c9ab6f  81c6b4000000  ADD ESI,0xb4
00c9ab75  56  PUSH ESI
00c9ab76  52  PUSH EDX
00c9ab77  e8042e84ff  CALL 0x004dd980
00c9ab7c  83c40c  ADD ESP,0xc
00c9ab7f  8d4c2424  LEA ECX,[ESP + 0x24]
00c9ab83  50  PUSH EAX
00c9ab84  e867ceb3ff  CALL 0x007d79f0
00c9ab89  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00c9ab8d  85c0  TEST EAX,EAX
00c9ab8f  8a5c2438  MOV BL,byte ptr [ESP + 0x38]
00c9ab93  7409  JZ 0x00c9ab9e
00c9ab95  50  PUSH EAX
00c9ab96  e8459984ff  CALL 0x004e44e0
00c9ab9b  83c404  ADD ESP,0x4
00c9ab9e  8d4c2424  LEA ECX,[ESP + 0x24]
00c9aba2  e8e9cdb3ff  CALL 0x007d7990
00c9aba7  5f  POP EDI
00c9aba8  5e  POP ESI
00c9aba9  8ac3  MOV AL,BL
00c9abab  5b  POP EBX
00c9abac  83c430  ADD ESP,0x30
00c9abaf  c20400  RET 0x4
Owned instructions=149 owned bytes=450 nonowned bytes=0

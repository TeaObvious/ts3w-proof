# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void UInt16WorldGrid_ChangeLevelCount(void * this, int count, uchar appendMode, uchar dimensionsOnly)
Owned ranges: [[00a82d40, 00a82d97] [00a82da0, 00a82e19]]

00a82d40  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a82d45  56  PUSH ESI
00a82d46  8bf1  MOV ESI,ECX
00a82d48  740b  JZ 0x00a82d55
00a82d4a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a82d4e  01460c  ADD dword ptr [ESI + 0xc],EAX
00a82d51  5e  POP ESI
00a82d52  c20c00  RET 0xc
00a82d55  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a82d5a  53  PUSH EBX
00a82d5b  8b5e0c  MOV EBX,dword ptr [ESI + 0xc]
00a82d5e  55  PUSH EBP
00a82d5f  57  PUSH EDI
00a82d60  7553  JNZ 0x00a82db5
00a82d62  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a82d66  85ed  TEST EBP,EBP
00a82d68  7d4f  JGE 0x00a82db9
00a82d6a  85db  TEST EBX,EBX
00a82d6c  7e4b  JLE 0x00a82db9
00a82d6e  8bd5  MOV EDX,EBP
00a82d70  f7da  NEG EDX
00a82d72  3bd3  CMP EDX,EBX
00a82d74  7d43  JGE 0x00a82db9
00a82d76  8b6e04  MOV EBP,dword ptr [ESI + 0x4]
00a82d79  8b7e08  MOV EDI,dword ptr [ESI + 0x8]
00a82d7c  8bcb  MOV ECX,EBX
00a82d7e  2bca  SUB ECX,EDX
00a82d80  8bc5  MOV EAX,EBP
00a82d82  0fafcd  IMUL ECX,EBP
00a82d85  0fafc7  IMUL EAX,EDI
00a82d88  0fafcf  IMUL ECX,EDI
00a82d8b  0fafc2  IMUL EAX,EDX
00a82d8e  03c8  ADD ECX,EAX
00a82d90  3bc1  CMP EAX,ECX
00a82d92  7d21  JGE 0x00a82db5
00a82d94  33ff  XOR EDI,EDI
00a82d96  eb08  JMP 0x00a82da0
00a82d98  8da4240000000090  .byte 8da4240000000090 ; NONOWNED envelope gap bytes
00a82da0  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00a82da3  668b2c42  MOV BP,word ptr [EDX + EAX*0x2]
00a82da7  66892c17  MOV word ptr [EDI + EDX*0x1],BP
00a82dab  83c001  ADD EAX,0x1
00a82dae  83c702  ADD EDI,0x2
00a82db1  3bc1  CMP EAX,ECX
00a82db3  7ceb  JL 0x00a82da0
00a82db5  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a82db9  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00a82dbc  0faf4e04  IMUL ECX,dword ptr [ESI + 0x4]
00a82dc0  016e0c  ADD dword ptr [ESI + 0xc],EBP
00a82dc3  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00a82dc6  0fafc8  IMUL ECX,EAX
00a82dc9  8d7e10  LEA EDI,[ESI + 0x10]
00a82dcc  51  PUSH ECX
00a82dcd  8bcf  MOV ECX,EDI
00a82dcf  e80cc8bfff  CALL 0x0067f5e0
00a82dd4  807c241800  CMP byte ptr [ESP + 0x18],0x0
00a82dd9  7538  JNZ 0x00a82e13
00a82ddb  85ed  TEST EBP,EBP
00a82ddd  7e34  JLE 0x00a82e13
00a82ddf  85db  TEST EBX,EBX
00a82de1  7e30  JLE 0x00a82e13
00a82de3  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a82de6  0faf4604  IMUL EAX,dword ptr [ESI + 0x4]
00a82dea  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a82ded  0fafc3  IMUL EAX,EBX
00a82df0  2b0f  SUB ECX,dword ptr [EDI]
00a82df2  83e801  SUB EAX,0x1
00a82df5  d1f9  SAR ECX,0x1
00a82df7  83e901  SUB ECX,0x1
00a82dfa  85c0  TEST EAX,EAX
00a82dfc  7c15  JL 0x00a82e13
00a82dfe  8d1409  LEA EDX,[ECX + ECX*0x1]
00a82e01  8b0f  MOV ECX,dword ptr [EDI]
00a82e03  668b3441  MOV SI,word ptr [ECX + EAX*0x2]
00a82e07  6689340a  MOV word ptr [EDX + ECX*0x1],SI
00a82e0b  83ea02  SUB EDX,0x2
00a82e0e  83e801  SUB EAX,0x1
00a82e11  79ee  JNS 0x00a82e01
00a82e13  5f  POP EDI
00a82e14  5d  POP EBP
00a82e15  5b  POP EBX
00a82e16  5e  POP ESI
00a82e17  c20c00  RET 0xc

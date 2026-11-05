# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: RoomGrid_FlattenFourHalfwords
Paired actual annotated Ghidra pseudocode: 00AA3510_RoomGrid_FlattenFourHalfwords.c
Owned ranges: [[00aa3510, 00aa35fc]]
Envelope bytes=237

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aa3510  83ec08  SUB ESP,0x8
00aa3513  56  PUSH ESI
00aa3514  8bf1  MOV ESI,ECX
00aa3516  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa3519  0faf4604  IMUL EAX,dword ptr [ESI + 0x4]
00aa351d  0faf460c  IMUL EAX,dword ptr [ESI + 0xc]
00aa3521  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00aa3525  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00aa3528  2b11  SUB EDX,dword ptr [ECX]
00aa352a  57  PUSH EDI
00aa352b  c1fa03  SAR EDX,0x3
00aa352e  3bc2  CMP EAX,EDX
00aa3530  7406  JZ 0x00aa3538
00aa3532  50  PUSH EAX
00aa3533  e8d8690500  CALL 0x00af9f10
00aa3538  33ff  XOR EDI,EDI
00aa353a  397e0c  CMP dword ptr [ESI + 0xc],EDI
00aa353d  897c2408  MOV dword ptr [ESP + 0x8],EDI
00aa3541  0f8eae000000  JLE 0x00aa35f5
00aa3547  53  PUSH EBX
00aa3548  55  PUSH EBP
00aa3549  8da42400000000  LEA ESP,[ESP]
00aa3550  33db  XOR EBX,EBX
00aa3552  395e04  CMP dword ptr [ESI + 0x4],EBX
00aa3555  0f8e84000000  JLE 0x00aa35df
00aa355b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa355e  8bff  MOV EDI,EDI
00aa3560  33c9  XOR ECX,ECX
00aa3562  85c0  TEST EAX,EAX
00aa3564  7e71  JLE 0x00aa35d7
00aa3566  8bd3  MOV EDX,EBX
00aa3568  c1fa02  SAR EDX,0x2
00aa356b  89542414  MOV dword ptr [ESP + 0x14],EDX
00aa356f  eb04  JMP 0x00aa3575
00aa3571  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00aa3575  8b4620  MOV EAX,dword ptr [ESI + 0x20]
00aa3578  0faf442410  IMUL EAX,dword ptr [ESP + 0x10]
00aa357d  03c2  ADD EAX,EDX
00aa357f  0faf4624  IMUL EAX,dword ptr [ESI + 0x24]
00aa3583  8bd1  MOV EDX,ECX
00aa3585  c1fa02  SAR EDX,0x2
00aa3588  03c2  ADD EAX,EDX
00aa358a  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00aa358d  0fb71442  MOVZX EDX,word ptr [EDX + EAX*0x2]
00aa3591  f7c200800000  TEST EDX,0x8000
00aa3597  7405  JZ 0x00aa359e
00aa3599  8b5638  MOV EDX,dword ptr [ESI + 0x38]
00aa359c  eb16  JMP 0x00aa35b4
00aa359e  0fb7c2  MOVZX EAX,DX
00aa35a1  8bd3  MOV EDX,EBX
00aa35a3  83e203  AND EDX,0x3
00aa35a6  8d0482  LEA EAX,[EDX + EAX*0x4]
00aa35a9  8bd1  MOV EDX,ECX
00aa35ab  83e203  AND EDX,0x3
00aa35ae  8d0482  LEA EAX,[EDX + EAX*0x4]
00aa35b1  8b5628  MOV EDX,dword ptr [ESI + 0x28]
00aa35b4  8b2cc2  MOV EBP,dword ptr [EDX + EAX*0x8]
00aa35b7  8d04c2  LEA EAX,[EDX + EAX*0x8]
00aa35ba  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00aa35be  8b12  MOV EDX,dword ptr [EDX]
00aa35c0  892cfa  MOV dword ptr [EDX + EDI*0x8],EBP
00aa35c3  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00aa35c6  8944fa04  MOV dword ptr [EDX + EDI*0x8 + 0x4],EAX
00aa35ca  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa35cd  83c101  ADD ECX,0x1
00aa35d0  83c701  ADD EDI,0x1
00aa35d3  3bc8  CMP ECX,EAX
00aa35d5  7c9a  JL 0x00aa3571
00aa35d7  83c301  ADD EBX,0x1
00aa35da  3b5e04  CMP EBX,dword ptr [ESI + 0x4]
00aa35dd  7c81  JL 0x00aa3560
00aa35df  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aa35e3  83c001  ADD EAX,0x1
00aa35e6  3b460c  CMP EAX,dword ptr [ESI + 0xc]
00aa35e9  89442410  MOV dword ptr [ESP + 0x10],EAX
00aa35ed  0f8c5dffffff  JL 0x00aa3550
00aa35f3  5d  POP EBP
00aa35f4  5b  POP EBX
00aa35f5  5f  POP EDI
00aa35f6  5e  POP ESI
00aa35f7  83c408  ADD ESP,0x8
00aa35fa  c20400  RET 0x4
Owned instructions=82 owned bytes=237 gap/nonowned bytes=0

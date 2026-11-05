# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: FloorPatterns_FlattenFourHalfwords
Paired actual annotated Ghidra pseudocode: 00A92A00_FloorPatterns_FlattenFourHalfwords.c
Owned ranges: [[00a92a00, 00a92aec]]
Envelope bytes=237

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00a92a00  83ec08  SUB ESP,0x8
00a92a03  56  PUSH ESI
00a92a04  8bf1  MOV ESI,ECX
00a92a06  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a92a09  0faf4604  IMUL EAX,dword ptr [ESI + 0x4]
00a92a0d  0faf460c  IMUL EAX,dword ptr [ESI + 0xc]
00a92a11  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00a92a15  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00a92a18  2b11  SUB EDX,dword ptr [ECX]
00a92a1a  57  PUSH EDI
00a92a1b  c1fa03  SAR EDX,0x3
00a92a1e  3bc2  CMP EAX,EDX
00a92a20  7406  JZ 0x00a92a28
00a92a22  50  PUSH EAX
00a92a23  e8d8e2ffff  CALL 0x00a90d00
00a92a28  33ff  XOR EDI,EDI
00a92a2a  397e0c  CMP dword ptr [ESI + 0xc],EDI
00a92a2d  897c2408  MOV dword ptr [ESP + 0x8],EDI
00a92a31  0f8eae000000  JLE 0x00a92ae5
00a92a37  53  PUSH EBX
00a92a38  55  PUSH EBP
00a92a39  8da42400000000  LEA ESP,[ESP]
00a92a40  33db  XOR EBX,EBX
00a92a42  395e04  CMP dword ptr [ESI + 0x4],EBX
00a92a45  0f8e84000000  JLE 0x00a92acf
00a92a4b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a92a4e  8bff  MOV EDI,EDI
00a92a50  33c9  XOR ECX,ECX
00a92a52  85c0  TEST EAX,EAX
00a92a54  7e71  JLE 0x00a92ac7
00a92a56  8bd3  MOV EDX,EBX
00a92a58  c1fa02  SAR EDX,0x2
00a92a5b  89542414  MOV dword ptr [ESP + 0x14],EDX
00a92a5f  eb04  JMP 0x00a92a65
00a92a61  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a92a65  8b4620  MOV EAX,dword ptr [ESI + 0x20]
00a92a68  0faf442410  IMUL EAX,dword ptr [ESP + 0x10]
00a92a6d  03c2  ADD EAX,EDX
00a92a6f  0faf4624  IMUL EAX,dword ptr [ESI + 0x24]
00a92a73  8bd1  MOV EDX,ECX
00a92a75  c1fa02  SAR EDX,0x2
00a92a78  03c2  ADD EAX,EDX
00a92a7a  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00a92a7d  0fb71442  MOVZX EDX,word ptr [EDX + EAX*0x2]
00a92a81  f7c200800000  TEST EDX,0x8000
00a92a87  7405  JZ 0x00a92a8e
00a92a89  8b5638  MOV EDX,dword ptr [ESI + 0x38]
00a92a8c  eb16  JMP 0x00a92aa4
00a92a8e  0fb7c2  MOVZX EAX,DX
00a92a91  8bd3  MOV EDX,EBX
00a92a93  83e203  AND EDX,0x3
00a92a96  8d0482  LEA EAX,[EDX + EAX*0x4]
00a92a99  8bd1  MOV EDX,ECX
00a92a9b  83e203  AND EDX,0x3
00a92a9e  8d0482  LEA EAX,[EDX + EAX*0x4]
00a92aa1  8b5628  MOV EDX,dword ptr [ESI + 0x28]
00a92aa4  8b2cc2  MOV EBP,dword ptr [EDX + EAX*0x8]
00a92aa7  8d04c2  LEA EAX,[EDX + EAX*0x8]
00a92aaa  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00a92aae  8b12  MOV EDX,dword ptr [EDX]
00a92ab0  892cfa  MOV dword ptr [EDX + EDI*0x8],EBP
00a92ab3  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00a92ab6  8944fa04  MOV dword ptr [EDX + EDI*0x8 + 0x4],EAX
00a92aba  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a92abd  83c101  ADD ECX,0x1
00a92ac0  83c701  ADD EDI,0x1
00a92ac3  3bc8  CMP ECX,EAX
00a92ac5  7c9a  JL 0x00a92a61
00a92ac7  83c301  ADD EBX,0x1
00a92aca  3b5e04  CMP EBX,dword ptr [ESI + 0x4]
00a92acd  7c81  JL 0x00a92a50
00a92acf  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a92ad3  83c001  ADD EAX,0x1
00a92ad6  3b460c  CMP EAX,dword ptr [ESI + 0xc]
00a92ad9  89442410  MOV dword ptr [ESP + 0x10],EAX
00a92add  0f8c5dffffff  JL 0x00a92a40
00a92ae3  5d  POP EBP
00a92ae4  5b  POP EBX
00a92ae5  5f  POP EDI
00a92ae6  5e  POP ESI
00a92ae7  83c408  ADD ESP,0x8
00a92aea  c20400  RET 0x4
Owned instructions=82 owned bytes=237 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementExcavation_ApplyOneVertex(void * param_1, char * param_2, float param_3, uint * param_4, void * param_5)
Owned ranges: [[00c9d8c0, 00c9da29] [00c9da30, 00c9daa1]]

00c9d8c0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c9d8c4  0fbe08  MOVSX ECX,byte ptr [EAX]
00c9d8c7  83ec08  SUB ESP,0x8
00c9d8ca  85c9  TEST ECX,ECX
00c9d8cc  53  PUSH EBX
00c9d8cd  55  PUSH EBP
00c9d8ce  56  PUSH ESI
00c9d8cf  0fbe7001  MOVSX ESI,byte ptr [EAX + 0x1]
00c9d8d3  57  PUSH EDI
00c9d8d4  7c30  JL 0x00c9d906
00c9d8d6  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00c9d8da  8baf74010000  MOV EBP,dword ptr [EDI + 0x174]
00c9d8e0  3bcd  CMP ECX,EBP
00c9d8e2  7f22  JG 0x00c9d906
00c9d8e4  85f6  TEST ESI,ESI
00c9d8e6  7c1e  JL 0x00c9d906
00c9d8e8  3bb778010000  CMP ESI,dword ptr [EDI + 0x178]
00c9d8ee  7f16  JG 0x00c9d906
00c9d8f0  0fbe5002  MOVSX EDX,byte ptr [EAX + 0x2]
00c9d8f4  3b977c010000  CMP EDX,dword ptr [EDI + 0x17c]
00c9d8fa  7c0a  JL 0x00c9d906
00c9d8fc  8b9f80010000  MOV EBX,dword ptr [EDI + 0x180]
00c9d902  3bd3  CMP EDX,EBX
00c9d904  7e0a  JLE 0x00c9d910
00c9d906  5f  POP EDI
00c9d907  5e  POP ESI
00c9d908  5d  POP EBP
00c9d909  32c0  XOR AL,AL
00c9d90b  5b  POP EBX
00c9d90c  83c408  ADD ESP,0x8
00c9d90f  c3  RET
00c9d910  85c9  TEST ECX,ECX
00c9d912  74f2  JZ 0x00c9d906
00c9d914  3bcd  CMP ECX,EBP
00c9d916  74ee  JZ 0x00c9d906
00c9d918  85f6  TEST ESI,ESI
00c9d91a  74ea  JZ 0x00c9d906
00c9d91c  3bb778010000  CMP ESI,dword ptr [EDI + 0x178]
00c9d922  74e2  JZ 0x00c9d906
00c9d924  8d4a01  LEA ECX,[EDX + 0x1]
00c9d927  894c2420  MOV dword ptr [ESP + 0x20],ECX
00c9d92b  3bcb  CMP ECX,EBX
00c9d92d  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c9d931  8d4c2420  LEA ECX,[ESP + 0x20]
00c9d935  7c04  JL 0x00c9d93b
00c9d937  8d4c2414  LEA ECX,[ESP + 0x14]
00c9d93b  8b31  MOV ESI,dword ptr [ECX]
00c9d93d  668b08  MOV CX,word ptr [EAX]
00c9d940  8a4002  MOV AL,byte ptr [EAX + 0x2]
00c9d943  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00c9d949  0fbed0  MOVSX EDX,AL
00c9d94c  32db  XOR BL,BL
00c9d94e  3bd6  CMP EDX,ESI
00c9d950  66894c2420  MOV word ptr [ESP + 0x20],CX
00c9d955  88442422  MOV byte ptr [ESP + 0x22],AL
00c9d959  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9d95f  0f8f33010000  JG 0x00c9da98
00c9d965  8b6c242c  MOV EBP,dword ptr [ESP + 0x2c]
00c9d969  8da42400000000  LEA ESP,[ESP]
00c9d970  84c0  TEST AL,AL
00c9d972  8b8f90020000  MOV ECX,dword ptr [EDI + 0x290]
00c9d978  8b5124  MOV EDX,dword ptr [ECX + 0x24]
00c9d97b  752c  JNZ 0x00c9d9a9
00c9d97d  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9d980  0faf4110  IMUL EAX,dword ptr [ECX + 0x10]
00c9d984  0fbe4c2420  MOVSX ECX,byte ptr [ESP + 0x20]
00c9d989  2bc8  SUB ECX,EAX
00c9d98b  0faf4a08  IMUL ECX,dword ptr [EDX + 0x8]
00c9d98f  0fbe442421  MOVSX EAX,byte ptr [ESP + 0x21]
00c9d994  8b5210  MOV EDX,dword ptr [EDX + 0x10]
00c9d997  03c8  ADD ECX,EAX
00c9d999  f30f100c8a  MOVSS XMM1,dword ptr [EDX + ECX*0x4]
00c9d99e  0f2fc8  COMISS XMM1,XMM0
00c9d9a1  0f83f1000000  JNC 0x00c9da98
00c9d9a7  b301  MOV BL,0x1
00c9d9a9  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c9d9ad  d9442410  FLD float ptr [ESP + 0x10]
00c9d9b1  8b08  MOV ECX,dword ptr [EAX]
00c9d9b3  6a00  PUSH 0x0
00c9d9b5  6a00  PUSH 0x0
00c9d9b7  6a00  PUSH 0x0
00c9d9b9  51  PUSH ECX
00c9d9ba  51  PUSH ECX
00c9d9bb  8d542434  LEA EDX,[ESP + 0x34]
00c9d9bf  d91c24  FSTP float ptr [ESP]
00c9d9c2  52  PUSH EDX
00c9d9c3  57  PUSH EDI
00c9d9c4  e8472d0100  CALL 0x00cb0710
00c9d9c9  83c41c  ADD ESP,0x1c
00c9d9cc  84c0  TEST AL,AL
00c9d9ce  0f8432ffffff  JZ 0x00c9d906
00c9d9d4  d9ee  FLDZ
00c9d9d6  83ec08  SUB ESP,0x8
00c9d9d9  d95c2404  FSTP float ptr [ESP + 0x4]
00c9d9dd  8d442428  LEA EAX,[ESP + 0x28]
00c9d9e1  d9442418  FLD float ptr [ESP + 0x18]
00c9d9e5  8bcd  MOV ECX,EBP
00c9d9e7  d91c24  FSTP float ptr [ESP]
00c9d9ea  50  PUSH EAX
00c9d9eb  e8804e0800  CALL 0x00d22870
00c9d9f0  8a442422  MOV AL,byte ptr [ESP + 0x22]
00c9d9f4  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00c9d9fa  f30f5805f4d50701  ADDSS XMM0,dword ptr [0x0107d5f4]
00c9da02  0401  ADD AL,0x1
00c9da04  0fbec8  MOVSX ECX,AL
00c9da07  3bce  CMP ECX,ESI
00c9da09  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9da0f  88442422  MOV byte ptr [ESP + 0x22],AL
00c9da13  0f8e57ffffff  JLE 0x00c9d970
00c9da19  84db  TEST BL,BL
00c9da1b  747b  JZ 0x00c9da98
00c9da1d  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00c9da21  0fbed0  MOVSX EDX,AL
00c9da24  3bd6  CMP EDX,ESI
00c9da26  7f70  JG 0x00c9da98
00c9da28  eb06  JMP 0x00c9da30
00c9da2a  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00c9da30  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c9da34  d9442410  FLD float ptr [ESP + 0x10]
00c9da38  8b08  MOV ECX,dword ptr [EAX]
00c9da3a  6a00  PUSH 0x0
00c9da3c  6a00  PUSH 0x0
00c9da3e  6a00  PUSH 0x0
00c9da40  51  PUSH ECX
00c9da41  51  PUSH ECX
00c9da42  8d542434  LEA EDX,[ESP + 0x34]
00c9da46  d91c24  FSTP float ptr [ESP]
00c9da49  52  PUSH EDX
00c9da4a  57  PUSH EDI
00c9da4b  e8c02c0100  CALL 0x00cb0710
00c9da50  83c41c  ADD ESP,0x1c
00c9da53  84c0  TEST AL,AL
00c9da55  7441  JZ 0x00c9da98
00c9da57  d9ee  FLDZ
00c9da59  83ec08  SUB ESP,0x8
00c9da5c  d95c2404  FSTP float ptr [ESP + 0x4]
00c9da60  8d442428  LEA EAX,[ESP + 0x28]
00c9da64  d9442418  FLD float ptr [ESP + 0x18]
00c9da68  8bcd  MOV ECX,EBP
00c9da6a  d91c24  FSTP float ptr [ESP]
00c9da6d  50  PUSH EAX
00c9da6e  e8fd4d0800  CALL 0x00d22870
00c9da73  8a442422  MOV AL,byte ptr [ESP + 0x22]
00c9da77  f30f10442410  MOVSS XMM0,dword ptr [ESP + 0x10]
00c9da7d  f30f5805f4d50701  ADDSS XMM0,dword ptr [0x0107d5f4]
00c9da85  0401  ADD AL,0x1
00c9da87  0fbec8  MOVSX ECX,AL
00c9da8a  3bce  CMP ECX,ESI
00c9da8c  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c9da92  88442422  MOV byte ptr [ESP + 0x22],AL
00c9da96  7e98  JLE 0x00c9da30
00c9da98  5f  POP EDI
00c9da99  5e  POP ESI
00c9da9a  5d  POP EBP
00c9da9b  b001  MOV AL,0x1
00c9da9d  5b  POP EBX
00c9da9e  83c408  ADD ESP,0x8
00c9daa1  c3  RET

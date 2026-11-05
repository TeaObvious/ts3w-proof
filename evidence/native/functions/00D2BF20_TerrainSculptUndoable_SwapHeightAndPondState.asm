# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainSculptUndoable_SwapHeightAndPondState(void * this)
Owned ranges: [[00d2bf20, 00d2c04c] [00d2c050, 00d2c08e]]

00d2bf20  83ec08  SUB ESP,0x8
00d2bf23  55  PUSH EBP
00d2bf24  8be9  MOV EBP,ECX
00d2bf26  83bdb000000000  CMP dword ptr [EBP + 0xb0],0x0
00d2bf2d  0f8457010000  JZ 0x00d2c08a
00d2bf33  53  PUSH EBX
00d2bf34  56  PUSH ESI
00d2bf35  57  PUSH EDI
00d2bf36  e87554ffff  CALL 0x00d213b0
00d2bf3b  8bbdbc000000  MOV EDI,dword ptr [EBP + 0xbc]
00d2bf41  8b37  MOV ESI,dword ptr [EDI]
00d2bf43  85f6  TEST ESI,ESI
00d2bf45  7513  JNZ 0x00d2bf5a
00d2bf47  83c704  ADD EDI,0x4
00d2bf4a  3937  CMP dword ptr [EDI],ESI
00d2bf4c  750a  JNZ 0x00d2bf58
00d2bf4e  8bff  MOV EDI,EDI
00d2bf50  83c704  ADD EDI,0x4
00d2bf53  833f00  CMP dword ptr [EDI],0x0
00d2bf56  74f8  JZ 0x00d2bf50
00d2bf58  8b37  MOV ESI,dword ptr [EDI]
00d2bf5a  8b85c0000000  MOV EAX,dword ptr [EBP + 0xc0]
00d2bf60  8b8dbc000000  MOV ECX,dword ptr [EBP + 0xbc]
00d2bf66  8b1c81  MOV EBX,dword ptr [ECX + EAX*0x4]
00d2bf69  3bf3  CMP ESI,EBX
00d2bf6b  7458  JZ 0x00d2bfc5
00d2bf6d  8d4900  LEA ECX,[ECX]
00d2bf70  f30f10460c  MOVSS XMM0,dword ptr [ESI + 0xc]
00d2bf75  0f2e4610  UCOMISS XMM0,dword ptr [ESI + 0x10]
00d2bf79  9f  LAHF
00d2bf7a  f6c444  TEST AH,0x44
00d2bf7d  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00d2bf83  7b2b  JNP 0x00d2bfb0
00d2bf85  d9442410  FLD float ptr [ESP + 0x10]
00d2bf89  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00d2bf8c  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00d2bf8f  51  PUSH ECX
00d2bf90  8b8db4000000  MOV ECX,dword ptr [EBP + 0xb4]
00d2bf96  d91c24  FSTP float ptr [ESP]
00d2bf99  52  PUSH EDX
00d2bf9a  50  PUSH EAX
00d2bf9b  e8d029dcff  CALL 0x00aee970
00d2bfa0  d94610  FLD float ptr [ESI + 0x10]
00d2bfa3  f30f10460c  MOVSS XMM0,dword ptr [ESI + 0xc]
00d2bfa8  d95e0c  FSTP float ptr [ESI + 0xc]
00d2bfab  f30f114610  MOVSS dword ptr [ESI + 0x10],XMM0
00d2bfb0  8b7618  MOV ESI,dword ptr [ESI + 0x18]
00d2bfb3  85f6  TEST ESI,ESI
00d2bfb5  750a  JNZ 0x00d2bfc1
00d2bfb7  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00d2bfba  83c704  ADD EDI,0x4
00d2bfbd  85f6  TEST ESI,ESI
00d2bfbf  74f6  JZ 0x00d2bfb7
00d2bfc1  3bf3  CMP ESI,EBX
00d2bfc3  75ab  JNZ 0x00d2bf70
00d2bfc5  8b9ddc000000  MOV EBX,dword ptr [EBP + 0xdc]
00d2bfcb  8b03  MOV EAX,dword ptr [EBX]
00d2bfcd  85c0  TEST EAX,EAX
00d2bfcf  7511  JNZ 0x00d2bfe2
00d2bfd1  83c304  ADD EBX,0x4
00d2bfd4  3903  CMP dword ptr [EBX],EAX
00d2bfd6  7508  JNZ 0x00d2bfe0
00d2bfd8  83c304  ADD EBX,0x4
00d2bfdb  833b00  CMP dword ptr [EBX],0x0
00d2bfde  74f8  JZ 0x00d2bfd8
00d2bfe0  8b03  MOV EAX,dword ptr [EBX]
00d2bfe2  8b8de0000000  MOV ECX,dword ptr [EBP + 0xe0]
00d2bfe8  8b95dc000000  MOV EDX,dword ptr [EBP + 0xdc]
00d2bfee  8b0c8a  MOV ECX,dword ptr [EDX + ECX*0x4]
00d2bff1  3bc1  CMP EAX,ECX
00d2bff3  894c2410  MOV dword ptr [ESP + 0x10],ECX
00d2bff7  7467  JZ 0x00d2c060
00d2bff9  8da42400000000  LEA ESP,[ESP]
00d2c000  0fb710  MOVZX EDX,word ptr [EAX]
00d2c003  8b8db4000000  MOV ECX,dword ptr [EBP + 0xb4]
00d2c009  8bb9cc000000  MOV EDI,dword ptr [ECX + 0xcc]
00d2c00f  0fb6ca  MOVZX ECX,DL
00d2c012  0faf4f08  IMUL ECX,dword ptr [EDI + 0x8]
00d2c016  0fb6d6  MOVZX EDX,DH
00d2c019  03ca  ADD ECX,EDX
00d2c01b  8bf1  MOV ESI,ECX
00d2c01d  83e107  AND ECX,0x7
00d2c020  b201  MOV DL,0x1
00d2c022  d2e2  SHL DL,CL
00d2c024  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00d2c027  c1fe03  SAR ESI,0x3
00d2c02a  03f1  ADD ESI,ECX
00d2c02c  80780200  CMP byte ptr [EAX + 0x2],0x0
00d2c030  7404  JZ 0x00d2c036
00d2c032  0816  OR byte ptr [ESI],DL
00d2c034  eb04  JMP 0x00d2c03a
00d2c036  f6d2  NOT DL
00d2c038  2016  AND byte ptr [ESI],DL
00d2c03a  80780200  CMP byte ptr [EAX + 0x2],0x0
00d2c03e  0f94c2  SETZ DL
00d2c041  885002  MOV byte ptr [EAX + 0x2],DL
00d2c044  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00d2c047  85c0  TEST EAX,EAX
00d2c049  750f  JNZ 0x00d2c05a
00d2c04b  eb03  JMP 0x00d2c050
00d2c04d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00d2c050  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00d2c053  83c304  ADD EBX,0x4
00d2c056  85c0  TEST EAX,EAX
00d2c058  74f6  JZ 0x00d2c050
00d2c05a  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00d2c05e  75a0  JNZ 0x00d2c000
00d2c060  83bdc400000000  CMP dword ptr [EBP + 0xc4],0x0
00d2c067  5f  POP EDI
00d2c068  5e  POP ESI
00d2c069  5b  POP EBX
00d2c06a  741e  JZ 0x00d2c08a
00d2c06c  8b8db4000000  MOV ECX,dword ptr [EBP + 0xb4]
00d2c072  85c9  TEST ECX,ECX
00d2c074  7414  JZ 0x00d2c08a
00d2c076  e8f513dcff  CALL 0x00aed470
00d2c07b  8b8db4000000  MOV ECX,dword ptr [EBP + 0xb4]
00d2c081  5d  POP EBP
00d2c082  83c408  ADD ESP,0x8
00d2c085  e9e649dcff  JMP 0x00af0a70
00d2c08a  5d  POP EBP
00d2c08b  83c408  ADD ESP,0x8
00d2c08e  c3  RET

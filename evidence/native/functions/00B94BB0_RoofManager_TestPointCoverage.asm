# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 RoofManager_TestPointCoverage(void * this, undefined4 * param_1, LPCRITICAL_SECTION param_2, char param_3)
Owned ranges: [[00b94bb0, 00b94c1b] [00b94c20, 00b94dfa]]

00b94bb0  83ec18  SUB ESP,0x18
00b94bb3  807c242000  CMP byte ptr [ESP + 0x20],0x0
00b94bb8  53  PUSH EBX
00b94bb9  55  PUSH EBP
00b94bba  56  PUSH ESI
00b94bbb  8be9  MOV EBP,ECX
00b94bbd  57  PUSH EDI
00b94bbe  896c2420  MOV dword ptr [ESP + 0x20],EBP
00b94bc2  0f843e010000  JZ 0x00b94d06
00b94bc8  8db5a0000000  LEA ESI,[EBP + 0xa0]
00b94bce  682c0b0701  PUSH 0x1070b2c
00b94bd3  8bce  MOV ECX,ESI
00b94bd5  89742418  MOV dword ptr [ESP + 0x18],ESI
00b94bd9  e822d094ff  CALL 0x004e1c00
00b94bde  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b94be2  83c008  ADD EAX,0x8
00b94be5  833800  CMP dword ptr [EAX],0x0
00b94be8  c744243000000000  MOV dword ptr [ESP + 0x30],0x0
00b94bf0  7f04  JG 0x00b94bf6
00b94bf2  8d442430  LEA EAX,[ESP + 0x30]
00b94bf6  8b5510  MOV EDX,dword ptr [EBP + 0x10]
00b94bf9  2b550c  SUB EDX,dword ptr [EBP + 0xc]
00b94bfc  8b00  MOV EAX,dword ptr [EAX]
00b94bfe  c1fa05  SAR EDX,0x5
00b94c01  3bc2  CMP EAX,EDX
00b94c03  89542418  MOV dword ptr [ESP + 0x18],EDX
00b94c07  89442410  MOV dword ptr [ESP + 0x10],EAX
00b94c0b  0f8dcd000000  JGE 0x00b94cde
00b94c11  8bc8  MOV ECX,EAX
00b94c13  c1e105  SHL ECX,0x5
00b94c16  894c2430  MOV dword ptr [ESP + 0x30],ECX
00b94c1a  eb08  JMP 0x00b94c24
00b94c1c  8d642400  .byte 8d642400 ; NONOWNED envelope gap bytes
00b94c20  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00b94c24  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b94c27  03c1  ADD EAX,ECX
00b94c29  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00b94c2c  8b31  MOV ESI,dword ptr [ECX]
00b94c2e  85f6  TEST ESI,ESI
00b94c30  8bf9  MOV EDI,ECX
00b94c32  7516  JNZ 0x00b94c4a
00b94c34  397104  CMP dword ptr [ECX + 0x4],ESI
00b94c37  8d7904  LEA EDI,[ECX + 0x4]
00b94c3a  750c  JNZ 0x00b94c48
00b94c3c  8d642400  LEA ESP,[ESP]
00b94c40  83c704  ADD EDI,0x4
00b94c43  833f00  CMP dword ptr [EDI],0x0
00b94c46  74f8  JZ 0x00b94c40
00b94c48  8b37  MOV ESI,dword ptr [EDI]
00b94c4a  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00b94c4d  8b1c81  MOV EBX,dword ptr [ECX + EAX*0x4]
00b94c50  3bf3  CMP ESI,EBX
00b94c52  746e  JZ 0x00b94cc2
00b94c54  8b6e04  MOV EBP,dword ptr [ESI + 0x4]
00b94c57  85ed  TEST EBP,EBP
00b94c59  744d  JZ 0x00b94ca8
00b94c5b  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b94c5f  d94004  FLD float ptr [EAX + 0x4]
00b94c62  8b5500  MOV EDX,dword ptr [EBP]
00b94c65  83ec08  SUB ESP,0x8
00b94c68  d95c2404  FSTP float ptr [ESP + 0x4]
00b94c6c  8bcd  MOV ECX,EBP
00b94c6e  d900  FLD float ptr [EAX]
00b94c70  8b4248  MOV EAX,dword ptr [EDX + 0x48]
00b94c73  d91c24  FSTP float ptr [ESP]
00b94c76  ffd0  CALL EAX
00b94c78  84c0  TEST AL,AL
00b94c7a  7428  JZ 0x00b94ca4
00b94c7c  807c243400  CMP byte ptr [ESP + 0x34],0x0
00b94c81  756e  JNZ 0x00b94cf1
00b94c83  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b94c87  d94004  FLD float ptr [EAX + 0x4]
00b94c8a  8b5500  MOV EDX,dword ptr [EBP]
00b94c8d  83ec08  SUB ESP,0x8
00b94c90  d95c2404  FSTP float ptr [ESP + 0x4]
00b94c94  8bcd  MOV ECX,EBP
00b94c96  d900  FLD float ptr [EAX]
00b94c98  8b4250  MOV EAX,dword ptr [EDX + 0x50]
00b94c9b  d91c24  FSTP float ptr [ESP]
00b94c9e  ffd0  CALL EAX
00b94ca0  84c0  TEST AL,AL
00b94ca2  744d  JZ 0x00b94cf1
00b94ca4  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00b94ca8  8b7608  MOV ESI,dword ptr [ESI + 0x8]
00b94cab  85f6  TEST ESI,ESI
00b94cad  750b  JNZ 0x00b94cba
00b94caf  90  NOP
00b94cb0  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00b94cb3  83c704  ADD EDI,0x4
00b94cb6  85f6  TEST ESI,ESI
00b94cb8  74f6  JZ 0x00b94cb0
00b94cba  3bf3  CMP ESI,EBX
00b94cbc  7596  JNZ 0x00b94c54
00b94cbe  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00b94cc2  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00b94cc6  8344243020  ADD dword ptr [ESP + 0x30],0x20
00b94ccb  83c001  ADD EAX,0x1
00b94cce  3bc2  CMP EAX,EDX
00b94cd0  89442410  MOV dword ptr [ESP + 0x10],EAX
00b94cd4  0f8c46ffffff  JL 0x00b94c20
00b94cda  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00b94cde  8bce  MOV ECX,ESI
00b94ce0  e8dbcf94ff  CALL 0x004e1cc0
00b94ce5  5f  POP EDI
00b94ce6  5e  POP ESI
00b94ce7  5d  POP EBP
00b94ce8  32c0  XOR AL,AL
00b94cea  5b  POP EBX
00b94ceb  83c418  ADD ESP,0x18
00b94cee  c20c00  RET 0xc
00b94cf1  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00b94cf5  e8c6cf94ff  CALL 0x004e1cc0
00b94cfa  5f  POP EDI
00b94cfb  5e  POP ESI
00b94cfc  5d  POP EBP
00b94cfd  b001  MOV AL,0x1
00b94cff  5b  POP EBX
00b94d00  83c418  ADD ESP,0x18
00b94d03  c20c00  RET 0xc
00b94d06  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00b94d0a  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00b94d0d  85c0  TEST EAX,EAX
00b94d0f  0f8cc5000000  JL 0x00b94dda
00b94d15  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
00b94d18  2b4d0c  SUB ECX,dword ptr [EBP + 0xc]
00b94d1b  c1f905  SAR ECX,0x5
00b94d1e  3bc1  CMP EAX,ECX
00b94d20  0f8db4000000  JGE 0x00b94dda
00b94d26  8dbda0000000  LEA EDI,[EBP + 0xa0]
00b94d2c  682c0b0701  PUSH 0x1070b2c
00b94d31  8bcf  MOV ECX,EDI
00b94d33  897c2434  MOV dword ptr [ESP + 0x34],EDI
00b94d37  e8c4ce94ff  CALL 0x004e1c00
00b94d3c  8b7308  MOV ESI,dword ptr [EBX + 0x8]
00b94d3f  c1e605  SHL ESI,0x5
00b94d42  03750c  ADD ESI,dword ptr [EBP + 0xc]
00b94d45  8d542420  LEA EDX,[ESP + 0x20]
00b94d49  52  PUSH EDX
00b94d4a  8bce  MOV ECX,ESI
00b94d4c  e81f60daff  CALL 0x0093ad70
00b94d51  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b94d54  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00b94d57  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00b94d5a  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00b94d5e  3bf0  CMP ESI,EAX
00b94d60  89442418  MOV dword ptr [ESP + 0x18],EAX
00b94d64  746d  JZ 0x00b94dd3
00b94d66  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00b94d6a  8d9b00000000  LEA EBX,[EBX]
00b94d70  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00b94d73  85ff  TEST EDI,EDI
00b94d75  7443  JZ 0x00b94dba
00b94d77  d94304  FLD float ptr [EBX + 0x4]
00b94d7a  8b17  MOV EDX,dword ptr [EDI]
00b94d7c  8b4248  MOV EAX,dword ptr [EDX + 0x48]
00b94d7f  83ec08  SUB ESP,0x8
00b94d82  d95c2404  FSTP float ptr [ESP + 0x4]
00b94d86  8bcf  MOV ECX,EDI
00b94d88  d903  FLD float ptr [EBX]
00b94d8a  d91c24  FSTP float ptr [ESP]
00b94d8d  ffd0  CALL EAX
00b94d8f  84c0  TEST AL,AL
00b94d91  7423  JZ 0x00b94db6
00b94d93  807c243400  CMP byte ptr [ESP + 0x34],0x0
00b94d98  754c  JNZ 0x00b94de6
00b94d9a  d94304  FLD float ptr [EBX + 0x4]
00b94d9d  8b17  MOV EDX,dword ptr [EDI]
00b94d9f  8b4250  MOV EAX,dword ptr [EDX + 0x50]
00b94da2  83ec08  SUB ESP,0x8
00b94da5  d95c2404  FSTP float ptr [ESP + 0x4]
00b94da9  8bcf  MOV ECX,EDI
00b94dab  d903  FLD float ptr [EBX]
00b94dad  d91c24  FSTP float ptr [ESP]
00b94db0  ffd0  CALL EAX
00b94db2  84c0  TEST AL,AL
00b94db4  7430  JZ 0x00b94de6
00b94db6  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00b94dba  8b7608  MOV ESI,dword ptr [ESI + 0x8]
00b94dbd  85f6  TEST ESI,ESI
00b94dbf  750a  JNZ 0x00b94dcb
00b94dc1  8b7504  MOV ESI,dword ptr [EBP + 0x4]
00b94dc4  83c504  ADD EBP,0x4
00b94dc7  85f6  TEST ESI,ESI
00b94dc9  74f6  JZ 0x00b94dc1
00b94dcb  3bf0  CMP ESI,EAX
00b94dcd  75a1  JNZ 0x00b94d70
00b94dcf  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
00b94dd3  8bcf  MOV ECX,EDI
00b94dd5  e8e6ce94ff  CALL 0x004e1cc0
00b94dda  5f  POP EDI
00b94ddb  5e  POP ESI
00b94ddc  5d  POP EBP
00b94ddd  32c0  XOR AL,AL
00b94ddf  5b  POP EBX
00b94de0  83c418  ADD ESP,0x18
00b94de3  c20c00  RET 0xc
00b94de6  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00b94dea  e8d1ce94ff  CALL 0x004e1cc0
00b94def  5f  POP EDI
00b94df0  5e  POP ESI
00b94df1  5d  POP EBP
00b94df2  b001  MOV AL,0x1
00b94df4  5b  POP EBX
00b94df5  83c418  ADD ESP,0x18
00b94df8  c20c00  RET 0xc

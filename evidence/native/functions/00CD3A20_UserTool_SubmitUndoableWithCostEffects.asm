# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00cd3a20 UserTool_SubmitUndoableWithCostEffects
# Body [[00cd3a20, 00cd3cc2]]; owned bytes=675
00cd3a20  55  PUSH EBP
00cd3a21  8bec  MOV EBP,ESP
00cd3a23  83e4f0  AND ESP,0xfffffff0
00cd3a26  81eca4000000  SUB ESP,0xa4
00cd3a2c  53  PUSH EBX
00cd3a2d  56  PUSH ESI
00cd3a2e  57  PUSH EDI
00cd3a2f  8bf9  MOV EDI,ECX
00cd3a31  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00cd3a34  8b01  MOV EAX,dword ptr [ECX]
00cd3a36  8b5034  MOV EDX,dword ptr [EAX + 0x34]
00cd3a39  ffd2  CALL EDX
00cd3a3b  d954241c  FST float ptr [ESP + 0x1c]
00cd3a3f  d9e1  FABS
00cd3a41  d905ece60601  FLD float ptr [0x0106e6ec]
00cd3a47  dff1  FCOMIP ST0,ST1
00cd3a49  ddd8  FSTP ST0
00cd3a4b  0f87eb010000  JA 0x00cd3c3c
00cd3a51  d944241c  FLD float ptr [ESP + 0x1c]
00cd3a55  db5c2418  FISTP dword ptr [ESP + 0x18]
00cd3a59  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00cd3a5d  85c0  TEST EAX,EAX
00cd3a5f  8bd8  MOV EBX,EAX
00cd3a61  7517  JNZ 0x00cd3a7a
00cd3a63  f30f1044241c  MOVSS XMM0,dword ptr [ESP + 0x1c]
00cd3a69  0f2f05cc4c0f01  COMISS XMM0,dword ptr [0x010f4ccc]
00cd3a70  7205  JC 0x00cd3a77
00cd3a72  8d5801  LEA EBX,[EAX + 0x1]
00cd3a75  eb03  JMP 0x00cd3a7a
00cd3a77  83cbff  OR EBX,0xffffffff
00cd3a7a  807f1c00  CMP byte ptr [EDI + 0x1c],0x0
00cd3a7e  0f85b8010000  JNZ 0x00cd3c3c
00cd3a84  837f2000  CMP dword ptr [EDI + 0x20],0x0
00cd3a88  750a  JNZ 0x00cd3a94
00cd3a8a  807d0c00  CMP byte ptr [EBP + 0xc],0x0
00cd3a8e  0f84a8010000  JZ 0x00cd3c3c
00cd3a94  85db  TEST EBX,EBX
00cd3a96  68701f0001  PUSH 0x1001f70
00cd3a9b  68601f0001  PUSH 0x1001f60
00cd3aa0  7e15  JLE 0x00cd3ab7
00cd3aa2  8bcb  MOV ECX,EBX
00cd3aa4  f7d9  NEG ECX
00cd3aa6  6a40  PUSH 0x40
00cd3aa8  8d44243c  LEA EAX,[ESP + 0x3c]
00cd3aac  894c2428  MOV dword ptr [ESP + 0x28],ECX
00cd3ab0  db442428  FILD dword ptr [ESP + 0x28]
00cd3ab4  50  PUSH EAX
00cd3ab5  eb1a  JMP 0x00cd3ad1
00cd3ab7  8bc3  MOV EAX,EBX
00cd3ab9  f7d8  NEG EAX
00cd3abb  6a3f  PUSH 0x3f
00cd3abd  8d54243e  LEA EDX,[ESP + 0x3e]
00cd3ac1  89442428  MOV dword ptr [ESP + 0x28],EAX
00cd3ac5  db442428  FILD dword ptr [ESP + 0x28]
00cd3ac9  66c744243c2b00  MOV word ptr [ESP + 0x3c],0x2b
00cd3ad0  52  PUSH EDX
00cd3ad1  83ec08  SUB ESP,0x8
00cd3ad4  dd1c24  FSTP double ptr [ESP]
00cd3ad7  e8545b77ff  CALL 0x00449630
00cd3adc  83c418  ADD ESP,0x18
00cd3adf  837f2000  CMP dword ptr [EDI + 0x20],0x0
00cd3ae3  6a00  PUSH 0x0
00cd3ae5  6a00  PUSH 0x0
00cd3ae7  6a00  PUSH 0x0
00cd3ae9  6a00  PUSH 0x0
00cd3aeb  68d4600601  PUSH 0x10660d4
00cd3af0  c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
00cd3af8  6a40  PUSH 0x40
00cd3afa  7451  JZ 0x00cd3b4d
00cd3afc  e8ff0981ff  CALL 0x004e4500
00cd3b01  83c418  ADD ESP,0x18
00cd3b04  85c0  TEST EAX,EAX
00cd3b06  741e  JZ 0x00cd3b26
00cd3b08  807f2400  CMP byte ptr [EDI + 0x24],0x0
00cd3b0c  b95cfa0701  MOV ECX,0x107fa5c
00cd3b11  7505  JNZ 0x00cd3b18
00cd3b13  b94cfa0701  MOV ECX,0x107fa4c
00cd3b18  51  PUSH ECX
00cd3b19  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00cd3b1c  51  PUSH ECX
00cd3b1d  8bc8  MOV ECX,EAX
00cd3b1f  e80c870000  CALL 0x00cdc230
00cd3b24  eb02  JMP 0x00cd3b28
00cd3b26  33c0  XOR EAX,EAX
00cd3b28  50  PUSH EAX
00cd3b29  8d4c241c  LEA ECX,[ESP + 0x1c]
00cd3b2d  e85e2a89ff  CALL 0x00566590
00cd3b32  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00cd3b35  8d542420  LEA EDX,[ESP + 0x20]
00cd3b39  52  PUSH EDX
00cd3b3a  e8117f0000  CALL 0x00cdba50
00cd3b3f  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00cd3b43  50  PUSH EAX
00cd3b44  8bce  MOV ECX,ESI
00cd3b46  e8957e0000  CALL 0x00cdb9e0
00cd3b4b  eb3f  JMP 0x00cd3b8c
00cd3b4d  e8ae0981ff  CALL 0x004e4500
00cd3b52  83c418  ADD ESP,0x18
00cd3b55  85c0  TEST EAX,EAX
00cd3b57  7412  JZ 0x00cd3b6b
00cd3b59  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00cd3b5c  684cfa0701  PUSH 0x107fa4c
00cd3b61  51  PUSH ECX
00cd3b62  8bc8  MOV ECX,EAX
00cd3b64  e8c7860000  CALL 0x00cdc230
00cd3b69  eb02  JMP 0x00cd3b6d
00cd3b6b  33c0  XOR EAX,EAX
00cd3b6d  50  PUSH EAX
00cd3b6e  8d4c241c  LEA ECX,[ESP + 0x1c]
00cd3b72  e8192a89ff  CALL 0x00566590
00cd3b77  8d742420  LEA ESI,[ESP + 0x20]
00cd3b7b  e8b0f5ffff  CALL 0x00cd3130
00cd3b80  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00cd3b84  50  PUSH EAX
00cd3b85  8bce  MOV ECX,ESI
00cd3b87  e8347e0000  CALL 0x00cdb9c0
00cd3b8c  d9e8  FLD1
00cd3b8e  6a00  PUSH 0x0
00cd3b90  83ec08  SUB ESP,0x8
00cd3b93  d9542404  FST float ptr [ESP + 0x4]
00cd3b97  8bce  MOV ECX,ESI
00cd3b99  d91c24  FSTP float ptr [ESP]
00cd3b9c  e8af7f0000  CALL 0x00cdbb50
00cd3ba1  8d542430  LEA EDX,[ESP + 0x30]
00cd3ba5  52  PUSH EDX
00cd3ba6  8bce  MOV ECX,ESI
00cd3ba8  e823870000  CALL 0x00cdc2d0
00cd3bad  6a01  PUSH 0x1
00cd3baf  8bce  MOV ECX,ESI
00cd3bb1  c6463100  MOV byte ptr [ESI + 0x31],0x0
00cd3bb5  e856800000  CALL 0x00cdbc10
00cd3bba  6a00  PUSH 0x0
00cd3bbc  8bce  MOV ECX,ESI
00cd3bbe  e84d7d0000  CALL 0x00cdb910
00cd3bc3  85db  TEST EBX,EBX
00cd3bc5  7e44  JLE 0x00cd3c0b
00cd3bc7  8b4730  MOV EAX,dword ptr [EDI + 0x30]
00cd3bca  85c0  TEST EAX,EAX
00cd3bcc  740b  JZ 0x00cd3bd9
00cd3bce  6a00  PUSH 0x0
00cd3bd0  50  PUSH EAX
00cd3bd1  e80acdb8ff  CALL 0x008608e0
00cd3bd6  83c408  ADD ESP,0x8
00cd3bd9  e822c2bdff  CALL 0x008afe00
00cd3bde  85c0  TEST EAX,EAX
00cd3be0  740b  JZ 0x00cd3bed
00cd3be2  8b10  MOV EDX,dword ptr [EAX]
00cd3be4  8bc8  MOV ECX,EAX
00cd3be6  8b4228  MOV EAX,dword ptr [EDX + 0x28]
00cd3be9  ffd0  CALL EAX
00cd3beb  eb02  JMP 0x00cd3bef
00cd3bed  33c0  XOR EAX,EAX
00cd3bef  894730  MOV dword ptr [EDI + 0x30],EAX
00cd3bf2  8b0d5cbf1e01  MOV ECX,dword ptr [0x011ebf5c]
00cd3bf8  8b1558bf1e01  MOV EDX,dword ptr [0x011ebf58]
00cd3bfe  50  PUSH EAX
00cd3bff  51  PUSH ECX
00cd3c00  52  PUSH EDX
00cd3c01  e87accb8ff  CALL 0x00860880
00cd3c06  83c40c  ADD ESP,0xc
00cd3c09  eb15  JMP 0x00cd3c20
00cd3c0b  a164bf1e01  MOV EAX,[0x011ebf64]
00cd3c10  8b0d60bf1e01  MOV ECX,dword ptr [0x011ebf60]
00cd3c16  50  PUSH EAX
00cd3c17  51  PUSH ECX
00cd3c18  e883c8ffff  CALL 0x00cd04a0
00cd3c1d  83c408  ADD ESP,0x8
00cd3c20  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00cd3c23  83c0ff  ADD EAX,-0x1
00cd3c26  894604  MOV dword ptr [ESI + 0x4],EAX
00cd3c29  7511  JNZ 0x00cd3c3c
00cd3c2b  c7460401000000  MOV dword ptr [ESI + 0x4],0x1
00cd3c32  8b16  MOV EDX,dword ptr [ESI]
00cd3c34  8b02  MOV EAX,dword ptr [EDX]
00cd3c36  6a01  PUSH 0x1
00cd3c38  8bce  MOV ECX,ESI
00cd3c3a  ffd0  CALL EAX
00cd3c3c  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00cd3c3f  33f6  XOR ESI,ESI
00cd3c41  3bce  CMP ECX,ESI
00cd3c43  7431  JZ 0x00cd3c76
00cd3c45  6a01  PUSH 0x1
00cd3c47  e8247d0000  CALL 0x00cdb970
00cd3c4c  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00cd3c4f  3bce  CMP ECX,ESI
00cd3c51  741f  JZ 0x00cd3c72
00cd3c53  897720  MOV dword ptr [EDI + 0x20],ESI
00cd3c56  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00cd3c59  83c0ff  ADD EAX,-0x1
00cd3c5c  3bc6  CMP EAX,ESI
00cd3c5e  894104  MOV dword ptr [ECX + 0x4],EAX
00cd3c61  750f  JNZ 0x00cd3c72
00cd3c63  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00cd3c6a  8b11  MOV EDX,dword ptr [ECX]
00cd3c6c  8b02  MOV EAX,dword ptr [EDX]
00cd3c6e  6a01  PUSH 0x1
00cd3c70  ffd0  CALL EAX
00cd3c72  c6472400  MOV byte ptr [EDI + 0x24],0x0
00cd3c76  8b4f28  MOV ECX,dword ptr [EDI + 0x28]
00cd3c79  3bce  CMP ECX,ESI
00cd3c7b  7431  JZ 0x00cd3cae
00cd3c7d  6a01  PUSH 0x1
00cd3c7f  e8ec7c0000  CALL 0x00cdb970
00cd3c84  8b4f28  MOV ECX,dword ptr [EDI + 0x28]
00cd3c87  3bce  CMP ECX,ESI
00cd3c89  741f  JZ 0x00cd3caa
00cd3c8b  897728  MOV dword ptr [EDI + 0x28],ESI
00cd3c8e  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00cd3c91  83c0ff  ADD EAX,-0x1
00cd3c94  3bc6  CMP EAX,ESI
00cd3c96  894104  MOV dword ptr [ECX + 0x4],EAX
00cd3c99  750f  JNZ 0x00cd3caa
00cd3c9b  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00cd3ca2  8b11  MOV EDX,dword ptr [ECX]
00cd3ca4  8b02  MOV EAX,dword ptr [EDX]
00cd3ca6  6a01  PUSH 0x1
00cd3ca8  ffd0  CALL EAX
00cd3caa  c6472c00  MOV byte ptr [EDI + 0x2c],0x0
00cd3cae  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00cd3cb1  51  PUSH ECX
00cd3cb2  8b4f18  MOV ECX,dword ptr [EDI + 0x18]
00cd3cb5  e8c65c0600  CALL 0x00d39980
00cd3cba  5f  POP EDI
00cd3cbb  5e  POP ESI
00cd3cbc  5b  POP EBX
00cd3cbd  8be5  MOV ESP,EBP
00cd3cbf  5d  POP EBP
00cd3cc0  c20800  RET 0x8

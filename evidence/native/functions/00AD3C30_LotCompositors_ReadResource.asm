# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotCompositors_ReadResource
Paired actual annotated Ghidra pseudocode: 00AD3C30_LotCompositors_ReadResource.c
Owned ranges: [[00ad3c30, 00ad3e39] [00ad3e40, 00ad3ef6]]
Envelope bytes=711

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ad3c30  83ec28  SUB ESP,0x28
00ad3c33  53  PUSH EBX
00ad3c34  55  PUSH EBP
00ad3c35  56  PUSH ESI
00ad3c36  57  PUSH EDI
00ad3c37  8bf9  MOV EDI,ECX
00ad3c39  e842c29dff  CALL 0x004afe80
00ad3c3e  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00ad3c41  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00ad3c44  50  PUSH EAX
00ad3c45  51  PUSH ECX
00ad3c46  8bcf  MOV ECX,EDI
00ad3c48  e8e3f4ffff  CALL 0x00ad3130
00ad3c4d  8d7720  LEA ESI,[EDI + 0x20]
00ad3c50  33db  XOR EBX,EBX
00ad3c52  895f0c  MOV dword ptr [EDI + 0xc],EBX
00ad3c55  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ad3c58  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00ad3c5b  52  PUSH EDX
00ad3c5c  50  PUSH EAX
00ad3c5d  8bce  MOV ECX,ESI
00ad3c5f  e8ccf4ffff  CALL 0x00ad3130
00ad3c64  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00ad3c68  8b6c2444  MOV EBP,dword ptr [ESP + 0x44]
00ad3c6c  895e0c  MOV dword ptr [ESI + 0xc],EBX
00ad3c6f  8b74243c  MOV ESI,dword ptr [ESP + 0x3c]
00ad3c73  53  PUSH EBX
00ad3c74  8d54242c  LEA EDX,[ESP + 0x2c]
00ad3c78  894c2430  MOV dword ptr [ESP + 0x30],ECX
00ad3c7c  52  PUSH EDX
00ad3c7d  8bce  MOV ECX,ESI
00ad3c7f  896c2430  MOV dword ptr [ESP + 0x30],EBP
00ad3c83  c74424389e916305  MOV dword ptr [ESP + 0x38],0x563919e
00ad3c8b  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00ad3c8f  e82c48d0ff  CALL 0x007d84c0
00ad3c94  84c0  TEST AL,AL
00ad3c96  0f843b020000  JZ 0x00ad3ed7
00ad3c9c  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ad3c9f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00ad3ca2  50  PUSH EAX
00ad3ca3  8d4c2414  LEA ECX,[ESP + 0x14]
00ad3ca7  51  PUSH ECX
00ad3ca8  52  PUSH EDX
00ad3ca9  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00ad3cad  e8ce9ca0ff  CALL 0x004dd980
00ad3cb2  83c40c  ADD ESP,0xc
00ad3cb5  8bce  MOV ECX,ESI
00ad3cb7  50  PUSH EAX
00ad3cb8  e8333dd0ff  CALL 0x007d79f0
00ad3cbd  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00ad3cc1  8d48ff  LEA ECX,[EAX + -0x1]
00ad3cc4  83f904  CMP ECX,0x4
00ad3cc7  0f8717020000  JA 0x00ad3ee4
00ad3ccd  83f805  CMP EAX,0x5
00ad3cd0  7323  JNC 0x00ad3cf5
00ad3cd2  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
00ad3cd6  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00ad3cda  50  PUSH EAX
00ad3cdb  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00ad3cdf  52  PUSH EDX
00ad3ce0  50  PUSH EAX
00ad3ce1  55  PUSH EBP
00ad3ce2  51  PUSH ECX
00ad3ce3  56  PUSH ESI
00ad3ce4  8bcf  MOV ECX,EDI
00ad3ce6  e815fbffff  CALL 0x00ad3800
00ad3ceb  5f  POP EDI
00ad3cec  5e  POP ESI
00ad3ced  5d  POP EBP
00ad3cee  5b  POP EBX
00ad3cef  83c428  ADD ESP,0x28
00ad3cf2  c21400  RET 0x14
00ad3cf5  8d542414  LEA EDX,[ESP + 0x14]
00ad3cf9  52  PUSH EDX
00ad3cfa  8bce  MOV ECX,ESI
00ad3cfc  e8af47a9ff  CALL 0x005684b0
00ad3d01  385e14  CMP byte ptr [ESI + 0x14],BL
00ad3d04  8bce  MOV ECX,ESI
00ad3d06  0f84da010000  JZ 0x00ad3ee6
00ad3d0c  e85f47d0ff  CALL 0x007d8470
00ad3d11  8944244c  MOV dword ptr [ESP + 0x4c],EAX
00ad3d15  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ad3d19  53  PUSH EBX
00ad3d1a  50  PUSH EAX
00ad3d1b  8bce  MOV ECX,ESI
00ad3d1d  e86e47d0ff  CALL 0x007d8490
00ad3d22  8b6c2440  MOV EBP,dword ptr [ESP + 0x40]
00ad3d26  55  PUSH EBP
00ad3d27  8d4f44  LEA ECX,[EDI + 0x44]
00ad3d2a  56  PUSH ESI
00ad3d2b  e81036b3ff  CALL 0x00607340
00ad3d30  84c0  TEST AL,AL
00ad3d32  0f84ac010000  JZ 0x00ad3ee4
00ad3d38  8b4c244c  MOV ECX,dword ptr [ESP + 0x4c]
00ad3d3c  53  PUSH EBX
00ad3d3d  51  PUSH ECX
00ad3d3e  8bce  MOV ECX,ESI
00ad3d40  e84b47d0ff  CALL 0x007d8490
00ad3d45  8d54243c  LEA EDX,[ESP + 0x3c]
00ad3d49  52  PUSH EDX
00ad3d4a  8bce  MOV ECX,ESI
00ad3d4c  895c2440  MOV dword ptr [ESP + 0x40],EBX
00ad3d50  e85b47a9ff  CALL 0x005684b0
00ad3d55  395c243c  CMP dword ptr [ESP + 0x3c],EBX
00ad3d59  895c2444  MOV dword ptr [ESP + 0x44],EBX
00ad3d5d  0f86aa000000  JBE 0x00ad3e0d
00ad3d63  385e14  CMP byte ptr [ESI + 0x14],BL
00ad3d66  0f84a1000000  JZ 0x00ad3e0d
00ad3d6c  8d442418  LEA EAX,[ESP + 0x18]
00ad3d70  50  PUSH EAX
00ad3d71  56  PUSH ESI
00ad3d72  8bcd  MOV ECX,EBP
00ad3d74  895c2420  MOV dword ptr [ESP + 0x20],EBX
00ad3d78  895c2424  MOV dword ptr [ESP + 0x24],EBX
00ad3d7c  895c2428  MOV dword ptr [ESP + 0x28],EBX
00ad3d80  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00ad3d84  e8e736d0ff  CALL 0x007d7470
00ad3d89  8b6e08  MOV EBP,dword ptr [ESI + 0x8]
00ad3d8c  8d4c244c  LEA ECX,[ESP + 0x4c]
00ad3d90  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00ad3d94  e807b2c7ff  CALL 0x0074efa0
00ad3d99  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00ad3d9d  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00ad3da1  50  PUSH EAX
00ad3da2  51  PUSH ECX
00ad3da3  52  PUSH EDX
00ad3da4  8d4744  LEA EAX,[EDI + 0x44]
00ad3da7  50  PUSH EAX
00ad3da8  55  PUSH EBP
00ad3da9  e86240b3ff  CALL 0x00607e10
00ad3dae  83c414  ADD ESP,0x14
00ad3db1  84c0  TEST AL,AL
00ad3db3  7430  JZ 0x00ad3de5
00ad3db5  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00ad3db9  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ad3dbd  894808  MOV dword ptr [EAX + 0x8],ECX
00ad3dc0  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00ad3dc4  83c008  ADD EAX,0x8
00ad3dc7  895004  MOV dword ptr [EAX + 0x4],EDX
00ad3dca  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ad3dce  894808  MOV dword ptr [EAX + 0x8],ECX
00ad3dd1  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00ad3dd5  89500c  MOV dword ptr [EAX + 0xc],EDX
00ad3dd8  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00ad3ddc  53  PUSH EBX
00ad3ddd  50  PUSH EAX
00ad3dde  8bcf  MOV ECX,EDI
00ad3de0  e8ebf5ffff  CALL 0x00ad33d0
00ad3de5  8b4c244c  MOV ECX,dword ptr [ESP + 0x4c]
00ad3de9  3bcb  CMP ECX,EBX
00ad3deb  7407  JZ 0x00ad3df4
00ad3ded  8b11  MOV EDX,dword ptr [ECX]
00ad3def  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ad3df2  ffd0  CALL EAX
00ad3df4  8b442444  MOV EAX,dword ptr [ESP + 0x44]
00ad3df8  8b6c2440  MOV EBP,dword ptr [ESP + 0x40]
00ad3dfc  83c001  ADD EAX,0x1
00ad3dff  3b44243c  CMP EAX,dword ptr [ESP + 0x3c]
00ad3e03  89442444  MOV dword ptr [ESP + 0x44],EAX
00ad3e07  0f8256ffffff  JC 0x00ad3d63
00ad3e0d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00ad3e10  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00ad3e13  51  PUSH ECX
00ad3e14  8d542440  LEA EDX,[ESP + 0x40]
00ad3e18  52  PUSH EDX
00ad3e19  50  PUSH EAX
00ad3e1a  e8619ba0ff  CALL 0x004dd980
00ad3e1f  83c40c  ADD ESP,0xc
00ad3e22  8bce  MOV ECX,ESI
00ad3e24  50  PUSH EAX
00ad3e25  e8c63bd0ff  CALL 0x007d79f0
00ad3e2a  395c243c  CMP dword ptr [ESP + 0x3c],EBX
00ad3e2e  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00ad3e32  0f8698000000  JBE 0x00ad3ed0
00ad3e38  eb06  JMP 0x00ad3e40
00ad3e3a  8d  .byte (gap/alignment)
00ad3e3b  9b  .byte (gap/alignment)
00ad3e3c  00  .byte (gap/alignment)
00ad3e3d  00  .byte (gap/alignment)
00ad3e3e  00  .byte (gap/alignment)
00ad3e3f  00  .byte (gap/alignment)
00ad3e40  385e14  CMP byte ptr [ESI + 0x14],BL
00ad3e43  0f8487000000  JZ 0x00ad3ed0
00ad3e49  8d4c2418  LEA ECX,[ESP + 0x18]
00ad3e4d  51  PUSH ECX
00ad3e4e  56  PUSH ESI
00ad3e4f  8bcd  MOV ECX,EBP
00ad3e51  895c2420  MOV dword ptr [ESP + 0x20],EBX
00ad3e55  895c2424  MOV dword ptr [ESP + 0x24],EBX
00ad3e59  895c2428  MOV dword ptr [ESP + 0x28],EBX
00ad3e5d  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00ad3e61  e80a36d0ff  CALL 0x007d7470
00ad3e66  8d542440  LEA EDX,[ESP + 0x40]
00ad3e6a  52  PUSH EDX
00ad3e6b  55  PUSH EBP
00ad3e6c  56  PUSH ESI
00ad3e6d  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00ad3e71  e89ac2aeff  CALL 0x005c0110
00ad3e76  83c40c  ADD ESP,0xc
00ad3e79  84c0  TEST AL,AL
00ad3e7b  742f  JZ 0x00ad3eac
00ad3e7d  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00ad3e81  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ad3e85  894808  MOV dword ptr [EAX + 0x8],ECX
00ad3e88  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00ad3e8c  83c008  ADD EAX,0x8
00ad3e8f  895004  MOV dword ptr [EAX + 0x4],EDX
00ad3e92  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ad3e96  894808  MOV dword ptr [EAX + 0x8],ECX
00ad3e99  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00ad3e9d  89500c  MOV dword ptr [EAX + 0xc],EDX
00ad3ea0  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00ad3ea4  50  PUSH EAX
00ad3ea5  8bcf  MOV ECX,EDI
00ad3ea7  e874f7ffff  CALL 0x00ad3620
00ad3eac  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00ad3eb0  3bcb  CMP ECX,EBX
00ad3eb2  7407  JZ 0x00ad3ebb
00ad3eb4  8b11  MOV EDX,dword ptr [ECX]
00ad3eb6  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00ad3eb9  ffd0  CALL EAX
00ad3ebb  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00ad3ebf  83c001  ADD EAX,0x1
00ad3ec2  3b44243c  CMP EAX,dword ptr [ESP + 0x3c]
00ad3ec6  8944244c  MOV dword ptr [ESP + 0x4c],EAX
00ad3eca  0f8270ffffff  JC 0x00ad3e40
00ad3ed0  8bce  MOV ECX,ESI
00ad3ed2  e8993bd0ff  CALL 0x007d7a70
00ad3ed7  8a4614  MOV AL,byte ptr [ESI + 0x14]
00ad3eda  5f  POP EDI
00ad3edb  5e  POP ESI
00ad3edc  5d  POP EBP
00ad3edd  5b  POP EBX
00ad3ede  83c428  ADD ESP,0x28
00ad3ee1  c21400  RET 0x14
00ad3ee4  8bce  MOV ECX,ESI
00ad3ee6  e8853bd0ff  CALL 0x007d7a70
00ad3eeb  5f  POP EDI
00ad3eec  5e  POP ESI
00ad3eed  5d  POP EBP
00ad3eee  32c0  XOR AL,AL
00ad3ef0  5b  POP EBX
00ad3ef1  83c428  ADD ESP,0x28
00ad3ef4  c21400  RET 0x14
Owned instructions=238 owned bytes=705 gap/nonowned bytes=6

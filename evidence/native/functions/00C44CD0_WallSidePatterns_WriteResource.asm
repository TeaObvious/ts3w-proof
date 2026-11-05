# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallSidePatterns_WriteResource
Paired actual annotated Ghidra pseudocode: 00C44CD0_WallSidePatterns_WriteResource.c
Owned ranges: [[00c44cd0, 00c44e81]]
Envelope bytes=434

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c44cd0  83ec1c  SUB ESP,0x1c
00c44cd3  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00c44cd7  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c44cdb  53  PUSH EBX
00c44cdc  56  PUSH ESI
00c44cdd  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00c44ce1  8bd9  MOV EBX,ECX
00c44ce3  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00c44ce7  89442414  MOV dword ptr [ESP + 0x14],EAX
00c44ceb  6a01  PUSH 0x1
00c44ced  8d442418  LEA EAX,[ESP + 0x18]
00c44cf1  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00c44cf5  50  PUSH EAX
00c44cf6  8bce  MOV ECX,ESI
00c44cf8  895c2410  MOV dword ptr [ESP + 0x10],EBX
00c44cfc  c7442424712942b1  MOV dword ptr [ESP + 0x24],0xb1422971
00c44d04  89542428  MOV dword ptr [ESP + 0x28],EDX
00c44d08  e8b337b9ff  CALL 0x007d84c0
00c44d0d  84c0  TEST AL,AL
00c44d0f  0f8463010000  JZ 0x00c44e78
00c44d15  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c44d18  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c44d1b  55  PUSH EBP
00c44d1c  57  PUSH EDI
00c44d1d  51  PUSH ECX
00c44d1e  6a04  PUSH 0x4
00c44d20  52  PUSH EDX
00c44d21  e84a9289ff  CALL 0x004ddf70
00c44d26  83c40c  ADD ESP,0xc
00c44d29  8bce  MOV ECX,ESI
00c44d2b  50  PUSH EAX
00c44d2c  e8bf2cb9ff  CALL 0x007d79f0
00c44d31  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c44d34  8b4324  MOV EAX,dword ptr [EBX + 0x24]
00c44d37  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c44d3a  51  PUSH ECX
00c44d3b  50  PUSH EAX
00c44d3c  52  PUSH EDX
00c44d3d  e82e9289ff  CALL 0x004ddf70
00c44d42  83c40c  ADD ESP,0xc
00c44d45  8bce  MOV ECX,ESI
00c44d47  50  PUSH EAX
00c44d48  e8a32cb9ff  CALL 0x007d79f0
00c44d4d  8b431c  MOV EAX,dword ptr [EBX + 0x1c]
00c44d50  8b38  MOV EDI,dword ptr [EAX]
00c44d52  85ff  TEST EDI,EDI
00c44d54  7514  JNZ 0x00c44d6a
00c44d56  83c004  ADD EAX,0x4
00c44d59  3938  CMP dword ptr [EAX],EDI
00c44d5b  750b  JNZ 0x00c44d68
00c44d5d  8d4900  LEA ECX,[ECX]
00c44d60  83c004  ADD EAX,0x4
00c44d63  833800  CMP dword ptr [EAX],0x0
00c44d66  74f8  JZ 0x00c44d60
00c44d68  8b38  MOV EDI,dword ptr [EAX]
00c44d6a  8b4b1c  MOV ECX,dword ptr [EBX + 0x1c]
00c44d6d  8be8  MOV EBP,EAX
00c44d6f  8b4320  MOV EAX,dword ptr [EBX + 0x20]
00c44d72  8b0481  MOV EAX,dword ptr [ECX + EAX*0x4]
00c44d75  3bf8  CMP EDI,EAX
00c44d77  89442414  MOV dword ptr [ESP + 0x14],EAX
00c44d7b  0f84e3000000  JZ 0x00c44e64
00c44d81  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c44d84  8b07  MOV EAX,dword ptr [EDI]
00c44d86  52  PUSH EDX
00c44d87  50  PUSH EAX
00c44d88  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c44d8b  50  PUSH EAX
00c44d8c  e8cf9289ff  CALL 0x004de060
00c44d91  83c40c  ADD ESP,0xc
00c44d94  8bce  MOV ECX,ESI
00c44d96  50  PUSH EAX
00c44d97  e8542cb9ff  CALL 0x007d79f0
00c44d9c  0fb74704  MOVZX EAX,word ptr [EDI + 0x4]
00c44da0  85c0  TEST EAX,EAX
00c44da2  89442438  MOV dword ptr [ESP + 0x38],EAX
00c44da6  7505  JNZ 0x00c44dad
00c44da8  8d4378  LEA EAX,[EBX + 0x78]
00c44dab  eb2a  JMP 0x00c44dd7
00c44dad  8d4c2438  LEA ECX,[ESP + 0x38]
00c44db1  51  PUSH ECX
00c44db2  8d542440  LEA EDX,[ESP + 0x40]
00c44db6  83c358  ADD EBX,0x58
00c44db9  52  PUSH EDX
00c44dba  8bcb  MOV ECX,EBX
00c44dbc  e86f1ed9ff  CALL 0x009d6c30
00c44dc1  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00c44dc4  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00c44dc7  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00c44dcb  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00c44dce  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00c44dd2  7407  JZ 0x00c44ddb
00c44dd4  83c008  ADD EAX,0x8
00c44dd7  85c0  TEST EAX,EAX
00c44dd9  7505  JNZ 0x00c44de0
00c44ddb  b8c0c81e01  MOV EAX,0x11ec8c0
00c44de0  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00c44de4  6a00  PUSH 0x0
00c44de6  50  PUSH EAX
00c44de7  e87426b9ff  CALL 0x007d7460
00c44dec  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c44def  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c44df2  0fb7c0  MOVZX EAX,AX
00c44df5  51  PUSH ECX
00c44df6  50  PUSH EAX
00c44df7  52  PUSH EDX
00c44df8  e8739089ff  CALL 0x004dde70
00c44dfd  83c40c  ADD ESP,0xc
00c44e00  8bce  MOV ECX,ESI
00c44e02  50  PUSH EAX
00c44e03  e8e82bb9ff  CALL 0x007d79f0
00c44e08  0fb74708  MOVZX EAX,word ptr [EDI + 0x8]
00c44e0c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c44e0f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c44e12  51  PUSH ECX
00c44e13  50  PUSH EAX
00c44e14  52  PUSH EDX
00c44e15  e8569089ff  CALL 0x004dde70
00c44e1a  83c40c  ADD ESP,0xc
00c44e1d  8bce  MOV ECX,ESI
00c44e1f  50  PUSH EAX
00c44e20  e8cb2bb9ff  CALL 0x007d79f0
00c44e25  0fb74706  MOVZX EAX,word ptr [EDI + 0x6]
00c44e29  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c44e2c  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c44e2f  51  PUSH ECX
00c44e30  50  PUSH EAX
00c44e31  52  PUSH EDX
00c44e32  e8399089ff  CALL 0x004dde70
00c44e37  83c40c  ADD ESP,0xc
00c44e3a  8bce  MOV ECX,ESI
00c44e3c  50  PUSH EAX
00c44e3d  e8ae2bb9ff  CALL 0x007d79f0
00c44e42  8b7f0c  MOV EDI,dword ptr [EDI + 0xc]
00c44e45  85ff  TEST EDI,EDI
00c44e47  7511  JNZ 0x00c44e5a
00c44e49  8da42400000000  LEA ESP,[ESP]
00c44e50  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00c44e53  83c504  ADD EBP,0x4
00c44e56  85ff  TEST EDI,EDI
00c44e58  74f6  JZ 0x00c44e50
00c44e5a  3b7c2414  CMP EDI,dword ptr [ESP + 0x14]
00c44e5e  0f851dffffff  JNZ 0x00c44d81
00c44e64  8bce  MOV ECX,ESI
00c44e66  e8052cb9ff  CALL 0x007d7a70
00c44e6b  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c44e6e  5f  POP EDI
00c44e6f  5d  POP EBP
00c44e70  5e  POP ESI
00c44e71  5b  POP EBX
00c44e72  83c41c  ADD ESP,0x1c
00c44e75  c21400  RET 0x14
00c44e78  5e  POP ESI
00c44e79  32c0  XOR AL,AL
00c44e7b  5b  POP EBX
00c44e7c  83c41c  ADD ESP,0x1c
00c44e7f  c21400  RET 0x14
Owned instructions=157 owned bytes=434 gap/nonowned bytes=0

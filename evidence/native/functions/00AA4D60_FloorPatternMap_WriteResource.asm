# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: FloorPatternMap_WriteResource
Paired actual annotated Ghidra pseudocode: 00AA4D60_FloorPatternMap_WriteResource.c
Owned ranges: [[00aa4d60, 00aa4f4a]]
Envelope bytes=491

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aa4d60  83ec14  SUB ESP,0x14
00aa4d63  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00aa4d67  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00aa4d6b  53  PUSH EBX
00aa4d6c  56  PUSH ESI
00aa4d6d  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00aa4d71  8bd9  MOV EBX,ECX
00aa4d73  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00aa4d77  8944240c  MOV dword ptr [ESP + 0xc],EAX
00aa4d7b  6a01  PUSH 0x1
00aa4d7d  8d442410  LEA EAX,[ESP + 0x10]
00aa4d81  894c2414  MOV dword ptr [ESP + 0x14],ECX
00aa4d85  50  PUSH EAX
00aa4d86  8bce  MOV ECX,ESI
00aa4d88  895c2410  MOV dword ptr [ESP + 0x10],EBX
00aa4d8c  c744241cd4ea5305  MOV dword ptr [ESP + 0x1c],0x553ead4
00aa4d94  89542420  MOV dword ptr [ESP + 0x20],EDX
00aa4d98  e82337d3ff  CALL 0x007d84c0
00aa4d9d  84c0  TEST AL,AL
00aa4d9f  0f849c010000  JZ 0x00aa4f41
00aa4da5  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aa4da8  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aa4dab  55  PUSH EBP
00aa4dac  57  PUSH EDI
00aa4dad  51  PUSH ECX
00aa4dae  6a04  PUSH 0x4
00aa4db0  52  PUSH EDX
00aa4db1  e8ba91a3ff  CALL 0x004ddf70
00aa4db6  83c40c  ADD ESP,0xc
00aa4db9  8bce  MOV ECX,ESI
00aa4dbb  50  PUSH EAX
00aa4dbc  e82f2cd3ff  CALL 0x007d79f0
00aa4dc1  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aa4dc4  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aa4dc7  50  PUSH EAX
00aa4dc8  8d4b40  LEA ECX,[EBX + 0x40]
00aa4dcb  51  PUSH ECX
00aa4dcc  52  PUSH EDX
00aa4dcd  e83e29d3ff  CALL 0x007d7710
00aa4dd2  83c40c  ADD ESP,0xc
00aa4dd5  8bce  MOV ECX,ESI
00aa4dd7  50  PUSH EAX
00aa4dd8  e8132cd3ff  CALL 0x007d79f0
00aa4ddd  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aa4de0  8b430c  MOV EAX,dword ptr [EBX + 0xc]
00aa4de3  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aa4de6  51  PUSH ECX
00aa4de7  50  PUSH EAX
00aa4de8  52  PUSH EDX
00aa4de9  e88291a3ff  CALL 0x004ddf70
00aa4dee  83c40c  ADD ESP,0xc
00aa4df1  8bce  MOV ECX,ESI
00aa4df3  50  PUSH EAX
00aa4df4  e8f72bd3ff  CALL 0x007d79f0
00aa4df9  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00aa4dfc  8b38  MOV EDI,dword ptr [EAX]
00aa4dfe  85ff  TEST EDI,EDI
00aa4e00  8be8  MOV EBP,EAX
00aa4e02  7518  JNZ 0x00aa4e1c
00aa4e04  397804  CMP dword ptr [EAX + 0x4],EDI
00aa4e07  8d6804  LEA EBP,[EAX + 0x4]
00aa4e0a  750d  JNZ 0x00aa4e19
00aa4e0c  8d642400  LEA ESP,[ESP]
00aa4e10  83c504  ADD EBP,0x4
00aa4e13  837d0000  CMP dword ptr [EBP],0x0
00aa4e17  74f7  JZ 0x00aa4e10
00aa4e19  8b7d00  MOV EDI,dword ptr [EBP]
00aa4e1c  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00aa4e1f  3b3c88  CMP EDI,dword ptr [EAX + ECX*0x4]
00aa4e22  0f8405010000  JZ 0x00aa4f2d
00aa4e28  8b5c242c  MOV EBX,dword ptr [ESP + 0x2c]
00aa4e2c  8d642400  LEA ESP,[ESP]
00aa4e30  6a00  PUSH 0x0
00aa4e32  57  PUSH EDI
00aa4e33  8bcb  MOV ECX,EBX
00aa4e35  e82626d3ff  CALL 0x007d7460
00aa4e3a  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aa4e3d  0fb7c0  MOVZX EAX,AX
00aa4e40  52  PUSH EDX
00aa4e41  50  PUSH EAX
00aa4e42  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa4e45  50  PUSH EAX
00aa4e46  e82590a3ff  CALL 0x004dde70
00aa4e4b  83c40c  ADD ESP,0xc
00aa4e4e  8bce  MOV ECX,ESI
00aa4e50  50  PUSH EAX
00aa4e51  e89a2bd3ff  CALL 0x007d79f0
00aa4e56  6a00  PUSH 0x0
00aa4e58  8d4f10  LEA ECX,[EDI + 0x10]
00aa4e5b  51  PUSH ECX
00aa4e5c  8bcb  MOV ECX,EBX
00aa4e5e  e8fd25d3ff  CALL 0x007d7460
00aa4e63  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aa4e66  0fb7c0  MOVZX EAX,AX
00aa4e69  52  PUSH EDX
00aa4e6a  50  PUSH EAX
00aa4e6b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa4e6e  50  PUSH EAX
00aa4e6f  e8fc8fa3ff  CALL 0x004dde70
00aa4e74  83c40c  ADD ESP,0xc
00aa4e77  8bce  MOV ECX,ESI
00aa4e79  50  PUSH EAX
00aa4e7a  e8712bd3ff  CALL 0x007d79f0
00aa4e7f  6a00  PUSH 0x0
00aa4e81  8d4f20  LEA ECX,[EDI + 0x20]
00aa4e84  51  PUSH ECX
00aa4e85  8bcb  MOV ECX,EBX
00aa4e87  e8d425d3ff  CALL 0x007d7460
00aa4e8c  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aa4e8f  0fb7c0  MOVZX EAX,AX
00aa4e92  52  PUSH EDX
00aa4e93  50  PUSH EAX
00aa4e94  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa4e97  50  PUSH EAX
00aa4e98  e8d38fa3ff  CALL 0x004dde70
00aa4e9d  83c40c  ADD ESP,0xc
00aa4ea0  8bce  MOV ECX,ESI
00aa4ea2  50  PUSH EAX
00aa4ea3  e8482bd3ff  CALL 0x007d79f0
00aa4ea8  6a00  PUSH 0x0
00aa4eaa  8d4f30  LEA ECX,[EDI + 0x30]
00aa4ead  51  PUSH ECX
00aa4eae  8bcb  MOV ECX,EBX
00aa4eb0  e8ab25d3ff  CALL 0x007d7460
00aa4eb5  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aa4eb8  0fb7c0  MOVZX EAX,AX
00aa4ebb  52  PUSH EDX
00aa4ebc  50  PUSH EAX
00aa4ebd  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aa4ec0  50  PUSH EAX
00aa4ec1  e8aa8fa3ff  CALL 0x004dde70
00aa4ec6  83c40c  ADD ESP,0xc
00aa4ec9  8bce  MOV ECX,ESI
00aa4ecb  50  PUSH EAX
00aa4ecc  e81f2bd3ff  CALL 0x007d79f0
00aa4ed1  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aa4ed4  8b4740  MOV EAX,dword ptr [EDI + 0x40]
00aa4ed7  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aa4eda  51  PUSH ECX
00aa4edb  50  PUSH EAX
00aa4edc  52  PUSH EDX
00aa4edd  e88e90a3ff  CALL 0x004ddf70
00aa4ee2  83c40c  ADD ESP,0xc
00aa4ee5  8bce  MOV ECX,ESI
00aa4ee7  50  PUSH EAX
00aa4ee8  e8032bd3ff  CALL 0x007d79f0
00aa4eed  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aa4ef0  8b4744  MOV EAX,dword ptr [EDI + 0x44]
00aa4ef3  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aa4ef6  51  PUSH ECX
00aa4ef7  50  PUSH EAX
00aa4ef8  52  PUSH EDX
00aa4ef9  e87290a3ff  CALL 0x004ddf70
00aa4efe  83c40c  ADD ESP,0xc
00aa4f01  50  PUSH EAX
00aa4f02  8bce  MOV ECX,ESI
00aa4f04  e8e72ad3ff  CALL 0x007d79f0
00aa4f09  8b7f48  MOV EDI,dword ptr [EDI + 0x48]
00aa4f0c  85ff  TEST EDI,EDI
00aa4f0e  750a  JNZ 0x00aa4f1a
00aa4f10  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00aa4f13  83c504  ADD EBP,0x4
00aa4f16  85ff  TEST EDI,EDI
00aa4f18  74f6  JZ 0x00aa4f10
00aa4f1a  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aa4f1e  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00aa4f21  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00aa4f24  3b3c8a  CMP EDI,dword ptr [EDX + ECX*0x4]
00aa4f27  0f8503ffffff  JNZ 0x00aa4e30
00aa4f2d  8bce  MOV ECX,ESI
00aa4f2f  e83c2bd3ff  CALL 0x007d7a70
00aa4f34  8a4614  MOV AL,byte ptr [ESI + 0x14]
00aa4f37  5f  POP EDI
00aa4f38  5d  POP EBP
00aa4f39  5e  POP ESI
00aa4f3a  5b  POP EBX
00aa4f3b  83c414  ADD ESP,0x14
00aa4f3e  c21400  RET 0x14
00aa4f41  5e  POP ESI
00aa4f42  32c0  XOR AL,AL
00aa4f44  5b  POP EBX
00aa4f45  83c414  ADD ESP,0x14
00aa4f48  c21400  RET 0x14
Owned instructions=183 owned bytes=491 gap/nonowned bytes=0

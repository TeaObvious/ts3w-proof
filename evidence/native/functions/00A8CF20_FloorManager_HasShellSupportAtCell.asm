# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorManager_HasShellSupportAtCell(void * this, char * cell)
Owned ranges: [[00a8cf20, 00a8cf9e]]

00a8cf20  53  PUSH EBX
00a8cf21  56  PUSH ESI
00a8cf22  57  PUSH EDI
00a8cf23  8bf9  MOV EDI,ECX
00a8cf25  8b5f04  MOV EBX,dword ptr [EDI + 0x4]
00a8cf28  83bbe802000000  CMP dword ptr [EBX + 0x2e8],0x0
00a8cf2f  7466  JZ 0x00a8cf97
00a8cf31  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00a8cf35  0fbe06  MOVSX EAX,byte ptr [ESI]
00a8cf38  85c0  TEST EAX,EAX
00a8cf3a  0fbe5601  MOVSX EDX,byte ptr [ESI + 0x1]
00a8cf3e  7c57  JL 0x00a8cf97
00a8cf40  3b8374010000  CMP EAX,dword ptr [EBX + 0x174]
00a8cf46  7d4f  JGE 0x00a8cf97
00a8cf48  85d2  TEST EDX,EDX
00a8cf4a  7c4b  JL 0x00a8cf97
00a8cf4c  3b9378010000  CMP EDX,dword ptr [EBX + 0x178]
00a8cf52  7d43  JGE 0x00a8cf97
00a8cf54  8b8fd4000000  MOV ECX,dword ptr [EDI + 0xd4]
00a8cf5a  85c9  TEST ECX,ECX
00a8cf5c  7510  JNZ 0x00a8cf6e
00a8cf5e  56  PUSH ESI
00a8cf5f  53  PUSH EBX
00a8cf60  e89b410400  CALL 0x00ad1100
00a8cf65  83c408  ADD ESP,0x8
00a8cf68  5f  POP EDI
00a8cf69  5e  POP ESI
00a8cf6a  5b  POP EBX
00a8cf6b  c20400  RET 0x4
00a8cf6e  0fbe5e02  MOVSX EBX,byte ptr [ESI + 0x2]
00a8cf72  2b5f10  SUB EBX,dword ptr [EDI + 0x10]
00a8cf75  53  PUSH EBX
00a8cf76  52  PUSH EDX
00a8cf77  50  PUSH EAX
00a8cf78  e833e4ffff  CALL 0x00a8b3b0
00a8cf7d  0fb64e03  MOVZX ECX,byte ptr [ESI + 0x3]
00a8cf81  0fb610  MOVZX EDX,byte ptr [EAX]
00a8cf84  23ca  AND ECX,EDX
00a8cf86  80e10f  AND CL,0xf
00a8cf89  f6d9  NEG CL
00a8cf8b  5f  POP EDI
00a8cf8c  5e  POP ESI
00a8cf8d  5b  POP EBX
00a8cf8e  1bc9  SBB ECX,ECX
00a8cf90  f7d9  NEG ECX
00a8cf92  8ac1  MOV AL,CL
00a8cf94  c20400  RET 0x4
00a8cf97  5f  POP EDI
00a8cf98  5e  POP ESI
00a8cf99  32c0  XOR AL,AL
00a8cf9b  5b  POP EBX
00a8cf9c  c20400  RET 0x4

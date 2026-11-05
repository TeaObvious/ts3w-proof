# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationPoseCache_FindByTick
Paired annotated actual pseudocode: 00573EA0_AnimationPoseCache_FindByTick.c
Owned ranges: [[00573ea0, 00573f19]]

GHIDRA LISTING (original bytes)
00573ea0  83ec08  SUB ESP,0x8
00573ea3  53  PUSH EBX
00573ea4  55  PUSH EBP
00573ea5  56  PUSH ESI
00573ea6  8d7110  LEA ESI,[ECX + 0x10]
00573ea9  8d6920  LEA EBP,[ECX + 0x20]
00573eac  3bf5  CMP ESI,EBP
00573eae  57  PUSH EDI
00573eaf  7451  JZ 0x00573f02
00573eb1  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00573eb5  33db  XOR EBX,EBX
00573eb7  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00573eba  33d2  XOR EDX,EDX
00573ebc  8bc7  MOV EAX,EDI
00573ebe  2bc1  SUB EAX,ECX
00573ec0  8bcb  MOV ECX,EBX
00573ec2  1bca  SBB ECX,EDX
00573ec4  894c2414  MOV dword ptr [ESP + 0x14],ECX
00573ec8  782c  JS 0x00573ef6
00573eca  7f05  JG 0x00573ed1
00573ecc  83f802  CMP EAX,0x2
00573ecf  7625  JBE 0x00573ef6
00573ed1  8b0e  MOV ECX,dword ptr [ESI]
00573ed3  85c9  TEST ECX,ECX
00573ed5  895e04  MOV dword ptr [ESI + 0x4],EBX
00573ed8  891e  MOV dword ptr [ESI],EBX
00573eda  741a  JZ 0x00573ef6
00573edc  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00573edf  83c0ff  ADD EAX,-0x1
00573ee2  894104  MOV dword ptr [ECX + 0x4],EAX
00573ee5  750f  JNZ 0x00573ef6
00573ee7  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00573eee  8b11  MOV EDX,dword ptr [ECX]
00573ef0  8b02  MOV EAX,dword ptr [EDX]
00573ef2  6a01  PUSH 0x1
00573ef4  ffd0  CALL EAX
00573ef6  397e04  CMP dword ptr [ESI + 0x4],EDI
00573ef9  7413  JZ 0x00573f0e
00573efb  83c608  ADD ESI,0x8
00573efe  3bf5  CMP ESI,EBP
00573f00  75b5  JNZ 0x00573eb7
00573f02  5f  POP EDI
00573f03  5e  POP ESI
00573f04  5d  POP EBP
00573f05  33c0  XOR EAX,EAX
00573f07  5b  POP EBX
00573f08  83c408  ADD ESP,0x8
00573f0b  c20400  RET 0x4
00573f0e  8b06  MOV EAX,dword ptr [ESI]
00573f10  5f  POP EDI
00573f11  5e  POP ESI
00573f12  5d  POP EBP
00573f13  5b  POP EBX
00573f14  83c408  ADD ESP,0x8
00573f17  c20400  RET 0x4
Owned instructions=55 owned bytes=122 envelope bytes=122

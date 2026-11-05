# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CEB080_ScriptCore_UserToolUtils_UserToolUtils_GetWallPatternPresetListByTypeImpl.c
Owned ranges: [[00ceb080, 00ceb0eb]]

00ceb080  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00ceb086  83ec10  SUB ESP,0x10
00ceb089  85c9  TEST ECX,ECX
00ceb08b  7459  JZ 0x00ceb0e6
00ceb08d  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00ceb091  57  PUSH EDI
00ceb092  8d442404  LEA EAX,[ESP + 0x4]
00ceb096  50  PUSH EAX
00ceb097  52  PUSH EDX
00ceb098  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00ceb0a0  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00ceb0a8  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00ceb0b0  c744241878170801  MOV dword ptr [ESP + 0x18],0x1081778
00ceb0b8  e83338faff  CALL 0x00c8e8f0
00ceb0bd  8d442404  LEA EAX,[ESP + 0x4]
00ceb0c1  6a01  PUSH 0x1
00ceb0c3  50  PUSH EAX
00ceb0c4  e867feffff  CALL 0x00ceaf30
00ceb0c9  8bf8  MOV EDI,EAX
00ceb0cb  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ceb0cf  83c408  ADD ESP,0x8
00ceb0d2  85c0  TEST EAX,EAX
00ceb0d4  7409  JZ 0x00ceb0df
00ceb0d6  50  PUSH EAX
00ceb0d7  e804947fff  CALL 0x004e44e0
00ceb0dc  83c404  ADD ESP,0x4
00ceb0df  8bc7  MOV EAX,EDI
00ceb0e1  5f  POP EDI
00ceb0e2  83c410  ADD ESP,0x10
00ceb0e5  c3  RET
00ceb0e6  33c0  XOR EAX,EAX
00ceb0e8  83c410  ADD ESP,0x10
00ceb0eb  c3  RET

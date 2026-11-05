# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CEB0F0_ScriptCore_UserToolUtils_UserToolUtils_GetFloorPatternPresetListByTypeImpl.c
Owned ranges: [[00ceb0f0, 00ceb15b]]

00ceb0f0  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00ceb0f6  83ec10  SUB ESP,0x10
00ceb0f9  85c9  TEST ECX,ECX
00ceb0fb  7459  JZ 0x00ceb156
00ceb0fd  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00ceb101  57  PUSH EDI
00ceb102  8d442404  LEA EAX,[ESP + 0x4]
00ceb106  50  PUSH EAX
00ceb107  52  PUSH EDX
00ceb108  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00ceb110  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00ceb118  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00ceb120  c744241878170801  MOV dword ptr [ESP + 0x18],0x1081778
00ceb128  e88338faff  CALL 0x00c8e9b0
00ceb12d  8d442404  LEA EAX,[ESP + 0x4]
00ceb131  6a01  PUSH 0x1
00ceb133  50  PUSH EAX
00ceb134  e8f7fdffff  CALL 0x00ceaf30
00ceb139  8bf8  MOV EDI,EAX
00ceb13b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ceb13f  83c408  ADD ESP,0x8
00ceb142  85c0  TEST EAX,EAX
00ceb144  7409  JZ 0x00ceb14f
00ceb146  50  PUSH EAX
00ceb147  e894937fff  CALL 0x004e44e0
00ceb14c  83c404  ADD ESP,0x4
00ceb14f  8bc7  MOV EAX,EDI
00ceb151  5f  POP EDI
00ceb152  83c410  ADD ESP,0x10
00ceb155  c3  RET
00ceb156  33c0  XOR EAX,EAX
00ceb158  83c410  ADD ESP,0x10
00ceb15b  c3  RET

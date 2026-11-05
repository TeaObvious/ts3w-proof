# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077A820_ScriptCore_UIManager_UIManager_DestroyLayoutImpl.c
Owned ranges: [[0077a820, 0077a86e]]

0077a820  e86bebfeff  CALL 0x00769390
0077a825  85c0  TEST EAX,EAX
0077a827  7445  JZ 0x0077a86e
0077a829  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077a82d  8bd1  MOV EDX,ECX
0077a82f  81e2000000ff  AND EDX,0xff000000
0077a835  81fa00000030  CMP EDX,0x30000000
0077a83b  7531  JNZ 0x0077a86e
0077a83d  8b10  MOV EDX,dword ptr [EAX]
0077a83f  51  PUSH ECX
0077a840  8bc8  MOV ECX,EAX
0077a842  8b82d8000000  MOV EAX,dword ptr [EDX + 0xd8]
0077a848  ffd0  CALL EAX
0077a84a  85c0  TEST EAX,EAX
0077a84c  7420  JZ 0x0077a86e
0077a84e  8d88a0000000  LEA ECX,[EAX + 0xa0]
0077a854  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0077a857  83c0ff  ADD EAX,-0x1
0077a85a  894104  MOV dword ptr [ECX + 0x4],EAX
0077a85d  750f  JNZ 0x0077a86e
0077a85f  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
0077a866  8b11  MOV EDX,dword ptr [ECX]
0077a868  8b02  MOV EAX,dword ptr [EDX]
0077a86a  6a01  PUSH 0x1
0077a86c  ffd0  CALL EAX
0077a86e  c3  RET

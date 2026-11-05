# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007796E0_ScriptCore_UIManager_UIManager_DestroyDrawableImpl.c
Owned ranges: [[007796e0, 00779717]]

007796e0  e8abfcfeff  CALL 0x00769390
007796e5  85c0  TEST EAX,EAX
007796e7  742e  JZ 0x00779717
007796e9  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007796ed  8bd1  MOV EDX,ECX
007796ef  81e2000000ff  AND EDX,0xff000000
007796f5  81fa00000030  CMP EDX,0x30000000
007796fb  751a  JNZ 0x00779717
007796fd  8b10  MOV EDX,dword ptr [EAX]
007796ff  51  PUSH ECX
00779700  8bc8  MOV ECX,EAX
00779702  8b82d8000000  MOV EAX,dword ptr [EDX + 0xd8]
00779708  ffd0  CALL EAX
0077970a  85c0  TEST EAX,EAX
0077970c  7409  JZ 0x00779717
0077970e  8b10  MOV EDX,dword ptr [EAX]
00779710  8bc8  MOV ECX,EAX
00779712  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00779715  ffe0  JMP EAX
00779717  c3  RET

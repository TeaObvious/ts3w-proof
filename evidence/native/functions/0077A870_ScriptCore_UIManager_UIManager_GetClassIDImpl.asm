# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077A870_ScriptCore_UIManager_UIManager_GetClassIDImpl.c
Owned ranges: [[0077a870, 0077a8b7]]

0077a870  e81bebfeff  CALL 0x00769390
0077a875  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077a879  8bd1  MOV EDX,ECX
0077a87b  81e2000000ff  AND EDX,0xff000000
0077a881  81fa00000030  CMP EDX,0x30000000
0077a887  752c  JNZ 0x0077a8b5
0077a889  8b10  MOV EDX,dword ptr [EAX]
0077a88b  51  PUSH ECX
0077a88c  8bc8  MOV ECX,EAX
0077a88e  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
0077a894  ffd0  CALL EAX
0077a896  85c0  TEST EAX,EAX
0077a898  741b  JZ 0x0077a8b5
0077a89a  8b10  MOV EDX,dword ptr [EAX]
0077a89c  8bc8  MOV ECX,EAX
0077a89e  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077a8a1  688283c5ee  PUSH 0xeec58382
0077a8a6  ffd0  CALL EAX
0077a8a8  85c0  TEST EAX,EAX
0077a8aa  7409  JZ 0x0077a8b5
0077a8ac  8b10  MOV EDX,dword ptr [EAX]
0077a8ae  8bc8  MOV ECX,EAX
0077a8b0  8b4214  MOV EAX,dword ptr [EDX + 0x14]
0077a8b3  ffe0  JMP EAX
0077a8b5  33c0  XOR EAX,EAX
0077a8b7  c3  RET

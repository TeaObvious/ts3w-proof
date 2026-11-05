# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077AE50_ScriptCore_UIManager_UIManager_DestroyAllChildrenImpl.c
Owned ranges: [[0077ae50, 0077ae98]]

0077ae50  e83be5feff  CALL 0x00769390
0077ae55  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077ae59  8bd1  MOV EDX,ECX
0077ae5b  81e2000000ff  AND EDX,0xff000000
0077ae61  81fa00000030  CMP EDX,0x30000000
0077ae67  752f  JNZ 0x0077ae98
0077ae69  8b10  MOV EDX,dword ptr [EAX]
0077ae6b  51  PUSH ECX
0077ae6c  8bc8  MOV ECX,EAX
0077ae6e  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
0077ae74  ffd0  CALL EAX
0077ae76  85c0  TEST EAX,EAX
0077ae78  741e  JZ 0x0077ae98
0077ae7a  8b10  MOV EDX,dword ptr [EAX]
0077ae7c  8bc8  MOV ECX,EAX
0077ae7e  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077ae81  681882eeee  PUSH 0xeeee8218
0077ae86  ffd0  CALL EAX
0077ae88  85c0  TEST EAX,EAX
0077ae8a  740c  JZ 0x0077ae98
0077ae8c  8b10  MOV EDX,dword ptr [EAX]
0077ae8e  8bc8  MOV ECX,EAX
0077ae90  8b82e8000000  MOV EAX,dword ptr [EDX + 0xe8]
0077ae96  ffe0  JMP EAX
0077ae98  c3  RET

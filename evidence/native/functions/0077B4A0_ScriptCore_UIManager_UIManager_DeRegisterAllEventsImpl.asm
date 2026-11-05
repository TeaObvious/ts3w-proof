# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077B4A0_ScriptCore_UIManager_UIManager_DeRegisterAllEventsImpl.c
Owned ranges: [[0077b4a0, 0077b4e8]]

0077b4a0  e8ebdefeff  CALL 0x00769390
0077b4a5  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077b4a9  8bd1  MOV EDX,ECX
0077b4ab  81e2000000ff  AND EDX,0xff000000
0077b4b1  81fa00000030  CMP EDX,0x30000000
0077b4b7  752f  JNZ 0x0077b4e8
0077b4b9  8b10  MOV EDX,dword ptr [EAX]
0077b4bb  51  PUSH ECX
0077b4bc  8bc8  MOV ECX,EAX
0077b4be  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
0077b4c4  ffd0  CALL EAX
0077b4c6  85c0  TEST EAX,EAX
0077b4c8  741e  JZ 0x0077b4e8
0077b4ca  8b10  MOV EDX,dword ptr [EAX]
0077b4cc  8bc8  MOV ECX,EAX
0077b4ce  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077b4d1  681882eeee  PUSH 0xeeee8218
0077b4d6  ffd0  CALL EAX
0077b4d8  85c0  TEST EAX,EAX
0077b4da  740c  JZ 0x0077b4e8
0077b4dc  8b0d8c791d01  MOV ECX,dword ptr [0x011d798c]
0077b4e2  50  PUSH EAX
0077b4e3  e8e86cfcff  CALL 0x007421d0
0077b4e8  c3  RET

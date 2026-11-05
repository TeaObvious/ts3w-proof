# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077B400_ScriptCore_UIManager_UIManager_RegisterEventImpl.c
Owned ranges: [[0077b400, 0077b44d]]

0077b400  e88bdffeff  CALL 0x00769390
0077b405  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077b409  8bd1  MOV EDX,ECX
0077b40b  81e2000000ff  AND EDX,0xff000000
0077b411  81fa00000030  CMP EDX,0x30000000
0077b417  7534  JNZ 0x0077b44d
0077b419  8b10  MOV EDX,dword ptr [EAX]
0077b41b  51  PUSH ECX
0077b41c  8bc8  MOV ECX,EAX
0077b41e  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
0077b424  ffd0  CALL EAX
0077b426  85c0  TEST EAX,EAX
0077b428  7423  JZ 0x0077b44d
0077b42a  8b10  MOV EDX,dword ptr [EAX]
0077b42c  8bc8  MOV ECX,EAX
0077b42e  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077b431  681882eeee  PUSH 0xeeee8218
0077b436  ffd0  CALL EAX
0077b438  85c0  TEST EAX,EAX
0077b43a  7411  JZ 0x0077b44d
0077b43c  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0077b440  51  PUSH ECX
0077b441  8b0d8c791d01  MOV ECX,dword ptr [0x011d798c]
0077b447  50  PUSH EAX
0077b448  e82372fcff  CALL 0x00742670
0077b44d  c3  RET

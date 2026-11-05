# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077B450_ScriptCore_UIManager_UIManager_DeRegisterEventImpl.c
Owned ranges: [[0077b450, 0077b49d]]

0077b450  e83bdffeff  CALL 0x00769390
0077b455  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077b459  8bd1  MOV EDX,ECX
0077b45b  81e2000000ff  AND EDX,0xff000000
0077b461  81fa00000030  CMP EDX,0x30000000
0077b467  7534  JNZ 0x0077b49d
0077b469  8b10  MOV EDX,dword ptr [EAX]
0077b46b  51  PUSH ECX
0077b46c  8bc8  MOV ECX,EAX
0077b46e  8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
0077b474  ffd0  CALL EAX
0077b476  85c0  TEST EAX,EAX
0077b478  7423  JZ 0x0077b49d
0077b47a  8b10  MOV EDX,dword ptr [EAX]
0077b47c  8bc8  MOV ECX,EAX
0077b47e  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077b481  681882eeee  PUSH 0xeeee8218
0077b486  ffd0  CALL EAX
0077b488  85c0  TEST EAX,EAX
0077b48a  7411  JZ 0x0077b49d
0077b48c  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0077b490  51  PUSH ECX
0077b491  8b0d8c791d01  MOV ECX,dword ptr [0x011d798c]
0077b497  50  PUSH EAX
0077b498  e8d370fcff  CALL 0x00742570
0077b49d  c3  RET

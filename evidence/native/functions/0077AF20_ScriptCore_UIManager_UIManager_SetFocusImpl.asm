# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077AF20_ScriptCore_UIManager_UIManager_SetFocusImpl.c
Owned ranges: [[0077af20, 0077af94]]

0077af20  e86be4feff  CALL 0x00769390
0077af25  8b542408  MOV EDX,dword ptr [ESP + 0x8]
0077af29  8bca  MOV ECX,EDX
0077af2b  81e1000000ff  AND ECX,0xff000000
0077af31  81f900000030  CMP ECX,0x30000000
0077af37  7406  JZ 0x0077af3f
0077af39  85d2  TEST EDX,EDX
0077af3b  7557  JNZ 0x0077af94
0077af3d  eb04  JMP 0x0077af43
0077af3f  85d2  TEST EDX,EDX
0077af41  7516  JNZ 0x0077af59
0077af43  e84800d9ff  CALL 0x0050af90
0077af48  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
0077af4c  8b10  MOV EDX,dword ptr [EAX]
0077af4e  8b5258  MOV EDX,dword ptr [EDX + 0x58]
0077af51  6a00  PUSH 0x0
0077af53  51  PUSH ECX
0077af54  8bc8  MOV ECX,EAX
0077af56  ffd2  CALL EDX
0077af58  c3  RET
0077af59  56  PUSH ESI
0077af5a  8b30  MOV ESI,dword ptr [EAX]
0077af5c  8bc8  MOV ECX,EAX
0077af5e  8b86cc000000  MOV EAX,dword ptr [ESI + 0xcc]
0077af64  52  PUSH EDX
0077af65  ffd0  CALL EAX
0077af67  85c0  TEST EAX,EAX
0077af69  7428  JZ 0x0077af93
0077af6b  8b10  MOV EDX,dword ptr [EAX]
0077af6d  8bc8  MOV ECX,EAX
0077af6f  8b420c  MOV EAX,dword ptr [EDX + 0xc]
0077af72  681882eeee  PUSH 0xeeee8218
0077af77  ffd0  CALL EAX
0077af79  8bf0  MOV ESI,EAX
0077af7b  85f6  TEST ESI,ESI
0077af7d  7414  JZ 0x0077af93
0077af7f  e80c00d9ff  CALL 0x0050af90
0077af84  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0077af88  8b10  MOV EDX,dword ptr [EAX]
0077af8a  8b5258  MOV EDX,dword ptr [EDX + 0x58]
0077af8d  56  PUSH ESI
0077af8e  51  PUSH ECX
0077af8f  8bc8  MOV ECX,EAX
0077af91  ffd2  CALL EDX
0077af93  5e  POP ESI
0077af94  c3  RET

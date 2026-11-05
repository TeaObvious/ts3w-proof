# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00514520_UiWindowInterface_DestroyAllChildren.c
Owned ranges: [[00514520, 00514556]]

00514520  56  PUSH ESI
00514521  57  PUSH EDI
00514522  8bf9  MOV EDI,ECX
00514524  8db70c020000  LEA ESI,[EDI + 0x20c]
0051452a  397604  CMP dword ptr [ESI + 0x4],ESI
0051452d  7425  JZ 0x00514554
0051452f  90  NOP
00514530  8b06  MOV EAX,dword ptr [ESI]
00514532  85c0  TEST EAX,EAX
00514534  740a  JZ 0x00514540
00514536  83c0f8  ADD EAX,-0x8
00514539  7405  JZ 0x00514540
0051453b  83c004  ADD EAX,0x4
0051453e  eb02  JMP 0x00514542
00514540  33c0  XOR EAX,EAX
00514542  8b17  MOV EDX,dword ptr [EDI]
00514544  50  PUSH EAX
00514545  8b82e4000000  MOV EAX,dword ptr [EDX + 0xe4]
0051454b  8bcf  MOV ECX,EDI
0051454d  ffd0  CALL EAX
0051454f  397604  CMP dword ptr [ESI + 0x4],ESI
00514552  75dc  JNZ 0x00514530
00514554  5f  POP EDI
00514555  5e  POP ESI
00514556  c3  RET

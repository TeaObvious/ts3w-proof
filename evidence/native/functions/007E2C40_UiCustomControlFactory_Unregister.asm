# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E2C40_UiCustomControlFactory_Unregister.c
Owned ranges: [[007e2c40, 007e2c73]]

007e2c40  56  PUSH ESI
007e2c41  57  PUSH EDI
007e2c42  e86962cfff  CALL 0x004d8eb0
007e2c47  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007e2c4b  8bf0  MOV ESI,EAX
007e2c4d  8b06  MOV EAX,dword ptr [ESI]
007e2c4f  8b5014  MOV EDX,dword ptr [EAX + 0x14]
007e2c52  51  PUSH ECX
007e2c53  8bce  MOV ECX,ESI
007e2c55  ffd2  CALL EDX
007e2c57  8bf8  MOV EDI,EAX
007e2c59  85ff  TEST EDI,EDI
007e2c5b  7414  JZ 0x007e2c71
007e2c5d  8b06  MOV EAX,dword ptr [ESI]
007e2c5f  8b5008  MOV EDX,dword ptr [EAX + 0x8]
007e2c62  57  PUSH EDI
007e2c63  8bce  MOV ECX,ESI
007e2c65  ffd2  CALL EDX
007e2c67  8b07  MOV EAX,dword ptr [EDI]
007e2c69  8b10  MOV EDX,dword ptr [EAX]
007e2c6b  6a01  PUSH 0x1
007e2c6d  8bcf  MOV ECX,EDI
007e2c6f  ffd2  CALL EDX
007e2c71  5f  POP EDI
007e2c72  5e  POP ESI
007e2c73  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E2C20_UiCustomControlFactory_WriteIdentity.c
Owned ranges: [[007e2c20, 007e2c3b]]

007e2c20  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007e2c24  85c0  TEST EAX,EAX
007e2c26  740c  JZ 0x007e2c34
007e2c28  837c240800  CMP dword ptr [ESP + 0x8],0x0
007e2c2d  7405  JZ 0x007e2c34
007e2c2f  8b4904  MOV ECX,dword ptr [ECX + 0x4]
007e2c32  8908  MOV dword ptr [EAX],ECX
007e2c34  b801000000  MOV EAX,0x1
007e2c39  c20800  RET 0x8

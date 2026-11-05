# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0054A9B0_LayoutXml_ArePropertyTypesCompatible.c
Owned ranges: [[0054a9b0, 0054aa0a]]

0054a9b0  81f9ff030000  CMP ECX,0x3ff
0054a9b6  7749  JA 0x0054aa01
0054a9b8  81f9fd030000  CMP ECX,0x3fd
0054a9be  7336  JNC 0x0054a9f6
0054a9c0  8d51fd  LEA EDX,[ECX + -0x3]
0054a9c3  83fa06  CMP EDX,0x6
0054a9c6  7739  JA 0x0054aa01
0054a9c8  ff24950caa5400  JMP dword ptr [EDX*0x4 + 0x54aa0c]
0054a9cf  83f803  CMP EAX,0x3
0054a9d2  7405  JZ 0x0054a9d9
0054a9d4  83f807  CMP EAX,0x7
0054a9d7  7525  JNZ 0x0054a9fe
0054a9d9  b001  MOV AL,0x1
0054a9db  c3  RET
0054a9dc  83f804  CMP EAX,0x4
0054a9df  74f8  JZ 0x0054a9d9
0054a9e1  83f808  CMP EAX,0x8
0054a9e4  7518  JNZ 0x0054a9fe
0054a9e6  b001  MOV AL,0x1
0054a9e8  c3  RET
0054a9e9  83f805  CMP EAX,0x5
0054a9ec  74eb  JZ 0x0054a9d9
0054a9ee  83f809  CMP EAX,0x9
0054a9f1  750b  JNZ 0x0054a9fe
0054a9f3  b001  MOV AL,0x1
0054a9f5  c3  RET
0054a9f6  83f813  CMP EAX,0x13
0054a9f9  7503  JNZ 0x0054a9fe
0054a9fb  b001  MOV AL,0x1
0054a9fd  c3  RET
0054a9fe  32c0  XOR AL,AL
0054aa00  c3  RET
0054aa01  33d2  XOR EDX,EDX
0054aa03  3bc8  CMP ECX,EAX
0054aa05  0f94c2  SETZ DL
0054aa08  8ac2  MOV AL,DL
0054aa0a  c3  RET

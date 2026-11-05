# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope and referenced switch tables where present.
Actual annotated Ghidra pseudocode: 0053DC40_UiStdDrawable_SelectStateImage.c
Owned ranges: [[0053dc40, 0053dcb9]]

0053dc40  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0053dc44  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0053dc48  8bc2  MOV EAX,EDX
0053dc4a  83e007  AND EAX,0x7
0053dc4d  83f803  CMP EAX,0x3
0053dc50  7763  JA 0x0053dcb5
0053dc52  ff2485bcdc5300  JMP dword ptr [EAX*0x4 + 0x53dcbc]
0053dc59  f6c208  TEST DL,0x8
0053dc5c  7457  JZ 0x0053dcb5
0053dc5e  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0053dc61  85c0  TEST EAX,EAX
0053dc63  7450  JZ 0x0053dcb5
0053dc65  c20800  RET 0x8
0053dc68  f6c208  TEST DL,0x8
0053dc6b  7407  JZ 0x0053dc74
0053dc6d  8b4114  MOV EAX,dword ptr [ECX + 0x14]
0053dc70  85c0  TEST EAX,EAX
0053dc72  7543  JNZ 0x0053dcb7
0053dc74  8b4104  MOV EAX,dword ptr [ECX + 0x4]
0053dc77  85c0  TEST EAX,EAX
0053dc79  743a  JZ 0x0053dcb5
0053dc7b  c20800  RET 0x8
0053dc7e  f6c208  TEST DL,0x8
0053dc81  740e  JZ 0x0053dc91
0053dc83  8b4118  MOV EAX,dword ptr [ECX + 0x18]
0053dc86  85c0  TEST EAX,EAX
0053dc88  752d  JNZ 0x0053dcb7
0053dc8a  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0053dc8d  85c0  TEST EAX,EAX
0053dc8f  7526  JNZ 0x0053dcb7
0053dc91  8b4108  MOV EAX,dword ptr [ECX + 0x8]
0053dc94  85c0  TEST EAX,EAX
0053dc96  741d  JZ 0x0053dcb5
0053dc98  c20800  RET 0x8
0053dc9b  f6c208  TEST DL,0x8
0053dc9e  740e  JZ 0x0053dcae
0053dca0  8b411c  MOV EAX,dword ptr [ECX + 0x1c]
0053dca3  85c0  TEST EAX,EAX
0053dca5  7510  JNZ 0x0053dcb7
0053dca7  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0053dcaa  85c0  TEST EAX,EAX
0053dcac  7509  JNZ 0x0053dcb7
0053dcae  8b410c  MOV EAX,dword ptr [ECX + 0xc]
0053dcb1  85c0  TEST EAX,EAX
0053dcb3  7502  JNZ 0x0053dcb7
0053dcb5  8b01  MOV EAX,dword ptr [ECX]
0053dcb7  c20800  RET 0x8
0053dcba  8b  .byte nonowned alignment
0053dcbb  ff  .byte nonowned alignment
0053dcbc  59dc5300  .dword referenced switch table
0053dcc0  68dc5300  .dword referenced switch table
0053dcc4  7edc5300  .dword referenced switch table
0053dcc8  9bdc5300  .dword referenced switch table

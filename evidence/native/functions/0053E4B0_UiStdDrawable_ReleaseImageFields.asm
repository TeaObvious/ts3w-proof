# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0053E4B0_UiStdDrawable_ReleaseImageFields.c
Owned ranges: [[0053e4b0, 0053e537]]

0053e4b0  53  PUSH EBX
0053e4b1  56  PUSH ESI
0053e4b2  57  PUSH EDI
0053e4b3  8bf9  MOV EDI,ECX
0053e4b5  c7074008fc00  MOV dword ptr [EDI],0xfc0840
0053e4bb  c747042808fc00  MOV dword ptr [EDI + 0x4],0xfc0828
0053e4c2  c7470cc007fc00  MOV dword ptr [EDI + 0xc],0xfc07c0
0053e4c9  8d7730  LEA ESI,[EDI + 0x30]
0053e4cc  bb08000000  MOV EBX,0x8
0053e4d1  8b4ee0  MOV ECX,dword ptr [ESI + -0x20]
0053e4d4  85c9  TEST ECX,ECX
0053e4d6  7407  JZ 0x0053e4df
0053e4d8  8b01  MOV EAX,dword ptr [ECX]
0053e4da  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0053e4dd  ffd2  CALL EDX
0053e4df  8b0e  MOV ECX,dword ptr [ESI]
0053e4e1  85c9  TEST ECX,ECX
0053e4e3  c746e000000000  MOV dword ptr [ESI + -0x20],0x0
0053e4ea  7407  JZ 0x0053e4f3
0053e4ec  8b01  MOV EAX,dword ptr [ECX]
0053e4ee  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0053e4f1  ffd2  CALL EDX
0053e4f3  c70600000000  MOV dword ptr [ESI],0x0
0053e4f9  83c604  ADD ESI,0x4
0053e4fc  83eb01  SUB EBX,0x1
0053e4ff  75d0  JNZ 0x0053e4d1
0053e501  8b4f50  MOV ECX,dword ptr [EDI + 0x50]
0053e504  85c9  TEST ECX,ECX
0053e506  740a  JZ 0x0053e512
0053e508  8b01  MOV EAX,dword ptr [ECX]
0053e50a  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0053e50d  ffd2  CALL EDX
0053e50f  895f50  MOV dword ptr [EDI + 0x50],EBX
0053e512  8b4f78  MOV ECX,dword ptr [EDI + 0x78]
0053e515  85c9  TEST ECX,ECX
0053e517  7407  JZ 0x0053e520
0053e519  8b01  MOV EAX,dword ptr [ECX]
0053e51b  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0053e51e  ffd2  CALL EDX
0053e520  b8802bfa00  MOV EAX,0xfa2b80
0053e525  89470c  MOV dword ptr [EDI + 0xc],EAX
0053e528  c74704e8c4fb00  MOV dword ptr [EDI + 0x4],0xfbc4e8
0053e52f  894704  MOV dword ptr [EDI + 0x4],EAX
0053e532  8907  MOV dword ptr [EDI],EAX
0053e534  5f  POP EDI
0053e535  5e  POP ESI
0053e536  5b  POP EBX
0053e537  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FloorOwnerGrid_WriteTileOwnerId(void * this, char * param_1, uint param_2, uint param_3, int param_4)
Owned ranges: [[00a94d30, 00a94dea]]

00a94d30  51  PUSH ECX
00a94d31  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00a94d35  53  PUSH EBX
00a94d36  56  PUSH ESI
00a94d37  57  PUSH EDI
00a94d38  8bf9  MOV EDI,ECX
00a94d3a  8b7720  MOV ESI,dword ptr [EDI + 0x20]
00a94d3d  0faf742420  IMUL ESI,dword ptr [ESP + 0x20]
00a94d42  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00a94d46  8bc1  MOV EAX,ECX
00a94d48  c1f802  SAR EAX,0x2
00a94d4b  03f0  ADD ESI,EAX
00a94d4d  0faf7724  IMUL ESI,dword ptr [EDI + 0x24]
00a94d51  8bc2  MOV EAX,EDX
00a94d53  c1f802  SAR EAX,0x2
00a94d56  03f0  ADD ESI,EAX
00a94d58  8b4748  MOV EAX,dword ptr [EDI + 0x48]
00a94d5b  8d1c36  LEA EBX,[ESI + ESI*0x1]
00a94d5e  03c3  ADD EAX,EBX
00a94d60  66f7000080  TEST word ptr [EAX],0x8000
00a94d65  895c2420  MOV dword ptr [ESP + 0x20],EBX
00a94d69  8944240c  MOV dword ptr [ESP + 0xc],EAX
00a94d6d  745a  JZ 0x00a94dc9
00a94d6f  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00a94d73  8b4f38  MOV ECX,dword ptr [EDI + 0x38]
00a94d76  8a02  MOV AL,byte ptr [EDX]
00a94d78  3a040e  CMP AL,byte ptr [ESI + ECX*0x1]
00a94d7b  7467  JZ 0x00a94de4
00a94d7d  8b5f2c  MOV EBX,dword ptr [EDI + 0x2c]
00a94d80  2b5f28  SUB EBX,dword ptr [EDI + 0x28]
00a94d83  55  PUSH EBP
00a94d84  8d6f28  LEA EBP,[EDI + 0x28]
00a94d87  8d4b10  LEA ECX,[EBX + 0x10]
00a94d8a  51  PUSH ECX
00a94d8b  8bcd  MOV ECX,EBP
00a94d8d  e88ee097ff  CALL 0x00412e20
00a94d92  8b6d00  MOV EBP,dword ptr [EBP]
00a94d95  8b572c  MOV EDX,dword ptr [EDI + 0x2c]
00a94d98  8b4738  MOV EAX,dword ptr [EDI + 0x38]
00a94d9b  0fb60c30  MOVZX ECX,byte ptr [EAX + ESI*0x1]
00a94d9f  03eb  ADD EBP,EBX
00a94da1  2bd5  SUB EDX,EBP
00a94da3  52  PUSH EDX
00a94da4  51  PUSH ECX
00a94da5  55  PUSH EBP
00a94da6  e8eda44e00  CALL 0x00f7f298
00a94dab  8b5748  MOV EDX,dword ptr [EDI + 0x48]
00a94dae  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00a94db2  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00a94db6  83c40c  ADD ESP,0xc
00a94db9  c1fb04  SAR EBX,0x4
00a94dbc  66891c10  MOV word ptr [EAX + EDX*0x1],BX
00a94dc0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00a94dc4  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00a94dc8  5d  POP EBP
00a94dc9  0fb700  MOVZX EAX,word ptr [EAX]
00a94dcc  83e103  AND ECX,0x3
00a94dcf  8d0c81  LEA ECX,[ECX + EAX*0x4]
00a94dd2  8b4728  MOV EAX,dword ptr [EDI + 0x28]
00a94dd5  8d0c88  LEA ECX,[EAX + ECX*0x4]
00a94dd8  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00a94ddc  8a00  MOV AL,byte ptr [EAX]
00a94dde  83e203  AND EDX,0x3
00a94de1  880411  MOV byte ptr [ECX + EDX*0x1],AL
00a94de4  5f  POP EDI
00a94de5  5e  POP ESI
00a94de6  5b  POP EBX
00a94de7  59  POP ECX
00a94de8  c21000  RET 0x10

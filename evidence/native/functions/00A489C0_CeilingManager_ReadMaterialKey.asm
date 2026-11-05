# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool CeilingManager_ReadMaterialKey(void * this, pointer streamContext, pointer keyContext, uint instanceLow, uint instanceHigh, uint groupId)
Owned ranges: [[00a489c0, 00a48aaa]]

00a489c0  83ec10  SUB ESP,0x10
00a489c3  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a489c7  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00a489cb  56  PUSH ESI
00a489cc  57  PUSH EDI
00a489cd  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00a489d1  8bf1  MOV ESI,ECX
00a489d3  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00a489d7  89442408  MOV dword ptr [ESP + 0x8],EAX
00a489db  6a00  PUSH 0x0
00a489dd  8d44240c  LEA EAX,[ESP + 0xc]
00a489e1  894c2410  MOV dword ptr [ESP + 0x10],ECX
00a489e5  50  PUSH EAX
00a489e6  8bcf  MOV ECX,EDI
00a489e8  c74424186d168a04  MOV dword ptr [ESP + 0x18],0x48a166d
00a489f0  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00a489f4  e8c7fad8ff  CALL 0x007d84c0
00a489f9  84c0  TEST AL,AL
00a489fb  0f849b000000  JZ 0x00a48a9c
00a48a01  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00a48a04  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00a48a07  51  PUSH ECX
00a48a08  8d542430  LEA EDX,[ESP + 0x30]
00a48a0c  52  PUSH EDX
00a48a0d  50  PUSH EAX
00a48a0e  e86d4fa9ff  CALL 0x004dd980
00a48a13  83c40c  ADD ESP,0xc
00a48a16  8bcf  MOV ECX,EDI
00a48a18  50  PUSH EAX
00a48a19  e8d2efd8ff  CALL 0x007d79f0
00a48a1e  83c620  ADD ESI,0x20
00a48a21  837c242c02  CMP dword ptr [ESP + 0x2c],0x2
00a48a26  720d  JC 0x00a48a35
00a48a28  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00a48a2c  56  PUSH ESI
00a48a2d  57  PUSH EDI
00a48a2e  e83dead8ff  CALL 0x007d7470
00a48a33  eb19  JMP 0x00a48a4e
00a48a35  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00a48a38  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00a48a3b  51  PUSH ECX
00a48a3c  56  PUSH ESI
00a48a3d  52  PUSH EDX
00a48a3e  e81dedd8ff  CALL 0x007d7760
00a48a43  83c40c  ADD ESP,0xc
00a48a46  8bcf  MOV ECX,EDI
00a48a48  50  PUSH EAX
00a48a49  e8a2efd8ff  CALL 0x007d79f0
00a48a4e  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a48a54  6a01  PUSH 0x1
00a48a56  56  PUSH ESI
00a48a57  6a03  PUSH 0x3
00a48a59  e812602400  CALL 0x00c8ea70
00a48a5e  85c0  TEST EAX,EAX
00a48a60  7528  JNZ 0x00a48a8a
00a48a62  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a48a68  6a03  PUSH 0x3
00a48a6a  e801292400  CALL 0x00c8b370
00a48a6f  85c0  TEST EAX,EAX
00a48a71  7417  JZ 0x00a48a8a
00a48a73  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00a48a76  890e  MOV dword ptr [ESI],ECX
00a48a78  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00a48a7b  895604  MOV dword ptr [ESI + 0x4],EDX
00a48a7e  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00a48a81  894e08  MOV dword ptr [ESI + 0x8],ECX
00a48a84  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00a48a87  89560c  MOV dword ptr [ESI + 0xc],EDX
00a48a8a  8bcf  MOV ECX,EDI
00a48a8c  e8dfefd8ff  CALL 0x007d7a70
00a48a91  8a4714  MOV AL,byte ptr [EDI + 0x14]
00a48a94  5f  POP EDI
00a48a95  5e  POP ESI
00a48a96  83c410  ADD ESP,0x10
00a48a99  c21400  RET 0x14
00a48a9c  c6471401  MOV byte ptr [EDI + 0x14],0x1
00a48aa0  8a4714  MOV AL,byte ptr [EDI + 0x14]
00a48aa3  5f  POP EDI
00a48aa4  5e  POP ESI
00a48aa5  83c410  ADD ESP,0x10
00a48aa8  c21400  RET 0x14

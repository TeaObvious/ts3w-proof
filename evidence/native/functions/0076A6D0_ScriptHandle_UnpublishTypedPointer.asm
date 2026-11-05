# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ScriptHandle_UnpublishTypedPointer
Paired actual annotated Ghidra pseudocode: 0076A6D0_ScriptHandle_UnpublishTypedPointer.c
Owned ranges: [[0076a6d0, 0076a79e]]
Envelope bytes=207

GHIDRA LISTING (original bytes; nonowned alignment explicit)
0076a6d0  83ec08  SUB ESP,0x8
0076a6d3  53  PUSH EBX
0076a6d4  56  PUSH ESI
0076a6d5  8bf1  MOV ESI,ECX
0076a6d7  57  PUSH EDI
0076a6d8  8d9ef0090000  LEA EBX,[ESI + 0x9f0]
0076a6de  6844870001  PUSH 0x1008744
0076a6e3  8bcb  MOV ECX,EBX
0076a6e5  e81675d7ff  CALL 0x004e1c00
0076a6ea  8d44241c  LEA EAX,[ESP + 0x1c]
0076a6ee  50  PUSH EAX
0076a6ef  8d4c2410  LEA ECX,[ESP + 0x10]
0076a6f3  83c604  ADD ESI,0x4
0076a6f6  51  PUSH ECX
0076a6f7  8bce  MOV ECX,ESI
0076a6f9  e832feffff  CALL 0x0076a530
0076a6fe  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0076a701  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0076a704  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0076a708  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
0076a70b  7512  JNZ 0x0076a71f
0076a70d  8bcb  MOV ECX,EBX
0076a70f  e8ac75d7ff  CALL 0x004e1cc0
0076a714  32c0  XOR AL,AL
0076a716  5f  POP EDI
0076a717  5e  POP ESI
0076a718  5b  POP EBX
0076a719  83c408  ADD ESP,0x8
0076a71c  c20800  RET 0x8
0076a71f  8d7004  LEA ESI,[EAX + 0x4]
0076a722  8d542418  LEA EDX,[ESP + 0x18]
0076a726  52  PUSH EDX
0076a727  8d442410  LEA EAX,[ESP + 0x10]
0076a72b  8d7e20  LEA EDI,[ESI + 0x20]
0076a72e  50  PUSH EAX
0076a72f  8bcf  MOV ECX,EDI
0076a731  e87a122f00  CALL 0x00a5b9b0
0076a736  8b5708  MOV EDX,dword ptr [EDI + 0x8]
0076a739  8b4704  MOV EAX,dword ptr [EDI + 0x4]
0076a73c  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0076a740  3b0c90  CMP ECX,dword ptr [EAX + EDX*0x4]
0076a743  74c8  JZ 0x0076a70d
0076a745  8b5104  MOV EDX,dword ptr [ECX + 0x4]
0076a748  83ec08  SUB ESP,0x8
0076a74b  8bc4  MOV EAX,ESP
0076a74d  8908  MOV dword ptr [EAX],ECX
0076a74f  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0076a753  89542424  MOV dword ptr [ESP + 0x24],EDX
0076a757  8d542414  LEA EDX,[ESP + 0x14]
0076a75b  894804  MOV dword ptr [EAX + 0x4],ECX
0076a75e  52  PUSH EDX
0076a75f  8bcf  MOV ECX,EDI
0076a761  e84a79fdff  CALL 0x007420b0
0076a766  8d44241c  LEA EAX,[ESP + 0x1c]
0076a76a  50  PUSH EAX
0076a76b  8d4c2410  LEA ECX,[ESP + 0x10]
0076a76f  51  PUSH ECX
0076a770  8bce  MOV ECX,ESI
0076a772  e899ba0a00  CALL 0x00816210
0076a777  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0076a77a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0076a77d  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0076a781  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
0076a784  8bcb  MOV ECX,EBX
0076a786  7487  JZ 0x0076a70f
0076a788  c7400400000000  MOV dword ptr [EAX + 0x4],0x0
0076a78f  e82c75d7ff  CALL 0x004e1cc0
0076a794  5f  POP EDI
0076a795  5e  POP ESI
0076a796  b001  MOV AL,0x1
0076a798  5b  POP EBX
0076a799  83c408  ADD ESP,0x8
0076a79c  c20800  RET 0x8
Owned instructions=73 owned bytes=207 gap/nonowned bytes=0

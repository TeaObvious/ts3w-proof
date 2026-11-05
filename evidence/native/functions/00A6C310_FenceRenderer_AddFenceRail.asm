# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: FenceRenderer_AddFenceRail
Paired actual annotated Ghidra pseudocode: 00A6C310_FenceRenderer_AddFenceRail.c
Owned ranges: [[00a6c310, 00a6c3aa]]
Envelope bytes=155

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00a6c310  83ec10  SUB ESP,0x10
00a6c313  53  PUSH EBX
00a6c314  55  PUSH EBP
00a6c315  8b6c241c  MOV EBP,dword ptr [ESP + 0x1c]
00a6c319  56  PUSH ESI
00a6c31a  57  PUSH EDI
00a6c31b  6a01  PUSH 0x1
00a6c31d  8bd9  MOV EBX,ECX
00a6c31f  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a6c325  55  PUSH EBP
00a6c326  e835242200  CALL 0x00c8e760
00a6c32b  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00a6c32f  8bf0  MOV ESI,EAX
00a6c331  8a4703  MOV AL,byte ptr [EDI + 0x3]
00a6c334  3a07  CMP AL,byte ptr [EDI]
00a6c336  7411  JZ 0x00a6c349
00a6c338  8a4f04  MOV CL,byte ptr [EDI + 0x4]
00a6c33b  3a4f01  CMP CL,byte ptr [EDI + 0x1]
00a6c33e  7409  JZ 0x00a6c349
00a6c340  8bce  MOV ECX,ESI
00a6c342  e849efc3ff  CALL 0x006ab290
00a6c347  eb07  JMP 0x00a6c350
00a6c349  8bce  MOV ECX,ESI
00a6c34b  e880a62200  CALL 0x00c969d0
00a6c350  8b10  MOV EDX,dword ptr [EAX]
00a6c352  89542410  MOV dword ptr [ESP + 0x10],EDX
00a6c356  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00a6c359  894c2414  MOV dword ptr [ESP + 0x14],ECX
00a6c35d  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00a6c360  89542418  MOV dword ptr [ESP + 0x18],EDX
00a6c364  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00a6c367  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a6c36b  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00a6c36f  83bee000000000  CMP dword ptr [ESI + 0xe0],0x0
00a6c376  52  PUSH EDX
00a6c377  0f95c1  SETNZ CL
00a6c37a  884c2428  MOV byte ptr [ESP + 0x28],CL
00a6c37e  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00a6c382  50  PUSH EAX
00a6c383  8bce  MOV ECX,ESI
00a6c385  e8f6802200  CALL 0x00c94480
00a6c38a  51  PUSH ECX
00a6c38b  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00a6c38f  d91c24  FSTP float ptr [ESP]
00a6c392  51  PUSH ECX
00a6c393  57  PUSH EDI
00a6c394  55  PUSH EBP
00a6c395  8d542428  LEA EDX,[ESP + 0x28]
00a6c399  52  PUSH EDX
00a6c39a  8bcb  MOV ECX,EBX
00a6c39c  e87fecffff  CALL 0x00a6b020
00a6c3a1  5f  POP EDI
00a6c3a2  5e  POP ESI
00a6c3a3  5d  POP EBP
00a6c3a4  5b  POP EBX
00a6c3a5  83c410  ADD ESP,0x10
00a6c3a8  c21000  RET 0x10
Owned instructions=57 owned bytes=155 nonowned bytes=0

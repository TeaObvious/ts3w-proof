# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077F160_Sims3CustomWindow_Create.c
Owned ranges: [[0077f160, 0077f1c7]]

0077f160  8b442408  MOV EAX,dword ptr [ESP + 0x8]
0077f164  56  PUSH ESI
0077f165  50  PUSH EAX
0077f166  68ecf80001  PUSH 0x100f8ec
0077f16b  6a10  PUSH 0x10
0077f16d  6860020000  PUSH 0x260
0077f172  e8395fd8ff  CALL 0x005050b0
0077f177  8bf0  MOV ESI,EAX
0077f179  83c410  ADD ESP,0x10
0077f17c  85f6  TEST ESI,ESI
0077f17e  7442  JZ 0x0077f1c2
0077f180  8bce  MOV ECX,ESI
0077f182  e8096fd9ff  CALL 0x00516090
0077f187  c7865002000094b30301  MOV dword ptr [ESI + 0x250],0x103b394
0077f191  8d4604  LEA EAX,[ESI + 0x4]
0077f194  c70650f20001  MOV dword ptr [ESI],0x100f250
0077f19a  c7865002000008f10001  MOV dword ptr [ESI + 0x250],0x100f108
0077f1a4  c7865402000000000000  MOV dword ptr [ESI + 0x254],0x0
0077f1ae  c7865802000001000000  MOV dword ptr [ESI + 0x258],0x1
0077f1b8  c70028f10001  MOV dword ptr [EAX],0x100f128
0077f1be  5e  POP ESI
0077f1bf  c20800  RET 0x8
0077f1c2  33c0  XOR EAX,EAX
0077f1c4  5e  POP ESI
0077f1c5  c20800  RET 0x8

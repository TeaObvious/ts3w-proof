# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 005187E0_UiButton_ReplaceStateAndMarkDirty.c
Owned ranges: [[005187e0, 00518823]]

005187e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
005187e4  56  PUSH ESI
005187e5  8bf1  MOV ESI,ECX
005187e7  398628feffff  CMP dword ptr [ESI + 0xfffffe28],EAX
005187ed  7431  JZ 0x00518820
005187ef  8b96b4fdffff  MOV EDX,dword ptr [ESI + 0xfffffdb4]
005187f5  8d8eb4fdffff  LEA ECX,[ESI + 0xfffffdb4]
005187fb  50  PUSH EAX
005187fc  8b425c  MOV EAX,dword ptr [EDX + 0x5c]
005187ff  ffd0  CALL EAX
00518801  807e0400  CMP byte ptr [ESI + 0x4],0x0
00518805  7519  JNZ 0x00518820
00518807  8b96b4fdffff  MOV EDX,dword ptr [ESI + 0xfffffdb4]
0051880d  8b4274  MOV EAX,dword ptr [EDX + 0x74]
00518810  8d8eb4fdffff  LEA ECX,[ESI + 0xfffffdb4]
00518816  6a01  PUSH 0x1
00518818  6a08  PUSH 0x8
0051881a  c6460401  MOV byte ptr [ESI + 0x4],0x1
0051881e  ffd0  CALL EAX
00518820  5e  POP ESI
00518821  c20400  RET 0x4

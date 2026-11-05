# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0054A7D0_UiHostedLayout_Shutdown.c
Owned ranges: [[0054a7d0, 0054a7f5]]

0054a7d0  56  PUSH ESI
0054a7d1  8bf1  MOV ESI,ECX
0054a7d3  e8f8f5ffff  CALL 0x00549dd0
0054a7d8  8b8e98000000  MOV ECX,dword ptr [ESI + 0x98]
0054a7de  85c9  TEST ECX,ECX
0054a7e0  7412  JZ 0x0054a7f4
0054a7e2  c7869800000000000000  MOV dword ptr [ESI + 0x98],0x0
0054a7ec  8b01  MOV EAX,dword ptr [ECX]
0054a7ee  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0054a7f1  5e  POP ESI
0054a7f2  ffe2  JMP EDX
0054a7f4  5e  POP ESI
0054a7f5  c3  RET

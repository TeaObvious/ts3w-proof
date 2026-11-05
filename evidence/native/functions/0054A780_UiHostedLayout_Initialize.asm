# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0054A780_UiHostedLayout_Initialize.c
Owned ranges: [[0054a780, 0054a79b]]

0054a780  56  PUSH ESI
0054a781  8bf1  MOV ESI,ECX
0054a783  e858f7ffff  CALL 0x00549ee0
0054a788  c706c01efc00  MOV dword ptr [ESI],0xfc1ec0
0054a78e  c7869800000000000000  MOV dword ptr [ESI + 0x98],0x0
0054a798  8bc6  MOV EAX,ESI
0054a79a  5e  POP ESI
0054a79b  c3  RET

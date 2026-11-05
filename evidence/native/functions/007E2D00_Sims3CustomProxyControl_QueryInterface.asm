# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E2D00_Sims3CustomProxyControl_QueryInterface.c
Owned ranges: [[007e2d00, 007e2d18]]

007e2d00  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007e2d04  3d68b76b05  CMP EAX,0x56bb768
007e2d09  7409  JZ 0x007e2d14
007e2d0b  89442404  MOV dword ptr [ESP + 0x4],EAX
007e2d0f  e9fc0cd3ff  JMP 0x00513a10
007e2d14  8bc1  MOV EAX,ECX
007e2d16  c20400  RET 0x4

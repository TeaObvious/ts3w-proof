# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 007E2D30_Sims3CustomProxyControl_GetPropertyContext.c
Owned ranges: [[007e2d30, 007e2d51]]

007e2d30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007e2d34  c7400801000000  MOV dword ptr [EAX + 0x8],0x1
007e2d3b  8b9150020000  MOV EDX,dword ptr [ECX + 0x250]
007e2d41  894804  MOV dword ptr [EAX + 0x4],ECX
007e2d44  81c188020000  ADD ECX,0x288
007e2d4a  89500c  MOV dword ptr [EAX + 0xc],EDX
007e2d4d  8908  MOV dword ptr [EAX],ECX
007e2d4f  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077ED60_Sims3CustomWindow_GetPropertyContext.c
Owned ranges: [[0077ed60, 0077ed7d]]

0077ed60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077ed64  c700e8f20001  MOV dword ptr [EAX],0x100f2e8
0077ed6a  894804  MOV dword ptr [EAX + 0x4],ECX
0077ed6d  c7400801000000  MOV dword ptr [EAX + 0x8],0x1
0077ed74  c7400c2841aa03  MOV dword ptr [EAX + 0xc],0x3aa4128
0077ed7b  c20400  RET 0x4

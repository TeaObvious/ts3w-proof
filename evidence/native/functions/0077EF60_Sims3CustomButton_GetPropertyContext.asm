# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077EF60_Sims3CustomButton_GetPropertyContext.c
Owned ranges: [[0077ef60, 0077ef7d]]

0077ef60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077ef64  c700b0f50001  MOV dword ptr [EAX],0x100f5b0
0077ef6a  894804  MOV dword ptr [EAX + 0x4],ECX
0077ef6d  c7400801000000  MOV dword ptr [EAX + 0x8],0x1
0077ef74  c7400c3841aa03  MOV dword ptr [EAX + 0xc],0x3aa4138
0077ef7b  c20400  RET 0x4

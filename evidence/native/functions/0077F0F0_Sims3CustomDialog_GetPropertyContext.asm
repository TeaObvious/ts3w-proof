# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077F0F0_Sims3CustomDialog_GetPropertyContext.c
Owned ranges: [[0077f0f0, 0077f10d]]

0077f0f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0077f0f4  c70084f80001  MOV dword ptr [EAX],0x100f884
0077f0fa  894804  MOV dword ptr [EAX + 0x4],ECX
0077f0fd  c7400801000000  MOV dword ptr [EAX + 0x8],0x1
0077f104  c7400c4841aa03  MOV dword ptr [EAX + 0xc],0x3aa4148
0077f10b  c20400  RET 0x4

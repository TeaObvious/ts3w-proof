# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 0077EFD0_Sims3CustomDialog_Construct.c
Owned ranges: [[0077efd0, 0077f01a]]

0077efd0  56  PUSH ESI
0077efd1  8bf1  MOV ESI,ECX
0077efd3  e82831daff  CALL 0x00522100
0077efd8  c7868003000094b30301  MOV dword ptr [ESI + 0x380],0x103b394
0077efe2  c706d0f70001  MOV dword ptr [ESI],0x100f7d0
0077efe8  c74604a8f60001  MOV dword ptr [ESI + 0x4],0x100f6a8
0077efef  c7865002000038f60001  MOV dword ptr [ESI + 0x250],0x100f638
0077eff9  c7868003000018f60001  MOV dword ptr [ESI + 0x380],0x100f618
0077f003  c7868403000000000000  MOV dword ptr [ESI + 0x384],0x0
0077f00d  c7868803000001000000  MOV dword ptr [ESI + 0x388],0x1
0077f017  8bc6  MOV EAX,ESI
0077f019  5e  POP ESI
0077f01a  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10068cc0..10068cd1; CAW_HeightRasterClearDirtyRect
10068cc0: 33c0  XOR EAX,EAX
10068cc2: 894154  MOV dword ptr [ECX + 0x54],EAX
10068cc5: 894158  MOV dword ptr [ECX + 0x58],EAX
10068cc8: 89415c  MOV dword ptr [ECX + 0x5c],EAX
10068ccb: 894160  MOV dword ptr [ECX + 0x60],EAX
10068cce: 884134  MOV byte ptr [ECX + 0x34],AL
10068cd1: c3  RET

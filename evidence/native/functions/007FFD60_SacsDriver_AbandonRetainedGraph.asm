# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsDriver_AbandonRetainedGraph(void * this, uint param_1)
Owned ranges: [[007ffd60, 007ffd8f]]

007ffd60  56  PUSH ESI
007ffd61  8b742408  MOV ESI,dword ptr [ESP + 0x8]
007ffd65  85f6  TEST ESI,ESI
007ffd67  7423  JZ 0x007ffd8c
007ffd69  8b4678  MOV EAX,dword ptr [ESI + 0x78]
007ffd6c  85c0  TEST EAX,EAX
007ffd6e  741c  JZ 0x007ffd8c
007ffd70  8b4038  MOV EAX,dword ptr [EAX + 0x38]
007ffd73  85c0  TEST EAX,EAX
007ffd75  740e  JZ 0x007ffd85
007ffd77  56  PUSH ESI
007ffd78  83c144  ADD ECX,0x44
007ffd7b  51  PUSH ECX
007ffd7c  6a03  PUSH 0x3
007ffd7e  8bc8  MOV ECX,EAX
007ffd80  e8cb4dffff  CALL 0x007f4b50
007ffd85  c7467800000000  MOV dword ptr [ESI + 0x78],0x0
007ffd8c  5e  POP ESI
007ffd8d  c20400  RET 0x4

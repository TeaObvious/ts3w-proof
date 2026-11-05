# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsPaths_EnumerateTowardState
Paired actual annotated Ghidra pseudocode: 007FC390_SacsPaths_EnumerateTowardState.c
Owned ranges: [[007fc390, 007fc3c9]]
Envelope bytes=58

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fc390  8b542408  MOV EDX,dword ptr [ESP + 0x8]
007fc394  85d2  TEST EDX,EDX
007fc396  742d  JZ 0x007fc3c5
007fc398  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007fc39c  85c0  TEST EAX,EAX
007fc39e  7425  JZ 0x007fc3c5
007fc3a0  8b4028  MOV EAX,dword ptr [EAX + 0x28]
007fc3a3  56  PUSH ESI
007fc3a4  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
007fc3a8  56  PUSH ESI
007fc3a9  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
007fc3ad  56  PUSH ESI
007fc3ae  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
007fc3b2  56  PUSH ESI
007fc3b3  50  PUSH EAX
007fc3b4  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007fc3b8  50  PUSH EAX
007fc3b9  52  PUSH EDX
007fc3ba  e8c1feffff  CALL 0x007fc280
007fc3bf  b001  MOV AL,0x1
007fc3c1  5e  POP ESI
007fc3c2  c21800  RET 0x18
007fc3c5  32c0  XOR AL,AL
007fc3c7  c21800  RET 0x18
Owned instructions=24 owned bytes=58 gap/nonowned bytes=0

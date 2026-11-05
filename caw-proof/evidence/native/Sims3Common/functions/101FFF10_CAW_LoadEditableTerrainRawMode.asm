# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fff10..101fff23; CAW_LoadEditableTerrainRawMode
101fff10: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
101fff14: 8b542404  MOV EDX,dword ptr [ESP + 0x4]
101fff18: 6a00  PUSH 0x0
101fff1a: 50  PUSH EAX
101fff1b: 52  PUSH EDX
101fff1c: e88ffcffff  CALL 0x101ffbb0
101fff21: c20800  RET 0x8

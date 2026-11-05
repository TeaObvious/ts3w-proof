# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101ffef0..101fff03; CAW_LoadAuthoredTerrainCollisionMode
101ffef0: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
101ffef4: 8b542404  MOV EDX,dword ptr [ESP + 0x4]
101ffef8: 6a01  PUSH 0x1
101ffefa: 50  PUSH EAX
101ffefb: 52  PUSH EDX
101ffefc: e8affcffff  CALL 0x101ffbb0
101fff01: c20800  RET 0x8

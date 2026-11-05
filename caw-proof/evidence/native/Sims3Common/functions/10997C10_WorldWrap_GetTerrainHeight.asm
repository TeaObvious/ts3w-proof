# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10997c10..10997c39; WorldWrap_GetTerrainHeight
10997c10: d944240c  FLD float ptr [ESP + 0xc]
10997c14: 8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
10997c18: 6a00  PUSH 0x0
10997c1a: 6a00  PUSH 0x0
10997c1c: 6a00  PUSH 0x0
10997c1e: 6a00  PUSH 0x0
10997c20: 6a00  PUSH 0x0
10997c22: 6a01  PUSH 0x1
10997c24: 6a00  PUSH 0x0
10997c26: 83ec08  SUB ESP,0x8
10997c29: d95c2404  FSTP float ptr [ESP + 0x4]
10997c2d: d944242c  FLD float ptr [ESP + 0x2c]
10997c31: d91c24  FSTP float ptr [ESP]
10997c34: e8f76c8aff  CALL 0x1023e930
10997c39: c3  RET

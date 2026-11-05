# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10997c40..10997c6d; WorldWrap_GetTerrainHeightAboveWater
10997c40: d944240c  FLD float ptr [ESP + 0xc]
10997c44: 8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
10997c48: 6a00  PUSH 0x0
10997c4a: 6a00  PUSH 0x0
10997c4c: 6a00  PUSH 0x0
10997c4e: 6a00  PUSH 0x0
10997c50: 6a00  PUSH 0x0
10997c52: 6a00  PUSH 0x0
10997c54: 6a00  PUSH 0x0
10997c56: 6a00  PUSH 0x0
10997c58: 6a00  PUSH 0x0
10997c5a: 83ec08  SUB ESP,0x8
10997c5d: d95c2404  FSTP float ptr [ESP + 0x4]
10997c61: d9442434  FLD float ptr [ESP + 0x34]
10997c65: d91c24  FSTP float ptr [ESP]
10997c68: e8b36f8aff  CALL 0x1023ec20
10997c6d: c3  RET

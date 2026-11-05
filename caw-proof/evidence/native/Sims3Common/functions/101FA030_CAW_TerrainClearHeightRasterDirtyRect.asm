# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fa030..101fa03c; CAW_TerrainClearHeightRasterDirtyRect
101fa030: 8b4908  MOV ECX,dword ptr [ECX + 0x8]
101fa033: 85c9  TEST ECX,ECX
101fa035: 7405  JZ 0x101fa03c
101fa037: e984ece6ff  JMP 0x10068cc0
101fa03c: c3  RET

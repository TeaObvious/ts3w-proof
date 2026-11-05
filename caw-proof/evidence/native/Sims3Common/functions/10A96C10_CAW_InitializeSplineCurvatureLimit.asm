# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 10a96c10..10a96c28; CAW_InitializeSplineCurvatureLimit
10a96c10: f30f1005d4b0ac10  MOVSS XMM0,dword ptr [0x10acb0d4]
10a96c18: f30f5e058cf3c010  DIVSS XMM0,dword ptr [0x10c0f38c]
10a96c20: f30f1105c8f7c610  MOVSS dword ptr [0x10c6f7c8],XMM0
10a96c28: c3  RET

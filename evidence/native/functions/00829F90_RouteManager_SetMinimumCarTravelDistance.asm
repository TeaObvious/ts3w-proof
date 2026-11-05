# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function RouteManager_SetMinimumCarTravelDistance 00829f90..00829fb2; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=0f76f2e7ef712159fb994d29a028b5a2194b22e6a72ce64d93c40ec2a82d9951
; PC 1.67 original: ECX route manager, one binary32 stack value, RET 4, no return-value contract. MOVSS copies the value to manager +0x968. A nonnull planner at manager +0x960 receives identical bits at planner +0x8C. AnalyzeStreets 0065A010 reads planner +0x8C. This setter performs no finite-value check, clamp or default substitution.
00829f90: f30f10442404  MOVSS XMM0,dword ptr [ESP + 0x4]
00829f96: f30f118168090000  MOVSS dword ptr [ECX + 0x968],XMM0
00829f9e: 8b8960090000  MOV ECX,dword ptr [ECX + 0x960]
00829fa4: 85c9  TEST ECX,ECX
00829fa6: 7408  JZ 0x00829fb0
00829fa8: f30f11818c000000  MOVSS dword ptr [ECX + 0x8c],XMM0
00829fb0: c20400  RET 0x4

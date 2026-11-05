# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1038e6e0..1038e6ef; CAW_GameConfigHasInstalledProductBits
1038e6e0: 8b4104  MOV EAX,dword ptr [ECX + 0x4]
1038e6e3: 23442404  AND EAX,dword ptr [ESP + 0x4]
1038e6e7: f7d8  NEG EAX
1038e6e9: 1bc0  SBB EAX,EAX
1038e6eb: f7d8  NEG EAX
1038e6ed: c20400  RET 0x4

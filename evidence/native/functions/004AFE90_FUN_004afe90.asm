# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FUN_004afe90(undefined4 param_1)
Owned ranges: [[004afe90, 004afe9f]]

004afe90  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004afe94  a1d8881c01  MOV EAX,[0x011c88d8]
004afe99  890dd8881c01  MOV dword ptr [0x011c88d8],ECX
004afe9f  c3  RET

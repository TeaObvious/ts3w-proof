# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 TreeComponent_HasCollisionShape(int param_1)
Owned ranges: [[0095a650, 0095a65a]]

0095a650  8b410c  MOV EAX,dword ptr [ECX + 0xc]
0095a653  83786003  CMP dword ptr [EAX + 0x60],0x3
0095a657  0f95c0  SETNZ AL
0095a65a  c3  RET

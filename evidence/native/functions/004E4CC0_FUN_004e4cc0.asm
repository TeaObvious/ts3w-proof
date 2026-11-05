# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FUN_004e4cc0(int param_1)
Owned ranges: [[004e4cc0, 004e4cd5]]

004e4cc0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004e4cc4  83c01b  ADD EAX,0x1b
004e4cc7  83f810  CMP EAX,0x10
004e4cca  7604  JBE 0x004e4cd0
004e4ccc  83e0f0  AND EAX,0xfffffff0
004e4ccf  c3  RET
004e4cd0  b810000000  MOV EAX,0x10
004e4cd5  c3  RET

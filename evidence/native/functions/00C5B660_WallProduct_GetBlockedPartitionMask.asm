# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 WallProduct_GetBlockedPartitionMask(uint * param_1)
Owned ranges: [[00c5b660, 00c5b682]]

00c5b660  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5b664  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5b66a  6a01  PUSH 0x1
00c5b66c  50  PUSH EAX
00c5b66d  e8ae430300  CALL 0x00c8fa20
00c5b672  85c0  TEST EAX,EAX
00c5b674  7407  JZ 0x00c5b67d
00c5b676  8b8098000000  MOV EAX,dword ptr [EAX + 0x98]
00c5b67c  c3  RET
00c5b67d  b807000000  MOV EAX,0x7
00c5b682  c3  RET

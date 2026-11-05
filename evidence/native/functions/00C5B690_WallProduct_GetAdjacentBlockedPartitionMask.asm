# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 WallProduct_GetAdjacentBlockedPartitionMask(uint * param_1)
Owned ranges: [[00c5b690, 00c5b6af]]

00c5b690  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5b694  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5b69a  6a01  PUSH 0x1
00c5b69c  50  PUSH EAX
00c5b69d  e87e430300  CALL 0x00c8fa20
00c5b6a2  85c0  TEST EAX,EAX
00c5b6a4  7407  JZ 0x00c5b6ad
00c5b6a6  8b809c000000  MOV EAX,dword ptr [EAX + 0x9c]
00c5b6ac  c3  RET
00c5b6ad  33c0  XOR EAX,EAX
00c5b6af  c3  RET

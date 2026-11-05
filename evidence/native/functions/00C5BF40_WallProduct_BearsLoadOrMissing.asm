# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool WallProduct_BearsLoadOrMissing(pointer productKey)
Owned ranges: [[00c5bf40, 00c5bf64]]

00c5bf40  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c5bf44  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5bf4a  6a01  PUSH 0x1
00c5bf4c  50  PUSH EAX
00c5bf4d  e8ce3a0300  CALL 0x00c8fa20
00c5bf52  85c0  TEST EAX,EAX
00c5bf54  740c  JZ 0x00c5bf62
00c5bf56  8b8090000000  MOV EAX,dword ptr [EAX + 0x90]
00c5bf5c  c1e809  SHR EAX,0x9
00c5bf5f  2401  AND AL,0x1
00c5bf61  c3  RET
00c5bf62  b001  MOV AL,0x1
00c5bf64  c3  RET

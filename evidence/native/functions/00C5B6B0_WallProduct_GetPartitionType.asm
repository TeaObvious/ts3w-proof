# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int WallProduct_GetPartitionType(uint * param_1)
Owned ranges: [[00c5b6b0, 00c5b6ea]]

00c5b6b0  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00c5b6b6  56  PUSH ESI
00c5b6b7  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c5b6bb  6a01  PUSH 0x1
00c5b6bd  56  PUSH ESI
00c5b6be  e85d430300  CALL 0x00c8fa20
00c5b6c3  85c0  TEST EAX,EAX
00c5b6c5  7408  JZ 0x00c5b6cf
00c5b6c7  8b808c000000  MOV EAX,dword ptr [EAX + 0x8c]
00c5b6cd  5e  POP ESI
00c5b6ce  c3  RET
00c5b6cf  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c5b6d2  3d2afe1804  CMP EAX,0x418fe2a
00c5b6d7  7507  JNZ 0x00c5b6e0
00c5b6d9  b801000000  MOV EAX,0x1
00c5b6de  5e  POP ESI
00c5b6df  c3  RET
00c5b6e0  2dbce65191  SUB EAX,0x9151e6bc
00c5b6e5  f7d8  NEG EAX
00c5b6e7  1bc0  SBB EAX,EAX
00c5b6e9  5e  POP ESI
00c5b6ea  c3  RET

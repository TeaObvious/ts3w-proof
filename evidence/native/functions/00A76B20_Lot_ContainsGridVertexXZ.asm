# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint Lot_ContainsGridVertexXZ(void * this, int x, int z)
Owned ranges: [[00a76b20, 00a76b4c]]

00a76b20  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a76b24  85c0  TEST EAX,EAX
00a76b26  7c20  JL 0x00a76b48
00a76b28  3b8174010000  CMP EAX,dword ptr [ECX + 0x174]
00a76b2e  7f18  JG 0x00a76b48
00a76b30  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a76b34  85c0  TEST EAX,EAX
00a76b36  7c10  JL 0x00a76b48
00a76b38  3b8178010000  CMP EAX,dword ptr [ECX + 0x178]
00a76b3e  7f08  JG 0x00a76b48
00a76b40  b801000000  MOV EAX,0x1
00a76b45  c20800  RET 0x8
00a76b48  33c0  XOR EAX,EAX
00a76b4a  c20800  RET 0x8

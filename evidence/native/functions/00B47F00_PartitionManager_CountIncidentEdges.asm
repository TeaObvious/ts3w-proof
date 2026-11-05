# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint PartitionManager_CountIncidentEdges(void * this, LotXZLevel * localPosition, uint graphSlot)
Owned ranges: [[00b47f00, 00b47f24]]

00b47f00  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00b47f04  8b4c8154  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x54]
00b47f08  85c9  TEST ECX,ECX
00b47f0a  7414  JZ 0x00b47f20
00b47f0c  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00b47f10  52  PUSH EDX
00b47f11  e84a990f00  CALL 0x00c41860
00b47f16  85c0  TEST EAX,EAX
00b47f18  7406  JZ 0x00b47f20
00b47f1a  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00b47f1d  c20800  RET 0x8
00b47f20  33c0  XOR EAX,EAX
00b47f22  c20800  RET 0x8

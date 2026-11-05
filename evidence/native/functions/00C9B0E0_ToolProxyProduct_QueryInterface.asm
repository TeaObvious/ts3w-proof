# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer ToolProxyProduct_QueryInterface(void * this, uint interfaceId)
Owned ranges: [[00c9b0e0, 00c9b0f8]]

00c9b0e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c9b0e4  3d9e5dac04  CMP EAX,0x4ac5d9e
00c9b0e9  7505  JNZ 0x00c9b0f0
00c9b0eb  8bc1  MOV EAX,ECX
00c9b0ed  c20400  RET 0x4
00c9b0f0  89442404  MOV dword ptr [ESP + 0x4],EAX
00c9b0f4  e9e77effff  JMP 0x00c92fe0

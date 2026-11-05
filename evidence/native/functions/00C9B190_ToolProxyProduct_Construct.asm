# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer ToolProxyProduct_Construct(void * this)
Owned ranges: [[00c9b190, 00c9b1ab]]

00c9b190  56  PUSH ESI
00c9b191  8bf1  MOV ESI,ECX
00c9b193  e8887effff  CALL 0x00c93020
00c9b198  c70690d30701  MOV dword ptr [ESI],0x107d390
00c9b19e  c7868800000000000000  MOV dword ptr [ESI + 0x88],0x0
00c9b1a8  8bc6  MOV EAX,ESI
00c9b1aa  5e  POP ESI
00c9b1ab  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer PuddleGeometry_Construct(void * this)
Owned ranges: [[00b6df00, 00b6df25]]

00b6df00  56  PUSH ESI
00b6df01  8bf1  MOV ESI,ECX
00b6df03  e808f6f0ff  CALL 0x00a7d510
00b6df08  33c0  XOR EAX,EAX
00b6df0a  8986b0020000  MOV dword ptr [ESI + 0x2b0],EAX
00b6df10  8986b4020000  MOV dword ptr [ESI + 0x2b4],EAX
00b6df16  c70650fb0601  MOV dword ptr [ESI],0x106fb50
00b6df1c  8986b8020000  MOV dword ptr [ESI + 0x2b8],EAX
00b6df22  8bc6  MOV EAX,ESI
00b6df24  5e  POP ESI
00b6df25  c3  RET

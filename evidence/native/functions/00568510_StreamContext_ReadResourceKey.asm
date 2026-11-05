# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined StreamContext_ReadResourceKey(void * this, uint * param_1)
Owned ranges: [[00568510, 00568533]]

00568510  56  PUSH ESI
00568511  8bf1  MOV ESI,ECX
00568513  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00568516  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0056851a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0056851d  50  PUSH EAX
0056851e  51  PUSH ECX
0056851f  52  PUSH EDX
00568520  e83bf22600  CALL 0x007d7760
00568525  83c40c  ADD ESP,0xc
00568528  8bce  MOV ECX,ESI
0056852a  50  PUSH EAX
0056852b  e8c0f42600  CALL 0x007d79f0
00568530  5e  POP ESI
00568531  c20400  RET 0x4

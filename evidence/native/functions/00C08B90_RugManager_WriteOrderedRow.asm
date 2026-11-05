# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined RugManager_WriteOrderedRow(void * param_1, void * param_2)
Owned ranges: [[00c08b90, 00c08bc6]]

00c08b90  56  PUSH ESI
00c08b91  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00c08b95  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c08b98  57  PUSH EDI
00c08b99  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00c08b9d  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00c08ba0  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00c08ba3  52  PUSH EDX
00c08ba4  51  PUSH ECX
00c08ba5  50  PUSH EAX
00c08ba6  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00c08ba9  50  PUSH EAX
00c08baa  e811558dff  CALL 0x004de0c0
00c08baf  83c410  ADD ESP,0x10
00c08bb2  8bce  MOV ECX,ESI
00c08bb4  50  PUSH EAX
00c08bb5  e836eebcff  CALL 0x007d79f0
00c08bba  56  PUSH ESI
00c08bbb  8bcf  MOV ECX,EDI
00c08bbd  e84efaffff  CALL 0x00c08610
00c08bc2  5f  POP EDI
00c08bc3  5e  POP ESI
00c08bc4  c20800  RET 0x8

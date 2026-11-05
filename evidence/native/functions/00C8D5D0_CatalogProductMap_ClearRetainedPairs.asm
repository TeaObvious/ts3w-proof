# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void CatalogProductMap_ClearRetainedPairs(void * this)
Owned ranges: [[00c8d5d0, 00c8d606]]

00c8d5d0  53  PUSH EBX
00c8d5d1  56  PUSH ESI
00c8d5d2  8bd9  MOV EBX,ECX
00c8d5d4  8b33  MOV ESI,dword ptr [EBX]
00c8d5d6  57  PUSH EDI
00c8d5d7  8b7b04  MOV EDI,dword ptr [EBX + 0x4]
00c8d5da  3bf7  CMP ESI,EDI
00c8d5dc  7320  JNC 0x00c8d5fe
00c8d5de  8bff  MOV EDI,EDI
00c8d5e0  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c8d5e3  85c9  TEST ECX,ECX
00c8d5e5  7407  JZ 0x00c8d5ee
00c8d5e7  8b01  MOV EAX,dword ptr [ECX]
00c8d5e9  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c8d5ec  ffd2  CALL EDX
00c8d5ee  83c608  ADD ESI,0x8
00c8d5f1  3bf7  CMP ESI,EDI
00c8d5f3  72eb  JC 0x00c8d5e0
00c8d5f5  8b03  MOV EAX,dword ptr [EBX]
00c8d5f7  5f  POP EDI
00c8d5f8  5e  POP ESI
00c8d5f9  894304  MOV dword ptr [EBX + 0x4],EAX
00c8d5fc  5b  POP EBX
00c8d5fd  c3  RET
00c8d5fe  5f  POP EDI
00c8d5ff  8bce  MOV ECX,ESI
00c8d601  5e  POP ESI
00c8d602  894b04  MOV dword ptr [EBX + 0x4],ECX
00c8d605  5b  POP EBX
00c8d606  c3  RET

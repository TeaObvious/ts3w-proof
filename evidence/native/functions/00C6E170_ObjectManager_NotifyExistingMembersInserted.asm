# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ObjectManager_NotifyExistingMembersInserted(int * param_1)
Owned ranges: [[00c6e170, 00c6e1b0]]

00c6e170  53  PUSH EBX
00c6e171  55  PUSH EBP
00c6e172  8bd9  MOV EBX,ECX
00c6e174  8b6b18  MOV EBP,dword ptr [EBX + 0x18]
00c6e177  57  PUSH EDI
00c6e178  8b7b14  MOV EDI,dword ptr [EBX + 0x14]
00c6e17b  3bfd  CMP EDI,EBP
00c6e17d  742e  JZ 0x00c6e1ad
00c6e17f  56  PUSH ESI
00c6e180  8b37  MOV ESI,dword ptr [EDI]
00c6e182  6a00  PUSH 0x0
00c6e184  56  PUSH ESI
00c6e185  6a0b  PUSH 0xb
00c6e187  e83475ccff  CALL 0x009356c0
00c6e18c  8b03  MOV EAX,dword ptr [EBX]
00c6e18e  8b506c  MOV EDX,dword ptr [EAX + 0x6c]
00c6e191  83c40c  ADD ESP,0xc
00c6e194  56  PUSH ESI
00c6e195  8bcb  MOV ECX,EBX
00c6e197  ffd2  CALL EDX
00c6e199  50  PUSH EAX
00c6e19a  56  PUSH ESI
00c6e19b  6a15  PUSH 0x15
00c6e19d  e81e75ccff  CALL 0x009356c0
00c6e1a2  83c704  ADD EDI,0x4
00c6e1a5  83c40c  ADD ESP,0xc
00c6e1a8  3bfd  CMP EDI,EBP
00c6e1aa  75d4  JNZ 0x00c6e180
00c6e1ac  5e  POP ESI
00c6e1ad  5f  POP EDI
00c6e1ae  5d  POP EBP
00c6e1af  5b  POP EBX
00c6e1b0  c3  RET

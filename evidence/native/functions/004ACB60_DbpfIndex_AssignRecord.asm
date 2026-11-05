# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004acb60, 004acb89]]
Signature: undefined4 * DbpfIndex_AssignRecord(void * this, undefined4 * key, undefined4 * record)

004acb60  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004acb64  50  PUSH EAX
004acb65  83c108  ADD ECX,0x8
004acb68  e813feffff  CALL 0x004ac980
004acb6d  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
004acb71  8b11  MOV EDX,dword ptr [ECX]
004acb73  8910  MOV dword ptr [EAX],EDX
004acb75  8b5104  MOV EDX,dword ptr [ECX + 0x4]
004acb78  895004  MOV dword ptr [EAX + 0x4],EDX
004acb7b  8b5108  MOV EDX,dword ptr [ECX + 0x8]
004acb7e  895008  MOV dword ptr [EAX + 0x8],EDX
004acb81  8b490c  MOV ECX,dword ptr [ECX + 0xc]
004acb84  89480c  MOV dword ptr [EAX + 0xc],ECX
004acb87  c20800  RET 0x8

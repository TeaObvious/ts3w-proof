# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint StairProduct_FirstAuthoredPresetId(void * this)
Owned ranges: [[00c96a80, 00c96a97]]

00c96a80  8b81f8000000  MOV EAX,dword ptr [ECX + 0xf8]
00c96a86  3b81fc000000  CMP EAX,dword ptr [ECX + 0xfc]
00c96a8c  7504  JNZ 0x00c96a92
00c96a8e  83c8ff  OR EAX,0xffffffff
00c96a91  c3  RET
00c96a92  8bc8  MOV ECX,EAX
00c96a94  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00c96a97  c3  RET

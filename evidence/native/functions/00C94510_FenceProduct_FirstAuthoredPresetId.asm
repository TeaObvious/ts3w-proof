# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FenceProduct_FirstAuthoredPresetId(void * this)
Owned ranges: [[00c94510, 00c94527]]

00c94510  8b8164010000  MOV EAX,dword ptr [ECX + 0x164]
00c94516  3b8168010000  CMP EAX,dword ptr [ECX + 0x168]
00c9451c  7504  JNZ 0x00c94522
00c9451e  83c8ff  OR EAX,0xffffffff
00c94521  c3  RET
00c94522  8bc8  MOV ECX,EAX
00c94524  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00c94527  c3  RET

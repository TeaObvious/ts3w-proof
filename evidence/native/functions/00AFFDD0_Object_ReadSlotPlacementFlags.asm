# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Object_ReadSlotPlacementFlags(int param_1)
Owned ranges: [[00affdd0, 00affdf0]]

00affdd0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00affdd4  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00affdda  83c018  ADD EAX,0x18
00affddd  50  PUSH EAX
00affdde  e8cded1800  CALL 0x00c8ebb0
00affde3  85c0  TEST EAX,EAX
00affde5  7407  JZ 0x00affdee
00affde7  8bc8  MOV ECX,EAX
00affde9  e992791900  JMP 0x00c97780
00affdee  33c0  XOR EAX,EAX
00affdf0  c3  RET

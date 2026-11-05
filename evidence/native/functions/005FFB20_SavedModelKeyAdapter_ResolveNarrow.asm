# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete owned Ghidra Listing.
Signature: byte __thiscall SavedModelKeyAdapter_ResolveNarrow(void * this, ushort handleWord, void * outputKey)
Owned ranges: [[005ffb20, 005ffb34]]

005ffb20  8b442408  MOV EAX,dword ptr [ESP + 0x8]
005ffb24  8b4904  MOV ECX,dword ptr [ECX + 0x4]
005ffb27  50  PUSH EAX
005ffb28  8d542408  LEA EDX,[ESP + 0x8]
005ffb2c  52  PUSH EDX
005ffb2d  e85e761d00  CALL 0x007d7190
005ffb32  c20800  RET 0x8

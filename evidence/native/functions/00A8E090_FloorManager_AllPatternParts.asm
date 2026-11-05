# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FloorManager_AllPatternParts(void * this, pointer signedTile3, byte quarterMask, bool checkFlags)
Owned ranges: [[00a8e090, 00a8e0a8]]

00a8e090  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00a8e094  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00a8e098  50  PUSH EAX
00a8e099  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a8e09d  6a01  PUSH 0x1
00a8e09f  52  PUSH EDX
00a8e0a0  50  PUSH EAX
00a8e0a1  e85af2ffff  CALL 0x00a8d300
00a8e0a6  c20c00  RET 0xc

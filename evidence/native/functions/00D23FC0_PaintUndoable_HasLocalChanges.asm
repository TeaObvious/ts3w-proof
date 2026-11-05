# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool PaintUndoable_HasLocalChanges(void * this)
Owned ranges: [[00d23fc0, 00d23fe5]]

00d23fc0  8b4160  MOV EAX,dword ptr [ECX + 0x60]
00d23fc3  85c0  TEST EAX,EAX
00d23fc5  7503  JNZ 0x00d23fca
00d23fc7  32c0  XOR AL,AL
00d23fc9  c3  RET
00d23fca  83f801  CMP EAX,0x1
00d23fcd  7511  JNZ 0x00d23fe0
00d23fcf  8b818c000000  MOV EAX,dword ptr [ECX + 0x8c]
00d23fd5  3b8190000000  CMP EAX,dword ptr [ECX + 0x90]
00d23fdb  7503  JNZ 0x00d23fe0
00d23fdd  33c0  XOR EAX,EAX
00d23fdf  c3  RET
00d23fe0  b801000000  MOV EAX,0x1
00d23fe5  c3  RET

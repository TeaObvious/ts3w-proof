# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 * FloorMessagePool_AcquireStorage(void)
Owned ranges: [[00adf150, 00adf19f]]

00adf150  6858980601  PUSH 0x1069858
00adf155  b9b0c51e01  MOV ECX,0x11ec5b0
00adf15a  e8a12aa0ff  CALL 0x004e1c00
00adf15f  56  PUSH ESI
00adf160  a1a0c51e01  MOV EAX,[0x011ec5a0]
00adf165  85c0  TEST EAX,EAX
00adf167  7520  JNZ 0x00adf189
00adf169  50  PUSH EAX
00adf16a  50  PUSH EAX
00adf16b  b990c51e01  MOV ECX,0x11ec590
00adf170  e8cb56a0ff  CALL 0x004e4840
00adf175  84c0  TEST AL,AL
00adf177  75e7  JNZ 0x00adf160
00adf179  b9b0c51e01  MOV ECX,0x11ec5b0
00adf17e  33f6  XOR ESI,ESI
00adf180  e83b2ba0ff  CALL 0x004e1cc0
00adf185  8bc6  MOV EAX,ESI
00adf187  5e  POP ESI
00adf188  c3  RET
00adf189  8bf0  MOV ESI,EAX
00adf18b  8b00  MOV EAX,dword ptr [EAX]
00adf18d  b9b0c51e01  MOV ECX,0x11ec5b0
00adf192  a3a0c51e01  MOV [0x011ec5a0],EAX
00adf197  e8242ba0ff  CALL 0x004e1cc0
00adf19c  8bc6  MOV EAX,ESI
00adf19e  5e  POP ESI
00adf19f  c3  RET

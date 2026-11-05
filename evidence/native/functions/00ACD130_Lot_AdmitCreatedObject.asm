# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_AdmitCreatedObject(void * this, void * object)
Owned ranges: [[00acd130, 00acd16d]]

00acd130  56  PUSH ESI
00acd131  57  PUSH EDI
00acd132  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00acd136  8bf1  MOV ESI,ECX
00acd138  8b06  MOV EAX,dword ptr [ESI]
00acd13a  8b5074  MOV EDX,dword ptr [EAX + 0x74]
00acd13d  57  PUSH EDI
00acd13e  ffd2  CALL EDX
00acd140  84c0  TEST AL,AL
00acd142  7423  JZ 0x00acd167
00acd144  57  PUSH EDI
00acd145  8bce  MOV ECX,ESI
00acd147  e864f1ffff  CALL 0x00acc2b0
00acd14c  84c0  TEST AL,AL
00acd14e  8bce  MOV ECX,ESI
00acd150  740d  JZ 0x00acd15f
00acd152  57  PUSH EDI
00acd153  e8e85bfeff  CALL 0x00ab2d40
00acd158  5f  POP EDI
00acd159  b001  MOV AL,0x1
00acd15b  5e  POP ESI
00acd15c  c20400  RET 0x4
00acd15f  6a00  PUSH 0x0
00acd161  57  PUSH EDI
00acd162  e8092e1a00  CALL 0x00c6ff70
00acd167  5f  POP EDI
00acd168  32c0  XOR AL,AL
00acd16a  5e  POP ESI
00acd16b  c20400  RET 0x4

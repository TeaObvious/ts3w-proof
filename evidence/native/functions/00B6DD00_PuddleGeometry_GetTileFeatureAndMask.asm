# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool PuddleGeometry_GetTileFeatureAndMask(void * this, char * cell, ushort * maskOutput)
Owned ranges: [[00b6dd00, 00b6dd28]]

00b6dd00  8b819c020000  MOV EAX,dword ptr [ECX + 0x29c]
00b6dd06  8b8858020000  MOV ECX,dword ptr [EAX + 0x258]
00b6dd0c  85c9  TEST ECX,ECX
00b6dd0e  7414  JZ 0x00b6dd24
00b6dd10  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00b6dd14  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b6dd18  52  PUSH EDX
00b6dd19  6a01  PUSH 0x1
00b6dd1b  50  PUSH EAX
00b6dd1c  e80f32f1ff  CALL 0x00a80f30
00b6dd21  c20800  RET 0x8
00b6dd24  32c0  XOR AL,AL
00b6dd26  c20800  RET 0x8

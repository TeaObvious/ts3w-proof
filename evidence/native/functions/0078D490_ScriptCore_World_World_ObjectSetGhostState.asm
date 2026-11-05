# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ScriptCore.World::World_ObjectSetGhostState(uint objectIdLow, uint objectIdHigh, uint ghostType, uint ageGenderSpeciesFlags)
Owned ranges: [[0078d490, 0078d4d1]]

0078d490  e8dba01a00  CALL 0x00937570
0078d495  85c0  TEST EAX,EAX
0078d497  7438  JZ 0x0078d4d1
0078d499  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0078d49d  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0078d4a1  51  PUSH ECX
0078d4a2  52  PUSH EDX
0078d4a3  8bc8  MOV ECX,EAX
0078d4a5  e8d6aa1a00  CALL 0x00937f80
0078d4aa  85c0  TEST EAX,EAX
0078d4ac  7423  JZ 0x0078d4d1
0078d4ae  8b0da8a21e01  MOV ECX,dword ptr [0x011ea2a8]
0078d4b4  51  PUSH ECX
0078d4b5  8bc8  MOV ECX,EAX
0078d4b7  e8a46d1a00  CALL 0x00934260
0078d4bc  85c0  TEST EAX,EAX
0078d4be  7411  JZ 0x0078d4d1
0078d4c0  8b542410  MOV EDX,dword ptr [ESP + 0x10]
0078d4c4  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0078d4c8  52  PUSH EDX
0078d4c9  51  PUSH ECX
0078d4ca  8bc8  MOV ECX,EAX
0078d4cc  e8cf0b1d00  CALL 0x0095e0a0
0078d4d1  c3  RET

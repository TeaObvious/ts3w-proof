# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ScriptCore.RouteManager::RouteManager_SetSteeringOption(dword guidLow, dword guidHigh, dword option, dword enabledWord)
Owned ranges: [[0074dd90, 0074ddd1]]

0074dd90  e8db971e00  CALL 0x00937570
0074dd95  85c0  TEST EAX,EAX
0074dd97  7438  JZ 0x0074ddd1
0074dd99  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0074dd9d  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0074dda1  51  PUSH ECX
0074dda2  52  PUSH EDX
0074dda3  8bc8  MOV ECX,EAX
0074dda5  e8d6a11e00  CALL 0x00937f80
0074ddaa  85c0  TEST EAX,EAX
0074ddac  7423  JZ 0x0074ddd1
0074ddae  8b0d38a11e01  MOV ECX,dword ptr [0x011ea138]
0074ddb4  51  PUSH ECX
0074ddb5  8bc8  MOV ECX,EAX
0074ddb7  e8a4641e00  CALL 0x00934260
0074ddbc  85c0  TEST EAX,EAX
0074ddbe  7411  JZ 0x0074ddd1
0074ddc0  8b542410  MOV EDX,dword ptr [ESP + 0x10]
0074ddc4  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0074ddc8  52  PUSH EDX
0074ddc9  51  PUSH ECX
0074ddca  8bc8  MOV ECX,EAX
0074ddcc  e81f432000  CALL 0x009520f0
0074ddd1  c3  RET

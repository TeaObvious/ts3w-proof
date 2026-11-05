# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ScriptCore.RouteManager::RouteManager_SetCarSpeed(dword guidLow, dword guidHigh, float speed)
Owned ranges: [[0074e4a0, 0074e4df]]

0074e4a0  e8cb901e00  CALL 0x00937570
0074e4a5  85c0  TEST EAX,EAX
0074e4a7  7436  JZ 0x0074e4df
0074e4a9  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
0074e4ad  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0074e4b1  51  PUSH ECX
0074e4b2  52  PUSH EDX
0074e4b3  8bc8  MOV ECX,EAX
0074e4b5  e8c69a1e00  CALL 0x00937f80
0074e4ba  85c0  TEST EAX,EAX
0074e4bc  7421  JZ 0x0074e4df
0074e4be  8b0d38a11e01  MOV ECX,dword ptr [0x011ea138]
0074e4c4  51  PUSH ECX
0074e4c5  8bc8  MOV ECX,EAX
0074e4c7  e8945d1e00  CALL 0x00934260
0074e4cc  85c0  TEST EAX,EAX
0074e4ce  740f  JZ 0x0074e4df
0074e4d0  d944240c  FLD float ptr [ESP + 0xc]
0074e4d4  51  PUSH ECX
0074e4d5  8bc8  MOV ECX,EAX
0074e4d7  d91c24  FSTP float ptr [ESP]
0074e4da  e841632000  CALL 0x00954820
0074e4df  c3  RET

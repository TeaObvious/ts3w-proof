# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Object_HasSteeringWithoutSim(int param_1)
Owned ranges: [[00afc3f0, 00afc413]]

00afc3f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00afc3f4  85c0  TEST EAX,EAX
00afc3f6  7419  JZ 0x00afc411
00afc3f8  8b402c  MOV EAX,dword ptr [EAX + 0x2c]
00afc3fb  850538a11e01  TEST dword ptr [0x011ea138],EAX
00afc401  740e  JZ 0x00afc411
00afc403  8505fca01e01  TEST dword ptr [0x011ea0fc],EAX
00afc409  7506  JNZ 0x00afc411
00afc40b  b801000000  MOV EAX,0x1
00afc410  c3  RET
00afc411  33c0  XOR EAX,EAX
00afc413  c3  RET

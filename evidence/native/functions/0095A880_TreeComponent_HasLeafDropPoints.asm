# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 TreeComponent_HasLeafDropPoints(int param_1)
Owned ranges: [[0095a880, 0095a89a]]

0095a880  8b410c  MOV EAX,dword ptr [ECX + 0xc]
0095a883  85c0  TEST EAX,EAX
0095a885  7411  JZ 0x0095a898
0095a887  8b4868  MOV ECX,dword ptr [EAX + 0x68]
0095a88a  2b4864  SUB ECX,dword ptr [EAX + 0x64]
0095a88d  c1f904  SAR ECX,0x4
0095a890  7406  JZ 0x0095a898
0095a892  b801000000  MOV EAX,0x1
0095a897  c3  RET
0095a898  33c0  XOR EAX,EAX
0095a89a  c3  RET

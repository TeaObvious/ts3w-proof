# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * TreeTemplate_QueryInterface(void * this, int param_1)
Owned ranges: [[007b72d0, 007b7303]]

007b72d0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
007b72d4  81faf073fd10  CMP EDX,0x10fd73f0
007b72da  8bc1  MOV EAX,ECX
007b72dc  7423  JZ 0x007b7301
007b72de  83c008  ADD EAX,0x8
007b72e1  81fad19e2602  CMP EDX,0x2269ed1
007b72e7  7418  JZ 0x007b7301
007b72e9  81fa02b854eb  CMP EDX,0xeb54b802
007b72ef  7410  JZ 0x007b7301
007b72f1  33c9  XOR ECX,ECX
007b72f3  81fa6e513fee  CMP EDX,0xee3f516e
007b72f9  0f95c1  SETNZ CL
007b72fc  83e901  SUB ECX,0x1
007b72ff  23c1  AND EAX,ECX
007b7301  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreeVariation_Reseed(void * this, int param_1)
Owned ranges: [[004fa9f0, 004faa03]]

004fa9f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004fa9f4  83f8ff  CMP EAX,-0x1
004fa9f7  7404  JZ 0x004fa9fd
004fa9f9  85c0  TEST EAX,EAX
004fa9fb  7502  JNZ 0x004fa9ff
004fa9fd  0f31  RDTSC
004fa9ff  8901  MOV dword ptr [ECX],EAX
004faa01  c20400  RET 0x4

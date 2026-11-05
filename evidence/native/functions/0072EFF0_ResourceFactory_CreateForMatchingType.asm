# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * ResourceFactory_CreateForMatchingType(void * this, dword resourceType)
Owned ranges: [[0072eff0, 0072f007]]

0072eff0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0072eff4  3b410c  CMP EAX,dword ptr [ECX + 0xc]
0072eff7  750a  JNZ 0x0072f003
0072eff9  8b11  MOV EDX,dword ptr [ECX]
0072effb  8b4234  MOV EAX,dword ptr [EDX + 0x34]
0072effe  ffd0  CALL EAX
0072f000  c20400  RET 0x4
0072f003  33c0  XOR EAX,EAX
0072f005  c20400  RET 0x4

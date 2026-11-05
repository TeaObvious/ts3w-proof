# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 004A3970_UnsignedKey128_IsBefore.c
Owned ranges: [[004a3970, 004a39a0]]

004a3970  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004a3974  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
004a3978  8b10  MOV EDX,dword ptr [EAX]
004a397a  56  PUSH ESI
004a397b  8b31  MOV ESI,dword ptr [ECX]
004a397d  3bd6  CMP EDX,ESI
004a397f  751a  JNZ 0x004a399b
004a3981  8b5004  MOV EDX,dword ptr [EAX + 0x4]
004a3984  8b7104  MOV ESI,dword ptr [ECX + 0x4]
004a3987  3bd6  CMP EDX,ESI
004a3989  7510  JNZ 0x004a399b
004a398b  8b500c  MOV EDX,dword ptr [EAX + 0xc]
004a398e  8b710c  MOV ESI,dword ptr [ECX + 0xc]
004a3991  3bd6  CMP EDX,ESI
004a3993  7506  JNZ 0x004a399b
004a3995  8b4008  MOV EAX,dword ptr [EAX + 0x8]
004a3998  3b4108  CMP EAX,dword ptr [ECX + 0x8]
004a399b  1bc0  SBB EAX,EAX
004a399d  f7d8  NEG EAX
004a399f  5e  POP ESI
004a39a0  c3  RET

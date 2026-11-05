# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined StatePointerRange_FindIdentity(int * param_1, int * param_2, int * param_3)
Owned ranges: [[007f6070, 007f608d]]

007f6070  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007f6074  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007f6078  3bc1  CMP EAX,ECX
007f607a  7411  JZ 0x007f608d
007f607c  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007f6080  8b12  MOV EDX,dword ptr [EDX]
007f6082  3910  CMP dword ptr [EAX],EDX
007f6084  7407  JZ 0x007f608d
007f6086  83c004  ADD EAX,0x4
007f6089  3bc1  CMP EAX,ECX
007f608b  75f5  JNZ 0x007f6082
007f608d  c3  RET

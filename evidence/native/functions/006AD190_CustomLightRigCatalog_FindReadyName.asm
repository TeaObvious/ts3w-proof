# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

006ad190  80b9dd00000000  CMP byte ptr [ECX + 0xdd],0x0
006ad197  741b  JZ 0x006ad1b4
006ad199  8b410c  MOV EAX,dword ptr [ECX + 0xc]
006ad19c  8b4910  MOV ECX,dword ptr [ECX + 0x10]
006ad19f  3bc1  CMP EAX,ECX
006ad1a1  7411  JZ 0x006ad1b4
006ad1a3  8b542404  MOV EDX,dword ptr [ESP + 0x4]
006ad1a7  3910  CMP dword ptr [EAX],EDX
006ad1a9  740b  JZ 0x006ad1b6
006ad1ab  0510010000  ADD EAX,0x110
006ad1b0  3bc1  CMP EAX,ECX
006ad1b2  75f3  JNZ 0x006ad1a7
006ad1b4  33c0  XOR EAX,EAX
006ad1b6  c20400  RET 0x4

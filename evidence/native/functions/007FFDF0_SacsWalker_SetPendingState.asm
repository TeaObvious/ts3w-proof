# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsWalker_SetPendingState(void * this, int param_1)
Owned ranges: [[007ffdf0, 007ffe0c]]

007ffdf0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007ffdf4  3b411c  CMP EAX,dword ptr [ECX + 0x1c]
007ffdf7  7411  JZ 0x007ffe0a
007ffdf9  85c0  TEST EAX,EAX
007ffdfb  89411c  MOV dword ptr [ECX + 0x1c],EAX
007ffdfe  0f95c0  SETNZ AL
007ffe01  89442404  MOV dword ptr [ESP + 0x4],EAX
007ffe05  e986ffffff  JMP 0x007ffd90
007ffe0a  c20400  RET 0x4

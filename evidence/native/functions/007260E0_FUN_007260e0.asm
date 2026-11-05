# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FUN_007260e0(void * this, uint param_1, undefined4 * param_2, undefined4 * param_3)
Owned ranges: [[007260e0, 0072610d]]

007260e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007260e4  3b4110  CMP EAX,dword ptr [ECX + 0x10]
007260e7  7205  JC 0x007260ee
007260e9  32c0  XOR AL,AL
007260eb  c20c00  RET 0xc
007260ee  8b5118  MOV EDX,dword ptr [ECX + 0x18]
007260f1  8b14c2  MOV EDX,dword ptr [EDX + EAX*0x8]
007260f4  56  PUSH ESI
007260f5  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
007260f9  8916  MOV dword ptr [ESI],EDX
007260fb  8b4918  MOV ECX,dword ptr [ECX + 0x18]
007260fe  8b54c104  MOV EDX,dword ptr [ECX + EAX*0x8 + 0x4]
00726102  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00726106  8910  MOV dword ptr [EAX],EDX
00726108  b001  MOV AL,0x1
0072610a  5e  POP ESI
0072610b  c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FUN_007261e0(void * this, undefined4 * param_1, int param_2)
Owned ranges: [[007261e0, 00726207]]

007261e0  56  PUSH ESI
007261e1  8b742408  MOV ESI,dword ptr [ESP + 0x8]
007261e5  85f6  TEST ESI,ESI
007261e7  7410  JZ 0x007261f9
007261e9  837c240c01  CMP dword ptr [ESP + 0xc],0x1
007261ee  7212  JC 0x00726202
007261f0  8b01  MOV EAX,dword ptr [ECX]
007261f2  8b5040  MOV EDX,dword ptr [EAX + 0x40]
007261f5  ffd2  CALL EDX
007261f7  8906  MOV dword ptr [ESI],EAX
007261f9  b801000000  MOV EAX,0x1
007261fe  5e  POP ESI
007261ff  c20800  RET 0x8
00726202  33c0  XOR EAX,EAX
00726204  5e  POP ESI
00726205  c20800  RET 0x8

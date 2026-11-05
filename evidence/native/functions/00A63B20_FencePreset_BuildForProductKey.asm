# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FencePreset_BuildForProductKey(int param_1, uint * param_2, uint param_3, void * param_4)
Owned ranges: [[00a63b20, 00a63b3a]]

00a63b20  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a63b24  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00a63b2a  6a01  PUSH 0x1
00a63b2c  50  PUSH EAX
00a63b2d  e82eac2200  CALL 0x00c8e760
00a63b32  89442408  MOV dword ptr [ESP + 0x8],EAX
00a63b36  e925efffff  JMP 0x00a62a60

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void BasementProducts_InitializeWallKey(void)
Owned ranges: [[00f8ed30, 00f8ed5c]]

00f8ed30  685cc80701  PUSH 0x107c85c
00f8ed35  e8861384ff  CALL 0x007d00c0
00f8ed3a  83c404  ADD ESP,0x4
00f8ed3d  a330e11e01  MOV [0x011ee130],EAX
00f8ed42  891534e11e01  MOV dword ptr [0x011ee134],EDX
00f8ed48  c70538e11e01bce65191  MOV dword ptr [0x011ee138],0x9151e6bc
00f8ed52  c7053ce11e0100000000  MOV dword ptr [0x011ee13c],0x0
00f8ed5c  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void BasementProducts_InitializeFloorKey(void)
Owned ranges: [[00f8eab0, 00f8eadc]]

00f8eab0  6870c60701  PUSH 0x107c670
00f8eab5  e8061684ff  CALL 0x007d00c0
00f8eaba  83c404  ADD ESP,0x4
00f8eabd  a360e01e01  MOV [0x011ee060],EAX
00f8eac2  891564e01e01  MOV dword ptr [0x011ee064],EDX
00f8eac8  c70568e01e01cda45c51  MOV dword ptr [0x011ee068],0x515ca4cd
00f8ead2  c7056ce01e0100000000  MOV dword ptr [0x011ee06c],0x0
00f8eadc  c3  RET

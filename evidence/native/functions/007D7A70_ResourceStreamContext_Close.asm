# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ResourceStreamContext_Close(void * this)
Owned ranges: [[007d7a70, 007d7a9e]]

007d7a70  56  PUSH ESI
007d7a71  8bf1  MOV ESI,ECX
007d7a73  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007d7a76  85c9  TEST ECX,ECX
007d7a78  7423  JZ 0x007d7a9d
007d7a7a  8b01  MOV EAX,dword ptr [ECX]
007d7a7c  8b5020  MOV EDX,dword ptr [EAX + 0x20]
007d7a7f  ffd2  CALL EDX
007d7a81  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007d7a84  8b01  MOV EAX,dword ptr [ECX]
007d7a86  8b5008  MOV EDX,dword ptr [EAX + 0x8]
007d7a89  ffd2  CALL EDX
007d7a8b  c7460400000000  MOV dword ptr [ESI + 0x4],0x0
007d7a92  c7460800000000  MOV dword ptr [ESI + 0x8],0x0
007d7a99  c6461500  MOV byte ptr [ESI + 0x15],0x0
007d7a9d  5e  POP ESI
007d7a9e  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined RoomLighting_UpdateQualityDependentMapResource(int * param_1)
Owned ranges: [[0069f800, 0069f850]]

0069f800  56  PUSH ESI
0069f801  8bf1  MOV ESI,ECX
0069f803  8b8e54010000  MOV ECX,dword ptr [ESI + 0x154]
0069f809  85c9  TEST ECX,ECX
0069f80b  8b8600010000  MOV EAX,dword ptr [ESI + 0x100]
0069f811  898604010000  MOV dword ptr [ESI + 0x104],EAX
0069f817  7436  JZ 0x0069f84f
0069f819  8b96f4000000  MOV EDX,dword ptr [ESI + 0xf4]
0069f81f  3b15009b1501  CMP EDX,dword ptr [0x01159b00]
0069f825  7512  JNZ 0x0069f839
0069f827  6a01  PUSH 0x1
0069f829  e862d20000  CALL 0x006aca90
0069f82e  8b8e54010000  MOV ECX,dword ptr [ESI + 0x154]
0069f834  e867d20000  CALL 0x006acaa0
0069f839  8bce  MOV ECX,ESI
0069f83b  e860ffffff  CALL 0x0069f7a0
0069f840  51  PUSH ECX
0069f841  8b8e54010000  MOV ECX,dword ptr [ESI + 0x154]
0069f847  d91c24  FSTP float ptr [ESP]
0069f84a  e8e171f8ff  CALL 0x00626a30
0069f84f  5e  POP ESI
0069f850  c3  RET

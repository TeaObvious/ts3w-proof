# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ObjectResourceFactory_ReadObjectParams(void * this, void * context, void * resource)
Owned ranges: [[009372a0, 009372e2]]

009372a0  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
009372a4  53  PUSH EBX
009372a5  32db  XOR BL,BL
009372a7  85c9  TEST ECX,ECX
009372a9  7432  JZ 0x009372dd
009372ab  8b01  MOV EAX,dword ptr [ECX]
009372ad  8b500c  MOV EDX,dword ptr [EAX + 0xc]
009372b0  56  PUSH ESI
009372b1  685034dc02  PUSH 0x2dc3450
009372b6  ffd2  CALL EDX
009372b8  8bf0  MOV ESI,EAX
009372ba  85f6  TEST ESI,ESI
009372bc  7418  JZ 0x009372d6
009372be  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
009372c2  8b01  MOV EAX,dword ptr [ECX]
009372c4  8b5018  MOV EDX,dword ptr [EAX + 0x18]
009372c7  ffd2  CALL EDX
009372c9  50  PUSH EAX
009372ca  8bce  MOV ECX,ESI
009372cc  e84ffbffff  CALL 0x00936e20
009372d1  5e  POP ESI
009372d2  5b  POP EBX
009372d3  c20800  RET 0x8
009372d6  5e  POP ESI
009372d7  8ac3  MOV AL,BL
009372d9  5b  POP EBX
009372da  c20800  RET 0x8
009372dd  8ac3  MOV AL,BL
009372df  5b  POP EBX
009372e0  c20800  RET 0x8

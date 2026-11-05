# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneRenderer_ExecutePreparedPasses
Paired annotated actual pseudocode: 006F3E20_SceneRenderer_ExecutePreparedPasses.c
Owned ranges: [[006f3e20, 006f3f3c]]

GHIDRA LISTING (original bytes)
006f3e20  56  PUSH ESI
006f3e21  8bf1  MOV ESI,ECX
006f3e23  80be9d02000000  CMP byte ptr [ESI + 0x29d],0x0
006f3e2a  0f840b010000  JZ 0x006f3f3b
006f3e30  83be9402000000  CMP dword ptr [ESI + 0x294],0x0
006f3e37  7405  JZ 0x006f3e3e
006f3e39  e8c29cffff  CALL 0x006edb00
006f3e3e  80be8f02000000  CMP byte ptr [ESI + 0x28f],0x0
006f3e45  743e  JZ 0x006f3e85
006f3e47  80be8e02000000  CMP byte ptr [ESI + 0x28e],0x0
006f3e4e  740b  JZ 0x006f3e5b
006f3e50  8b8e10030000  MOV ECX,dword ptr [ESI + 0x310]
006f3e56  e86570eaff  CALL 0x0059aec0
006f3e5b  83be9402000000  CMP dword ptr [ESI + 0x294],0x0
006f3e62  740b  JZ 0x006f3e6f
006f3e64  8b8e14030000  MOV ECX,dword ptr [ESI + 0x314]
006f3e6a  e85170eaff  CALL 0x0059aec0
006f3e6f  80be9c02000000  CMP byte ptr [ESI + 0x29c],0x0
006f3e76  7430  JZ 0x006f3ea8
006f3e78  8b8e20030000  MOV ECX,dword ptr [ESI + 0x320]
006f3e7e  e83d70eaff  CALL 0x0059aec0
006f3e83  eb23  JMP 0x006f3ea8
006f3e85  8bce  MOV ECX,ESI
006f3e87  e8347effff  CALL 0x006ebcc0
006f3e8c  8bce  MOV ECX,ESI
006f3e8e  e8fddaffff  CALL 0x006f1990
006f3e93  8bce  MOV ECX,ESI
006f3e95  e85662ffff  CALL 0x006ea0f0
006f3e9a  8bce  MOV ECX,ESI
006f3e9c  e83f7fffff  CALL 0x006ebde0
006f3ea1  8bce  MOV ECX,ESI
006f3ea3  e8f8dcffff  CALL 0x006f1ba0
006f3ea8  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006f3eab  e8e004ffff  CALL 0x006e4390
006f3eb0  8b8ed4020000  MOV ECX,dword ptr [ESI + 0x2d4]
006f3eb6  85c9  TEST ECX,ECX
006f3eb8  7409  JZ 0x006f3ec3
006f3eba  8b01  MOV EAX,dword ptr [ECX]
006f3ebc  8b5014  MOV EDX,dword ptr [EAX + 0x14]
006f3ebf  6a00  PUSH 0x0
006f3ec1  ffd2  CALL EDX
006f3ec3  8bce  MOV ECX,ESI
006f3ec5  e88680ffff  CALL 0x006ebf50
006f3eca  8bce  MOV ECX,ESI
006f3ecc  e8ff87ffff  CALL 0x006ec6d0
006f3ed1  8bce  MOV ECX,ESI
006f3ed3  e848d3ffff  CALL 0x006f1220
006f3ed8  8bce  MOV ECX,ESI
006f3eda  e81160ffff  CALL 0x006e9ef0
006f3edf  80be7b02000000  CMP byte ptr [ESI + 0x27b],0x0
006f3ee6  7534  JNZ 0x006f3f1c
006f3ee8  8b8ed4020000  MOV ECX,dword ptr [ESI + 0x2d4]
006f3eee  85c9  TEST ECX,ECX
006f3ef0  7409  JZ 0x006f3efb
006f3ef2  8b01  MOV EAX,dword ptr [ECX]
006f3ef4  8b5014  MOV EDX,dword ptr [EAX + 0x14]
006f3ef7  6a01  PUSH 0x1
006f3ef9  ffd2  CALL EDX
006f3efb  8bce  MOV ECX,ESI
006f3efd  e82e90ffff  CALL 0x006ecf30
006f3f02  8b8ed4020000  MOV ECX,dword ptr [ESI + 0x2d4]
006f3f08  85c9  TEST ECX,ECX
006f3f0a  7409  JZ 0x006f3f15
006f3f0c  8b01  MOV EAX,dword ptr [ECX]
006f3f0e  8b5014  MOV EDX,dword ptr [EAX + 0x14]
006f3f11  6a02  PUSH 0x2
006f3f13  ffd2  CALL EDX
006f3f15  8bce  MOV ECX,ESI
006f3f17  e8a45dffff  CALL 0x006e9cc0
006f3f1c  8b8ed4020000  MOV ECX,dword ptr [ESI + 0x2d4]
006f3f22  85c9  TEST ECX,ECX
006f3f24  7409  JZ 0x006f3f2f
006f3f26  8b01  MOV EAX,dword ptr [ECX]
006f3f28  8b5014  MOV EDX,dword ptr [EAX + 0x14]
006f3f2b  6a03  PUSH 0x3
006f3f2d  ffd2  CALL EDX
006f3f2f  e84cfc2e00  CALL 0x009e3b80
006f3f34  c680d005000001  MOV byte ptr [EAX + 0x5d0],0x1
006f3f3b  5e  POP ESI
006f3f3c  c3  RET
Owned instructions=80 owned bytes=285

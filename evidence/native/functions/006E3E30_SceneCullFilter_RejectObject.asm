# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 SceneCullFilter_RejectObject(void * this, int * param_1)
Owned ranges: [[006e3e30, 006e3e8c] [006e3e90, 006e3eaa]]

006e3e30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
006e3e34  56  PUSH ESI
006e3e35  8b30  MOV ESI,dword ptr [EAX]
006e3e37  85f6  TEST ESI,ESI
006e3e39  57  PUSH EDI
006e3e3a  7468  JZ 0x006e3ea4
006e3e3c  8b39  MOV EDI,dword ptr [ECX]
006e3e3e  8bce  MOV ECX,ESI
006e3e40  e82bbef2ff  CALL 0x0060fc70
006e3e45  854714  TEST dword ptr [EDI + 0x14],EAX
006e3e48  7407  JZ 0x006e3e51
006e3e4a  5f  POP EDI
006e3e4b  32c0  XOR AL,AL
006e3e4d  5e  POP ESI
006e3e4e  c20400  RET 0x4
006e3e51  8b07  MOV EAX,dword ptr [EDI]
006e3e53  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
006e3e56  3bc1  CMP EAX,ECX
006e3e58  7411  JZ 0x006e3e6b
006e3e5a  8d9b00000000  LEA EBX,[EBX]
006e3e60  3930  CMP dword ptr [EAX],ESI
006e3e62  74e6  JZ 0x006e3e4a
006e3e64  83c004  ADD EAX,0x4
006e3e67  3bc1  CMP EAX,ECX
006e3e69  75f5  JNZ 0x006e3e60
006e3e6b  8b4638  MOV EAX,dword ptr [ESI + 0x38]
006e3e6e  85c0  TEST EAX,EAX
006e3e70  740e  JZ 0x006e3e80
006e3e72  8b7f10  MOV EDI,dword ptr [EDI + 0x10]
006e3e75  3bc7  CMP EAX,EDI
006e3e77  74d1  JZ 0x006e3e4a
006e3e79  8b4014  MOV EAX,dword ptr [EAX + 0x14]
006e3e7c  85c0  TEST EAX,EAX
006e3e7e  75f5  JNZ 0x006e3e75
006e3e80  8bce  MOV ECX,ESI
006e3e82  e8496b0100  CALL 0x006fa9d0
006e3e87  85c0  TEST EAX,EAX
006e3e89  7419  JZ 0x006e3ea4
006e3e8b  eb03  JMP 0x006e3e90
006e3e8d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
006e3e90  f6800802000080  TEST byte ptr [EAX + 0x208],0x80
006e3e97  75b1  JNZ 0x006e3e4a
006e3e99  8bc8  MOV ECX,EAX
006e3e9b  e8306b0100  CALL 0x006fa9d0
006e3ea0  85c0  TEST EAX,EAX
006e3ea2  75ec  JNZ 0x006e3e90
006e3ea4  5f  POP EDI
006e3ea5  b001  MOV AL,0x1
006e3ea7  5e  POP ESI
006e3ea8  c20400  RET 0x4

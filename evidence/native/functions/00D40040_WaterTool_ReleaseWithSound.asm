# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00d40040 WaterTool_ReleaseWithSound
# Body [[00d40040, 00d400e7]]; owned bytes=168
00d40040  53  PUSH EBX
00d40041  56  PUSH ESI
00d40042  8bf1  MOV ESI,ECX
00d40044  33db  XOR EBX,EBX
00d40046  385e5e  CMP byte ptr [ESI + 0x5e],BL
00d40049  747c  JZ 0x00d400c7
00d4004b  e8c037f9ff  CALL 0x00cd3810
00d40050  8b8e6c010000  MOV ECX,dword ptr [ESI + 0x16c]
00d40056  3bcb  CMP ECX,EBX
00d40058  7429  JZ 0x00d40083
00d4005a  8b01  MOV EAX,dword ptr [ECX]
00d4005c  8b5024  MOV EDX,dword ptr [EAX + 0x24]
00d4005f  ffd2  CALL EDX
00d40061  84c0  TEST AL,AL
00d40063  7411  JZ 0x00d40076
00d40065  8b866c010000  MOV EAX,dword ptr [ESI + 0x16c]
00d4006b  53  PUSH EBX
00d4006c  50  PUSH EAX
00d4006d  8bce  MOV ECX,ESI
00d4006f  e8ac39f9ff  CALL 0x00cd3a20
00d40074  eb0d  JMP 0x00d40083
00d40076  8b8e6c010000  MOV ECX,dword ptr [ESI + 0x16c]
00d4007c  8b11  MOV EDX,dword ptr [ECX]
00d4007e  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00d40081  ffd0  CALL EAX
00d40083  8b8e6c010000  MOV ECX,dword ptr [ESI + 0x16c]
00d40089  3bcb  CMP ECX,EBX
00d4008b  7422  JZ 0x00d400af
00d4008d  899e6c010000  MOV dword ptr [ESI + 0x16c],EBX
00d40093  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00d40096  83c0ff  ADD EAX,-0x1
00d40099  3bc3  CMP EAX,EBX
00d4009b  894104  MOV dword ptr [ECX + 0x4],EAX
00d4009e  750f  JNZ 0x00d400af
00d400a0  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00d400a7  8b11  MOV EDX,dword ptr [ECX]
00d400a9  8b02  MOV EAX,dword ptr [EDX]
00d400ab  6a01  PUSH 0x1
00d400ad  ffd0  CALL EAX
00d400af  8bce  MOV ECX,ESI
00d400b1  885e5e  MOV byte ptr [ESI + 0x5e],BL
00d400b4  889ebd000000  MOV byte ptr [ESI + 0xbd],BL
00d400ba  e801d6faff  CALL 0x00ced6c0
00d400bf  8d4ed8  LEA ECX,[ESI + -0x28]
00d400c2  e859fdffff  CALL 0x00d3fe20
00d400c7  8b8664010000  MOV EAX,dword ptr [ESI + 0x164]
00d400cd  3bc3  CMP EAX,EBX
00d400cf  7410  JZ 0x00d400e1
00d400d1  53  PUSH EBX
00d400d2  50  PUSH EAX
00d400d3  e80808b2ff  CALL 0x008608e0
00d400d8  83c408  ADD ESP,0x8
00d400db  899e64010000  MOV dword ptr [ESI + 0x164],EBX
00d400e1  5e  POP ESI
00d400e2  b001  MOV AL,0x1
00d400e4  5b  POP EBX
00d400e5  c20800  RET 0x8

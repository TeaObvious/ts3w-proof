# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: AnimationRig_SetCasFlagsAndDirtyState
Paired actual annotated Ghidra pseudocode: 005E0B40_AnimationRig_SetCasFlagsAndDirtyState.c
Owned ranges: [[005e0b40, 005e0ba5]]
Envelope bytes=102

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005e0b40  8b5124  MOV EDX,dword ptr [ECX + 0x24]
005e0b43  56  PUSH ESI
005e0b44  8b742408  MOV ESI,dword ptr [ESP + 0x8]
005e0b48  8bc2  MOV EAX,EDX
005e0b4a  33c6  XOR EAX,ESI
005e0b4c  a97f300000  TEST EAX,0x307f
005e0b51  7526  JNZ 0x005e0b79
005e0b53  f7c600cf0000  TEST ESI,0xcf00
005e0b59  8bc6  MOV EAX,ESI
005e0b5b  7505  JNZ 0x005e0b62
005e0b5d  0d00010000  OR EAX,0x100
005e0b62  f7c200cf0000  TEST EDX,0xcf00
005e0b68  7506  JNZ 0x005e0b70
005e0b6a  81ca00010000  OR EDX,0x100
005e0b70  33c2  XOR EAX,EDX
005e0b72  a900cf0000  TEST EAX,0xcf00
005e0b77  7407  JZ 0x005e0b80
005e0b79  81491c00200000  OR dword ptr [ECX + 0x1c],0x2000
005e0b80  81491c00470000  OR dword ptr [ECX + 0x1c],0x4700
005e0b87  b81f000000  MOV EAX,0x1f
005e0b8c  897124  MOV dword ptr [ECX + 0x24],ESI
005e0b8f  894114  MOV dword ptr [ECX + 0x14],EAX
005e0b92  894118  MOV dword ptr [ECX + 0x18],EAX
005e0b95  8b4920  MOV ECX,dword ptr [ECX + 0x20]
005e0b98  85c9  TEST ECX,ECX
005e0b9a  7406  JZ 0x005e0ba2
005e0b9c  56  PUSH ESI
005e0b9d  e8ae8afeff  CALL 0x005c9650
005e0ba2  5e  POP ESI
005e0ba3  c20400  RET 0x4
Owned instructions=30 owned bytes=102 gap/nonowned bytes=0

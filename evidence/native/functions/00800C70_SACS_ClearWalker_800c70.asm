# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SACS_ClearWalker_800c70(void * param_1)
Owned ranges: [[00800c70, 00800cc5]]

00800c70  53  PUSH EBX
00800c71  56  PUSH ESI
00800c72  8bf1  MOV ESI,ECX
00800c74  33db  XOR EBX,EBX
00800c76  33c9  XOR ECX,ECX
00800c78  b840000000  MOV EAX,0x40
00800c7d  894e24  MOV dword ptr [ESI + 0x24],ECX
00800c80  8d4e2c  LEA ECX,[ESI + 0x2c]
00800c83  885e0c  MOV byte ptr [ESI + 0xc],BL
00800c86  895e10  MOV dword ptr [ESI + 0x10],EBX
00800c89  895e14  MOV dword ptr [ESI + 0x14],EBX
00800c8c  895e18  MOV dword ptr [ESI + 0x18],EBX
00800c8f  895e1c  MOV dword ptr [ESI + 0x1c],EBX
00800c92  894620  MOV dword ptr [ESI + 0x20],EAX
00800c95  895e28  MOV dword ptr [ESI + 0x28],EBX
00800c98  e833fb2900  CALL 0x00aa07d0
00800c9d  885e68  MOV byte ptr [ESI + 0x68],BL
00800ca0  33c0  XOR EAX,EAX
00800ca2  8d4e6c  LEA ECX,[ESI + 0x6c]
00800ca5  8701  XCHG dword ptr [ECX],EAX
00800ca7  6a01  PUSH 0x1
00800ca9  8bce  MOV ECX,ESI
00800cab  885e72  MOV byte ptr [ESI + 0x72],BL
00800cae  885e73  MOV byte ptr [ESI + 0x73],BL
00800cb1  885e70  MOV byte ptr [ESI + 0x70],BL
00800cb4  885e74  MOV byte ptr [ESI + 0x74],BL
00800cb7  c6467101  MOV byte ptr [ESI + 0x71],0x1
00800cbb  e8e0f9ffff  CALL 0x008006a0
00800cc0  885e71  MOV byte ptr [ESI + 0x71],BL
00800cc3  5e  POP ESI
00800cc4  5b  POP EBX
00800cc5  c3  RET

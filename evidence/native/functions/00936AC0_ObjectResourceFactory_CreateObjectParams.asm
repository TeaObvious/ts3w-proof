# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * ObjectResourceFactory_CreateObjectParams(void * this)
Owned ranges: [[00936ac0, 00936b21]]

00936ac0  56  PUSH ESI
00936ac1  33f6  XOR ESI,ESI
00936ac3  56  PUSH ESI
00936ac4  56  PUSH ESI
00936ac5  56  PUSH ESI
00936ac6  56  PUSH ESI
00936ac7  683c3e0401  PUSH 0x1043e3c
00936acc  6a40  PUSH 0x40
00936ace  e82ddabaff  CALL 0x004e4500
00936ad3  83c418  ADD ESP,0x18
00936ad6  3bc6  CMP EAX,ESI
00936ad8  7444  JZ 0x00936b1e
00936ada  c700143cfb00  MOV dword ptr [EAX],0xfb3c14
00936ae0  33c9  XOR ECX,ECX
00936ae2  8d5004  LEA EDX,[EAX + 0x4]
00936ae5  870a  XCHG dword ptr [EDX],ECX
00936ae7  897008  MOV dword ptr [EAX + 0x8],ESI
00936aea  89700c  MOV dword ptr [EAX + 0xc],ESI
00936aed  897010  MOV dword ptr [EAX + 0x10],ESI
00936af0  897014  MOV dword ptr [EAX + 0x14],ESI
00936af3  897020  MOV dword ptr [EAX + 0x20],ESI
00936af6  897024  MOV dword ptr [EAX + 0x24],ESI
00936af9  89701c  MOV dword ptr [EAX + 0x1c],ESI
00936afc  897018  MOV dword ptr [EAX + 0x18],ESI
00936aff  897028  MOV dword ptr [EAX + 0x28],ESI
00936b02  c7000c3e0401  MOV dword ptr [EAX],0x1043e0c
00936b08  89702c  MOV dword ptr [EAX + 0x2c],ESI
00936b0b  897030  MOV dword ptr [EAX + 0x30],ESI
00936b0e  897034  MOV dword ptr [EAX + 0x34],ESI
00936b11  c740385cff0101  MOV dword ptr [EAX + 0x38],0x101ff5c
00936b18  c6403c30  MOV byte ptr [EAX + 0x3c],0x30
00936b1c  5e  POP ESI
00936b1d  c3  RET
00936b1e  33c0  XOR EAX,EAX
00936b20  5e  POP ESI
00936b21  c3  RET

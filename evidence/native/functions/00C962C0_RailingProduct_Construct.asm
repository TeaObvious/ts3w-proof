# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C962C0_RailingProduct_Construct.c
Owned ranges: [[00c962c0, 00c96337]]

00c962c0  56  PUSH ESI
00c962c1  8bf1  MOV ESI,ECX
00c962c3  e858cdffff  CALL 0x00c93020
00c962c8  c7068ccf0701  MOV dword ptr [ESI],0x107cf8c
00c962ce  33c0  XOR EAX,EAX
00c962d0  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c962d6  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00c962dc  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c962e2  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c962e8  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c962ee  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c962f4  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c962fa  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c96300  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c96306  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c9630c  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c96312  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c96318  8986e0000000  MOV dword ptr [ESI + 0xe0],EAX
00c9631e  8986e4000000  MOV dword ptr [ESI + 0xe4],EAX
00c96324  8986e8000000  MOV dword ptr [ESI + 0xe8],EAX
00c9632a  c786ec00000068cf0701  MOV dword ptr [ESI + 0xec],0x107cf68
00c96334  8bc6  MOV EAX,ESI
00c96336  5e  POP ESI
00c96337  c3  RET

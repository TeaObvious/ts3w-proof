# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[00c9abe0, 00c9ac53]]
Signature: undefined4 * RoofPatternProduct_Construct(undefined4 * param_1)

00c9abe0  56  PUSH ESI
00c9abe1  8bf1  MOV ESI,ECX
00c9abe3  e83884ffff  CALL 0x00c93020
00c9abe8  33c0  XOR EAX,EAX
00c9abea  c70600d30701  MOV dword ptr [ESI],0x107d300
00c9abf0  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c9abf6  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00c9abfc  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c9ac02  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c9ac08  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c9ac0e  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c9ac14  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c9ac1a  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c9ac20  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c9ac26  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c9ac2c  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c9ac32  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c9ac38  8986b8000000  MOV dword ptr [ESI + 0xb8],EAX
00c9ac3e  8986bc000000  MOV dword ptr [ESI + 0xbc],EAX
00c9ac44  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c9ac4a  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c9ac50  8bc6  MOV EAX,ESI
00c9ac52  5e  POP ESI
00c9ac53  c3  RET

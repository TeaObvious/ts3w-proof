# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C93C80_FoundationProduct_Construct.c
Owned ranges: [[00c93c80, 00c93d43]]

00c93c80  56  PUSH ESI
00c93c81  8bf1  MOV ESI,ECX
00c93c83  e898f3ffff  CALL 0x00c93020
00c93c88  33c0  XOR EAX,EAX
00c93c8a  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c93c90  c70638cb0701  MOV dword ptr [ESI],0x107cb38
00c93c96  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c93c9c  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c93ca2  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c93ca8  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c93cae  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c93cb4  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c93cba  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c93cc0  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c93cc6  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c93ccc  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c93cd2  8986b8000000  MOV dword ptr [ESI + 0xb8],EAX
00c93cd8  8986bc000000  MOV dword ptr [ESI + 0xbc],EAX
00c93cde  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c93ce4  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c93cea  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c93cf0  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00c93cf6  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00c93cfc  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00c93d02  8986d8000000  MOV dword ptr [ESI + 0xd8],EAX
00c93d08  8986dc000000  MOV dword ptr [ESI + 0xdc],EAX
00c93d0e  8986e0000000  MOV dword ptr [ESI + 0xe0],EAX
00c93d14  8986e4000000  MOV dword ptr [ESI + 0xe4],EAX
00c93d1a  c786e8000000ffffffff  MOV dword ptr [ESI + 0xe8],0xffffffff
00c93d24  8986ec000000  MOV dword ptr [ESI + 0xec],EAX
00c93d2a  8986f0000000  MOV dword ptr [ESI + 0xf0],EAX
00c93d30  8986f4000000  MOV dword ptr [ESI + 0xf4],EAX
00c93d36  c786f800000014cb0701  MOV dword ptr [ESI + 0xf8],0x107cb14
00c93d40  8bc6  MOV EAX,ESI
00c93d42  5e  POP ESI
00c93d43  c3  RET

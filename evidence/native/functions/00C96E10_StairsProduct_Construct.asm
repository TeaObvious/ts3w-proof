# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C96E10_StairsProduct_Construct.c
Owned ranges: [[00c96e10, 00c96ee7]]

00c96e10  56  PUSH ESI
00c96e11  8bf1  MOV ESI,ECX
00c96e13  e808c2ffff  CALL 0x00c93020
00c96e18  c706b4cf0701  MOV dword ptr [ESI],0x107cfb4
00c96e1e  33c0  XOR EAX,EAX
00c96e20  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c96e26  89868c000000  MOV dword ptr [ESI + 0x8c],EAX
00c96e2c  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c96e32  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c96e38  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c96e3e  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c96e44  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c96e4a  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c96e50  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c96e56  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c96e5c  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c96e62  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c96e68  8986b8000000  MOV dword ptr [ESI + 0xb8],EAX
00c96e6e  8986bc000000  MOV dword ptr [ESI + 0xbc],EAX
00c96e74  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c96e7a  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c96e80  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c96e86  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00c96e8c  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00c96e92  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00c96e98  8986d8000000  MOV dword ptr [ESI + 0xd8],EAX
00c96e9e  8986dc000000  MOV dword ptr [ESI + 0xdc],EAX
00c96ea4  8986e0000000  MOV dword ptr [ESI + 0xe0],EAX
00c96eaa  8986e4000000  MOV dword ptr [ESI + 0xe4],EAX
00c96eb0  8986e8000000  MOV dword ptr [ESI + 0xe8],EAX
00c96eb6  8986ec000000  MOV dword ptr [ESI + 0xec],EAX
00c96ebc  8986f0000000  MOV dword ptr [ESI + 0xf0],EAX
00c96ec2  8986f4000000  MOV dword ptr [ESI + 0xf4],EAX
00c96ec8  8986f8000000  MOV dword ptr [ESI + 0xf8],EAX
00c96ece  8986fc000000  MOV dword ptr [ESI + 0xfc],EAX
00c96ed4  898600010000  MOV dword ptr [ESI + 0x100],EAX
00c96eda  c7860401000068cf0701  MOV dword ptr [ESI + 0x104],0x107cf68
00c96ee4  8bc6  MOV EAX,ESI
00c96ee6  5e  POP ESI
00c96ee7  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C954F0_FireplaceProduct_Construct.c
Owned ranges: [[00c954f0, 00c955b1]]

00c954f0  56  PUSH ESI
00c954f1  8bf1  MOV ESI,ECX
00c954f3  e828dbffff  CALL 0x00c93020
00c954f8  33c0  XOR EAX,EAX
00c954fa  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c95500  c70648cc0701  MOV dword ptr [ESI],0x107cc48
00c95506  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c9550c  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c95512  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c95518  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c9551e  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c95524  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c9552a  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c95530  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c95536  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c9553c  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c95542  8986b8000000  MOV dword ptr [ESI + 0xb8],EAX
00c95548  8986bc000000  MOV dword ptr [ESI + 0xbc],EAX
00c9554e  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c95554  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c9555a  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c95560  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00c95566  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00c9556c  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00c95572  8986d8000000  MOV dword ptr [ESI + 0xd8],EAX
00c95578  8986dc000000  MOV dword ptr [ESI + 0xdc],EAX
00c9557e  8986e0000000  MOV dword ptr [ESI + 0xe0],EAX
00c95584  8986e4000000  MOV dword ptr [ESI + 0xe4],EAX
00c9558a  8986e8000000  MOV dword ptr [ESI + 0xe8],EAX
00c95590  8986ec000000  MOV dword ptr [ESI + 0xec],EAX
00c95596  8986f0000000  MOV dword ptr [ESI + 0xf0],EAX
00c9559c  8986f4000000  MOV dword ptr [ESI + 0xf4],EAX
00c955a2  8986f8000000  MOV dword ptr [ESI + 0xf8],EAX
00c955a8  8986fc000000  MOV dword ptr [ESI + 0xfc],EAX
00c955ae  8bc6  MOV EAX,ESI
00c955b0  5e  POP ESI
00c955b1  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C99F50_CatalogPattern_Construct.c
Owned ranges: [[00c99f50, 00c99fd8]]

00c99f50  56  PUSH ESI
00c99f51  8bf1  MOV ESI,ECX
00c99f53  e8c890ffff  CALL 0x00c93020
00c99f58  c70670d20701  MOV dword ptr [ESI],0x107d270
00c99f5e  33c0  XOR EAX,EAX
00c99f60  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c99f66  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c99f6c  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c99f72  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c99f78  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c99f7e  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c99f84  c786b000000044d20701  MOV dword ptr [ESI + 0xb0],0x107d244
00c99f8e  c786ac000000558e1c01  MOV dword ptr [ESI + 0xac],0x11c8e55
00c99f98  b9548e1c01  MOV ECX,0x11c8e54
00c99f9d  898ea4000000  MOV dword ptr [ESI + 0xa4],ECX
00c99fa3  898ea8000000  MOV dword ptr [ESI + 0xa8],ECX
00c99fa9  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c99faf  c786b8000000e0e0e000  MOV dword ptr [ESI + 0xb8],0xe0e0e0
00c99fb9  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c99fbf  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c99fc5  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c99fcb  c786cc0000001cd20701  MOV dword ptr [ESI + 0xcc],0x107d21c
00c99fd5  8bc6  MOV EAX,ESI
00c99fd7  5e  POP ESI
00c99fd8  c3  RET

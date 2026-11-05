# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * CurvedPoolProduct_Construct(void * this)
Owned ranges: [[00c93670, 00c93712]]

00c93670  56  PUSH ESI
00c93671  8bf1  MOV ESI,ECX
00c93673  e8a8f9ffff  CALL 0x00c93020
00c93678  33c0  XOR EAX,EAX
00c9367a  c706b8ca0701  MOV dword ptr [ESI],0x107cab8
00c93680  b901000000  MOV ECX,0x1
00c93685  898e88000000  MOV dword ptr [ESI + 0x88],ECX
00c9368b  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c93691  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c93697  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c9369d  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c936a3  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c936a9  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c936af  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c936b5  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c936bb  8986b0000000  MOV dword ptr [ESI + 0xb0],EAX
00c936c1  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c936c7  8986b8000000  MOV dword ptr [ESI + 0xb8],EAX
00c936cd  8986bc000000  MOV dword ptr [ESI + 0xbc],EAX
00c936d3  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00c936d9  8986c4000000  MOV dword ptr [ESI + 0xc4],EAX
00c936df  8986c8000000  MOV dword ptr [ESI + 0xc8],EAX
00c936e5  8986cc000000  MOV dword ptr [ESI + 0xcc],EAX
00c936eb  8986d0000000  MOV dword ptr [ESI + 0xd0],EAX
00c936f1  8986d4000000  MOV dword ptr [ESI + 0xd4],EAX
00c936f7  8986d8000000  MOV dword ptr [ESI + 0xd8],EAX
00c936fd  8986dc000000  MOV dword ptr [ESI + 0xdc],EAX
00c93703  898ee0000000  MOV dword ptr [ESI + 0xe0],ECX
00c93709  898ee4000000  MOV dword ptr [ESI + 0xe4],ECX
00c9370f  8bc6  MOV EAX,ESI
00c93711  5e  POP ESI
00c93712  c3  RET

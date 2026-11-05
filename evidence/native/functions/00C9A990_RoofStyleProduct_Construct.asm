# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: RoofStyleProduct_Construct
Paired actual annotated Ghidra pseudocode: 00C9A990_RoofStyleProduct_Construct.c
Owned ranges: [[00c9a990, 00c9a9ef]]
Envelope bytes=96

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c9a990  56  PUSH ESI
00c9a991  8bf1  MOV ESI,ECX
00c9a993  e88886ffff  CALL 0x00c93020
00c9a998  f30f1005bcd20701  MOVSS XMM0,dword ptr [0x0107d2bc]
00c9a9a0  33c0  XOR EAX,EAX
00c9a9a2  898688000000  MOV dword ptr [ESI + 0x88],EAX
00c9a9a8  c706c0d20701  MOV dword ptr [ESI],0x107d2c0
00c9a9ae  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c9a9b4  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c9a9ba  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c9a9c0  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c9a9c6  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c9a9cc  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c9a9d2  8986a8000000  MOV dword ptr [ESI + 0xa8],EAX
00c9a9d8  8986ac000000  MOV dword ptr [ESI + 0xac],EAX
00c9a9de  8986b4000000  MOV dword ptr [ESI + 0xb4],EAX
00c9a9e4  f30f1186b0000000  MOVSS dword ptr [ESI + 0xb0],XMM0
00c9a9ec  8bc6  MOV EAX,ESI
00c9a9ee  5e  POP ESI
00c9a9ef  c3  RET
Owned instructions=20 owned bytes=96 nonowned bytes=0

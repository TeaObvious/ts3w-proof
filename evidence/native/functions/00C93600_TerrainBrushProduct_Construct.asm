# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C93600_TerrainBrushProduct_Construct.c
Owned ranges: [[00c93600, 00c9363d]]

00c93600  56  PUSH ESI
00c93601  8bf1  MOV ESI,ECX
00c93603  e818faffff  CALL 0x00c93020
00c93608  33c0  XOR EAX,EAX
00c9360a  888688000000  MOV byte ptr [ESI + 0x88],AL
00c93610  c70694ca0701  MOV dword ptr [ESI],0x107ca94
00c93616  898690000000  MOV dword ptr [ESI + 0x90],EAX
00c9361c  898694000000  MOV dword ptr [ESI + 0x94],EAX
00c93622  898698000000  MOV dword ptr [ESI + 0x98],EAX
00c93628  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00c9362e  8986a0000000  MOV dword ptr [ESI + 0xa0],EAX
00c93634  8986a4000000  MOV dword ptr [ESI + 0xa4],EAX
00c9363a  8bc6  MOV EAX,ESI
00c9363c  5e  POP ESI
00c9363d  c3  RET

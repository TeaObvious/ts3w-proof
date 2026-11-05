# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra owned Listing.
Paired actual annotated Ghidra pseudocode: 00C93450_TerrainBrushProduct_QueryInterface.c
Function TerrainBrushProduct_QueryInterface [[00c93450, 00c93468]]
00c93450 8b442404 MOV EAX,dword ptr [ESP + 0x4]
00c93454 3d9348ed04 CMP EAX,0x4ed4893
00c93459 7505 JNZ 0x00c93460
00c9345b 8bc1 MOV EAX,ECX
00c9345d c20400 RET 0x4
00c93460 89442404 MOV dword ptr [ESP + 0x4],EAX
00c93464 e977fbffff JMP 0x00c92fe0

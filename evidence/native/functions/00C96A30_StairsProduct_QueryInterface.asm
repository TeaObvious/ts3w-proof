# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C96A30_StairsProduct_QueryInterface.c
Owned ranges: [[00c96a30, 00c96a48]]

00c96a30  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c96a34  3d8bae9c04  CMP EAX,0x49cae8b
00c96a39  7505  JNZ 0x00c96a40
00c96a3b  8bc1  MOV EAX,ECX
00c96a3d  c20400  RET 0x4
00c96a40  89442404  MOV dword ptr [ESP + 0x4],EAX
00c96a44  e997c5ffff  JMP 0x00c92fe0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C944C0_FenceProduct_QueryInterface.c
Owned ranges: [[00c944c0, 00c944d8]]

00c944c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c944c4  3d16fe1804  CMP EAX,0x418fe16
00c944c9  7505  JNZ 0x00c944d0
00c944cb  8bc1  MOV EAX,ECX
00c944cd  c20400  RET 0x4
00c944d0  89442404  MOV dword ptr [ESP + 0x4],EAX
00c944d4  e947520000  JMP 0x00c99720

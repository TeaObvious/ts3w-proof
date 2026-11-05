# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C95EE0_RailingProduct_QueryInterface.c
Owned ranges: [[00c95ee0, 00c95ef8]]

00c95ee0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c95ee4  3db18dc504  CMP EAX,0x4c58db1
00c95ee9  7505  JNZ 0x00c95ef0
00c95eeb  8bc1  MOV EAX,ECX
00c95eed  c20400  RET 0x4
00c95ef0  89442404  MOV dword ptr [ESP + 0x4],EAX
00c95ef4  e9e7d0ffff  JMP 0x00c92fe0

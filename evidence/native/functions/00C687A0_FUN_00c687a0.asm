# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c687a0, 00c687c7]]
Actual pseudocode: 00C687A0_FUN_00c687a0.c

00c687a0  56  PUSH ESI
00c687a1  8bf1  MOV ESI,ECX
00c687a3  80becc01000000  CMP byte ptr [ESI + 0x1cc],0x0
00c687aa  7405  JZ 0x00c687b1
00c687ac  e80ffdffff  CALL 0x00c684c0
00c687b1  807c240800  CMP byte ptr [ESP + 0x8],0x0
00c687b6  8d8604020000  LEA EAX,[ESI + 0x204]
00c687bc  7506  JNZ 0x00c687c4
00c687be  8d86f4010000  LEA EAX,[ESI + 0x1f4]
00c687c4  5e  POP ESI
00c687c5  c20400  RET 0x4

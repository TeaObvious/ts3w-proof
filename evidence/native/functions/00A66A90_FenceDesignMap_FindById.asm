# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: FenceDesignMap_FindById
Paired actual annotated Ghidra pseudocode: 00A66A90_FenceDesignMap_FindById.c
Owned ranges: [[00a66a90, 00a66ad8]]
Envelope bytes=73

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00a66a90  83ec08  SUB ESP,0x8
00a66a93  837c240c00  CMP dword ptr [ESP + 0xc],0x0
00a66a98  7509  JNZ 0x00a66aa3
00a66a9a  8d4140  LEA EAX,[ECX + 0x40]
00a66a9d  83c408  ADD ESP,0x8
00a66aa0  c20400  RET 0x4
00a66aa3  56  PUSH ESI
00a66aa4  8d7120  LEA ESI,[ECX + 0x20]
00a66aa7  8d442410  LEA EAX,[ESP + 0x10]
00a66aab  50  PUSH EAX
00a66aac  8d4c2408  LEA ECX,[ESP + 0x8]
00a66ab0  51  PUSH ECX
00a66ab1  8bce  MOV ECX,ESI
00a66ab3  e818feffff  CALL 0x00a668d0
00a66ab8  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a66abb  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00a66abe  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a66ac2  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00a66ac5  5e  POP ESI
00a66ac6  7409  JZ 0x00a66ad1
00a66ac8  83c008  ADD EAX,0x8
00a66acb  83c408  ADD ESP,0x8
00a66ace  c20400  RET 0x4
00a66ad1  33c0  XOR EAX,EAX
00a66ad3  83c408  ADD ESP,0x8
00a66ad6  c20400  RET 0x4
Owned instructions=26 owned bytes=73 nonowned bytes=0

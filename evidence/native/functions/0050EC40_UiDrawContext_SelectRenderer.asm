# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67; full owned Ghidra Listing.
Actual annotated Ghidra C: 0050EC40_UiDrawContext_SelectRenderer.c
Owned ranges: [[0050ec40, 0050ec6d]]

0050ec40  56  PUSH ESI
0050ec41  57  PUSH EDI
0050ec42  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
0050ec46  85ff  TEST EDI,EDI
0050ec48  8bf1  MOV ESI,ECX
0050ec4a  7503  JNZ 0x0050ec4f
0050ec4c  8b7e44  MOV EDI,dword ptr [ESI + 0x44]
0050ec4f  3b7e40  CMP EDI,dword ptr [ESI + 0x40]
0050ec52  7408  JZ 0x0050ec5c
0050ec54  e8a7feffff  CALL 0x0050eb00
0050ec59  897e40  MOV dword ptr [ESI + 0x40],EDI
0050ec5c  8a442410  MOV AL,byte ptr [ESP + 0x10]
0050ec60  888694000000  MOV byte ptr [ESI + 0x94],AL
0050ec66  5f  POP EDI
0050ec67  8d4660  LEA EAX,[ESI + 0x60]
0050ec6a  5e  POP ESI
0050ec6b  c20800  RET 0x8

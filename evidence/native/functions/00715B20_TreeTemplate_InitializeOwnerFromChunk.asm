# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TreeTemplate_InitializeOwnerFromChunk(void)
Owned ranges: [[00715b20, 00715b5a]]

00715b20  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00715b24  85c0  TEST EAX,EAX
00715b26  741a  JZ 0x00715b42
00715b28  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00715b2c  8d48f8  LEA ECX,[EAX + -0x8]
00715b2f  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00715b33  50  PUSH EAX
00715b34  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00715b38  52  PUSH EDX
00715b39  50  PUSH EAX
00715b3a  e851220a00  CALL 0x007b7d90
00715b3f  c21000  RET 0x10
00715b42  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00715b46  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00715b4a  50  PUSH EAX
00715b4b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00715b4f  52  PUSH EDX
00715b50  33c9  XOR ECX,ECX
00715b52  50  PUSH EAX
00715b53  e838220a00  CALL 0x007b7d90
00715b58  c21000  RET 0x10

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 SacsDriver_PauseWalker(void * this, uint param_1)
Owned ranges: [[00801ca0, 00801ce9]]

00801ca0  56  PUSH ESI
00801ca1  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00801ca5  85f6  TEST ESI,ESI
00801ca7  743b  JZ 0x00801ce4
00801ca9  8b566c  MOV EDX,dword ptr [ESI + 0x6c]
00801cac  83fa04  CMP EDX,0x4
00801caf  8d466c  LEA EAX,[ESI + 0x6c]
00801cb2  7430  JZ 0x00801ce4
00801cb4  ba06000000  MOV EDX,0x6
00801cb9  8710  XCHG dword ptr [EAX],EDX
00801cbb  8b4678  MOV EAX,dword ptr [ESI + 0x78]
00801cbe  85c0  TEST EAX,EAX
00801cc0  741c  JZ 0x00801cde
00801cc2  8b4038  MOV EAX,dword ptr [EAX + 0x38]
00801cc5  85c0  TEST EAX,EAX
00801cc7  740e  JZ 0x00801cd7
00801cc9  56  PUSH ESI
00801cca  83c144  ADD ECX,0x44
00801ccd  51  PUSH ECX
00801cce  6a03  PUSH 0x3
00801cd0  8bc8  MOV ECX,EAX
00801cd2  e8792effff  CALL 0x007f4b50
00801cd7  c7467800000000  MOV dword ptr [ESI + 0x78],0x0
00801cde  b001  MOV AL,0x1
00801ce0  5e  POP ESI
00801ce1  c20400  RET 0x4
00801ce4  32c0  XOR AL,AL
00801ce6  5e  POP ESI
00801ce7  c20400  RET 0x4

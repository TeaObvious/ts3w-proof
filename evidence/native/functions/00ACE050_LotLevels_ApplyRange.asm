# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotLevels_ApplyRange(void * this, int minimumLevel, int maximumLevel)
Owned ranges: [[00ace050, 00ace0d4]]

00ace050  53  PUSH EBX
00ace051  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00ace055  55  PUSH EBP
00ace056  56  PUSH ESI
00ace057  57  PUSH EDI
00ace058  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00ace05c  8bc7  MOV EAX,EDI
00ace05e  2bc3  SUB EAX,EBX
00ace060  8bf1  MOV ESI,ECX
00ace062  8d6801  LEA EBP,[EAX + 0x1]
00ace065  3bae84010000  CMP EBP,dword ptr [ESI + 0x184]
00ace06b  7d0d  JGE 0x00ace07a
00ace06d  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00ace073  57  PUSH EDI
00ace074  53  PUSH EBX
00ace075  e8861bfcff  CALL 0x00a8fc00
00ace07a  8b867c010000  MOV EAX,dword ptr [ESI + 0x17c]
00ace080  3bd8  CMP EBX,EAX
00ace082  740c  JZ 0x00ace090
00ace084  6a00  PUSH 0x0
00ace086  2bc3  SUB EAX,EBX
00ace088  50  PUSH EAX
00ace089  8bce  MOV ECX,ESI
00ace08b  e8f0f9ffff  CALL 0x00acda80
00ace090  8b8680010000  MOV EAX,dword ptr [ESI + 0x180]
00ace096  3bf8  CMP EDI,EAX
00ace098  740e  JZ 0x00ace0a8
00ace09a  8bcf  MOV ECX,EDI
00ace09c  2bc8  SUB ECX,EAX
00ace09e  6a01  PUSH 0x1
00ace0a0  51  PUSH ECX
00ace0a1  8bce  MOV ECX,ESI
00ace0a3  e8d8f9ffff  CALL 0x00acda80
00ace0a8  8b969c030000  MOV EDX,dword ptr [ESI + 0x39c]
00ace0ae  6a00  PUSH 0x0
00ace0b0  6a01  PUSH 0x1
00ace0b2  6a01  PUSH 0x1
00ace0b4  52  PUSH EDX
00ace0b5  8bce  MOV ECX,ESI
00ace0b7  899e7c010000  MOV dword ptr [ESI + 0x17c],EBX
00ace0bd  89be80010000  MOV dword ptr [ESI + 0x180],EDI
00ace0c3  89ae84010000  MOV dword ptr [ESI + 0x184],EBP
00ace0c9  e85215ffff  CALL 0x00abf620
00ace0ce  5f  POP EDI
00ace0cf  5e  POP ESI
00ace0d0  5d  POP EBP
00ace0d1  5b  POP EBX
00ace0d2  c20800  RET 0x8

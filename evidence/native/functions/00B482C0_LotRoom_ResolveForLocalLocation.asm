# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: short LotRoom_ResolveForLocalLocation(void * this, float * param_1, int param_2, undefined4 param_3)
Owned ranges: [[00b482c0, 00b48302]]

00b482c0  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00b482c4  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00b482c8  56  PUSH ESI
00b482c9  8b748144  MOV ESI,dword ptr [ECX + EAX*0x4 + 0x44]
00b482cd  8d4c240c  LEA ECX,[ESP + 0xc]
00b482d1  0cff  OR AL,0xff
00b482d3  51  PUSH ECX
00b482d4  52  PUSH EDX
00b482d5  88442414  MOV byte ptr [ESP + 0x14],AL
00b482d9  88442415  MOV byte ptr [ESP + 0x15],AL
00b482dd  c644241600  MOV byte ptr [ESP + 0x16],0x0
00b482e2  88442417  MOV byte ptr [ESP + 0x17],AL
00b482e6  e8c5fafaff  CALL 0x00af7db0
00b482eb  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00b482ef  83c408  ADD ESP,0x8
00b482f2  50  PUSH EAX
00b482f3  8d4c2410  LEA ECX,[ESP + 0x10]
00b482f7  51  PUSH ECX
00b482f8  8bce  MOV ECX,ESI
00b482fa  e8c1bc0b00  CALL 0x00c03fc0
00b482ff  5e  POP ESI
00b48300  c20c00  RET 0xc

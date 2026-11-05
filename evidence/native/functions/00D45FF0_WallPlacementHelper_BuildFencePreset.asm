# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WallPlacementHelper_BuildFencePreset(void * this, uint * productKey, uint presetId)
Owned ranges: [[00d45ff0, 00d4602f]]

00d45ff0  56  PUSH ESI
00d45ff1  57  PUSH EDI
00d45ff2  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00d45ff6  6a01  PUSH 0x1
00d45ff8  8bf1  MOV ESI,ECX
00d45ffa  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00d46000  57  PUSH EDI
00d46001  e85a87f4ff  CALL 0x00c8e760
00d46006  85c0  TEST EAX,EAX
00d46008  7421  JZ 0x00d4602b
00d4600a  8bc8  MOV ECX,EAX
00d4600c  e8afeaf4ff  CALL 0x00c94ac0
00d46011  85c0  TEST EAX,EAX
00d46013  7616  JBE 0x00d4602b
00d46015  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00d46019  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00d4601c  8d4610  LEA EAX,[ESI + 0x10]
00d4601f  50  PUSH EAX
00d46020  51  PUSH ECX
00d46021  57  PUSH EDI
00d46022  52  PUSH EDX
00d46023  e8f8dad1ff  CALL 0x00a63b20
00d46028  83c410  ADD ESP,0x10
00d4602b  5f  POP EDI
00d4602c  5e  POP ESI
00d4602d  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int TerrainSculptUndoable_ResetCapturedState(void * this)
Owned ranges: [[00d2c0e0, 00d2c126]]

00d2c0e0  56  PUSH ESI
00d2c0e1  57  PUSH EDI
00d2c0e2  8bf1  MOV ESI,ECX
00d2c0e4  e837feffff  CALL 0x00d2bf20
00d2c0e9  8b86c0000000  MOV EAX,dword ptr [ESI + 0xc0]
00d2c0ef  8b8ebc000000  MOV ECX,dword ptr [ESI + 0xbc]
00d2c0f5  8dbeb8000000  LEA EDI,[ESI + 0xb8]
00d2c0fb  50  PUSH EAX
00d2c0fc  51  PUSH ECX
00d2c0fd  8bcf  MOV ECX,EDI
00d2c0ff  e8eca6caff  CALL 0x009d67f0
00d2c104  0f57c0  XORPS XMM0,XMM0
00d2c107  c7470c00000000  MOV dword ptr [EDI + 0xc],0x0
00d2c10e  8b9614010000  MOV EDX,dword ptr [ESI + 0x114]
00d2c114  899618010000  MOV dword ptr [ESI + 0x118],EDX
00d2c11a  5f  POP EDI
00d2c11b  f30f118610010000  MOVSS dword ptr [ESI + 0x110],XMM0
00d2c123  33c0  XOR EAX,EAX
00d2c125  5e  POP ESI
00d2c126  c3  RET

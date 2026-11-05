# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool WaterTool_OnLotMoveRetainPoint(void * this, pointer lot, LotPaintPoint * point)
Owned ranges: [[00d3f930, 00d3f96b]]

00d3f930  80795e00  CMP byte ptr [ECX + 0x5e],0x0
00d3f934  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00d3f938  8b10  MOV EDX,dword ptr [EAX]
00d3f93a  8991d8000000  MOV dword ptr [ECX + 0xd8],EDX
00d3f940  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00d3f943  8991dc000000  MOV dword ptr [ECX + 0xdc],EDX
00d3f949  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00d3f94c  8991e0000000  MOV dword ptr [ECX + 0xe0],EDX
00d3f952  7513  JNZ 0x00d3f967
00d3f954  d9ee  FLDZ
00d3f956  8b11  MOV EDX,dword ptr [ECX]
00d3f958  8b5274  MOV EDX,dword ptr [EDX + 0x74]
00d3f95b  51  PUSH ECX
00d3f95c  d91c24  FSTP float ptr [ESP]
00d3f95f  50  PUSH EAX
00d3f960  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00d3f964  50  PUSH EAX
00d3f965  ffd2  CALL EDX
00d3f967  b001  MOV AL,0x1
00d3f969  c20800  RET 0x8

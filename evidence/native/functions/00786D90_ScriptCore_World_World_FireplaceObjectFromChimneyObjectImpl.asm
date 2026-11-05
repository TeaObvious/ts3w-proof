# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ulonglong ScriptCore.World::World_FireplaceObjectFromChimneyObjectImpl(ulonglong lotId, ulonglong objectId)
Owned ranges: [[00786d90, 00786dce]]

00786d90  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00786d96  85c9  TEST ECX,ECX
00786d98  7430  JZ 0x00786dca
00786d9a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00786d9e  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00786da2  6a00  PUSH 0x0
00786da4  50  PUSH EAX
00786da5  52  PUSH EDX
00786da6  e865ba4d00  CALL 0x00c62810
00786dab  85c0  TEST EAX,EAX
00786dad  741b  JZ 0x00786dca
00786daf  8b80cc020000  MOV EAX,dword ptr [EAX + 0x2cc]
00786db5  85c0  TEST EAX,EAX
00786db7  7411  JZ 0x00786dca
00786db9  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00786dbd  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00786dc1  51  PUSH ECX
00786dc2  52  PUSH EDX
00786dc3  8bc8  MOV ECX,EAX
00786dc5  e836ed2e00  CALL 0x00a75b00
00786dca  33c0  XOR EAX,EAX
00786dcc  33d2  XOR EDX,EDX
00786dce  c3  RET

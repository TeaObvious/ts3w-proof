# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ScriptCore.World::World_SetFloorFeaturesImpl(uint lotGuidLow, uint lotGuidHigh, int tileX, int tileZ, int level, uint flags, uint set, uint mask)
Owned ranges: [[00785a40, 00785a93]]

00785a40  51  PUSH ECX
00785a41  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00785a47  85c9  TEST ECX,ECX
00785a49  7447  JZ 0x00785a92
00785a4b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00785a4f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00785a53  6a00  PUSH 0x0
00785a55  50  PUSH EAX
00785a56  52  PUSH EDX
00785a57  e8b4cd4d00  CALL 0x00c62810
00785a5c  85c0  TEST EAX,EAX
00785a5e  7432  JZ 0x00785a92
00785a60  8a4c2410  MOV CL,byte ptr [ESP + 0x10]
00785a64  8a542414  MOV DL,byte ptr [ESP + 0x14]
00785a68  880c24  MOV byte ptr [ESP],CL
00785a6b  8a4c2418  MOV CL,byte ptr [ESP + 0x18]
00785a6f  88542401  MOV byte ptr [ESP + 0x1],DL
00785a73  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00785a77  884c2402  MOV byte ptr [ESP + 0x2],CL
00785a7b  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00785a7f  52  PUSH EDX
00785a80  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00785a84  51  PUSH ECX
00785a85  52  PUSH EDX
00785a86  8d4c240c  LEA ECX,[ESP + 0xc]
00785a8a  51  PUSH ECX
00785a8b  8bc8  MOV ECX,EAX
00785a8d  e85e5b3300  CALL 0x00abb5f0
00785a92  59  POP ECX
00785a93  c3  RET

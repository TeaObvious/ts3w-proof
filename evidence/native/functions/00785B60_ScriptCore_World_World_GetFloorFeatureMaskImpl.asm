# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: ushort ScriptCore.World::World_GetFloorFeatureMaskImpl(uint lotGuidLow, uint lotGuidHigh, int tileX, int tileZ, int level, uint unusedRequestedFlags)
Owned ranges: [[00785b60, 00785bae]]

00785b60  51  PUSH ECX
00785b61  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00785b67  85c9  TEST ECX,ECX
00785b69  743f  JZ 0x00785baa
00785b6b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00785b6f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00785b73  6a00  PUSH 0x0
00785b75  50  PUSH EAX
00785b76  52  PUSH EDX
00785b77  e894cc4d00  CALL 0x00c62810
00785b7c  85c0  TEST EAX,EAX
00785b7e  742a  JZ 0x00785baa
00785b80  8a4c2410  MOV CL,byte ptr [ESP + 0x10]
00785b84  8a542414  MOV DL,byte ptr [ESP + 0x14]
00785b88  880c24  MOV byte ptr [ESP],CL
00785b8b  8a4c2418  MOV CL,byte ptr [ESP + 0x18]
00785b8f  88542401  MOV byte ptr [ESP + 0x1],DL
00785b93  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
00785b97  884c2402  MOV byte ptr [ESP + 0x2],CL
00785b9b  52  PUSH EDX
00785b9c  8d4c2404  LEA ECX,[ESP + 0x4]
00785ba0  51  PUSH ECX
00785ba1  8bc8  MOV ECX,EAX
00785ba3  e8a80b3300  CALL 0x00ab6750
00785ba8  59  POP ECX
00785ba9  c3  RET
00785baa  6633c0  XOR AX,AX
00785bad  59  POP ECX
00785bae  c3  RET

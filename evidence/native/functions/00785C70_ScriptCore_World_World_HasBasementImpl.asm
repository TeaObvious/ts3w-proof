# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ScriptCore.World::World_HasBasementImpl(uint lotGuidLow, uint lotGuidHigh, int tileX, int tileZ, int level)
Owned ranges: [[00785c70, 00785cc5]]

00785c70  51  PUSH ECX
00785c71  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00785c77  85c9  TEST ECX,ECX
00785c79  7447  JZ 0x00785cc2
00785c7b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00785c7f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00785c83  6a00  PUSH 0x0
00785c85  50  PUSH EAX
00785c86  52  PUSH EDX
00785c87  e884cb4d00  CALL 0x00c62810
00785c8c  85c0  TEST EAX,EAX
00785c8e  7432  JZ 0x00785cc2
00785c90  8a4c2410  MOV CL,byte ptr [ESP + 0x10]
00785c94  8a542414  MOV DL,byte ptr [ESP + 0x14]
00785c98  880c24  MOV byte ptr [ESP],CL
00785c9b  8a4c2418  MOV CL,byte ptr [ESP + 0x18]
00785c9f  884c2402  MOV byte ptr [ESP + 0x2],CL
00785ca3  88542401  MOV byte ptr [ESP + 0x1],DL
00785ca7  668b1424  MOV DX,word ptr [ESP]
00785cab  8d0c24  LEA ECX,[ESP]
00785cae  51  PUSH ECX
00785caf  8bc8  MOV ECX,EAX
00785cb1  6689542404  MOV word ptr [ESP + 0x4],DX
00785cb6  c64424070f  MOV byte ptr [ESP + 0x7],0xf
00785cbb  e850103300  CALL 0x00ab6d10
00785cc0  59  POP ECX
00785cc1  c3  RET
00785cc2  32c0  XOR AL,AL
00785cc4  59  POP ECX
00785cc5  c3  RET

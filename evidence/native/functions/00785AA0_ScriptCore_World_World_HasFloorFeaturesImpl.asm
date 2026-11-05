# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ScriptCore.World::World_HasFloorFeaturesImpl(uint lotGuidLow, uint lotGuidHigh, int tileX, int tileZ, int level, uint requestedFlags, uint mask)
Owned ranges: [[00785aa0, 00785af2]]

00785aa0  51  PUSH ECX
00785aa1  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00785aa7  85c9  TEST ECX,ECX
00785aa9  7444  JZ 0x00785aef
00785aab  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00785aaf  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00785ab3  6a00  PUSH 0x0
00785ab5  50  PUSH EAX
00785ab6  52  PUSH EDX
00785ab7  e854cd4d00  CALL 0x00c62810
00785abc  85c0  TEST EAX,EAX
00785abe  742f  JZ 0x00785aef
00785ac0  8a4c2410  MOV CL,byte ptr [ESP + 0x10]
00785ac4  8a542414  MOV DL,byte ptr [ESP + 0x14]
00785ac8  880c24  MOV byte ptr [ESP],CL
00785acb  8a4c2418  MOV CL,byte ptr [ESP + 0x18]
00785acf  88542401  MOV byte ptr [ESP + 0x1],DL
00785ad3  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00785ad7  884c2402  MOV byte ptr [ESP + 0x2],CL
00785adb  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00785adf  52  PUSH EDX
00785ae0  51  PUSH ECX
00785ae1  8d542408  LEA EDX,[ESP + 0x8]
00785ae5  52  PUSH EDX
00785ae6  8bc8  MOV ECX,EAX
00785ae8  e8130b3300  CALL 0x00ab6600
00785aed  59  POP ECX
00785aee  c3  RET
00785aef  32c0  XOR AL,AL
00785af1  59  POP ECX
00785af2  c3  RET

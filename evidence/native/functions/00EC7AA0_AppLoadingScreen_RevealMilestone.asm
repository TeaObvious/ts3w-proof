# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_RevealMilestone Entry 00ec7aa0
OWNED_RANGE 00ec7aa0:00ec7b13
00ec7aa0: 51  PUSH ECX
00ec7aa1: 0f57c0  XORPS XMM0,XMM0
00ec7aa4: 57  PUSH EDI
00ec7aa5: 8bf9  MOV EDI,ECX
00ec7aa7: 8b875c020000  MOV EAX,dword ptr [EDI + 0x25c]
00ec7aad: 050f41eb06  ADD EAX,0x6eb410f
00ec7ab2: 3d2341eb06  CMP EAX,0x6eb4123
00ec7ab7: f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
00ec7abd: 7d4e  JGE 0x00ec7b0d
00ec7abf: 8b8f7c020000  MOV ECX,dword ptr [EDI + 0x27c]
00ec7ac5: 8b11  MOV EDX,dword ptr [ECX]
00ec7ac7: 56  PUSH ESI
00ec7ac8: 6a01  PUSH 0x1
00ec7aca: 50  PUSH EAX
00ec7acb: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec7ad1: ffd0  CALL EAX
00ec7ad3: 8bf0  MOV ESI,EAX
00ec7ad5: 85f6  TEST ESI,ESI
00ec7ad7: 742c  JZ 0x00ec7b05
00ec7ad9: 56  PUSH ESI
00ec7ada: e861fcffff  CALL 0x00ec7740
00ec7adf: d95c240c  FSTP float ptr [ESP + 0xc]
00ec7ae3: 83c404  ADD ESP,0x4
00ec7ae6: 8d8fc0020000  LEA ECX,[EDI + 0x2c0]
00ec7aec: e89fbd61ff  CALL 0x004e3890
00ec7af1: 8b16  MOV EDX,dword ptr [ESI]
00ec7af3: 8b4274  MOV EAX,dword ptr [EDX + 0x74]
00ec7af6: 6a01  PUSH 0x1
00ec7af8: 6a01  PUSH 0x1
00ec7afa: 8bce  MOV ECX,ESI
00ec7afc: ffd0  CALL EAX
00ec7afe: c687e202000001  MOV byte ptr [EDI + 0x2e2],0x1
00ec7b05: d9442408  FLD float ptr [ESP + 0x8]
00ec7b09: 5e  POP ESI
00ec7b0a: 5f  POP EDI
00ec7b0b: 59  POP ECX
00ec7b0c: c3  RET
00ec7b0d: d9442404  FLD float ptr [ESP + 0x4]
00ec7b11: 5f  POP EDI
00ec7b12: 59  POP ECX
00ec7b13: c3  RET
Total instructions: 41; owned bytes: 116

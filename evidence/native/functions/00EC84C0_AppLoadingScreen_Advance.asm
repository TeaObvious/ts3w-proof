# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_Advance Entry 00ec84c0
OWNED_RANGE 00ec84c0:00ec860f
00ec84c0: 51  PUSH ECX
00ec84c1: 8b442408  MOV EAX,dword ptr [ESP + 0x8]
00ec84c5: 53  PUSH EBX
00ec84c6: 56  PUSH ESI
00ec84c7: 8bf1  MOV ESI,ECX
00ec84c9: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ec84cd: 83865c02000001  ADD dword ptr [ESI + 0x25c],0x1
00ec84d4: 898ef4020000  MOV dword ptr [ESI + 0x2f4],ECX
00ec84da: 8bce  MOV ECX,ESI
00ec84dc: 8986f0020000  MOV dword ptr [ESI + 0x2f0],EAX
00ec84e2: e839f5ffff  CALL 0x00ec7a20
00ec84e7: 33db  XOR EBX,EBX
00ec84e9: 389ef8020000  CMP byte ptr [ESI + 0x2f8],BL
00ec84ef: 750d  JNZ 0x00ec84fe
00ec84f1: 8bce  MOV ECX,ESI
00ec84f3: e8a8f5ffff  CALL 0x00ec7aa0
00ec84f8: d99ed8020000  FSTP float ptr [ESI + 0x2d8]
00ec84fe: 389ee1020000  CMP byte ptr [ESI + 0x2e1],BL
00ec8504: 57  PUSH EDI
00ec8505: 7448  JZ 0x00ec854f
00ec8507: 8dbea8020000  LEA EDI,[ESI + 0x2a8]
00ec850d: 8bcf  MOV ECX,EDI
00ec850f: e8acb262ff  CALL 0x004f37c0
00ec8514: d98658020000  FLD float ptr [ESI + 0x258]
00ec851a: d9c9  FXCH
00ec851c: dff1  FCOMIP ST0,ST1
00ec851e: ddd8  FSTP ST0
00ec8520: 7621  JBE 0x00ec8543
00ec8522: 8b8e70020000  MOV ECX,dword ptr [ESI + 0x270]
00ec8528: 889ee1020000  MOV byte ptr [ESI + 0x2e1],BL
00ec852e: 8b11  MOV EDX,dword ptr [ECX]
00ec8530: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
00ec8533: ffd0  CALL EAX
00ec8535: 8b10  MOV EDX,dword ptr [EAX]
00ec8537: 53  PUSH EBX
00ec8538: 8bc8  MOV ECX,EAX
00ec853a: 8b4274  MOV EAX,dword ptr [EDX + 0x74]
00ec853d: 6a01  PUSH 0x1
00ec853f: ffd0  CALL EAX
00ec8541: eb27  JMP 0x00ec856a
00ec8543: 389ee1020000  CMP byte ptr [ESI + 0x2e1],BL
00ec8549: 0f8595000000  JNZ 0x00ec85e4
00ec854f: 8dbea8020000  LEA EDI,[ESI + 0x2a8]
00ec8555: 8bcf  MOV ECX,EDI
00ec8557: e864b262ff  CALL 0x004f37c0
00ec855c: d98650020000  FLD float ptr [ESI + 0x250]
00ec8562: d9c9  FXCH
00ec8564: dff1  FCOMIP ST0,ST1
00ec8566: ddd8  FSTP ST0
00ec8568: 767a  JBE 0x00ec85e4
00ec856a: 891f  MOV dword ptr [EDI],EBX
00ec856c: 895f04  MOV dword ptr [EDI + 0x4],EBX
00ec856f: 895f08  MOV dword ptr [EDI + 0x8],EBX
00ec8572: 895f0c  MOV dword ptr [EDI + 0xc],EBX
00ec8575: f30f1086d8020000  MOVSS XMM0,dword ptr [ESI + 0x2d8]
00ec857d: f30f108e54020000  MOVSS XMM1,dword ptr [ESI + 0x254]
00ec8585: 0f28d0  MOVAPS XMM2,XMM0
00ec8588: f30f5cd1  SUBSS XMM2,XMM1
00ec858c: f30f11542414  MOVSS dword ptr [ESP + 0x14],XMM2
00ec8592: 8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ec8596: c1f81f  SAR EAX,0x1f
00ec8599: 8bc8  MOV ECX,EAX
00ec859b: f7d1  NOT ECX
00ec859d: f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
00ec85a3: 8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00ec85a7: f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00ec85ad: 234c2414  AND ECX,dword ptr [ESP + 0x14]
00ec85b1: 23d0  AND EDX,EAX
00ec85b3: 8b86c0020000  MOV EAX,dword ptr [ESI + 0x2c0]
00ec85b9: 0bca  OR ECX,EDX
00ec85bb: 0b86c4020000  OR EAX,dword ptr [ESI + 0x2c4]
00ec85c1: 898ed8020000  MOV dword ptr [ESI + 0x2d8],ECX
00ec85c7: 8d8ec0020000  LEA ECX,[ESI + 0x2c0]
00ec85cd: 750c  JNZ 0x00ec85db
00ec85cf: e8bcb261ff  CALL 0x004e3890
00ec85d4: c686e202000001  MOV byte ptr [ESI + 0x2e2],0x1
00ec85db: 8bce  MOV ECX,ESI
00ec85dd: e8aefbffff  CALL 0x00ec8190
00ec85e2: eb17  JMP 0x00ec85fb
00ec85e4: 389ee0020000  CMP byte ptr [ESI + 0x2e0],BL
00ec85ea: 750f  JNZ 0x00ec85fb
00ec85ec: 389ee2020000  CMP byte ptr [ESI + 0x2e2],BL
00ec85f2: 7507  JNZ 0x00ec85fb
00ec85f4: 8bce  MOV ECX,ESI
00ec85f6: e825f5ffff  CALL 0x00ec7b20
00ec85fb: 389ef8020000  CMP byte ptr [ESI + 0x2f8],BL
00ec8601: 5f  POP EDI
00ec8602: 7406  JZ 0x00ec860a
00ec8604: 889ee0020000  MOV byte ptr [ESI + 0x2e0],BL
00ec860a: 5e  POP ESI
00ec860b: 5b  POP EBX
00ec860c: 59  POP ECX
00ec860d: c20800  RET 0x8
Total instructions: 93; owned bytes: 336

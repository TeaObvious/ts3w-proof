# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_CopyMatrixPayloadAOrIdentity
Paired annotated actual pseudocode: 006FAE70_SceneObject_CopyMatrixPayloadAOrIdentity.c
Owned ranges: [[006fae70, 006faf35]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006fae70  55  PUSH EBP
006fae71  8bec  MOV EBP,ESP
006fae73  83e4f0  AND ESP,0xfffffff0
006fae76  8b4938  MOV ECX,dword ptr [ECX + 0x38]
006fae79  83ec1c  SUB ESP,0x1c
006fae7c  85c9  TEST ECX,ECX
006fae7e  56  PUSH ESI
006fae7f  741d  JZ 0x006fae9e
006fae81  e82af7ffff  CALL 0x006fa5b0
006fae86  85c0  TEST EAX,EAX
006fae88  7414  JZ 0x006fae9e
006fae8a  8b7508  MOV ESI,dword ptr [EBP + 0x8]
006fae8d  56  PUSH ESI
006fae8e  8bc8  MOV ECX,EAX
006fae90  e8db7e3400  CALL 0x00a42d70
006fae95  8bc6  MOV EAX,ESI
006fae97  5e  POP ESI
006fae98  8be5  MOV ESP,EBP
006fae9a  5d  POP EBP
006fae9b  c20400  RET 0x4
006fae9e  0f57c0  XORPS XMM0,XMM0
006faea1  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
006faea9  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006faeac  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006faeb2  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006faeb8  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006faebe  f30f114c2410  MOVSS dword ptr [ESP + 0x10],XMM1
006faec4  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006faec9  0f2910  MOVAPS xmmword ptr [EAX],XMM2
006faecc  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006faed2  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006faed8  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
006faede  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006faee4  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006faee9  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006faeef  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
006faef5  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006faefb  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006faf01  0f295010  MOVAPS xmmword ptr [EAX + 0x10],XMM2
006faf05  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006faf0a  f30f114c241c  MOVSS dword ptr [ESP + 0x1c],XMM1
006faf10  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006faf16  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006faf1c  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006faf22  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
006faf27  0f295020  MOVAPS xmmword ptr [EAX + 0x20],XMM2
006faf2b  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
006faf2f  5e  POP ESI
006faf30  8be5  MOV ESP,EBP
006faf32  5d  POP EBP
006faf33  c20400  RET 0x4
Owned instructions=51 owned bytes=198 envelope bytes=198

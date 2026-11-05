# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra function envelope.
Actual Ghidra function: SceneObject_CopyMatrixPayloadBOrIdentity
Paired annotated actual pseudocode: 006FAF40_SceneObject_CopyMatrixPayloadBOrIdentity.c
Owned ranges: [[006faf40, 006fb005]]

GHIDRA LISTING (original bytes; non-owned alignment explicit)
006faf40  55  PUSH EBP
006faf41  8bec  MOV EBP,ESP
006faf43  83e4f0  AND ESP,0xfffffff0
006faf46  8b4938  MOV ECX,dword ptr [ECX + 0x38]
006faf49  83ec1c  SUB ESP,0x1c
006faf4c  85c9  TEST ECX,ECX
006faf4e  56  PUSH ESI
006faf4f  741d  JZ 0x006faf6e
006faf51  e85af6ffff  CALL 0x006fa5b0
006faf56  85c0  TEST EAX,EAX
006faf58  7414  JZ 0x006faf6e
006faf5a  8b7508  MOV ESI,dword ptr [EBP + 0x8]
006faf5d  56  PUSH ESI
006faf5e  8bc8  MOV ECX,EAX
006faf60  e8fb7f3400  CALL 0x00a42f60
006faf65  8bc6  MOV EAX,ESI
006faf67  5e  POP ESI
006faf68  8be5  MOV ESP,EBP
006faf6a  5d  POP EBP
006faf6b  c20400  RET 0x4
006faf6e  0f57c0  XORPS XMM0,XMM0
006faf71  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
006faf79  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006faf7c  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006faf82  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006faf88  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006faf8e  f30f114c2410  MOVSS dword ptr [ESP + 0x10],XMM1
006faf94  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006faf99  0f2910  MOVAPS xmmword ptr [EAX],XMM2
006faf9c  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006fafa2  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006fafa8  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
006fafae  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006fafb4  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006fafb9  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
006fafbf  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
006fafc5  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006fafcb  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006fafd1  0f295010  MOVAPS xmmword ptr [EAX + 0x10],XMM2
006fafd5  0f28542410  MOVAPS XMM2,xmmword ptr [ESP + 0x10]
006fafda  f30f114c241c  MOVSS dword ptr [ESP + 0x1c],XMM1
006fafe0  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
006fafe6  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
006fafec  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
006faff2  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
006faff7  0f295020  MOVAPS xmmword ptr [EAX + 0x20],XMM2
006faffb  0f294030  MOVAPS xmmword ptr [EAX + 0x30],XMM0
006fafff  5e  POP ESI
006fb000  8be5  MOV ESP,EBP
006fb002  5d  POP EBP
006fb003  c20400  RET 0x4
Owned instructions=51 owned bytes=198 envelope bytes=198

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneObject_UpdateAttachmentChildren
Paired annotated actual pseudocode: 006FC770_SceneObject_UpdateAttachmentChildren.c
Owned ranges: [[006fc770, 006fc7a0]]

GHIDRA LISTING (original bytes)
006fc770  53  PUSH EBX
006fc771  8bd9  MOV EBX,ECX
006fc773  57  PUSH EDI
006fc774  8dbb94010000  LEA EDI,[EBX + 0x194]
006fc77a  397f04  CMP dword ptr [EDI + 0x4],EDI
006fc77d  741f  JZ 0x006fc79e
006fc77f  56  PUSH ESI
006fc780  8b37  MOV ESI,dword ptr [EDI]
006fc782  3bf7  CMP ESI,EDI
006fc784  7417  JZ 0x006fc79d
006fc786  85f6  TEST ESI,ESI
006fc788  7405  JZ 0x006fc78f
006fc78a  8d4ee0  LEA ECX,[ESI + -0x20]
006fc78d  eb02  JMP 0x006fc791
006fc78f  33c9  XOR ECX,ECX
006fc791  53  PUSH EBX
006fc792  e8a9ebffff  CALL 0x006fb340
006fc797  8b36  MOV ESI,dword ptr [ESI]
006fc799  3bf7  CMP ESI,EDI
006fc79b  75e9  JNZ 0x006fc786
006fc79d  5e  POP ESI
006fc79e  5f  POP EDI
006fc79f  5b  POP EBX
006fc7a0  c3  RET
Owned instructions=24 owned bytes=49 envelope bytes=49

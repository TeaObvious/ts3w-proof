# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternMap_ReleaseReference
Paired actual annotated Ghidra pseudocode: 00B49BD0_WallPatternMap_ReleaseReference.c
Owned ranges: [[00b49bd0, 00b49c51]]
Envelope bytes=130

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b49bd0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b49bd4  83ec10  SUB ESP,0x10
00b49bd7  53  PUSH EBX
00b49bd8  56  PUSH ESI
00b49bd9  57  PUSH EDI
00b49bda  8bf1  MOV ESI,ECX
00b49bdc  50  PUSH EAX
00b49bdd  8d4c2410  LEA ECX,[ESP + 0x10]
00b49be1  51  PUSH ECX
00b49be2  8bce  MOV ECX,ESI
00b49be4  e8f73daaff  CALL 0x005ed9e0
00b49be9  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b49bec  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00b49bef  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00b49bf3  3b1c90  CMP EBX,dword ptr [EAX + EDX*0x4]
00b49bf6  7451  JZ 0x00b49c49
00b49bf8  834314ff  ADD dword ptr [EBX + 0x14],-0x1
00b49bfc  8d4310  LEA EAX,[EBX + 0x10]
00b49bff  7548  JNZ 0x00b49c49
00b49c01  50  PUSH EAX
00b49c02  8d4c2418  LEA ECX,[ESP + 0x18]
00b49c06  8d7e20  LEA EDI,[ESI + 0x20]
00b49c09  51  PUSH ECX
00b49c0a  8bcf  MOV ECX,EDI
00b49c0c  e81fd0e8ff  CALL 0x009d6c30
00b49c11  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00b49c15  83ec08  SUB ESP,0x8
00b49c18  8bc4  MOV EAX,ESP
00b49c1a  8918  MOV dword ptr [EAX],EBX
00b49c1c  895004  MOV dword ptr [EAX + 0x4],EDX
00b49c1f  8d442414  LEA EAX,[ESP + 0x14]
00b49c23  50  PUSH EAX
00b49c24  8bce  MOV ECX,ESI
00b49c26  e825f89fff  CALL 0x00549450
00b49c2b  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00b49c2f  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00b49c33  83ec08  SUB ESP,0x8
00b49c36  8bc4  MOV EAX,ESP
00b49c38  8908  MOV dword ptr [EAX],ECX
00b49c3a  895004  MOV dword ptr [EAX + 0x4],EDX
00b49c3d  8d44241c  LEA EAX,[ESP + 0x1c]
00b49c41  50  PUSH EAX
00b49c42  8bcf  MOV ECX,EDI
00b49c44  e807f89fff  CALL 0x00549450
00b49c49  5f  POP EDI
00b49c4a  5e  POP ESI
00b49c4b  5b  POP EBX
00b49c4c  83c410  ADD ESP,0x10
00b49c4f  c20400  RET 0x4
Owned instructions=49 owned bytes=130 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ObjectCatalog_ReadWallPlacementRow(void * this, int param_1, undefined4 * param_2, undefined4 * param_3, undefined4 * param_4, undefined4 * param_5, undefined4 * param_6, undefined4 * param_7)
Owned ranges: [[00c979a0, 00c979fa]]

00c979a0  8b89d4000000  MOV ECX,dword ptr [ECX + 0xd4]
00c979a6  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c979aa  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c979ae  8d0480  LEA EAX,[EAX + EAX*0x4]
00c979b1  d904c1  FLD float ptr [ECX + EAX*0x8]
00c979b4  8d04c1  LEA EAX,[ECX + EAX*0x8]
00c979b7  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c979bb  d91a  FSTP float ptr [EDX]
00c979bd  d94004  FLD float ptr [EAX + 0x4]
00c979c0  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00c979c4  d919  FSTP float ptr [ECX]
00c979c6  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00c979ca  d94008  FLD float ptr [EAX + 0x8]
00c979cd  d91a  FSTP float ptr [EDX]
00c979cf  d9400c  FLD float ptr [EAX + 0xc]
00c979d2  d919  FSTP float ptr [ECX]
00c979d4  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00c979d7  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00c979db  8911  MOV dword ptr [ECX],EDX
00c979dd  8b5018  MOV EDX,dword ptr [EAX + 0x18]
00c979e0  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00c979e4  8911  MOV dword ptr [ECX],EDX
00c979e6  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00c979e9  895104  MOV dword ptr [ECX + 0x4],EDX
00c979ec  8b5020  MOV EDX,dword ptr [EAX + 0x20]
00c979ef  895108  MOV dword ptr [ECX + 0x8],EDX
00c979f2  8b4024  MOV EAX,dword ptr [EAX + 0x24]
00c979f5  89410c  MOV dword ptr [ECX + 0xc],EAX
00c979f8  c21c00  RET 0x1c

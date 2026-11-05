# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void GhostFixup_InitializeStyleAndFlags(void * this, uint ghostType, uint ageGenderSpeciesFlags)
Owned ranges: [[006965d0, 00696604]]

006965d0  8bc1  MOV EAX,ECX
006965d2  c700dc0fff00  MOV dword ptr [EAX],0xff0fdc
006965d8  33c9  XOR ECX,ECX
006965da  8d5004  LEA EDX,[EAX + 0x4]
006965dd  870a  XCHG dword ptr [EDX],ECX
006965df  33c9  XOR ECX,ECX
006965e1  c700303cff00  MOV dword ptr [EAX],0xff3c30
006965e7  89480c  MOV dword ptr [EAX + 0xc],ECX
006965ea  884814  MOV byte ptr [EAX + 0x14],CL
006965ed  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
006965f1  83f91b  CMP ECX,0x1b
006965f4  1bd2  SBB EDX,EDX
006965f6  23d1  AND EDX,ECX
006965f8  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
006965fc  895008  MOV dword ptr [EAX + 0x8],EDX
006965ff  894810  MOV dword ptr [EAX + 0x10],ECX
00696602  c20800  RET 0x8

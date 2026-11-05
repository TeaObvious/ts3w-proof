# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: HouseholdScript_WriteVersionedResource
Paired actual annotated Ghidra pseudocode: 009AFB60_HouseholdScript_WriteVersionedResource.c
Owned ranges: [[009afb60, 009afbe5]]
Envelope bytes=134

GHIDRA LISTING (original bytes; nonowned alignment explicit)
009afb60  83ec10  SUB ESP,0x10
009afb63  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
009afb67  8b542418  MOV EDX,dword ptr [ESP + 0x18]
009afb6b  56  PUSH ESI
009afb6c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
009afb70  57  PUSH EDI
009afb71  8bf9  MOV EDI,ECX
009afb73  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
009afb77  89442408  MOV dword ptr [ESP + 0x8],EAX
009afb7b  6a01  PUSH 0x1
009afb7d  8d44240c  LEA EAX,[ESP + 0xc]
009afb81  894c2410  MOV dword ptr [ESP + 0x10],ECX
009afb85  50  PUSH EAX
009afb86  8bce  MOV ECX,ESI
009afb88  c7442418a8532806  MOV dword ptr [ESP + 0x18],0x62853a8
009afb90  8954241c  MOV dword ptr [ESP + 0x1c],EDX
009afb94  e82789e2ff  CALL 0x007d84c0
009afb99  84c0  TEST AL,AL
009afb9b  743f  JZ 0x009afbdc
009afb9d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
009afba0  8b5608  MOV EDX,dword ptr [ESI + 0x8]
009afba3  51  PUSH ECX
009afba4  6a02  PUSH 0x2
009afba6  52  PUSH EDX
009afba7  e8c4e3b2ff  CALL 0x004ddf70
009afbac  83c40c  ADD ESP,0xc
009afbaf  8bce  MOV ECX,ESI
009afbb1  50  PUSH EAX
009afbb2  e8397ee2ff  CALL 0x007d79f0
009afbb7  8b07  MOV EAX,dword ptr [EDI]
009afbb9  8b7f04  MOV EDI,dword ptr [EDI + 0x4]
009afbbc  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
009afbbf  8b11  MOV EDX,dword ptr [ECX]
009afbc1  2bf8  SUB EDI,EAX
009afbc3  57  PUSH EDI
009afbc4  50  PUSH EAX
009afbc5  8b4238  MOV EAX,dword ptr [EDX + 0x38]
009afbc8  ffd0  CALL EAX
009afbca  8bce  MOV ECX,ESI
009afbcc  e89f7ee2ff  CALL 0x007d7a70
009afbd1  8a4614  MOV AL,byte ptr [ESI + 0x14]
009afbd4  5f  POP EDI
009afbd5  5e  POP ESI
009afbd6  83c410  ADD ESP,0x10
009afbd9  c21000  RET 0x10
009afbdc  5f  POP EDI
009afbdd  32c0  XOR AL,AL
009afbdf  5e  POP ESI
009afbe0  83c410  ADD ESP,0x10
009afbe3  c21000  RET 0x10
Owned instructions=50 owned bytes=134 gap/nonowned bytes=0

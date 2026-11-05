# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 005AA330_FUN_005aa330.c
Body [[005aa330, 005aa3b3]]; envelope exclusive end 005aa3b4

GHIDRA LISTING (original bytes)
005aa330  56  PUSH ESI
005aa331  8bf1  MOV ESI,ECX
005aa333  57  PUSH EDI
005aa334  c7061cc90601  MOV dword ptr [ESI],0x106c91c
005aa33a  33c0  XOR EAX,EAX
005aa33c  8d4e04  LEA ECX,[ESI + 0x4]
005aa33f  8701  XCHG dword ptr [ECX],EAX
005aa341  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
005aa345  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005aa349  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
005aa34d  895608  MOV dword ptr [ESI + 0x8],EDX
005aa350  8b54241c  MOV EDX,dword ptr [ESP + 0x1c]
005aa354  89460c  MOV dword ptr [ESI + 0xc],EAX
005aa357  c74610b0e55a00  MOV dword ptr [ESI + 0x10],0x5ae5b0
005aa35e  c7068cf8fd00  MOV dword ptr [ESI],0xfdf88c
005aa364  8d7e18  LEA EDI,[ESI + 0x18]
005aa367  c70700000000  MOV dword ptr [EDI],0x0
005aa36d  894e20  MOV dword ptr [ESI + 0x20],ECX
005aa370  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
005aa374  85c9  TEST ECX,ECX
005aa376  895624  MOV dword ptr [ESI + 0x24],EDX
005aa379  894e28  MOV dword ptr [ESI + 0x28],ECX
005aa37c  7406  JZ 0x005aa384
005aa37e  8b01  MOV EAX,dword ptr [ECX]
005aa380  8b10  MOV EDX,dword ptr [EAX]
005aa382  ffd2  CALL EDX
005aa384  8b0d844c1d01  MOV ECX,dword ptr [0x011d4c84]
005aa38a  85c9  TEST ECX,ECX
005aa38c  741f  JZ 0x005aa3ad
005aa38e  8b01  MOV EAX,dword ptr [ECX]
005aa390  8b542414  MOV EDX,dword ptr [ESP + 0x14]
005aa394  8b4034  MOV EAX,dword ptr [EAX + 0x34]
005aa397  6a01  PUSH 0x1
005aa399  6a00  PUSH 0x0
005aa39b  68a0b3d400  PUSH 0xd4b3a0
005aa3a0  6a00  PUSH 0x0
005aa3a2  6a00  PUSH 0x0
005aa3a4  57  PUSH EDI
005aa3a5  6808d75e02  PUSH 0x25ed708
005aa3aa  52  PUSH EDX
005aa3ab  ffd0  CALL EAX
005aa3ad  5f  POP EDI
005aa3ae  8bc6  MOV EAX,ESI
005aa3b0  5e  POP ESI
005aa3b1  c21800  RET 0x18

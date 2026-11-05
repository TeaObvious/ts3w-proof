# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 005AE390_FUN_005ae390.c
Body [[005ae390, 005ae424]]; envelope exclusive end 005ae425

GHIDRA LISTING (original bytes)
005ae390  83ec40  SUB ESP,0x40
005ae393  56  PUSH ESI
005ae394  e8f7af1b00  CALL 0x00769390
005ae399  8bf0  MOV ESI,EAX
005ae39b  85f6  TEST ESI,ESI
005ae39d  747f  JZ 0x005ae41e
005ae39f  57  PUSH EDI
005ae3a0  8b7c244c  MOV EDI,dword ptr [ESP + 0x4c]
005ae3a4  837f1800  CMP dword ptr [EDI + 0x18],0x0
005ae3a8  7473  JZ 0x005ae41d
005ae3aa  8d4708  LEA EAX,[EDI + 0x8]
005ae3ad  50  PUSH EAX
005ae3ae  8d4c240c  LEA ECX,[ESP + 0xc]
005ae3b2  c744240cf4a6fb00  MOV dword ptr [ESP + 0xc],0xfba6f4
005ae3ba  66c74424140000  MOV word ptr [ESP + 0x14],0x0
005ae3c1  66c74424160000  MOV word ptr [ESP + 0x16],0x0
005ae3c8  e8537cf4ff  CALL 0x004f6020
005ae3cd  8b4f18  MOV ECX,dword ptr [EDI + 0x18]
005ae3d0  8b16  MOV EDX,dword ptr [ESI]
005ae3d2  8b9234010000  MOV EDX,dword ptr [EDX + 0x134]
005ae3d8  6a01  PUSH 0x1
005ae3da  8d44240c  LEA EAX,[ESP + 0xc]
005ae3de  50  PUSH EAX
005ae3df  51  PUSH ECX
005ae3e0  8d442434  LEA EAX,[ESP + 0x34]
005ae3e4  50  PUSH EAX
005ae3e5  8bce  MOV ECX,ESI
005ae3e7  ffd2  CALL EDX
005ae3e9  f644243004  TEST byte ptr [ESP + 0x30],0x4
005ae3ee  c7442428f4a6fb00  MOV dword ptr [ESP + 0x28],0xfba6f4
005ae3f6  740b  JZ 0x005ae403
005ae3f8  6a00  PUSH 0x0
005ae3fa  8d4c242c  LEA ECX,[ESP + 0x2c]
005ae3fe  e85d73f4ff  CALL 0x004f5760
005ae403  f644241004  TEST byte ptr [ESP + 0x10],0x4
005ae408  c7442408f4a6fb00  MOV dword ptr [ESP + 0x8],0xfba6f4
005ae410  740b  JZ 0x005ae41d
005ae412  6a00  PUSH 0x0
005ae414  8d4c240c  LEA ECX,[ESP + 0xc]
005ae418  e84373f4ff  CALL 0x004f5760
005ae41d  5f  POP EDI
005ae41e  b001  MOV AL,0x1
005ae420  5e  POP ESI
005ae421  83c440  ADD ESP,0x40
005ae424  c3  RET

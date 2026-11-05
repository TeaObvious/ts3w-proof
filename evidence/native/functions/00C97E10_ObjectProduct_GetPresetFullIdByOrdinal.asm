# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectProduct_GetPresetFullIdByOrdinal
Paired actual annotated Ghidra pseudocode: 00C97E10_ObjectProduct_GetPresetFullIdByOrdinal.c
Owned ranges: [[00c97e10, 00c97ea3]]
Envelope bytes=148

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c97e10  8b8108010000  MOV EAX,dword ptr [ECX + 0x108]
00c97e16  2b8104010000  SUB EAX,dword ptr [ECX + 0x104]
00c97e1c  56  PUSH ESI
00c97e1d  8b742408  MOV ESI,dword ptr [ESP + 0x8]
00c97e21  c1f803  SAR EAX,0x3
00c97e24  3bf0  CMP ESI,EAX
00c97e26  730e  JNC 0x00c97e36
00c97e28  8b8904010000  MOV ECX,dword ptr [ECX + 0x104]
00c97e2e  8b44f104  MOV EAX,dword ptr [ECX + ESI*0x8 + 0x4]
00c97e32  5e  POP ESI
00c97e33  c20400  RET 0x4
00c97e36  8b9108010000  MOV EDX,dword ptr [ECX + 0x108]
00c97e3c  2b9104010000  SUB EDX,dword ptr [ECX + 0x104]
00c97e42  6a00  PUSH 0x0
00c97e44  8d44240c  LEA EAX,[ESP + 0xc]
00c97e48  50  PUSH EAX
00c97e49  83c108  ADD ECX,0x8
00c97e4c  c1fa03  SAR EDX,0x3
00c97e4f  51  PUSH ECX
00c97e50  2bf2  SUB ESI,EDX
00c97e52  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00c97e5a  e84184e9ff  CALL 0x00b302a0
00c97e5f  8bc8  MOV ECX,EAX
00c97e61  e8ca99e9ff  CALL 0x00b31830
00c97e66  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c97e6a  85c9  TEST ECX,ECX
00c97e6c  742f  JZ 0x00c97e9d
00c97e6e  56  PUSH ESI
00c97e6f  6a01  PUSH 0x1
00c97e71  e87a2497ff  CALL 0x0060a2f0
00c97e76  85c0  TEST EAX,EAX
00c97e78  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c97e7c  7414  JZ 0x00c97e92
00c97e7e  85c9  TEST ECX,ECX
00c97e80  8b7010  MOV ESI,dword ptr [EAX + 0x10]
00c97e83  7407  JZ 0x00c97e8c
00c97e85  8b11  MOV EDX,dword ptr [ECX]
00c97e87  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97e8a  ffd0  CALL EAX
00c97e8c  8bc6  MOV EAX,ESI
00c97e8e  5e  POP ESI
00c97e8f  c20400  RET 0x4
00c97e92  85c9  TEST ECX,ECX
00c97e94  7407  JZ 0x00c97e9d
00c97e96  8b11  MOV EDX,dword ptr [ECX]
00c97e98  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c97e9b  ffd0  CALL EAX
00c97e9d  83c8ff  OR EAX,0xffffffff
00c97ea0  5e  POP ESI
00c97ea1  c20400  RET 0x4
Owned instructions=50 owned bytes=148 nonowned bytes=0

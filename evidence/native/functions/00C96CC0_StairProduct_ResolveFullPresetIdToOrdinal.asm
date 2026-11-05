# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint StairProduct_ResolveFullPresetIdToOrdinal(void * this, uint fullPresetId)
Owned ranges: [[00c96cc0, 00c96d4c] [00c96d50, 00c96d65]]

00c96cc0  56  PUSH ESI
00c96cc1  8bb1fc000000  MOV ESI,dword ptr [ECX + 0xfc]
00c96cc7  2bb1f8000000  SUB ESI,dword ptr [ECX + 0xf8]
00c96ccd  57  PUSH EDI
00c96cce  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00c96cd2  c1fe03  SAR ESI,0x3
00c96cd5  f7c700008000  TEST EDI,0x800000
00c96cdb  745f  JZ 0x00c96d3c
00c96cdd  6a00  PUSH 0x0
00c96cdf  8d442410  LEA EAX,[ESP + 0x10]
00c96ce3  50  PUSH EAX
00c96ce4  83c108  ADD ECX,0x8
00c96ce7  51  PUSH ECX
00c96ce8  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00c96cf0  e8ab95e9ff  CALL 0x00b302a0
00c96cf5  8bc8  MOV ECX,EAX
00c96cf7  e834abe9ff  CALL 0x00b31830
00c96cfc  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96d00  85c9  TEST ECX,ECX
00c96d02  745a  JZ 0x00c96d5e
00c96d04  57  PUSH EDI
00c96d05  6a05  PUSH 0x5
00c96d07  e8843597ff  CALL 0x0060a290
00c96d0c  83f8ff  CMP EAX,-0x1
00c96d0f  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00c96d13  7414  JZ 0x00c96d29
00c96d15  03f0  ADD ESI,EAX
00c96d17  85c9  TEST ECX,ECX
00c96d19  7407  JZ 0x00c96d22
00c96d1b  8b11  MOV EDX,dword ptr [ECX]
00c96d1d  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c96d20  ffd0  CALL EAX
00c96d22  5f  POP EDI
00c96d23  8bc6  MOV EAX,ESI
00c96d25  5e  POP ESI
00c96d26  c20400  RET 0x4
00c96d29  85c9  TEST ECX,ECX
00c96d2b  7431  JZ 0x00c96d5e
00c96d2d  8b11  MOV EDX,dword ptr [ECX]
00c96d2f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c96d32  ffd0  CALL EAX
00c96d34  5f  POP EDI
00c96d35  83c8ff  OR EAX,0xffffffff
00c96d38  5e  POP ESI
00c96d39  c20400  RET 0x4
00c96d3c  33c0  XOR EAX,EAX
00c96d3e  85f6  TEST ESI,ESI
00c96d40  761c  JBE 0x00c96d5e
00c96d42  8b89f8000000  MOV ECX,dword ptr [ECX + 0xf8]
00c96d48  83c104  ADD ECX,0x4
00c96d4b  eb03  JMP 0x00c96d50
00c96d4d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00c96d50  3939  CMP dword ptr [ECX],EDI
00c96d52  740d  JZ 0x00c96d61
00c96d54  83c001  ADD EAX,0x1
00c96d57  83c108  ADD ECX,0x8
00c96d5a  3bc6  CMP EAX,ESI
00c96d5c  72f2  JC 0x00c96d50
00c96d5e  83c8ff  OR EAX,0xffffffff
00c96d61  5f  POP EDI
00c96d62  5e  POP ESI
00c96d63  c20400  RET 0x4

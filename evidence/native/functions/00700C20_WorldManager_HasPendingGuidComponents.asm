# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00700c20, 00700ca8]]
Actual pseudocode: 00700C20_WorldManager_HasPendingGuidComponents.c
; Actual plate: Analyst PC1.67 Physical ECX world manager plus GUID low/high and mask stack DWORDs, RET0C. Copy exact 64-bit GUID into two stack words; each iteration repeats actual U64PairMap_Find on this+1074 before reading map value+8. Missing/end/null record, null virtual+8 result, or null result+10 ends with AL0. Invoke that virtual method with stack(index,0,0); pass its result and original mask to006EDA40 using receiver=result+10 then+1C. TEST AL; true returns AL1, otherwise increment index and look up again. Only low byte is boolean; upper EAX contains residue. Complete GUID component collection/type semantics and virtual target are not inferred. ActualC69E30 supplies lot+48/+4C and maskFFFFFFFF after requested/readiness checks; no Task or GPU resource ownership is implied.

00700c20  83ec08  SUB ESP,0x8
00700c23  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00700c27  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00700c2b  53  PUSH EBX
00700c2c  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00700c30  56  PUSH ESI
00700c31  57  PUSH EDI
00700c32  33f6  XOR ESI,ESI
00700c34  8944240c  MOV dword ptr [ESP + 0xc],EAX
00700c38  89542410  MOV dword ptr [ESP + 0x10],EDX
00700c3c  8db974100000  LEA EDI,[ECX + 0x1074]
00700c42  8d44240c  LEA EAX,[ESP + 0xc]
00700c46  50  PUSH EAX
00700c47  8d4c241c  LEA ECX,[ESP + 0x1c]
00700c4b  51  PUSH ECX
00700c4c  8bcf  MOV ECX,EDI
00700c4e  e8ed292200  CALL 0x00923640
00700c53  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00700c56  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00700c59  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00700c5d  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00700c60  7431  JZ 0x00700c93
00700c62  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00700c65  85c9  TEST ECX,ECX
00700c67  742a  JZ 0x00700c93
00700c69  8b11  MOV EDX,dword ptr [ECX]
00700c6b  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00700c6e  6a00  PUSH 0x0
00700c70  6a00  PUSH 0x0
00700c72  56  PUSH ESI
00700c73  ffd0  CALL EAX
00700c75  85c0  TEST EAX,EAX
00700c77  741a  JZ 0x00700c93
00700c79  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00700c7c  85c9  TEST ECX,ECX
00700c7e  7413  JZ 0x00700c93
00700c80  8b491c  MOV ECX,dword ptr [ECX + 0x1c]
00700c83  53  PUSH EBX
00700c84  50  PUSH EAX
00700c85  e8b6cdfeff  CALL 0x006eda40
00700c8a  84c0  TEST AL,AL
00700c8c  7510  JNZ 0x00700c9e
00700c8e  83c601  ADD ESI,0x1
00700c91  ebaf  JMP 0x00700c42
00700c93  5f  POP EDI
00700c94  5e  POP ESI
00700c95  32c0  XOR AL,AL
00700c97  5b  POP EBX
00700c98  83c408  ADD ESP,0x8
00700c9b  c20c00  RET 0xc
00700c9e  5f  POP EDI
00700c9f  5e  POP ESI
00700ca0  b001  MOV AL,0x1
00700ca2  5b  POP EBX
00700ca3  83c408  ADD ESP,0x8
00700ca6  c20c00  RET 0xc

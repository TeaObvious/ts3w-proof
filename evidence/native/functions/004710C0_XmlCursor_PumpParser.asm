# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_PumpParser
Owned ranges: [[004710c0, 0047114c]]
Signature: bool __thiscall XmlCursor_PumpParser(void)
Physical ABI: ECX cursor; no stack words; AL success only, high EAX unspecified; plain RET.

004710c0  56  PUSH ESI
004710c1  8bf1  MOV ESI,ECX
004710c3  807e0400  CMP byte ptr [ESI + 0x4],0x0 ; Previously final input sets cursor error+8 to1 and returns AL0.
004710c7  740b  JZ 0x004710d4
004710c9  c7460801000000  MOV dword ptr [ESI + 0x8],0x1
004710d0  32c0  XOR AL,AL
004710d2  5e  POP ESI
004710d3  c3  RET
004710d4  837e4000  CMP dword ptr [ESI + 0x40],0x0
004710d8  754a  JNZ 0x00471124
004710da  8d9b00000000  LEA EBX,[EBX]
004710e0  8b4e3c  MOV ECX,dword ptr [ESI + 0x3c]
004710e3  8b01  MOV EAX,dword ptr [ECX]
004710e5  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
004710e8  8b4030  MOV EAX,dword ptr [EAX + 0x30]
004710eb  6800200000  PUSH 0x2000 ; Read at most2000 bytes through stream+30; a short read marks final input.
004710f0  52  PUSH EDX
004710f1  ffd0  CALL EAX
004710f3  85c0  TEST EAX,EAX
004710f5  894654  MOV dword ptr [ESI + 0x54],EAX
004710f8  7c48  JL 0x00471142
004710fa  3d00200000  CMP EAX,0x2000
004710ff  7304  JNC 0x00471105
00471101  c6460401  MOV byte ptr [ESI + 0x4],0x1
00471105  0fb64e04  MOVZX ECX,byte ptr [ESI + 0x4]
00471109  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
0047110c  51  PUSH ECX
0047110d  50  PUSH EAX
0047110e  8b06  MOV EAX,dword ptr [ESI]
00471110  52  PUSH EDX
00471111  50  PUSH EAX
00471112  e8e9a80400  CALL 0x004bba00 ; Feed parser with backing bytes, returned length and final flag; continue until token-head+40 becomes nonnull.
00471117  83c410  ADD ESP,0x10
0047111a  85c0  TEST EAX,EAX
0047111c  740a  JZ 0x00471128
0047111e  837e4000  CMP dword ptr [ESI + 0x40],0x0
00471122  74bc  JZ 0x004710e0
00471124  b001  MOV AL,0x1
00471126  5e  POP ESI
00471127  c3  RET
00471128  8b0e  MOV ECX,dword ptr [ESI] ; Parse failure obtains parser error and maps it into cursor+8; negative stream read instead stores2.
0047112a  51  PUSH ECX
0047112b  e830890400  CALL 0x004b9a60
00471130  83c404  ADD ESP,0x4
00471133  50  PUSH EAX
00471134  8bce  MOV ECX,ESI
00471136  e8a5fbffff  CALL 0x00470ce0
0047113b  894608  MOV dword ptr [ESI + 0x8],EAX
0047113e  32c0  XOR AL,AL
00471140  5e  POP ESI
00471141  c3  RET
00471142  c7460802000000  MOV dword ptr [ESI + 0x8],0x2
00471149  32c0  XOR AL,AL
0047114b  5e  POP ESI
0047114c  c3  RET

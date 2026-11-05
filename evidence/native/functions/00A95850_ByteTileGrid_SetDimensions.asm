# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ByteTileGrid_SetDimensions(void * this, int param_1, int param_2, int param_3)
Owned ranges: [[00a95850, 00a958a8] [00a958b0, 00a958cb]]

00a95850  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00a95854  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00a95858  53  PUSH EBX
00a95859  55  PUSH EBP
00a9585a  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a9585e  56  PUSH ESI
00a9585f  8bf1  MOV ESI,ECX
00a95861  894604  MOV dword ptr [ESI + 0x4],EAX
00a95864  8d4803  LEA ECX,[EAX + 0x3]
00a95867  8d4203  LEA EAX,[EDX + 0x3]
00a9586a  c1f802  SAR EAX,0x2
00a9586d  c1f902  SAR ECX,0x2
00a95870  894624  MOV dword ptr [ESI + 0x24],EAX
00a95873  0fafc1  IMUL EAX,ECX
00a95876  0fafc5  IMUL EAX,EBP
00a95879  57  PUSH EDI
00a9587a  896e0c  MOV dword ptr [ESI + 0xc],EBP
00a9587d  894e20  MOV dword ptr [ESI + 0x20],ECX
00a95880  8d5e48  LEA EBX,[ESI + 0x48]
00a95883  895608  MOV dword ptr [ESI + 0x8],EDX
00a95886  8b7b04  MOV EDI,dword ptr [EBX + 0x4]
00a95889  2b3b  SUB EDI,dword ptr [EBX]
00a9588b  8be8  MOV EBP,EAX
00a9588d  55  PUSH EBP
00a9588e  8bcb  MOV ECX,EBX
00a95890  d1ff  SAR EDI,0x1
00a95892  e8499dbeff  CALL 0x0067f5e0
00a95897  3bef  CMP EBP,EDI
00a95899  7e21  JLE 0x00a958bc
00a9589b  8b03  MOV EAX,dword ptr [EBX]
00a9589d  8b4e4c  MOV ECX,dword ptr [ESI + 0x4c]
00a958a0  8d0478  LEA EAX,[EAX + EDI*0x2]
00a958a3  3bc1  CMP EAX,ECX
00a958a5  7415  JZ 0x00a958bc
00a958a7  eb07  JMP 0x00a958b0
00a958a9  8da42400000000  .byte 8da42400000000 ; NONOWNED envelope gap bytes
00a958b0  66c7000080  MOV word ptr [EAX],0x8000
00a958b5  83c002  ADD EAX,0x2
00a958b8  3bc1  CMP EAX,ECX
00a958ba  75f4  JNZ 0x00a958b0
00a958bc  55  PUSH EBP
00a958bd  8d4e38  LEA ECX,[ESI + 0x38]
00a958c0  e85bd597ff  CALL 0x00412e20
00a958c5  5f  POP EDI
00a958c6  5e  POP ESI
00a958c7  5d  POP EBP
00a958c8  5b  POP EBX
00a958c9  c20c00  RET 0xc

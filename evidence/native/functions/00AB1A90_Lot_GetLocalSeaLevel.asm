# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_GetLocalSeaLevel
Paired actual annotated Ghidra pseudocode: 00AB1A90_Lot_GetLocalSeaLevel.c
Owned ranges: [[00ab1a90, 00ab1af1]]
Envelope bytes=98

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ab1a90  55  PUSH EBP
00ab1a91  8bec  MOV EBP,ESP
00ab1a93  83e4f0  AND ESP,0xfffffff0
00ab1a96  83ec1c  SUB ESP,0x1c
00ab1a99  56  PUSH ESI
00ab1a9a  8bf1  MOV ESI,ECX
00ab1a9c  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ab1aa2  85c9  TEST ECX,ECX
00ab1aa4  740b  JZ 0x00ab1ab1
00ab1aa6  e8e5f51a00  CALL 0x00c61090
00ab1aab  d95c240c  FSTP float ptr [ESP + 0xc]
00ab1aaf  eb09  JMP 0x00ab1aba
00ab1ab1  0f57c0  XORPS XMM0,XMM0
00ab1ab4  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00ab1aba  8b06  MOV EAX,dword ptr [ESI]
00ab1abc  8b5064  MOV EDX,dword ptr [EAX + 0x64]
00ab1abf  8d4c2410  LEA ECX,[ESP + 0x10]
00ab1ac3  51  PUSH ECX
00ab1ac4  8bce  MOV ECX,ESI
00ab1ac6  ffd2  CALL EDX
00ab1ac8  0f2800  MOVAPS XMM0,xmmword ptr [EAX]
00ab1acb  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00ab1ad0  f30f1044240c  MOVSS XMM0,dword ptr [ESP + 0xc]
00ab1ad6  f30f5c442414  SUBSS XMM0,dword ptr [ESP + 0x14]
00ab1adc  f30f10c0  MOVSS XMM0,XMM0
00ab1ae0  0fc6c000  SHUFPS XMM0,XMM0,0x0
00ab1ae4  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00ab1ae9  d9442410  FLD float ptr [ESP + 0x10]
00ab1aed  5e  POP ESI
00ab1aee  8be5  MOV ESP,EBP
00ab1af0  5d  POP EBP
00ab1af1  c3  RET
Owned instructions=32 owned bytes=98 gap/nonowned bytes=0

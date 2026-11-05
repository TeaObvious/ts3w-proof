# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: WallPatternMap_FindFreeOrdinal
Paired actual annotated Ghidra pseudocode: 00B49CC0_WallPatternMap_FindFreeOrdinal.c
Owned ranges: [[00b49cc0, 00b49d2d]]
Envelope bytes=110

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b49cc0  55  PUSH EBP
00b49cc1  8bec  MOV EBP,ESP
00b49cc3  83e4f8  AND ESP,0xfffffff8
00b49cc6  83ec10  SUB ESP,0x10
00b49cc9  53  PUSH EBX
00b49cca  8b5924  MOV EBX,dword ptr [ECX + 0x24]
00b49ccd  55  PUSH EBP
00b49cce  56  PUSH ESI
00b49ccf  57  PUSH EDI
00b49cd0  8b7928  MOV EDI,dword ptr [ECX + 0x28]
00b49cd3  be01000000  MOV ESI,0x1
00b49cd8  8bc7  MOV EAX,EDI
00b49cda  8bd3  MOV EDX,EBX
00b49cdc  8b2c82  MOV EBP,dword ptr [EDX + EAX*0x4]
00b49cdf  33d2  XOR EDX,EDX
00b49ce1  8bc6  MOV EAX,ESI
00b49ce3  f7f7  DIV EDI
00b49ce5  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
00b49ce8  85c0  TEST EAX,EAX
00b49cea  8d1493  LEA EDX,[EBX + EDX*0x4]
00b49ced  740c  JZ 0x00b49cfb
00b49cef  90  NOP
00b49cf0  3b30  CMP ESI,dword ptr [EAX]
00b49cf2  7422  JZ 0x00b49d16
00b49cf4  8b4018  MOV EAX,dword ptr [EAX + 0x18]
00b49cf7  85c0  TEST EAX,EAX
00b49cf9  75f5  JNZ 0x00b49cf0
00b49cfb  8b14bb  MOV EDX,dword ptr [EBX + EDI*0x4]
00b49cfe  8d04bb  LEA EAX,[EBX + EDI*0x4]
00b49d01  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00b49d05  89542418  MOV dword ptr [ESP + 0x18],EDX
00b49d09  8d442418  LEA EAX,[ESP + 0x18]
00b49d0d  3928  CMP dword ptr [EAX],EBP
00b49d0f  7413  JZ 0x00b49d24
00b49d11  83c601  ADD ESI,0x1
00b49d14  ebc2  JMP 0x00b49cd8
00b49d16  89442410  MOV dword ptr [ESP + 0x10],EAX
00b49d1a  89542414  MOV dword ptr [ESP + 0x14],EDX
00b49d1e  8d442410  LEA EAX,[ESP + 0x10]
00b49d22  ebe9  JMP 0x00b49d0d
00b49d24  5f  POP EDI
00b49d25  8bc6  MOV EAX,ESI
00b49d27  5e  POP ESI
00b49d28  5d  POP EBP
00b49d29  5b  POP EBX
00b49d2a  8be5  MOV ESP,EBP
00b49d2c  5d  POP EBP
00b49d2d  c3  RET
Owned instructions=48 owned bytes=110 gap/nonowned bytes=0

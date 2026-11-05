# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Vector16_CopyRangeAndReturnEnd(undefined4 * param_1, undefined4 * param_2, undefined4 * param_3, undefined4 * param_4)
Owned ranges: [[005ca970, 005ca9aa]]

005ca970  55  PUSH EBP
005ca971  8bec  MOV EBP,ESP
005ca973  83e4f0  AND ESP,0xfffffff0
005ca976  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
005ca979  8b5514  MOV EDX,dword ptr [EBP + 0x14]
005ca97c  8b4508  MOV EAX,dword ptr [EBP + 0x8]
005ca97f  83ec0c  SUB ESP,0xc
005ca982  56  PUSH ESI
005ca983  8b7510  MOV ESI,dword ptr [EBP + 0x10]
005ca986  3bce  CMP ECX,ESI
005ca988  8910  MOV dword ptr [EAX],EDX
005ca98a  741a  JZ 0x005ca9a6
005ca98c  8d642400  LEA ESP,[ESP]
005ca990  85d2  TEST EDX,EDX
005ca992  7406  JZ 0x005ca99a
005ca994  0f2801  MOVAPS XMM0,xmmword ptr [ECX]
005ca997  0f2902  MOVAPS xmmword ptr [EDX],XMM0
005ca99a  83c110  ADD ECX,0x10
005ca99d  83c210  ADD EDX,0x10
005ca9a0  3bce  CMP ECX,ESI
005ca9a2  75ec  JNZ 0x005ca990
005ca9a4  8910  MOV dword ptr [EAX],EDX
005ca9a6  5e  POP ESI
005ca9a7  8be5  MOV ESP,EBP
005ca9a9  5d  POP EBP
005ca9aa  c3  RET

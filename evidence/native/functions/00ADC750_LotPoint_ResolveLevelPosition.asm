# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotPoint_ResolveLevelPosition(pointer lot, LotPaintPoint * point, float * outputPosition)
Owned ranges: [[00adc750, 00adc7b9]]

00adc750  55  PUSH EBP
00adc751  8bec  MOV EBP,ESP
00adc753  83e4f0  AND ESP,0xfffffff0
00adc756  83ec1c  SUB ESP,0x1c
00adc759  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00adc75c  56  PUSH ESI
00adc75d  8b7510  MOV ESI,dword ptr [EBP + 0x10]
00adc760  0f2806  MOVAPS XMM0,xmmword ptr [ESI]
00adc763  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00adc768  f30f1000  MOVSS XMM0,dword ptr [EAX]
00adc76c  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00adc772  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
00adc777  0f2906  MOVAPS xmmword ptr [ESI],XMM0
00adc77a  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00adc77f  f30f104004  MOVSS XMM0,dword ptr [EAX + 0x4]
00adc784  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00adc78a  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
00adc78f  50  PUSH EAX
00adc790  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00adc793  0f2906  MOVAPS xmmword ptr [ESI],XMM0
00adc796  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00adc79c  e8effefaff  CALL 0x00a8c690
00adc7a1  0f2806  MOVAPS XMM0,xmmword ptr [ESI]
00adc7a4  0f29442410  MOVAPS xmmword ptr [ESP + 0x10],XMM0
00adc7a9  d95c2414  FSTP float ptr [ESP + 0x14]
00adc7ad  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
00adc7b2  0f2906  MOVAPS xmmword ptr [ESI],XMM0
00adc7b5  5e  POP ESI
00adc7b6  8be5  MOV ESP,EBP
00adc7b8  5d  POP EBP
00adc7b9  c3  RET

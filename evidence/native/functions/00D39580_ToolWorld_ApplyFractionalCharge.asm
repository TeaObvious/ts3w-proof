# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ToolWorld_ApplyFractionalCharge(void * this, float amount)
Owned ranges: [[00d39580, 00d395cf]]

00d39580  51  PUSH ECX
00d39581  f30f10442408  MOVSS XMM0,dword ptr [ESP + 0x8]
00d39587  56  PUSH ESI
00d39588  8bf1  MOV ESI,ECX
00d3958a  f30f584620  ADDSS XMM0,dword ptr [ESI + 0x20]
00d3958f  57  PUSH EDI
00d39590  f30f114620  MOVSS dword ptr [ESI + 0x20],XMM0
00d39595  f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00d3959b  d9442408  FLD float ptr [ESP + 0x8]
00d3959f  db5c2410  FISTP dword ptr [ESP + 0x10]
00d395a3  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00d395a7  85ff  TEST EDI,EDI
00d395a9  741f  JZ 0x00d395ca
00d395ab  8bc7  MOV EAX,EDI
00d395ad  f7d8  NEG EAX
00d395af  50  PUSH EAX
00d395b0  e83b7ea5ff  CALL 0x007913f0
00d395b5  f30f104e20  MOVSS XMM1,dword ptr [ESI + 0x20]
00d395ba  f30f2ac7  CVTSI2SS XMM0,EDI
00d395be  f30f5cc8  SUBSS XMM1,XMM0
00d395c2  83c404  ADD ESP,0x4
00d395c5  f30f114e20  MOVSS dword ptr [ESI + 0x20],XMM1
00d395ca  5f  POP EDI
00d395cb  5e  POP ESI
00d395cc  59  POP ECX
00d395cd  c20400  RET 0x4

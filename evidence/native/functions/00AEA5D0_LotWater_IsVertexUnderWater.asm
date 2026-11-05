# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 LotWater_IsVertexUnderWater(void * this, int param_1, int param_2)
Owned ranges: [[00aea5d0, 00aea623]]

00aea5d0  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00aea5d3  8b91c8000000  MOV EDX,dword ptr [ECX + 0xc8]
00aea5d9  8b4824  MOV ECX,dword ptr [EAX + 0x24]
00aea5dc  53  PUSH EBX
00aea5dd  8b5a08  MOV EBX,dword ptr [EDX + 0x8]
00aea5e0  55  PUSH EBP
00aea5e1  8b6818  MOV EBP,dword ptr [EAX + 0x18]
00aea5e4  2b6810  SUB EBP,dword ptr [EAX + 0x10]
00aea5e7  8b520c  MOV EDX,dword ptr [EDX + 0xc]
00aea5ea  0faf6904  IMUL EBP,dword ptr [ECX + 0x4]
00aea5ee  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00aea5f1  56  PUSH ESI
00aea5f2  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00aea5f6  03ee  ADD EBP,ESI
00aea5f8  0fafde  IMUL EBX,ESI
00aea5fb  0faf6908  IMUL EBP,dword ptr [ECX + 0x8]
00aea5ff  57  PUSH EDI
00aea600  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00aea604  03df  ADD EBX,EDI
00aea606  f30f10049a  MOVSS XMM0,dword ptr [EDX + EBX*0x4]
00aea60b  03ef  ADD EBP,EDI
00aea60d  0f2f04a8  COMISS XMM0,dword ptr [EAX + EBP*0x4]
00aea611  5f  POP EDI
00aea612  5e  POP ESI
00aea613  5d  POP EBP
00aea614  5b  POP EBX
00aea615  7608  JBE 0x00aea61f
00aea617  b801000000  MOV EAX,0x1
00aea61c  c20800  RET 0x8
00aea61f  33c0  XOR EAX,EAX
00aea621  c20800  RET 0x8

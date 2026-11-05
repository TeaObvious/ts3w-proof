# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined WallLocator_QueryFirstAdjacentTile(char * param_1, undefined2 * param_2)
Owned ranges: [[00c45f20, 00c45faa]]

00c45f20  83ec24  SUB ESP,0x24
00c45f23  0cff  OR AL,0xff
00c45f25  880424  MOV byte ptr [ESP],AL
00c45f28  88442401  MOV byte ptr [ESP + 0x1],AL
00c45f2c  33c0  XOR EAX,EAX
00c45f2e  88442402  MOV byte ptr [ESP + 0x2],AL
00c45f32  89442404  MOV dword ptr [ESP + 0x4],EAX
00c45f36  89442408  MOV dword ptr [ESP + 0x8],EAX
00c45f3a  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00c45f3e  0fbe4803  MOVSX ECX,byte ptr [EAX + 0x3]
00c45f42  0fbe5004  MOVSX EDX,byte ptr [EAX + 0x4]
00c45f46  f30f2ac1  CVTSI2SS XMM0,ECX
00c45f4a  0fbe4805  MOVSX ECX,byte ptr [EAX + 0x5]
00c45f4e  f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00c45f54  f30f2ac2  CVTSI2SS XMM0,EDX
00c45f58  0fbe10  MOVSX EDX,byte ptr [EAX]
00c45f5b  894c2414  MOV dword ptr [ESP + 0x14],ECX
00c45f5f  0fbe4801  MOVSX ECX,byte ptr [EAX + 0x1]
00c45f63  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
00c45f69  f30f2ac2  CVTSI2SS XMM0,EDX
00c45f6d  0fbe5002  MOVSX EDX,byte ptr [EAX + 0x2]
00c45f71  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00c45f77  f30f2ac1  CVTSI2SS XMM0,ECX
00c45f7b  8d0424  LEA EAX,[ESP]
00c45f7e  50  PUSH EAX
00c45f7f  8d4c2410  LEA ECX,[ESP + 0x10]
00c45f83  89542424  MOV dword ptr [ESP + 0x24],EDX
00c45f87  51  PUSH ECX
00c45f88  8d542420  LEA EDX,[ESP + 0x20]
00c45f8c  52  PUSH EDX
00c45f8d  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00c45f93  e868fbffff  CALL 0x00c45b00
00c45f98  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00c45f9c  50  PUSH EAX
00c45f9d  8d4c2410  LEA ECX,[ESP + 0x10]
00c45fa1  51  PUSH ECX
00c45fa2  e8a9fcffff  CALL 0x00c45c50
00c45fa7  83c438  ADD ESP,0x38
00c45faa  c3  RET

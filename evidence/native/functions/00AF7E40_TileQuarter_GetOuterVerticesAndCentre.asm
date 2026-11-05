# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TileQuarter_GetOuterVerticesAndCentre(char * quarter, char * outerA, char * outerB, LotXZLevel * centre)
Owned ranges: [[00af7e40, 00af7f74]]

00af7e40  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00af7e44  0fbe4803  MOVSX ECX,byte ptr [EAX + 0x3]
00af7e48  83c1ff  ADD ECX,-0x1
00af7e4b  83f907  CMP ECX,0x7
00af7e4e  0f8720010000  JA 0x00af7f74
00af7e54  53  PUSH EBX
00af7e55  56  PUSH ESI
00af7e56  ff248d787faf00  JMP dword ptr [ECX*0x4 + 0xaf7f78]
00af7e5d  0fb64801  MOVZX ECX,byte ptr [EAX + 0x1]
00af7e61  0fb618  MOVZX EBX,byte ptr [EAX]
00af7e64  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7e67  884c240c  MOV byte ptr [ESP + 0xc],CL
00af7e6b  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00af7e6f  80c301  ADD BL,0x1
00af7e72  8819  MOV byte ptr [ECX],BL
00af7e74  0fb65c240c  MOVZX EBX,byte ptr [ESP + 0xc]
00af7e79  885901  MOV byte ptr [ECX + 0x1],BL
00af7e7c  885102  MOV byte ptr [ECX + 0x2],DL
00af7e7f  0fb64801  MOVZX ECX,byte ptr [EAX + 0x1]
00af7e83  0fb618  MOVZX EBX,byte ptr [EAX]
00af7e86  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7e89  884c240c  MOV byte ptr [ESP + 0xc],CL
00af7e8d  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00af7e91  8819  MOV byte ptr [ECX],BL
00af7e93  0fb65c240c  MOVZX EBX,byte ptr [ESP + 0xc]
00af7e98  885901  MOV byte ptr [ECX + 0x1],BL
00af7e9b  885102  MOV byte ptr [ECX + 0x2],DL
00af7e9e  e99c000000  JMP 0x00af7f3f
00af7ea3  0fb618  MOVZX EBX,byte ptr [EAX]
00af7ea6  8a4801  MOV CL,byte ptr [EAX + 0x1]
00af7ea9  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7eac  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00af7eb0  80c101  ADD CL,0x1
00af7eb3  884e01  MOV byte ptr [ESI + 0x1],CL
00af7eb6  80c301  ADD BL,0x1
00af7eb9  881e  MOV byte ptr [ESI],BL
00af7ebb  885602  MOV byte ptr [ESI + 0x2],DL
00af7ebe  0fb64801  MOVZX ECX,byte ptr [EAX + 0x1]
00af7ec2  0fb618  MOVZX EBX,byte ptr [EAX]
00af7ec5  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7ec8  884c240c  MOV byte ptr [ESP + 0xc],CL
00af7ecc  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00af7ed0  80c301  ADD BL,0x1
00af7ed3  8819  MOV byte ptr [ECX],BL
00af7ed5  0fb65c240c  MOVZX EBX,byte ptr [ESP + 0xc]
00af7eda  885901  MOV byte ptr [ECX + 0x1],BL
00af7edd  885102  MOV byte ptr [ECX + 0x2],DL
00af7ee0  eb5d  JMP 0x00af7f3f
00af7ee2  8a4801  MOV CL,byte ptr [EAX + 0x1]
00af7ee5  0fb618  MOVZX EBX,byte ptr [EAX]
00af7ee8  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7eeb  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00af7eef  80c101  ADD CL,0x1
00af7ef2  881e  MOV byte ptr [ESI],BL
00af7ef4  884e01  MOV byte ptr [ESI + 0x1],CL
00af7ef7  885602  MOV byte ptr [ESI + 0x2],DL
00af7efa  0fb618  MOVZX EBX,byte ptr [EAX]
00af7efd  8a4801  MOV CL,byte ptr [EAX + 0x1]
00af7f00  80c101  ADD CL,0x1
00af7f03  80c301  ADD BL,0x1
00af7f06  eb28  JMP 0x00af7f30
00af7f08  0fb64801  MOVZX ECX,byte ptr [EAX + 0x1]
00af7f0c  0fb618  MOVZX EBX,byte ptr [EAX]
00af7f0f  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7f12  884c240c  MOV byte ptr [ESP + 0xc],CL
00af7f16  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00af7f1a  8819  MOV byte ptr [ECX],BL
00af7f1c  0fb65c240c  MOVZX EBX,byte ptr [ESP + 0xc]
00af7f21  885901  MOV byte ptr [ECX + 0x1],BL
00af7f24  885102  MOV byte ptr [ECX + 0x2],DL
00af7f27  8a4801  MOV CL,byte ptr [EAX + 0x1]
00af7f2a  0fb618  MOVZX EBX,byte ptr [EAX]
00af7f2d  80c101  ADD CL,0x1
00af7f30  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00af7f34  8a5002  MOV DL,byte ptr [EAX + 0x2]
00af7f37  885602  MOV byte ptr [ESI + 0x2],DL
00af7f3a  884e01  MOV byte ptr [ESI + 0x1],CL
00af7f3d  881e  MOV byte ptr [ESI],BL
00af7f3f  0fbe5001  MOVSX EDX,byte ptr [EAX + 0x1]
00af7f43  0fbe4802  MOVSX ECX,byte ptr [EAX + 0x2]
00af7f47  0fbe00  MOVSX EAX,byte ptr [EAX]
00af7f4a  f30f100db4b5f900  MOVSS XMM1,dword ptr [0x00f9b5b4]
00af7f52  f30f2ad0  CVTSI2SS XMM2,EAX
00af7f56  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00af7f5a  f30f2ac2  CVTSI2SS XMM0,EDX
00af7f5e  f30f58c1  ADDSS XMM0,XMM1
00af7f62  f30f58d1  ADDSS XMM2,XMM1
00af7f66  f30f1110  MOVSS dword ptr [EAX],XMM2
00af7f6a  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00af7f6f  894808  MOV dword ptr [EAX + 0x8],ECX
00af7f72  5e  POP ESI
00af7f73  5b  POP EBX
00af7f74  c3  RET

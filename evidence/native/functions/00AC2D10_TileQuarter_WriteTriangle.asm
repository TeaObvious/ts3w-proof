# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TileQuarter_WriteTriangle(void * this, int * param_1)
Owned ranges: [[00ac2d10, 00ac2ea2]]

00ac2d10  56  PUSH ESI
00ac2d11  8bf1  MOV ESI,ECX
00ac2d13  0fbe4603  MOVSX EAX,byte ptr [ESI + 0x3]
00ac2d17  83c0ff  ADD EAX,-0x1
00ac2d1a  83f807  CMP EAX,0x7
00ac2d1d  57  PUSH EDI
00ac2d1e  0f8771010000  JA 0x00ac2e95
00ac2d24  ff2485a42eac00  JMP dword ptr [EAX*0x4 + 0xac2ea4]
00ac2d2b  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ac2d2f  6a03  PUSH 0x3
00ac2d31  8bcf  MOV ECX,EDI
00ac2d33  e8c881b6ff  CALL 0x0062af00
00ac2d38  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2d3c  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2d3f  8b07  MOV EAX,dword ptr [EDI]
00ac2d41  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2d45  f30f2aca  CVTSI2SS XMM1,EDX
00ac2d49  f30f580df898f900  ADDSS XMM1,dword ptr [0x00f998f8]
00ac2d51  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2d56  f30f1108  MOVSS dword ptr [EAX],XMM1
00ac2d5a  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2d5e  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2d62  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2d65  8b07  MOV EAX,dword ptr [EDI]
00ac2d67  83c008  ADD EAX,0x8
00ac2d6a  f30f2aca  CVTSI2SS XMM1,EDX
00ac2d6e  f30f1108  MOVSS dword ptr [EAX],XMM1
00ac2d72  f30f100db4b5f900  MOVSS XMM1,dword ptr [0x00f9b5b4]
00ac2d7a  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2d7f  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2d82  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2d86  8b07  MOV EAX,dword ptr [EDI]
00ac2d88  83c010  ADD EAX,0x10
00ac2d8b  f30f2ad2  CVTSI2SS XMM2,EDX
00ac2d8f  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2d93  f30f58d1  ADDSS XMM2,XMM1
00ac2d97  5f  POP EDI
00ac2d98  f30f58c1  ADDSS XMM0,XMM1
00ac2d9c  f30f1110  MOVSS dword ptr [EAX],XMM2
00ac2da0  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2da5  5e  POP ESI
00ac2da6  c20400  RET 0x4
00ac2da9  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ac2dad  6a03  PUSH 0x3
00ac2daf  8bcf  MOV ECX,EDI
00ac2db1  e84a81b6ff  CALL 0x0062af00
00ac2db6  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2dba  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2dbd  8b07  MOV EAX,dword ptr [EDI]
00ac2dbf  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00ac2dc7  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2dcb  f30f2ad2  CVTSI2SS XMM2,EDX
00ac2dcf  f30f58d1  ADDSS XMM2,XMM1
00ac2dd3  f30f1110  MOVSS dword ptr [EAX],XMM2
00ac2dd7  f30f58c1  ADDSS XMM0,XMM1
00ac2ddb  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2de0  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2de3  8b07  MOV EAX,dword ptr [EDI]
00ac2de5  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2de9  83c008  ADD EAX,0x8
00ac2dec  f30f2ad2  CVTSI2SS XMM2,EDX
00ac2df0  f30f58d1  ADDSS XMM2,XMM1
00ac2df4  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2df8  f30f1110  MOVSS dword ptr [EAX],XMM2
00ac2dfc  e971ffffff  JMP 0x00ac2d72
00ac2e01  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ac2e05  6a03  PUSH 0x3
00ac2e07  8bcf  MOV ECX,EDI
00ac2e09  e8f280b6ff  CALL 0x0062af00
00ac2e0e  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2e12  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2e15  8b07  MOV EAX,dword ptr [EDI]
00ac2e17  f30f100df898f900  MOVSS XMM1,dword ptr [0x00f998f8]
00ac2e1f  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2e23  f30f58c1  ADDSS XMM0,XMM1
00ac2e27  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2e2c  f30f2ad2  CVTSI2SS XMM2,EDX
00ac2e30  f30f1110  MOVSS dword ptr [EAX],XMM2
00ac2e34  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2e37  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2e3b  8b07  MOV EAX,dword ptr [EDI]
00ac2e3d  83c008  ADD EAX,0x8
00ac2e40  f30f2ad2  CVTSI2SS XMM2,EDX
00ac2e44  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2e48  f30f58d1  ADDSS XMM2,XMM1
00ac2e4c  f30f58c1  ADDSS XMM0,XMM1
00ac2e50  f30f1110  MOVSS dword ptr [EAX],XMM2
00ac2e54  e919ffffff  JMP 0x00ac2d72
00ac2e59  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ac2e5d  6a03  PUSH 0x3
00ac2e5f  8bcf  MOV ECX,EDI
00ac2e61  e89a80b6ff  CALL 0x0062af00
00ac2e66  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2e6a  0fbe16  MOVSX EDX,byte ptr [ESI]
00ac2e6d  8b07  MOV EAX,dword ptr [EDI]
00ac2e6f  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2e73  f30f114004  MOVSS dword ptr [EAX + 0x4],XMM0
00ac2e78  f30f2aca  CVTSI2SS XMM1,EDX
00ac2e7c  f30f1108  MOVSS dword ptr [EAX],XMM1
00ac2e80  0fbe4e01  MOVSX ECX,byte ptr [ESI + 0x1]
00ac2e84  f30f2ac1  CVTSI2SS XMM0,ECX
00ac2e88  f30f5805f898f900  ADDSS XMM0,dword ptr [0x00f998f8]
00ac2e90  e9cdfeffff  JMP 0x00ac2d62
00ac2e95  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ac2e99  8b08  MOV ECX,dword ptr [EAX]
00ac2e9b  5f  POP EDI
00ac2e9c  894804  MOV dword ptr [EAX + 0x4],ECX
00ac2e9f  5e  POP ESI
00ac2ea0  c20400  RET 0x4

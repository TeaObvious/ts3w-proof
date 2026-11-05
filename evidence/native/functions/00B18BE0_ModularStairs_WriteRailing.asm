# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairs_WriteRailing
Paired actual annotated Ghidra pseudocode: 00B18BE0_ModularStairs_WriteRailing.c
Owned ranges: [[00b18be0, 00b18d94]]
Envelope bytes=437

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b18be0  83ec58  SUB ESP,0x58
00b18be3  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00b18beb  53  PUSH EBX
00b18bec  55  PUSH EBP
00b18bed  56  PUSH ESI
00b18bee  57  PUSH EDI
00b18bef  33ff  XOR EDI,EDI
00b18bf1  8be9  MOV EBP,ECX
00b18bf3  8d4c2438  LEA ECX,[ESP + 0x38]
00b18bf7  897c2418  MOV dword ptr [ESP + 0x18],EDI
00b18bfb  897c241c  MOV dword ptr [ESP + 0x1c],EDI
00b18bff  897c2420  MOV dword ptr [ESP + 0x20],EDI
00b18c03  897c2424  MOV dword ptr [ESP + 0x24],EDI
00b18c07  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
00b18c0d  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
00b18c13  897c2430  MOV dword ptr [ESP + 0x30],EDI
00b18c17  e8842ffeff  CALL 0x00afbba0
00b18c1c  8b5c246c  MOV EBX,dword ptr [ESP + 0x6c]
00b18c20  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00b18c23  8b742474  MOV ESI,dword ptr [ESP + 0x74]
00b18c27  8b06  MOV EAX,dword ptr [ESI]
00b18c29  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b18c2c  51  PUSH ECX
00b18c2d  50  PUSH EAX
00b18c2e  52  PUSH EDX
00b18c2f  e83c539cff  CALL 0x004ddf70
00b18c34  83c40c  ADD ESP,0xc
00b18c37  8bcb  MOV ECX,EBX
00b18c39  50  PUSH EAX
00b18c3a  e8b1edcbff  CALL 0x007d79f0
00b18c3f  8b06  MOV EAX,dword ptr [ESI]
00b18c41  8d4c2474  LEA ECX,[ESP + 0x74]
00b18c45  51  PUSH ECX
00b18c46  8d542414  LEA EDX,[ESP + 0x14]
00b18c4a  8d753c  LEA ESI,[EBP + 0x3c]
00b18c4d  52  PUSH EDX
00b18c4e  8bce  MOV ECX,ESI
00b18c50  8944247c  MOV dword ptr [ESP + 0x7c],EAX
00b18c54  e827efffff  CALL 0x00b17b80
00b18c59  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b18c5c  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b18c5f  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00b18c63  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
00b18c66  7410  JZ 0x00b18c78
00b18c68  8d7008  LEA ESI,[EAX + 0x8]
00b18c6b  b914000000  MOV ECX,0x14
00b18c70  8d7c2418  LEA EDI,[ESP + 0x18]
00b18c74  f3a5  MOVSD.REP ES:EDI,ESI
00b18c76  33ff  XOR EDI,EDI
00b18c78  8b742470  MOV ESI,dword ptr [ESP + 0x70]
00b18c7c  57  PUSH EDI
00b18c7d  8d44241c  LEA EAX,[ESP + 0x1c]
00b18c81  50  PUSH EAX
00b18c82  8bce  MOV ECX,ESI
00b18c84  e8d7e7cbff  CALL 0x007d7460
00b18c89  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00b18c8c  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b18c8f  0fb7c0  MOVZX EAX,AX
00b18c92  51  PUSH ECX
00b18c93  50  PUSH EAX
00b18c94  52  PUSH EDX
00b18c95  e8d6519cff  CALL 0x004dde70
00b18c9a  83c40c  ADD ESP,0xc
00b18c9d  8bcb  MOV ECX,EBX
00b18c9f  50  PUSH EAX
00b18ca0  e84bedcbff  CALL 0x007d79f0
00b18ca5  57  PUSH EDI
00b18ca6  8d44243c  LEA EAX,[ESP + 0x3c]
00b18caa  50  PUSH EAX
00b18cab  8bce  MOV ECX,ESI
00b18cad  e8aee7cbff  CALL 0x007d7460
00b18cb2  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00b18cb5  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b18cb8  0fb7c0  MOVZX EAX,AX
00b18cbb  51  PUSH ECX
00b18cbc  50  PUSH EAX
00b18cbd  52  PUSH EDX
00b18cbe  e8ad519cff  CALL 0x004dde70
00b18cc3  83c40c  ADD ESP,0xc
00b18cc6  8bcb  MOV ECX,EBX
00b18cc8  50  PUSH EAX
00b18cc9  e822edcbff  CALL 0x007d79f0
00b18cce  57  PUSH EDI
00b18ccf  8d44244c  LEA EAX,[ESP + 0x4c]
00b18cd3  50  PUSH EAX
00b18cd4  8bce  MOV ECX,ESI
00b18cd6  e885e7cbff  CALL 0x007d7460
00b18cdb  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00b18cde  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b18ce1  0fb7c0  MOVZX EAX,AX
00b18ce4  51  PUSH ECX
00b18ce5  50  PUSH EAX
00b18ce6  52  PUSH EDX
00b18ce7  e884519cff  CALL 0x004dde70
00b18cec  83c40c  ADD ESP,0xc
00b18cef  8bcb  MOV ECX,EBX
00b18cf1  50  PUSH EAX
00b18cf2  e8f9eccbff  CALL 0x007d79f0
00b18cf7  57  PUSH EDI
00b18cf8  8d44245c  LEA EAX,[ESP + 0x5c]
00b18cfc  50  PUSH EAX
00b18cfd  8bce  MOV ECX,ESI
00b18cff  e85ce7cbff  CALL 0x007d7460
00b18d04  8b4b10  MOV ECX,dword ptr [EBX + 0x10]
00b18d07  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00b18d0a  0fb7c0  MOVZX EAX,AX
00b18d0d  51  PUSH ECX
00b18d0e  50  PUSH EAX
00b18d0f  52  PUSH EDX
00b18d10  e85b519cff  CALL 0x004dde70
00b18d15  83c40c  ADD ESP,0xc
00b18d18  8bcb  MOV ECX,EBX
00b18d1a  50  PUSH EAX
00b18d1b  e8d0eccbff  CALL 0x007d79f0
00b18d20  d9442428  FLD float ptr [ESP + 0x28]
00b18d24  8b4310  MOV EAX,dword ptr [EBX + 0x10]
00b18d27  50  PUSH EAX
00b18d28  51  PUSH ECX
00b18d29  8b4b08  MOV ECX,dword ptr [EBX + 0x8]
00b18d2c  d91c24  FSTP float ptr [ESP]
00b18d2f  51  PUSH ECX
00b18d30  e85b569cff  CALL 0x004de390
00b18d35  83c40c  ADD ESP,0xc
00b18d38  8bcb  MOV ECX,EBX
00b18d3a  50  PUSH EAX
00b18d3b  e8b0eccbff  CALL 0x007d79f0
00b18d40  d944242c  FLD float ptr [ESP + 0x2c]
00b18d44  8b5310  MOV EDX,dword ptr [EBX + 0x10]
00b18d47  52  PUSH EDX
00b18d48  51  PUSH ECX
00b18d49  8b4308  MOV EAX,dword ptr [EBX + 0x8]
00b18d4c  d91c24  FSTP float ptr [ESP]
00b18d4f  50  PUSH EAX
00b18d50  e83b569cff  CALL 0x004de390
00b18d55  83c40c  ADD ESP,0xc
00b18d58  8bcb  MOV ECX,EBX
00b18d5a  50  PUSH EAX
00b18d5b  e890eccbff  CALL 0x007d79f0
00b18d60  8b4d18  MOV ECX,dword ptr [EBP + 0x18]
00b18d63  3bcf  CMP ECX,EDI
00b18d65  7424  JZ 0x00b18d8b
00b18d67  8d542438  LEA EDX,[ESP + 0x38]
00b18d6b  52  PUSH EDX
00b18d6c  e84f7cf9ff  CALL 0x00ab09c0
00b18d71  8b4d18  MOV ECX,dword ptr [EBP + 0x18]
00b18d74  8d442448  LEA EAX,[ESP + 0x48]
00b18d78  50  PUSH EAX
00b18d79  e8427cf9ff  CALL 0x00ab09c0
00b18d7e  8d4c2458  LEA ECX,[ESP + 0x58]
00b18d82  51  PUSH ECX
00b18d83  8b4d18  MOV ECX,dword ptr [EBP + 0x18]
00b18d86  e8657cf9ff  CALL 0x00ab09f0
00b18d8b  5f  POP EDI
00b18d8c  5e  POP ESI
00b18d8d  5d  POP EBP
00b18d8e  5b  POP EBX
00b18d8f  83c458  ADD ESP,0x58
00b18d92  c20c00  RET 0xc
Owned instructions=158 owned bytes=437 gap/nonowned bytes=0

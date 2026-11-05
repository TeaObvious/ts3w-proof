# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: int LotTerrain_RebuildTotalPaintAlpha(int param_1)
Owned ranges: [[00aee9e0, 00aeea4c] [00aeea50, 00aeeb0d]]

00aee9e0  83ec1c  SUB ESP,0x1c
00aee9e3  55  PUSH EBP
00aee9e4  8be9  MOV EBP,ECX
00aee9e6  8b4574  MOV EAX,dword ptr [EBP + 0x74]
00aee9e9  0faf4570  IMUL EAX,dword ptr [EBP + 0x70]
00aee9ed  85c0  TEST EAX,EAX
00aee9ef  8d4d70  LEA ECX,[EBP + 0x70]
00aee9f2  896c241c  MOV dword ptr [ESP + 0x1c],EBP
00aee9f6  0f840d010000  JZ 0x00aeeb09
00aee9fc  53  PUSH EBX
00aee9fd  8d54240b  LEA EDX,[ESP + 0xb]
00aeea01  52  PUSH EDX
00aeea02  c644240f00  MOV byte ptr [ESP + 0xf],0x0
00aeea07  e844c9ffff  CALL 0x00aeb350
00aeea0c  8b4d34  MOV ECX,dword ptr [EBP + 0x34]
00aeea0f  2b4d30  SUB ECX,dword ptr [EBP + 0x30]
00aeea12  b8abaaaa2a  MOV EAX,0x2aaaaaab
00aeea17  f7e9  IMUL ECX
00aeea19  c1fa02  SAR EDX,0x2
00aeea1c  8bda  MOV EBX,EDX
00aeea1e  c1eb1f  SHR EBX,0x1f
00aeea21  03da  ADD EBX,EDX
00aeea23  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00aeea27  0f84db000000  JZ 0x00aeeb08
00aeea2d  56  PUSH ESI
00aeea2e  33f6  XOR ESI,ESI
00aeea30  397520  CMP dword ptr [EBP + 0x20],ESI
00aeea33  89742414  MOV dword ptr [ESP + 0x14],ESI
00aeea37  0f8eca000000  JLE 0x00aeeb07
00aeea3d  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
00aeea40  57  PUSH EDI
00aeea41  33ff  XOR EDI,EDI
00aeea43  85c0  TEST EAX,EAX
00aeea45  0f8eab000000  JLE 0x00aeeaf6
00aeea4b  eb03  JMP 0x00aeea50
00aeea4d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00aeea50  85db  TEST EBX,EBX
00aeea52  c744241400000000  MOV dword ptr [ESP + 0x14],0x0
00aeea5a  7675  JBE 0x00aeead1
00aeea5c  8b6d60  MOV EBP,dword ptr [EBP + 0x60]
00aeea5f  8bd6  MOV EDX,ESI
00aeea61  8bf7  MOV ESI,EDI
00aeea63  c1fa02  SAR EDX,0x2
00aeea66  c1fe02  SAR ESI,0x2
00aeea69  89742420  MOV dword ptr [ESP + 0x20],ESI
00aeea6d  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00aeea71  eb04  JMP 0x00aeea77
00aeea73  8b742420  MOV ESI,dword ptr [ESP + 0x20]
00aeea77  8b4d00  MOV ECX,dword ptr [EBP]
00aeea7a  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00aeea7d  0fafc2  IMUL EAX,EDX
00aeea80  03c6  ADD EAX,ESI
00aeea82  8b7130  MOV ESI,dword ptr [ECX + 0x30]
00aeea85  0fb73446  MOVZX ESI,word ptr [ESI + EAX*0x2]
00aeea89  8bde  MOV EBX,ESI
00aeea8b  c1eb0f  SHR EBX,0xf
00aeea8e  f6c301  TEST BL,0x1
00aeea91  7409  JZ 0x00aeea9c
00aeea93  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00aeea96  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00aeea9a  eb1a  JMP 0x00aeeab6
00aeea9c  8b4920  MOV ECX,dword ptr [ECX + 0x20]
00aeea9f  0fb7c6  MOVZX EAX,SI
00aeeaa2  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00aeeaa6  8bde  MOV EBX,ESI
00aeeaa8  83e303  AND EBX,0x3
00aeeaab  8d0483  LEA EAX,[EBX + EAX*0x4]
00aeeaae  8d0c81  LEA ECX,[ECX + EAX*0x4]
00aeeab1  8bc7  MOV EAX,EDI
00aeeab3  83e003  AND EAX,0x3
00aeeab6  03c8  ADD ECX,EAX
00aeeab8  0fb609  MOVZX ECX,byte ptr [ECX]
00aeeabb  014c2414  ADD dword ptr [ESP + 0x14],ECX
00aeeabf  83c504  ADD EBP,0x4
00aeeac2  836c241c01  SUB dword ptr [ESP + 0x1c],0x1
00aeeac7  75aa  JNZ 0x00aeea73
00aeeac9  8b5c2424  MOV EBX,dword ptr [ESP + 0x24]
00aeeacd  8b6c2428  MOV EBP,dword ptr [ESP + 0x28]
00aeead1  8a542414  MOV DL,byte ptr [ESP + 0x14]
00aeead5  56  PUSH ESI
00aeead6  57  PUSH EDI
00aeead7  8d44241b  LEA EAX,[ESP + 0x1b]
00aeeadb  50  PUSH EAX
00aeeadc  8d4d70  LEA ECX,[EBP + 0x70]
00aeeadf  8854241f  MOV byte ptr [ESP + 0x1f],DL
00aeeae3  e828f8ffff  CALL 0x00aee310
00aeeae8  8b451c  MOV EAX,dword ptr [EBP + 0x1c]
00aeeaeb  83c701  ADD EDI,0x1
00aeeaee  3bf8  CMP EDI,EAX
00aeeaf0  0f8c5affffff  JL 0x00aeea50
00aeeaf6  83c601  ADD ESI,0x1
00aeeaf9  3b7520  CMP ESI,dword ptr [EBP + 0x20]
00aeeafc  89742418  MOV dword ptr [ESP + 0x18],ESI
00aeeb00  0f8c3bffffff  JL 0x00aeea41
00aeeb06  5f  POP EDI
00aeeb07  5e  POP ESI
00aeeb08  5b  POP EBX
00aeeb09  5d  POP EBP
00aeeb0a  83c41c  ADD ESP,0x1c
00aeeb0d  c3  RET

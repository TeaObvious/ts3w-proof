# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CEAF30_PatternPresetPairs_SortAndExportHandles.c
Owned ranges: [[00ceaf30, 00ceb073]]

00ceaf30  83ec34  SUB ESP,0x34
00ceaf33  56  PUSH ESI
00ceaf34  33f6  XOR ESI,ESI
00ceaf36  89742404  MOV dword ptr [ESP + 0x4],ESI
00ceaf3a  e851e4a7ff  CALL 0x00769390
00ceaf3f  3bc6  CMP EAX,ESI
00ceaf41  89442408  MOV dword ptr [ESP + 0x8],EAX
00ceaf45  0f8420010000  JZ 0x00ceb06b
00ceaf4b  39742440  CMP dword ptr [ESP + 0x40],ESI
00ceaf4f  55  PUSH EBP
00ceaf50  8b6c2440  MOV EBP,dword ptr [ESP + 0x40]
00ceaf54  7427  JZ 0x00ceaf7d
00ceaf56  8b5504  MOV EDX,dword ptr [EBP + 0x4]
00ceaf59  c644241000  MOV byte ptr [ESP + 0x10],0x0
00ceaf5e  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00ceaf62  50  PUSH EAX
00ceaf63  8b4500  MOV EAX,dword ptr [EBP]
00ceaf66  8d4c241c  LEA ECX,[ESP + 0x1c]
00ceaf6a  51  PUSH ECX
00ceaf6b  52  PUSH EDX
00ceaf6c  50  PUSH EAX
00ceaf6d  c744242848170801  MOV dword ptr [ESP + 0x28],0x1081748
00ceaf75  e826feffff  CALL 0x00ceada0
00ceaf7a  83c410  ADD ESP,0x10
00ceaf7d  53  PUSH EBX
00ceaf7e  8b5d04  MOV EBX,dword ptr [EBP + 0x4]
00ceaf81  2b5d00  SUB EBX,dword ptr [EBP]
00ceaf84  57  PUSH EDI
00ceaf85  c1fb03  SAR EBX,0x3
00ceaf88  56  PUSH ESI
00ceaf89  8d0cdd00000000  LEA ECX,[EBX*0x8 + 0x0]
00ceaf90  51  PUSH ECX
00ceaf91  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00ceaf97  e884bf7fff  CALL 0x004e6f20
00ceaf9c  8bf8  MOV EDI,EAX
00ceaf9e  3bfe  CMP EDI,ESI
00ceafa0  897c2420  MOV dword ptr [ESP + 0x20],EDI
00ceafa4  0f84b5000000  JZ 0x00ceb05f
00ceafaa  3bde  CMP EBX,ESI
00ceafac  7e49  JLE 0x00ceaff7
00ceafae  eb04  JMP 0x00ceafb4
00ceafb0  8b6c2448  MOV EBP,dword ptr [ESP + 0x48]
00ceafb4  8b4500  MOV EAX,dword ptr [EBP]
00ceafb7  8b2cf0  MOV EBP,dword ptr [EAX + ESI*0x8]
00ceafba  8b54f004  MOV EDX,dword ptr [EAX + ESI*0x8 + 0x4]
00ceafbe  8b4500  MOV EAX,dword ptr [EBP]
00ceafc1  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00ceafc5  8b10  MOV EDX,dword ptr [EAX]
00ceafc7  8bcd  MOV ECX,EBP
00ceafc9  ffd2  CALL EDX
00ceafcb  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ceafcf  8b01  MOV EAX,dword ptr [ECX]
00ceafd1  8b90c8000000  MOV EDX,dword ptr [EAX + 0xc8]
00ceafd7  6a45  PUSH 0x45
00ceafd9  55  PUSH EBP
00ceafda  ffd2  CALL EDX
00ceafdc  8907  MOV dword ptr [EDI],EAX
00ceafde  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ceafe2  83c704  ADD EDI,0x4
00ceafe5  8907  MOV dword ptr [EDI],EAX
00ceafe7  83c601  ADD ESI,0x1
00ceafea  83c704  ADD EDI,0x4
00ceafed  3bf3  CMP ESI,EBX
00ceafef  7cbf  JL 0x00ceafb0
00ceaff1  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00ceaff5  33f6  XOR ESI,ESI
00ceaff7  03db  ADD EBX,EBX
00ceaff9  3bde  CMP EBX,ESI
00ceaffb  bdf4a6fb00  MOV EBP,0xfba6f4
00ceb000  896c2424  MOV dword ptr [ESP + 0x24],EBP
00ceb004  668974242c  MOV word ptr [ESP + 0x2c],SI
00ceb009  668974242e  MOV word ptr [ESP + 0x2e],SI
00ceb00e  8d4c2424  LEA ECX,[ESP + 0x24]
00ceb012  7408  JZ 0x00ceb01c
00ceb014  53  PUSH EBX
00ceb015  6a04  PUSH 0x4
00ceb017  57  PUSH EDI
00ceb018  6a18  PUSH 0x18
00ceb01a  eb06  JMP 0x00ceb022
00ceb01c  56  PUSH ESI
00ceb01d  6a04  PUSH 0x4
00ceb01f  57  PUSH EDI
00ceb020  6a20  PUSH 0x20
00ceb022  6a0a  PUSH 0xa
00ceb024  e897a980ff  CALL 0x004f59c0
00ceb029  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ceb02d  8b11  MOV EDX,dword ptr [ECX]
00ceb02f  8b5250  MOV EDX,dword ptr [EDX + 0x50]
00ceb032  8d442410  LEA EAX,[ESP + 0x10]
00ceb036  50  PUSH EAX
00ceb037  8d442428  LEA EAX,[ESP + 0x28]
00ceb03b  50  PUSH EAX
00ceb03c  ffd2  CALL EDX
00ceb03e  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00ceb044  57  PUSH EDI
00ceb045  e826ae7fff  CALL 0x004e5e70
00ceb04a  f644242c04  TEST byte ptr [ESP + 0x2c],0x4
00ceb04f  896c2424  MOV dword ptr [ESP + 0x24],EBP
00ceb053  740a  JZ 0x00ceb05f
00ceb055  56  PUSH ESI
00ceb056  8d4c2428  LEA ECX,[ESP + 0x28]
00ceb05a  e801a780ff  CALL 0x004f5760
00ceb05f  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00ceb063  5f  POP EDI
00ceb064  5b  POP EBX
00ceb065  5d  POP EBP
00ceb066  5e  POP ESI
00ceb067  83c434  ADD ESP,0x34
00ceb06a  c3  RET
00ceb06b  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00ceb06f  5e  POP ESI
00ceb070  83c434  ADD ESP,0x34
00ceb073  c3  RET

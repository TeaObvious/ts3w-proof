# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CEA820_ProductVector_SortAndExportHandles.c
Owned ranges: [[00cea820, 00cea954]]

00cea820  83ec34  SUB ESP,0x34
00cea823  55  PUSH EBP
00cea824  8b6c243c  MOV EBP,dword ptr [ESP + 0x3c]
00cea828  57  PUSH EDI
00cea829  33ff  XOR EDI,EDI
00cea82b  897c2408  MOV dword ptr [ESP + 0x8],EDI
00cea82f  e85ceba7ff  CALL 0x00769390
00cea834  3bc7  CMP EAX,EDI
00cea836  89442410  MOV dword ptr [ESP + 0x10],EAX
00cea83a  0f840b010000  JZ 0x00cea94b
00cea840  8b442448  MOV EAX,dword ptr [ESP + 0x48]
00cea844  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
00cea848  53  PUSH EBX
00cea849  8b5d00  MOV EBX,dword ptr [EBP]
00cea84c  56  PUSH ESI
00cea84d  8b7504  MOV ESI,dword ptr [EBP + 0x4]
00cea850  50  PUSH EAX
00cea851  51  PUSH ECX
00cea852  8d4c2424  LEA ECX,[ESP + 0x24]
00cea856  c744241cfc160801  MOV dword ptr [ESP + 0x1c],0x10816fc
00cea85e  e8adb4ffff  CALL 0x00ce5d10
00cea863  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00cea866  8b00  MOV EAX,dword ptr [EAX]
00cea868  52  PUSH EDX
00cea869  50  PUSH EAX
00cea86a  8d4c241c  LEA ECX,[ESP + 0x1c]
00cea86e  51  PUSH ECX
00cea86f  56  PUSH ESI
00cea870  53  PUSH EBX
00cea871  e8fafdffff  CALL 0x00cea670
00cea876  8b7504  MOV ESI,dword ptr [EBP + 0x4]
00cea879  2b7500  SUB ESI,dword ptr [EBP]
00cea87c  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00cea882  83c414  ADD ESP,0x14
00cea885  c1fe02  SAR ESI,0x2
00cea888  57  PUSH EDI
00cea889  8d14b500000000  LEA EDX,[ESI*0x4 + 0x0]
00cea890  52  PUSH EDX
00cea891  e88ac67fff  CALL 0x004e6f20
00cea896  8bd8  MOV EBX,EAX
00cea898  3bdf  CMP EBX,EDI
00cea89a  895c2414  MOV dword ptr [ESP + 0x14],EBX
00cea89e  0f849b000000  JZ 0x00cea93f
00cea8a4  3bf7  CMP ESI,EDI
00cea8a6  7e31  JLE 0x00cea8d9
00cea8a8  8b4500  MOV EAX,dword ptr [EBP]
00cea8ab  8b1cb8  MOV EBX,dword ptr [EAX + EDI*0x4]
00cea8ae  8b13  MOV EDX,dword ptr [EBX]
00cea8b0  8b02  MOV EAX,dword ptr [EDX]
00cea8b2  8bcb  MOV ECX,EBX
00cea8b4  ffd0  CALL EAX
00cea8b6  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00cea8ba  8b11  MOV EDX,dword ptr [ECX]
00cea8bc  8b82c8000000  MOV EAX,dword ptr [EDX + 0xc8]
00cea8c2  6a45  PUSH 0x45
00cea8c4  53  PUSH EBX
00cea8c5  ffd0  CALL EAX
00cea8c7  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00cea8cb  8904b9  MOV dword ptr [ECX + EDI*0x4],EAX
00cea8ce  83c701  ADD EDI,0x1
00cea8d1  3bfe  CMP EDI,ESI
00cea8d3  7cd3  JL 0x00cea8a8
00cea8d5  8bd9  MOV EBX,ECX
00cea8d7  33ff  XOR EDI,EDI
00cea8d9  3bf7  CMP ESI,EDI
00cea8db  bdf4a6fb00  MOV EBP,0xfba6f4
00cea8e0  896c2424  MOV dword ptr [ESP + 0x24],EBP
00cea8e4  66897c242c  MOV word ptr [ESP + 0x2c],DI
00cea8e9  66897c242e  MOV word ptr [ESP + 0x2e],DI
00cea8ee  8d4c2424  LEA ECX,[ESP + 0x24]
00cea8f2  7408  JZ 0x00cea8fc
00cea8f4  56  PUSH ESI
00cea8f5  6a04  PUSH 0x4
00cea8f7  53  PUSH EBX
00cea8f8  6a18  PUSH 0x18
00cea8fa  eb06  JMP 0x00cea902
00cea8fc  57  PUSH EDI
00cea8fd  6a04  PUSH 0x4
00cea8ff  53  PUSH EBX
00cea900  6a20  PUSH 0x20
00cea902  6a0a  PUSH 0xa
00cea904  e8b7b080ff  CALL 0x004f59c0
00cea909  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00cea90d  8b11  MOV EDX,dword ptr [ECX]
00cea90f  8b5250  MOV EDX,dword ptr [EDX + 0x50]
00cea912  8d442410  LEA EAX,[ESP + 0x10]
00cea916  50  PUSH EAX
00cea917  8d442428  LEA EAX,[ESP + 0x28]
00cea91b  50  PUSH EAX
00cea91c  ffd2  CALL EDX
00cea91e  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00cea924  53  PUSH EBX
00cea925  e846b57fff  CALL 0x004e5e70
00cea92a  f644242c04  TEST byte ptr [ESP + 0x2c],0x4
00cea92f  896c2424  MOV dword ptr [ESP + 0x24],EBP
00cea933  740a  JZ 0x00cea93f
00cea935  57  PUSH EDI
00cea936  8d4c2428  LEA ECX,[ESP + 0x28]
00cea93a  e821ae80ff  CALL 0x004f5760
00cea93f  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00cea943  5e  POP ESI
00cea944  5b  POP EBX
00cea945  5f  POP EDI
00cea946  5d  POP EBP
00cea947  83c434  ADD ESP,0x34
00cea94a  c3  RET
00cea94b  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00cea94f  5f  POP EDI
00cea950  5d  POP EBP
00cea951  83c434  ADD ESP,0x34
00cea954  c3  RET

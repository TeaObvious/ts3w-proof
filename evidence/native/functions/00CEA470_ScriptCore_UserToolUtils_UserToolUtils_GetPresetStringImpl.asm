# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 UserToolUtils_GetPresetStringImpl(undefined * * param_1, uint param_2, undefined4 param_3, uint param_4)
Owned ranges: [[00cea470, 00cea595]]

00cea470  83ec44  SUB ESP,0x44
00cea473  53  PUSH EBX
00cea474  56  PUSH ESI
00cea475  57  PUSH EDI
00cea476  e815efa7ff  CALL 0x00769390
00cea47b  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cea481  85c9  TEST ECX,ECX
00cea483  8bd8  MOV EBX,EAX
00cea485  b8548e1c01  MOV EAX,0x11c8e54
00cea48a  c744241cc8160801  MOV dword ptr [ESP + 0x1c],0x10816c8
00cea492  89442410  MOV dword ptr [ESP + 0x10],EAX
00cea496  89442414  MOV dword ptr [ESP + 0x14],EAX
00cea49a  c7442418568e1c01  MOV dword ptr [ESP + 0x18],0x11c8e56
00cea4a2  7470  JZ 0x00cea514
00cea4a4  8b442458  MOV EAX,dword ptr [ESP + 0x58]
00cea4a8  8b54245c  MOV EDX,dword ptr [ESP + 0x5c]
00cea4ac  8b742460  MOV ESI,dword ptr [ESP + 0x60]
00cea4b0  89442420  MOV dword ptr [ESP + 0x20],EAX
00cea4b4  8b442454  MOV EAX,dword ptr [ESP + 0x54]
00cea4b8  89542424  MOV dword ptr [ESP + 0x24],EDX
00cea4bc  89442428  MOV dword ptr [ESP + 0x28],EAX
00cea4c0  8bd6  MOV EDX,ESI
00cea4c2  8d442420  LEA EAX,[ESP + 0x20]
00cea4c6  81e2000000ff  AND EDX,0xff000000
00cea4cc  50  PUSH EAX
00cea4cd  89542430  MOV dword ptr [ESP + 0x30],EDX
00cea4d1  e8da46faff  CALL 0x00c8ebb0
00cea4d6  8bf8  MOV EDI,EAX
00cea4d8  85ff  TEST EDI,EDI
00cea4da  7438  JZ 0x00cea514
00cea4dc  81e6ffffff00  AND ESI,0xffffff
00cea4e2  7424  JZ 0x00cea508
00cea4e4  81feffffff00  CMP ESI,0xffffff
00cea4ea  741c  JZ 0x00cea508
00cea4ec  56  PUSH ESI
00cea4ed  8bcf  MOV ECX,EDI
00cea4ef  e87cd8faff  CALL 0x00c97d70
00cea4f4  83f8ff  CMP EAX,-0x1
00cea4f7  741b  JZ 0x00cea514
00cea4f9  8d4c2410  LEA ECX,[ESP + 0x10]
00cea4fd  51  PUSH ECX
00cea4fe  50  PUSH EAX
00cea4ff  8bcf  MOV ECX,EDI
00cea501  e88adffaff  CALL 0x00c98490
00cea506  eb0c  JMP 0x00cea514
00cea508  8d542410  LEA EDX,[ESP + 0x10]
00cea50c  52  PUSH EDX
00cea50d  8bcf  MOV ECX,EDI
00cea50f  e80cd6faff  CALL 0x00c97b20
00cea514  6a01  PUSH 0x1
00cea516  6a10  PUSH 0x10
00cea518  8d442418  LEA EAX,[ESP + 0x18]
00cea51c  50  PUSH EAX
00cea51d  6a09  PUSH 0x9
00cea51f  bff4a6fb00  MOV EDI,0xfba6f4
00cea524  6a13  PUSH 0x13
00cea526  8d4c2444  LEA ECX,[ESP + 0x44]
00cea52a  897c2444  MOV dword ptr [ESP + 0x44],EDI
00cea52e  66c744244c0000  MOV word ptr [ESP + 0x4c],0x0
00cea535  66c744244e0000  MOV word ptr [ESP + 0x4e],0x0
00cea53c  e87fb480ff  CALL 0x004f59c0
00cea541  8b13  MOV EDX,dword ptr [EBX]
00cea543  8b5250  MOV EDX,dword ptr [EDX + 0x50]
00cea546  8d44240c  LEA EAX,[ESP + 0xc]
00cea54a  50  PUSH EAX
00cea54b  8d4c2434  LEA ECX,[ESP + 0x34]
00cea54f  51  PUSH ECX
00cea550  8bcb  MOV ECX,EBX
00cea552  ffd2  CALL EDX
00cea554  f644243804  TEST byte ptr [ESP + 0x38],0x4
00cea559  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00cea55d  897c2430  MOV dword ptr [ESP + 0x30],EDI
00cea561  740b  JZ 0x00cea56e
00cea563  6a00  PUSH 0x0
00cea565  8d4c2434  LEA ECX,[ESP + 0x34]
00cea569  e8f2b180ff  CALL 0x004f5760
00cea56e  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00cea572  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00cea576  2bc8  SUB ECX,EAX
00cea578  83e1fe  AND ECX,0xfffffffe
00cea57b  83f902  CMP ECX,0x2
00cea57e  7e0d  JLE 0x00cea58d
00cea580  85c0  TEST EAX,EAX
00cea582  7409  JZ 0x00cea58d
00cea584  50  PUSH EAX
00cea585  e8569f7fff  CALL 0x004e44e0
00cea58a  83c404  ADD ESP,0x4
00cea58d  5f  POP EDI
00cea58e  8bc6  MOV EAX,ESI
00cea590  5e  POP ESI
00cea591  5b  POP EBX
00cea592  83c444  ADD ESP,0x44
00cea595  c3  RET

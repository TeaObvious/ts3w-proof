# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: UserToolUtils_GetObjectProductPresetIdListImpl
Paired actual annotated Ghidra pseudocode: 00CE6350_ScriptCore_UserToolUtils_UserToolUtils_GetObjectProductPresetIdListImpl.c
Owned ranges: [[00ce6350, 00ce646e]]
Envelope bytes=287

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00ce6350  83ec38  SUB ESP,0x38
00ce6353  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00ce6359  33c0  XOR EAX,EAX
00ce635b  85c9  TEST ECX,ECX
00ce635d  890424  MOV dword ptr [ESP],EAX
00ce6360  0f84f2000000  JZ 0x00ce6458
00ce6366  8b442440  MOV EAX,dword ptr [ESP + 0x40]
00ce636a  8b542444  MOV EDX,dword ptr [ESP + 0x44]
00ce636e  89442408  MOV dword ptr [ESP + 0x8],EAX
00ce6372  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00ce6376  89442410  MOV dword ptr [ESP + 0x10],EAX
00ce637a  55  PUSH EBP
00ce637b  89542410  MOV dword ptr [ESP + 0x10],EDX
00ce637f  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
00ce6383  8d44240c  LEA EAX,[ESP + 0xc]
00ce6387  50  PUSH EAX
00ce6388  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00ce638c  e81f88faff  CALL 0x00c8ebb0
00ce6391  8be8  MOV EBP,EAX
00ce6393  85ed  TEST EBP,EBP
00ce6395  0f84cb000000  JZ 0x00ce6466
00ce639b  57  PUSH EDI
00ce639c  8bcd  MOV ECX,EBP
00ce639e  e83d20fbff  CALL 0x00c983e0
00ce63a3  8bf8  MOV EDI,EAX
00ce63a5  e8e62fa8ff  CALL 0x00769390
00ce63aa  85ff  TEST EDI,EDI
00ce63ac  8944240c  MOV dword ptr [ESP + 0xc],EAX
00ce63b0  0f86a6000000  JBE 0x00ce645c
00ce63b6  85c0  TEST EAX,EAX
00ce63b8  0f849e000000  JZ 0x00ce645c
00ce63be  53  PUSH EBX
00ce63bf  6a00  PUSH 0x0
00ce63c1  8d0cbd00000000  LEA ECX,[EDI*0x4 + 0x0]
00ce63c8  51  PUSH ECX
00ce63c9  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00ce63cf  e84c0b80ff  CALL 0x004e6f20
00ce63d4  8bd8  MOV EBX,EAX
00ce63d6  85db  TEST EBX,EBX
00ce63d8  7477  JZ 0x00ce6451
00ce63da  56  PUSH ESI
00ce63db  33f6  XOR ESI,ESI
00ce63dd  85ff  TEST EDI,EDI
00ce63df  7612  JBE 0x00ce63f3
00ce63e1  56  PUSH ESI
00ce63e2  8bcd  MOV ECX,EBP
00ce63e4  e8271afbff  CALL 0x00c97e10
00ce63e9  8904b3  MOV dword ptr [EBX + ESI*0x4],EAX
00ce63ec  83c601  ADD ESI,0x1
00ce63ef  3bf7  CMP ESI,EDI
00ce63f1  72ee  JC 0x00ce63e1
00ce63f3  57  PUSH EDI
00ce63f4  6a04  PUSH 0x4
00ce63f6  53  PUSH EBX
00ce63f7  33c0  XOR EAX,EAX
00ce63f9  6a18  PUSH 0x18
00ce63fb  bef4a6fb00  MOV ESI,0xfba6f4
00ce6400  6a0a  PUSH 0xa
00ce6402  8d4c243c  LEA ECX,[ESP + 0x3c]
00ce6406  8974243c  MOV dword ptr [ESP + 0x3c],ESI
00ce640a  6689442444  MOV word ptr [ESP + 0x44],AX
00ce640f  6689442446  MOV word ptr [ESP + 0x46],AX
00ce6414  e8a7f580ff  CALL 0x004f59c0
00ce6419  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ce641d  8b11  MOV EDX,dword ptr [ECX]
00ce641f  8b5250  MOV EDX,dword ptr [EDX + 0x50]
00ce6422  8d442410  LEA EAX,[ESP + 0x10]
00ce6426  50  PUSH EAX
00ce6427  8d44242c  LEA EAX,[ESP + 0x2c]
00ce642b  50  PUSH EAX
00ce642c  ffd2  CALL EDX
00ce642e  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00ce6434  53  PUSH EBX
00ce6435  e836fa7fff  CALL 0x004e5e70
00ce643a  f644243004  TEST byte ptr [ESP + 0x30],0x4
00ce643f  89742428  MOV dword ptr [ESP + 0x28],ESI
00ce6443  5e  POP ESI
00ce6444  740b  JZ 0x00ce6451
00ce6446  6a00  PUSH 0x0
00ce6448  8d4c2428  LEA ECX,[ESP + 0x28]
00ce644c  e80ff380ff  CALL 0x004f5760
00ce6451  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ce6455  5b  POP EBX
00ce6456  5f  POP EDI
00ce6457  5d  POP EBP
00ce6458  83c438  ADD ESP,0x38
00ce645b  c3  RET
00ce645c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00ce6460  5f  POP EDI
00ce6461  5d  POP EBP
00ce6462  83c438  ADD ESP,0x38
00ce6465  c3  RET
00ce6466  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00ce646a  5d  POP EBP
00ce646b  83c438  ADD ESP,0x38
00ce646e  c3  RET
Owned instructions=96 owned bytes=287 nonowned bytes=0

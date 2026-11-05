# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete owned Ghidra Listing.
Signature: byte __thiscall SimComponent_WriteOutfitReferences(void * this, void * writer, void * keyContext)
Owned ranges: [[0094ef90, 0094f022]]

0094ef90  53  PUSH EBX
0094ef91  55  PUSH EBP
0094ef92  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
0094ef96  56  PUSH ESI
0094ef97  57  PUSH EDI
0094ef98  8bf9  MOV EDI,ECX
0094ef9a  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
0094ef9d  6a00  PUSH 0x0
0094ef9f  8d5f10  LEA EBX,[EDI + 0x10]
0094efa2  53  PUSH EBX
0094efa3  e8b884e8ff  CALL 0x007d7460
0094efa8  8b742414  MOV ESI,dword ptr [ESP + 0x14]
0094efac  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0094efaf  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0094efb2  0fb7c0  MOVZX EAX,AX
0094efb5  51  PUSH ECX
0094efb6  50  PUSH EAX
0094efb7  52  PUSH EDX
0094efb8  e8b3eeb8ff  CALL 0x004dde70
0094efbd  83c40c  ADD ESP,0xc
0094efc0  8bce  MOV ECX,ESI
0094efc2  50  PUSH EAX
0094efc3  e8288ae8ff  CALL 0x007d79f0
0094efc8  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
0094efcb  6a00  PUSH 0x0
0094efcd  8d6f20  LEA EBP,[EDI + 0x20]
0094efd0  55  PUSH EBP
0094efd1  e88a84e8ff  CALL 0x007d7460
0094efd6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
0094efd9  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0094efdc  0fb7c0  MOVZX EAX,AX
0094efdf  51  PUSH ECX
0094efe0  50  PUSH EAX
0094efe1  52  PUSH EDX
0094efe2  e889eeb8ff  CALL 0x004dde70
0094efe7  83c40c  ADD ESP,0xc
0094efea  8bce  MOV ECX,ESI
0094efec  50  PUSH EAX
0094efed  e8fe89e8ff  CALL 0x007d79f0
0094eff2  e8c9cac9ff  CALL 0x005ebac0
0094eff7  837f1800  CMP dword ptr [EDI + 0x18],0x0
0094effb  8bc8  MOV ECX,EAX
0094effd  894c2418  MOV dword ptr [ESP + 0x18],ECX
0094f001  740a  JZ 0x0094f00d
0094f003  53  PUSH EBX
0094f004  e837f4c9ff  CALL 0x005ee440
0094f009  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0094f00d  837f2800  CMP dword ptr [EDI + 0x28],0x0
0094f011  7406  JZ 0x0094f019
0094f013  55  PUSH EBP
0094f014  e827f4c9ff  CALL 0x005ee440
0094f019  8a4614  MOV AL,byte ptr [ESI + 0x14]
0094f01c  5f  POP EDI
0094f01d  5e  POP ESI
0094f01e  5d  POP EBP
0094f01f  5b  POP EBX
0094f020  c20800  RET 0x8

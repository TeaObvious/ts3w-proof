# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ResourceReferences_RegisterKey
Paired actual annotated Ghidra pseudocode: 007D7070_ResourceReferences_RegisterKey.c
Owned ranges: [[007d7070, 007d710c]]
Envelope bytes=157

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d7070  83ec24  SUB ESP,0x24
007d7073  55  PUSH EBP
007d7074  56  PUSH ESI
007d7075  57  PUSH EDI
007d7076  8b7c2434  MOV EDI,dword ptr [ESP + 0x34]
007d707a  57  PUSH EDI
007d707b  8d442410  LEA EAX,[ESP + 0x10]
007d707f  50  PUSH EAX
007d7080  8bf1  MOV ESI,ECX
007d7082  e85969e1ff  CALL 0x005ed9e0
007d7087  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d708a  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007d708d  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007d7091  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
007d7094  7405  JZ 0x007d709b
007d7096  8b6810  MOV EBP,dword ptr [EAX + 0x10]
007d7099  eb3d  JMP 0x007d70d8
007d709b  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
007d709e  8b07  MOV EAX,dword ptr [EDI]
007d70a0  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007d70a3  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
007d70a6  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007d70aa  89442418  MOV dword ptr [ESP + 0x18],EAX
007d70ae  8b470c  MOV EAX,dword ptr [EDI + 0xc]
007d70b1  c644243400  MOV byte ptr [ESP + 0x34],0x0
007d70b6  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
007d70ba  51  PUSH ECX
007d70bb  89542424  MOV dword ptr [ESP + 0x24],EDX
007d70bf  8d54241c  LEA EDX,[ESP + 0x1c]
007d70c3  89442428  MOV dword ptr [ESP + 0x28],EAX
007d70c7  52  PUSH EDX
007d70c8  8d442414  LEA EAX,[ESP + 0x14]
007d70cc  50  PUSH EAX
007d70cd  8bce  MOV ECX,ESI
007d70cf  896c2434  MOV dword ptr [ESP + 0x34],EBP
007d70d3  e8b897f2ff  CALL 0x00700890
007d70d8  807c243800  CMP byte ptr [ESP + 0x38],0x0
007d70dd  7423  JZ 0x007d7102
007d70df  0fb7cd  MOVZX ECX,BP
007d70e2  c644243800  MOV byte ptr [ESP + 0x38],0x0
007d70e7  8b542438  MOV EDX,dword ptr [ESP + 0x38]
007d70eb  52  PUSH EDX
007d70ec  894c2438  MOV dword ptr [ESP + 0x38],ECX
007d70f0  8d442438  LEA EAX,[ESP + 0x38]
007d70f4  50  PUSH EAX
007d70f5  8d4c2414  LEA ECX,[ESP + 0x14]
007d70f9  51  PUSH ECX
007d70fa  8d4e40  LEA ECX,[ESI + 0x40]
007d70fd  e85ef6ffff  CALL 0x007d6760
007d7102  5f  POP EDI
007d7103  5e  POP ESI
007d7104  8bc5  MOV EAX,EBP
007d7106  5d  POP EBP
007d7107  83c424  ADD ESP,0x24
007d710a  c20800  RET 0x8
Owned instructions=55 owned bytes=157 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairMap_Rehash
Paired actual annotated Ghidra pseudocode: 00C4B560_ModularStairMap_Rehash.c
Owned ranges: [[00c4b560, 00c4b5ac] [00c4b5b0, 00c4b614]]
Envelope bytes=181

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00c4b560  53  PUSH EBX
00c4b561  55  PUSH EBP
00c4b562  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
00c4b566  56  PUSH ESI
00c4b567  57  PUSH EDI
00c4b568  68e7000000  PUSH 0xe7
00c4b56d  688899f900  PUSH 0xf99988
00c4b572  8bf1  MOV ESI,ECX
00c4b574  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00c4b577  6a00  PUSH 0x0
00c4b579  6800004000  PUSH 0x400000
00c4b57e  8d3cad00000000  LEA EDI,[EBP*0x4 + 0x0]
00c4b585  50  PUSH EAX
00c4b586  8d4f04  LEA ECX,[EDI + 0x4]
00c4b589  51  PUSH ECX
00c4b58a  e8718f89ff  CALL 0x004e4500
00c4b58f  57  PUSH EDI
00c4b590  8bd8  MOV EBX,EAX
00c4b592  6a00  PUSH 0x0
00c4b594  53  PUSH EBX
00c4b595  e8fe3c3300  CALL 0x00f7f298
00c4b59a  c7041fffffffff  MOV dword ptr [EDI + EBX*0x1],0xffffffff
00c4b5a1  33ff  XOR EDI,EDI
00c4b5a3  83c424  ADD ESP,0x24
00c4b5a6  397e08  CMP dword ptr [ESI + 0x8],EDI
00c4b5a9  764b  JBE 0x00c4b5f6
00c4b5ab  eb03  JMP 0x00c4b5b0
00c4b5ad  8d  .byte (gap/alignment)
00c4b5ae  49  .byte (gap/alignment)
00c4b5af  00  .byte (gap/alignment)
00c4b5b0  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c4b5b3  8b0cba  MOV ECX,dword ptr [EDX + EDI*0x4]
00c4b5b6  85c9  TEST ECX,ECX
00c4b5b8  7430  JZ 0x00c4b5ea
00c4b5ba  8d9b00000000  LEA EBX,[EBX]
00c4b5c0  8b01  MOV EAX,dword ptr [ECX]
00c4b5c2  33d2  XOR EDX,EDX
00c4b5c4  f7742414  DIV dword ptr [ESP + 0x14]
00c4b5c8  8ba980000000  MOV EBP,dword ptr [ECX + 0x80]
00c4b5ce  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c4b5d1  892cb8  MOV dword ptr [EAX + EDI*0x4],EBP
00c4b5d4  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
00c4b5d7  898180000000  MOV dword ptr [ECX + 0x80],EAX
00c4b5dd  890c93  MOV dword ptr [EBX + EDX*0x4],ECX
00c4b5e0  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c4b5e3  8b0cb9  MOV ECX,dword ptr [ECX + EDI*0x4]
00c4b5e6  85c9  TEST ECX,ECX
00c4b5e8  75d6  JNZ 0x00c4b5c0
00c4b5ea  83c701  ADD EDI,0x1
00c4b5ed  3b7e08  CMP EDI,dword ptr [ESI + 0x8]
00c4b5f0  72be  JC 0x00c4b5b0
00c4b5f2  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00c4b5f6  837e0801  CMP dword ptr [ESI + 0x8],0x1
00c4b5fa  760c  JBE 0x00c4b608
00c4b5fc  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c4b5ff  52  PUSH EDX
00c4b600  e8db8e89ff  CALL 0x004e44e0
00c4b605  83c404  ADD ESP,0x4
00c4b608  5f  POP EDI
00c4b609  895e04  MOV dword ptr [ESI + 0x4],EBX
00c4b60c  896e08  MOV dword ptr [ESI + 0x8],EBP
00c4b60f  5e  POP ESI
00c4b610  5d  POP EBP
00c4b611  5b  POP EBX
00c4b612  c20400  RET 0x4
Owned instructions=62 owned bytes=178 gap/nonowned bytes=3

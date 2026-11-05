# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FireplaceGroups_Rehash(void * this, uint param_1)
Owned ranges: [[00c61bd0, 00c61c1c] [00c61c20, 00c61c7e]]

00c61bd0  53  PUSH EBX
00c61bd1  55  PUSH EBP
00c61bd2  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
00c61bd6  56  PUSH ESI
00c61bd7  57  PUSH EDI
00c61bd8  68e7000000  PUSH 0xe7
00c61bdd  688899f900  PUSH 0xf99988
00c61be2  8bf1  MOV ESI,ECX
00c61be4  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00c61be7  6a00  PUSH 0x0
00c61be9  6800004000  PUSH 0x400000
00c61bee  8d3cad00000000  LEA EDI,[EBP*0x4 + 0x0]
00c61bf5  50  PUSH EAX
00c61bf6  8d4f04  LEA ECX,[EDI + 0x4]
00c61bf9  51  PUSH ECX
00c61bfa  e8012988ff  CALL 0x004e4500
00c61bff  57  PUSH EDI
00c61c00  8bd8  MOV EBX,EAX
00c61c02  6a00  PUSH 0x0
00c61c04  53  PUSH EBX
00c61c05  e88ed63100  CALL 0x00f7f298
00c61c0a  c7041fffffffff  MOV dword ptr [EDI + EBX*0x1],0xffffffff
00c61c11  33ff  XOR EDI,EDI
00c61c13  83c424  ADD ESP,0x24
00c61c16  397e08  CMP dword ptr [ESI + 0x8],EDI
00c61c19  7645  JBE 0x00c61c60
00c61c1b  eb03  JMP 0x00c61c20
00c61c1d  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00c61c20  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c61c23  8b0cba  MOV ECX,dword ptr [EDX + EDI*0x4]
00c61c26  85c9  TEST ECX,ECX
00c61c28  742a  JZ 0x00c61c54
00c61c2a  8d9b00000000  LEA EBX,[EBX]
00c61c30  8b01  MOV EAX,dword ptr [ECX]
00c61c32  33d2  XOR EDX,EDX
00c61c34  f7742414  DIV dword ptr [ESP + 0x14]
00c61c38  8b6914  MOV EBP,dword ptr [ECX + 0x14]
00c61c3b  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c61c3e  892cb8  MOV dword ptr [EAX + EDI*0x4],EBP
00c61c41  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
00c61c44  894114  MOV dword ptr [ECX + 0x14],EAX
00c61c47  890c93  MOV dword ptr [EBX + EDX*0x4],ECX
00c61c4a  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00c61c4d  8b0cb9  MOV ECX,dword ptr [ECX + EDI*0x4]
00c61c50  85c9  TEST ECX,ECX
00c61c52  75dc  JNZ 0x00c61c30
00c61c54  83c701  ADD EDI,0x1
00c61c57  3b7e08  CMP EDI,dword ptr [ESI + 0x8]
00c61c5a  72c4  JC 0x00c61c20
00c61c5c  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00c61c60  837e0801  CMP dword ptr [ESI + 0x8],0x1
00c61c64  760c  JBE 0x00c61c72
00c61c66  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00c61c69  52  PUSH EDX
00c61c6a  e8712888ff  CALL 0x004e44e0
00c61c6f  83c404  ADD ESP,0x4
00c61c72  5f  POP EDI
00c61c73  895e04  MOV dword ptr [ESI + 0x4],EBX
00c61c76  896e08  MOV dword ptr [ESI + 0x8],EBP
00c61c79  5e  POP ESI
00c61c7a  5d  POP EBP
00c61c7b  5b  POP EBX
00c61c7c  c20400  RET 0x4

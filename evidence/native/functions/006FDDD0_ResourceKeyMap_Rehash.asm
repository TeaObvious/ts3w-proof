# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ResourceKeyMap_Rehash
Paired actual annotated Ghidra pseudocode: 006FDDD0_ResourceKeyMap_Rehash.c
Owned ranges: [[006fddd0, 006fde1c] [006fde20, 006fde81]]
Envelope bytes=178

GHIDRA LISTING (original bytes; nonowned alignment explicit)
006fddd0  53  PUSH EBX
006fddd1  55  PUSH EBP
006fddd2  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
006fddd6  56  PUSH ESI
006fddd7  57  PUSH EDI
006fddd8  68e7000000  PUSH 0xe7
006fdddd  688899f900  PUSH 0xf99988
006fdde2  8bf1  MOV ESI,ECX
006fdde4  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
006fdde7  6a00  PUSH 0x0
006fdde9  6800004000  PUSH 0x400000
006fddee  8d3cad00000000  LEA EDI,[EBP*0x4 + 0x0]
006fddf5  50  PUSH EAX
006fddf6  8d4f04  LEA ECX,[EDI + 0x4]
006fddf9  51  PUSH ECX
006fddfa  e80167deff  CALL 0x004e4500
006fddff  57  PUSH EDI
006fde00  8bd8  MOV EBX,EAX
006fde02  6a00  PUSH 0x0
006fde04  53  PUSH EBX
006fde05  e88e148800  CALL 0x00f7f298
006fde0a  c7041fffffffff  MOV dword ptr [EDI + EBX*0x1],0xffffffff
006fde11  33ff  XOR EDI,EDI
006fde13  83c424  ADD ESP,0x24
006fde16  397e08  CMP dword ptr [ESI + 0x8],EDI
006fde19  7648  JBE 0x006fde63
006fde1b  eb03  JMP 0x006fde20
006fde1d  8d  .byte (gap/alignment)
006fde1e  49  .byte (gap/alignment)
006fde1f  00  .byte (gap/alignment)
006fde20  8b5604  MOV EDX,dword ptr [ESI + 0x4]
006fde23  8b0cba  MOV ECX,dword ptr [EDX + EDI*0x4]
006fde26  85c9  TEST ECX,ECX
006fde28  742d  JZ 0x006fde57
006fde2a  8d9b00000000  LEA EBX,[EBX]
006fde30  8b410c  MOV EAX,dword ptr [ECX + 0xc]
006fde33  3301  XOR EAX,dword ptr [ECX]
006fde35  33d2  XOR EDX,EDX
006fde37  f7742414  DIV dword ptr [ESP + 0x14]
006fde3b  8b6918  MOV EBP,dword ptr [ECX + 0x18]
006fde3e  8b4604  MOV EAX,dword ptr [ESI + 0x4]
006fde41  892cb8  MOV dword ptr [EAX + EDI*0x4],EBP
006fde44  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
006fde47  894118  MOV dword ptr [ECX + 0x18],EAX
006fde4a  890c93  MOV dword ptr [EBX + EDX*0x4],ECX
006fde4d  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
006fde50  8b0cb9  MOV ECX,dword ptr [ECX + EDI*0x4]
006fde53  85c9  TEST ECX,ECX
006fde55  75d9  JNZ 0x006fde30
006fde57  83c701  ADD EDI,0x1
006fde5a  3b7e08  CMP EDI,dword ptr [ESI + 0x8]
006fde5d  72c1  JC 0x006fde20
006fde5f  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
006fde63  837e0801  CMP dword ptr [ESI + 0x8],0x1
006fde67  760c  JBE 0x006fde75
006fde69  8b5604  MOV EDX,dword ptr [ESI + 0x4]
006fde6c  52  PUSH EDX
006fde6d  e86e66deff  CALL 0x004e44e0
006fde72  83c404  ADD ESP,0x4
006fde75  5f  POP EDI
006fde76  895e04  MOV dword ptr [ESI + 0x4],EBX
006fde79  896e08  MOV dword ptr [ESI + 0x8],EBP
006fde7c  5e  POP ESI
006fde7d  5d  POP EBP
006fde7e  5b  POP EBX
006fde7f  c20400  RET 0x4
Owned instructions=63 owned bytes=175 gap/nonowned bytes=3

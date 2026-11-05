# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: UInt32PayloadMap_Rehash
Paired actual annotated Ghidra pseudocode: 00865260_UInt32PayloadMap_Rehash.c
Owned ranges: [[00865260, 008652ac] [008652b0, 0086530e]]
Envelope bytes=175

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00865260  53  PUSH EBX
00865261  55  PUSH EBP
00865262  8b6c240c  MOV EBP,dword ptr [ESP + 0xc]
00865266  56  PUSH ESI
00865267  57  PUSH EDI
00865268  68e7000000  PUSH 0xe7
0086526d  688899f900  PUSH 0xf99988
00865272  8bf1  MOV ESI,ECX
00865274  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00865277  6a00  PUSH 0x0
00865279  6800004000  PUSH 0x400000
0086527e  8d3cad00000000  LEA EDI,[EBP*0x4 + 0x0]
00865285  50  PUSH EAX
00865286  8d4f04  LEA ECX,[EDI + 0x4]
00865289  51  PUSH ECX
0086528a  e871f2c7ff  CALL 0x004e4500
0086528f  57  PUSH EDI
00865290  8bd8  MOV EBX,EAX
00865292  6a00  PUSH 0x0
00865294  53  PUSH EBX
00865295  e8fe9f7100  CALL 0x00f7f298
0086529a  c7041fffffffff  MOV dword ptr [EDI + EBX*0x1],0xffffffff
008652a1  33ff  XOR EDI,EDI
008652a3  83c424  ADD ESP,0x24
008652a6  397e08  CMP dword ptr [ESI + 0x8],EDI
008652a9  7645  JBE 0x008652f0
008652ab  eb03  JMP 0x008652b0
008652ad  8d  .byte (gap/alignment)
008652ae  49  .byte (gap/alignment)
008652af  00  .byte (gap/alignment)
008652b0  8b5604  MOV EDX,dword ptr [ESI + 0x4]
008652b3  8b0cba  MOV ECX,dword ptr [EDX + EDI*0x4]
008652b6  85c9  TEST ECX,ECX
008652b8  742a  JZ 0x008652e4
008652ba  8d9b00000000  LEA EBX,[EBX]
008652c0  8b01  MOV EAX,dword ptr [ECX]
008652c2  33d2  XOR EDX,EDX
008652c4  f7742414  DIV dword ptr [ESP + 0x14]
008652c8  8b6908  MOV EBP,dword ptr [ECX + 0x8]
008652cb  8b4604  MOV EAX,dword ptr [ESI + 0x4]
008652ce  892cb8  MOV dword ptr [EAX + EDI*0x4],EBP
008652d1  8b0493  MOV EAX,dword ptr [EBX + EDX*0x4]
008652d4  894108  MOV dword ptr [ECX + 0x8],EAX
008652d7  890c93  MOV dword ptr [EBX + EDX*0x4],ECX
008652da  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
008652dd  8b0cb9  MOV ECX,dword ptr [ECX + EDI*0x4]
008652e0  85c9  TEST ECX,ECX
008652e2  75dc  JNZ 0x008652c0
008652e4  83c701  ADD EDI,0x1
008652e7  3b7e08  CMP EDI,dword ptr [ESI + 0x8]
008652ea  72c4  JC 0x008652b0
008652ec  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
008652f0  837e0801  CMP dword ptr [ESI + 0x8],0x1
008652f4  760c  JBE 0x00865302
008652f6  8b5604  MOV EDX,dword ptr [ESI + 0x4]
008652f9  52  PUSH EDX
008652fa  e8e1f1c7ff  CALL 0x004e44e0
008652ff  83c404  ADD ESP,0x4
00865302  5f  POP EDI
00865303  895e04  MOV dword ptr [ESI + 0x4],EBX
00865306  896e08  MOV dword ptr [ESI + 0x8],EBP
00865309  5e  POP ESI
0086530a  5d  POP EBP
0086530b  5b  POP EBX
0086530c  c20400  RET 0x4
Owned instructions=62 owned bytes=172 gap/nonowned bytes=3

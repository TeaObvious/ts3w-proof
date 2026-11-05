# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ContentManager_ImportContentIntoLot
Paired actual annotated Ghidra pseudocode: 00AD4180_ContentManager_ImportContentIntoLot.c
Owned ranges: [[00ad4180, 00ad4264]]
Envelope bytes=229

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00ad4180  83ec14  SUB ESP,0x14
00ad4183  56  PUSH ESI
00ad4184  8bf1  MOV ESI,ECX
00ad4186  8d44241c  LEA EAX,[ESP + 0x1c]
00ad418a  50  PUSH EAX
00ad418b  8d4c2408  LEA ECX,[ESP + 0x8]
00ad418f  51  PUSH ECX
00ad4190  8d4e14  LEA ECX,[ESI + 0x14]
00ad4193  e8d8fb1200  CALL 0x00c03d70
00ad4198  83c618  ADD ESI,0x18
00ad419b  3930  CMP dword ptr [EAX],ESI
00ad419d  7509  JNZ 0x00ad41a8
00ad419f  32c0  XOR AL,AL
00ad41a1  5e  POP ESI
00ad41a2  83c414  ADD ESP,0x14
00ad41a5  c22000  RET 0x20
00ad41a8  8b742434  MOV ESI,dword ptr [ESP + 0x34]
00ad41ac  8b0da4a61e01  MOV ECX,dword ptr [0x011ea6a4]
00ad41b2  57  PUSH EDI
00ad41b3  8b3dc4db1e01  MOV EDI,dword ptr [0x011edbc4]
00ad41b9  56  PUSH ESI
00ad41ba  e821d5ecff  CALL 0x009a16e0
00ad41bf  84c0  TEST AL,AL
00ad41c1  741b  JZ 0x00ad41de
00ad41c3  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00ad41c7  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00ad41cb  6a00  PUSH 0x0
00ad41cd  52  PUSH EDX
00ad41ce  50  PUSH EAX
00ad41cf  8bcf  MOV ECX,EDI
00ad41d1  e83ae61800  CALL 0x00c62810
00ad41d6  85c0  TEST EAX,EAX
00ad41d8  89442438  MOV dword ptr [ESP + 0x38],EAX
00ad41dc  750a  JNZ 0x00ad41e8
00ad41de  5f  POP EDI
00ad41df  32c0  XOR AL,AL
00ad41e1  5e  POP ESI
00ad41e2  83c414  ADD ESP,0x14
00ad41e5  c22000  RET 0x20
00ad41e8  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00ad41ec  55  PUSH EBP
00ad41ed  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00ad41f1  6a00  PUSH 0x0
00ad41f3  8d542414  LEA EDX,[ESP + 0x14]
00ad41f7  894c2418  MOV dword ptr [ESP + 0x18],ECX
00ad41fb  52  PUSH EDX
00ad41fc  8bce  MOV ECX,ESI
00ad41fe  896c2418  MOV dword ptr [ESP + 0x18],EBP
00ad4202  c7442420e7b01106  MOV dword ptr [ESP + 0x20],0x611b0e7
00ad420a  c744242400000000  MOV dword ptr [ESP + 0x24],0x0
00ad4212  e8a942d0ff  CALL 0x007d84c0
00ad4217  84c0  TEST AL,AL
00ad4219  741b  JZ 0x00ad4236
00ad421b  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
00ad421f  53  PUSH EBX
00ad4220  56  PUSH ESI
00ad4221  8bcf  MOV ECX,EDI
00ad4223  e83813e6ff  CALL 0x00935560
00ad4228  8bce  MOV ECX,ESI
00ad422a  8ad8  MOV BL,AL
00ad422c  e83f38d0ff  CALL 0x007d7a70
00ad4231  84db  TEST BL,BL
00ad4233  5b  POP EBX
00ad4234  750b  JNZ 0x00ad4241
00ad4236  5d  POP EBP
00ad4237  5f  POP EDI
00ad4238  32c0  XOR AL,AL
00ad423a  5e  POP ESI
00ad423b  83c414  ADD ESP,0x14
00ad423e  c22000  RET 0x20
00ad4241  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00ad4245  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
00ad4249  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00ad424d  57  PUSH EDI
00ad424e  50  PUSH EAX
00ad424f  51  PUSH ECX
00ad4250  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00ad4254  52  PUSH EDX
00ad4255  55  PUSH EBP
00ad4256  56  PUSH ESI
00ad4257  e8b493ffff  CALL 0x00acd610
00ad425c  5d  POP EBP
00ad425d  5f  POP EDI
00ad425e  5e  POP ESI
00ad425f  83c414  ADD ESP,0x14
00ad4262  c22000  RET 0x20
Owned instructions=86 owned bytes=229 nonowned bytes=0

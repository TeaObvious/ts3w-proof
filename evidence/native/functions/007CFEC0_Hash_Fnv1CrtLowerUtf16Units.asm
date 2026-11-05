# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe; complete existing owned Listing paired with actual annotated getC.
Analyst name: Hash_Fnv1CrtLowerUtf16Units
Owned ranges: [[007cfec0, 007cfedc] [007cfee0, 007cff04]]; nonowned7CFEDD..7CFEDF gap excluded.
007cfec0  56  PUSH ESI
007cfec1  57  PUSH EDI
007cfec2  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
007cfec6  85ff  TEST EDI,EDI
007cfec8  bec59d1c81  MOV ESI,0x811c9dc5
007cfecd  7431  JZ 0x007cff00
007cfecf  53  PUSH EBX
007cfed0  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
007cfed4  55  PUSH EBP
007cfed5  8b2d6867f900  MOV EBP,dword ptr [0x00f96768]
007cfedb  eb03  JMP 0x007cfee0
007cfee0  0fb703  MOVZX EAX,word ptr [EBX]
007cfee3  50  PUSH EAX
007cfee4  83ef01  SUB EDI,0x1
007cfee7  ffd5  CALL EBP
007cfee9  69f693010001  IMUL ESI,ESI,0x1000193
007cfeef  0fb7c0  MOVZX EAX,AX
007cfef2  83c404  ADD ESP,0x4
007cfef5  33f0  XOR ESI,EAX
007cfef7  83c302  ADD EBX,0x2
007cfefa  85ff  TEST EDI,EDI
007cfefc  75e2  JNZ 0x007cfee0
007cfefe  5d  POP EBP
007cfeff  5b  POP EBX
007cff00  5f  POP EDI
007cff01  8bc6  MOV EAX,ESI
007cff03  5e  POP ESI
007cff04  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name LayoutXml_ReadGraph
Owned ranges: [[0054bef0, 0054bfb2]]
Signature: bool __thiscall LayoutXml_ReadGraph(void)
Physical ABI: ECX reader; no stack words; AL success only; plain RET. Current uint return includes meaningless high bytes.

0054bef0  51  PUSH ECX
0054bef1  55  PUSH EBP
0054bef2  56  PUSH ESI
0054bef3  8be9  MOV EBP,ECX
0054bef5  57  PUSH EDI
0054bef6  8dbd98000000  LEA EDI,[EBP + 0x98]
0054befc  8bcf  MOV ECX,EDI
0054befe  e84d52f2ff  CALL 0x00471150
0054bf03  84c0  TEST AL,AL
0054bf05  747f  JZ 0x0054bf86
0054bf07  8bcf  MOV ECX,EDI
0054bf09  e82250f2ff  CALL 0x00470f30
0054bf0e  83f801  CMP EAX,0x1
0054bf11  8bcf  MOV ECX,EDI
0054bf13  755c  JNZ 0x0054bf71
0054bf15  be881ffc00  MOV ESI,0xfc1f88
0054bf1a  e83150f2ff  CALL 0x00470f50 ; Every immediate graph start element must have lexical name object.
0054bf1f  90  NOP
0054bf20  668b08  MOV CX,word ptr [EAX]
0054bf23  663b0e  CMP CX,word ptr [ESI]
0054bf26  751e  JNZ 0x0054bf46
0054bf28  6685c9  TEST CX,CX
0054bf2b  7415  JZ 0x0054bf42
0054bf2d  668b4802  MOV CX,word ptr [EAX + 0x2]
0054bf31  663b4e02  CMP CX,word ptr [ESI + 0x2]
0054bf35  750f  JNZ 0x0054bf46
0054bf37  83c004  ADD EAX,0x4
0054bf3a  83c604  ADD ESI,0x4
0054bf3d  6685c9  TEST CX,CX
0054bf40  75de  JNZ 0x0054bf20
0054bf42  33c0  XOR EAX,EAX
0054bf44  eb05  JMP 0x0054bf4b
0054bf46  1bc0  SBB EAX,EAX
0054bf48  83d8ff  SBB EAX,-0x1
0054bf4b  85c0  TEST EAX,EAX
0054bf4d  8bcd  MOV ECX,EBP
0054bf4f  754a  JNZ 0x0054bf9b
0054bf51  8944240c  MOV dword ptr [ESP + 0xc],EAX
0054bf55  8d44240c  LEA EAX,[ESP + 0xc]
0054bf59  50  PUSH EAX ; Pass address of local UInt32 object-ID output to54BD80; do not discard this physical argument.
0054bf5a  e821feffff  CALL 0x0054bd80
0054bf5f  85c0  TEST EAX,EAX
0054bf61  7431  JZ 0x0054bf94
0054bf63  8b8d88000000  MOV ECX,dword ptr [EBP + 0x88]
0054bf69  50  PUSH EAX
0054bf6a  e851e0ffff  CALL 0x00549fc0 ; Append each successfully created object in encounter order.
0054bf6f  eb0a  JMP 0x0054bf7b
0054bf71  e8ba4ff2ff  CALL 0x00470f30
0054bf76  83f802  CMP EAX,0x2
0054bf79  7431  JZ 0x0054bfac ; Immediate end-element is accepted even before a child object; native empty graph acceptance is separate from hosted empty-publication guard.
0054bf7b  8bcf  MOV ECX,EDI
0054bf7d  e8ce51f2ff  CALL 0x00471150
0054bf82  84c0  TEST AL,AL
0054bf84  7581  JNZ 0x0054bf07
0054bf86  8b8da0000000  MOV ECX,dword ptr [EBP + 0xa0]
0054bf8c  51  PUSH ECX
0054bf8d  8bcd  MOV ECX,EBP
0054bf8f  e89ceaffff  CALL 0x0054aa30
0054bf94  5f  POP EDI
0054bf95  5e  POP ESI
0054bf96  32c0  XOR AL,AL
0054bf98  5d  POP EBP
0054bf99  59  POP ECX
0054bf9a  c3  RET
0054bf9b  680100c52f  PUSH 0x2fc50001
0054bfa0  e88beaffff  CALL 0x0054aa30
0054bfa5  5f  POP EDI
0054bfa6  5e  POP ESI
0054bfa7  32c0  XOR AL,AL
0054bfa9  5d  POP EBP
0054bfaa  59  POP ECX
0054bfab  c3  RET
0054bfac  5f  POP EDI
0054bfad  5e  POP ESI
0054bfae  b001  MOV AL,0x1
0054bfb0  5d  POP EBP
0054bfb1  59  POP ECX
0054bfb2  c3  RET

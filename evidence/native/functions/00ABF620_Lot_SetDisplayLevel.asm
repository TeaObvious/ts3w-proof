# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete current Ghidra function envelope.
Analyst name: Lot_SetDisplayLevel
Paired actual annotated Ghidra pseudocode: 00ABF620_Lot_SetDisplayLevel.c
Owned body: [[00abf620, 00abf6d7] [00abf6e0, 00abf844]]
Envelope bytes=549

GHIDRA LISTING (actual current owned instructions; current memory nonowned bytes explicit)
00abf620  53  PUSH EBX
00abf621  56  PUSH ESI
00abf622  8bf1  MOV ESI,ECX
00abf624  8b8680010000  MOV EAX,dword ptr [ESI + 0x180]
00abf62a  57  PUSH EDI
00abf62b  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00abf62f  3bf8  CMP EDI,EAX
00abf631  7e2a  JLE 0x00abf65d
00abf633  8b8eac020000  MOV ECX,dword ptr [ESI + 0x2ac]
00abf639  85c9  TEST ECX,ECX
00abf63b  8d5801  LEA EBX,[EAX + 0x1]
00abf63e  7417  JZ 0x00abf657
00abf640  807c241800  CMP byte ptr [ESP + 0x18],0x0
00abf645  7410  JZ 0x00abf657
00abf647  50  PUSH EAX
00abf648  e843500d00  CALL 0x00b94690
00abf64d  84c0  TEST AL,AL
00abf64f  7506  JNZ 0x00abf657
00abf651  8b9e80010000  MOV EBX,dword ptr [ESI + 0x180]
00abf657  3bfb  CMP EDI,EBX
00abf659  7e02  JLE 0x00abf65d
00abf65b  8bfb  MOV EDI,EBX
00abf65d  8b867c010000  MOV EAX,dword ptr [ESI + 0x17c]
00abf663  3bf8  CMP EDI,EAX
00abf665  0f4cf8  CMOVL EDI,EAX
00abf668  8b869c030000  MOV EAX,dword ptr [ESI + 0x39c]
00abf66e  3bf8  CMP EDI,EAX
00abf670  750d  JNZ 0x00abf67f
00abf672  807c241400  CMP byte ptr [ESP + 0x14],0x0
00abf677  0f84be010000  JZ 0x00abf83b
00abf67d  3bf8  CMP EDI,EAX
00abf67f  7d24  JGE 0x00abf6a5
00abf681  e84aa5eaff  CALL 0x00969bd0
00abf686  8bc8  MOV ECX,EAX
00abf688  e863294600  CALL 0x00f21ff0
00abf68d  85c0  TEST EAX,EAX
00abf68f  7414  JZ 0x00abf6a5
00abf691  8bc8  MOV ECX,EAX
00abf693  e84847a5ff  CALL 0x00513de0
00abf698  85c0  TEST EAX,EAX
00abf69a  7409  JZ 0x00abf6a5
00abf69c  8b10  MOV EDX,dword ptr [EAX]
00abf69e  8bc8  MOV ECX,EAX
00abf6a0  8b4254  MOV EAX,dword ptr [EDX + 0x54]
00abf6a3  ffd0  CALL EAX
00abf6a5  55  PUSH EBP
00abf6a6  89be9c030000  MOV dword ptr [ESI + 0x39c],EDI
00abf6ac  e8af77bcff  CALL 0x00686e60
00abf6b1  8b8e9c030000  MOV ECX,dword ptr [ESI + 0x39c]
00abf6b7  2b8e7c010000  SUB ECX,dword ptr [ESI + 0x17c]
00abf6bd  8be8  MOV EBP,EAX
00abf6bf  8b8684010000  MOV EAX,dword ptr [ESI + 0x184]
00abf6c5  83c001  ADD EAX,0x1
00abf6c8  33ff  XOR EDI,EDI
00abf6ca  85c0  TEST EAX,EAX
00abf6cc  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00abf6d0  89442414  MOV dword ptr [ESP + 0x14],EAX
00abf6d4  7e65  JLE 0x00abf73b
00abf6d6  eb0c  JMP 0x00abf6e4
00abf6d8  eb  .byte nonowned gap
00abf6d9  06  .byte nonowned gap
00abf6da  8d  .byte nonowned gap
00abf6db  9b  .byte nonowned gap
00abf6dc  00  .byte nonowned gap
00abf6dd  00  .byte nonowned gap
00abf6de  00  .byte nonowned gap
00abf6df  00  .byte nonowned gap
00abf6e0  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00abf6e4  8b8678030000  MOV EAX,dword ptr [ESI + 0x378]
00abf6ea  8b9e84030000  MOV EBX,dword ptr [ESI + 0x384]
00abf6f0  3bf9  CMP EDI,ECX
00abf6f2  8b8e7c030000  MOV ECX,dword ptr [ESI + 0x37c]
00abf6f8  7f04  JG 0x00abf6fe
00abf6fa  6a01  PUSH 0x1
00abf6fc  eb02  JMP 0x00abf700
00abf6fe  6a00  PUSH 0x0
00abf700  2bc1  SUB EAX,ECX
00abf702  c1f802  SAR EAX,0x2
00abf705  03c7  ADD EAX,EDI
00abf707  8bc8  MOV ECX,EAX
00abf709  8d8100000001  LEA EAX,[ECX + 0x1000000]
00abf70f  99  CDQ
00abf710  83e23f  AND EDX,0x3f
00abf713  03c2  ADD EAX,EDX
00abf715  c1f806  SAR EAX,0x6
00abf718  2d00000400  SUB EAX,0x40000
00abf71d  8bd0  MOV EDX,EAX
00abf71f  8b0483  MOV EAX,dword ptr [EBX + EAX*0x4]
00abf722  c1e206  SHL EDX,0x6
00abf725  2bca  SUB ECX,EDX
00abf727  8b0c88  MOV ECX,dword ptr [EAX + ECX*0x4]
00abf72a  51  PUSH ECX
00abf72b  8bcd  MOV ECX,EBP
00abf72d  e8ce77bcff  CALL 0x00686f00
00abf732  83c701  ADD EDI,0x1
00abf735  3b7c2414  CMP EDI,dword ptr [ESP + 0x14]
00abf739  7ca5  JL 0x00abf6e0
00abf73b  807c242000  CMP byte ptr [ESP + 0x20],0x0
00abf740  5d  POP EBP
00abf741  0f85f4000000  JNZ 0x00abf83b
00abf747  8b7e14  MOV EDI,dword ptr [ESI + 0x14]
00abf74a  8b5e18  MOV EBX,dword ptr [ESI + 0x18]
00abf74d  3bfb  CMP EDI,EBX
00abf74f  7415  JZ 0x00abf766
00abf751  8b17  MOV EDX,dword ptr [EDI]
00abf753  6a00  PUSH 0x0
00abf755  6a00  PUSH 0x0
00abf757  52  PUSH EDX
00abf758  8bce  MOV ECX,ESI
00abf75a  e891f2ffff  CALL 0x00abe9f0
00abf75f  83c704  ADD EDI,0x4
00abf762  3bfb  CMP EDI,EBX
00abf764  75eb  JNZ 0x00abf751
00abf766  8b869c030000  MOV EAX,dword ptr [ESI + 0x39c]
00abf76c  85c0  TEST EAX,EAX
00abf76e  8b8ee8020000  MOV ECX,dword ptr [ESI + 0x2e8]
00abf774  7c22  JL 0x00abf798
00abf776  803d99c41e0100  CMP byte ptr [0x011ec499],0x0
00abf77d  7519  JNZ 0x00abf798
00abf77f  8a96c2000000  MOV DL,byte ptr [ESI + 0xc2]
00abf785  84d2  TEST DL,DL
00abf787  7506  JNZ 0x00abf78f
00abf789  8b8680010000  MOV EAX,dword ptr [ESI + 0x180]
00abf78f  50  PUSH EAX
00abf790  51  PUSH ECX
00abf791  8bce  MOV ECX,ESI
00abf793  e8c83affff  CALL 0x00ab3260
00abf798  6a10  PUSH 0x10
00abf79a  e8b1f90100  CALL 0x00adf150
00abf79f  83c404  ADD ESP,0x4
00abf7a2  85c0  TEST EAX,EAX
00abf7a4  0f8497000000  JZ 0x00abf841
00abf7aa  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abf7b0  33c9  XOR ECX,ECX
00abf7b2  8d5004  LEA EDX,[EAX + 0x4]
00abf7b5  870a  XCHG dword ptr [EDX],ECX
00abf7b7  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abf7bd  8b10  MOV EDX,dword ptr [EAX]
00abf7bf  8bf8  MOV EDI,EAX
00abf7c1  8bc8  MOV ECX,EAX
00abf7c3  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00abf7c6  ffd0  CALL EAX
00abf7c8  8b8e9c030000  MOV ECX,dword ptr [ESI + 0x39c]
00abf7ce  8a542414  MOV DL,byte ptr [ESP + 0x14]
00abf7d2  894f08  MOV dword ptr [EDI + 0x8],ECX
00abf7d5  88570c  MOV byte ptr [EDI + 0xc],DL
00abf7d8  80bec900000000  CMP byte ptr [ESI + 0xc9],0x0
00abf7df  752a  JNZ 0x00abf80b
00abf7e1  83be6403000000  CMP dword ptr [ESI + 0x364],0x0
00abf7e8  7421  JZ 0x00abf80b
00abf7ea  e801cd98ff  CALL 0x0044c4f0
00abf7ef  85c0  TEST EAX,EAX
00abf7f1  7418  JZ 0x00abf80b
00abf7f3  8b8e64030000  MOV ECX,dword ptr [ESI + 0x364]
00abf7f9  8b10  MOV EDX,dword ptr [EAX]
00abf7fb  8b521c  MOV EDX,dword ptr [EDX + 0x1c]
00abf7fe  51  PUSH ECX
00abf7ff  6a00  PUSH 0x0
00abf801  57  PUSH EDI
00abf802  68bb761f04  PUSH 0x41f76bb
00abf807  8bc8  MOV ECX,EAX
00abf809  ffd2  CALL EDX
00abf80b  8b464c  MOV EAX,dword ptr [ESI + 0x4c]
00abf80e  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00abf811  50  PUSH EAX
00abf812  51  PUSH ECX
00abf813  e8482ccdff  CALL 0x00792460
00abf818  83c408  ADD ESP,0x8
00abf81b  e8e0fc2200  CALL 0x00cef500
00abf820  85c0  TEST EAX,EAX
00abf822  740e  JZ 0x00abf832
00abf824  8b969c030000  MOV EDX,dword ptr [ESI + 0x39c]
00abf82a  52  PUSH EDX
00abf82b  8bc8  MOV ECX,EAX
00abf82d  e8ceff2200  CALL 0x00cef800
00abf832  8b07  MOV EAX,dword ptr [EDI]
00abf834  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00abf837  8bcf  MOV ECX,EDI
00abf839  ffd2  CALL EDX
00abf83b  5f  POP EDI
00abf83c  5e  POP ESI
00abf83d  5b  POP EBX
00abf83e  c21000  RET 0x10
00abf841  33ff  XOR EDI,EDI
00abf843  eb83  JMP 0x00abf7c8

Owned instructions=177 owned bytes=541 nonowned bytes=8

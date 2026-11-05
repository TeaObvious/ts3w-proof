# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name LayoutXml_ReadObjectProperties
Owned ranges: [[0054bc00, 0054bd7d]]
Signature: bool __thiscall LayoutXml_ReadObjectProperties(void * propertyContext, void * pendingReferences)
Physical ABI: ECX reader; stack+4 property context pointer,+8 pending-reference list pointer; AL success only; RET8.

0054bc00  51  PUSH ECX
0054bc01  53  PUSH EBX
0054bc02  57  PUSH EDI
0054bc03  8bf9  MOV EDI,ECX
0054bc05  8d9f98000000  LEA EBX,[EDI + 0x98]
0054bc0b  8bcb  MOV ECX,EBX
0054bc0d  e83e55f2ff  CALL 0x00471150
0054bc12  84c0  TEST AL,AL
0054bc14  753f  JNZ 0x0054bc55
0054bc16  837f5000  CMP dword ptr [EDI + 0x50],0x0
0054bc1a  8b87a0000000  MOV EAX,dword ptr [EDI + 0xa0]
0054bc20  89475c  MOV dword ptr [EDI + 0x5c],EAX
0054bc23  7428  JZ 0x0054bc4d
0054bc25  8b4f54  MOV ECX,dword ptr [EDI + 0x54]
0054bc28  51  PUSH ECX
0054bc29  8bcb  MOV ECX,EBX
0054bc2b  e8c052f2ff  CALL 0x00470ef0
0054bc30  50  PUSH EAX
0054bc31  8bcb  MOV ECX,EBX
0054bc33  e89852f2ff  CALL 0x00470ed0
0054bc38  50  PUSH EAX
0054bc39  8bcb  MOV ECX,EBX
0054bc3b  e8c048ecff  CALL 0x00410500
0054bc40  8b575c  MOV EDX,dword ptr [EDI + 0x5c]
0054bc43  50  PUSH EAX
0054bc44  8b4750  MOV EAX,dword ptr [EDI + 0x50]
0054bc47  52  PUSH EDX
0054bc48  ffd0  CALL EAX
0054bc4a  83c414  ADD ESP,0x14
0054bc4d  5f  POP EDI
0054bc4e  32c0  XOR AL,AL
0054bc50  5b  POP EBX
0054bc51  59  POP ECX
0054bc52  c20800  RET 0x8
0054bc55  56  PUSH ESI
0054bc56  8bcb  MOV ECX,EBX
0054bc58  e8d352f2ff  CALL 0x00470f30
0054bc5d  83f801  CMP EAX,0x1
0054bc60  8bcb  MOV ECX,EBX
0054bc62  0f859d000000  JNZ 0x0054bd05
0054bc68  beb420fc00  MOV ESI,0xfc20b4
0054bc6d  e8de52f2ff  CALL 0x00470f50 ; Immediate start-element raw lexical name is compared exactly to prop; unknown child reports2FC50001.
0054bc72  668b08  MOV CX,word ptr [EAX]
0054bc75  663b0e  CMP CX,word ptr [ESI]
0054bc78  751e  JNZ 0x0054bc98
0054bc7a  6685c9  TEST CX,CX
0054bc7d  7415  JZ 0x0054bc94
0054bc7f  668b4802  MOV CX,word ptr [EAX + 0x2]
0054bc83  663b4e02  CMP CX,word ptr [ESI + 0x2]
0054bc87  750f  JNZ 0x0054bc98
0054bc89  83c004  ADD EAX,0x4
0054bc8c  83c604  ADD ESI,0x4
0054bc8f  6685c9  TEST CX,CX
0054bc92  75de  JNZ 0x0054bc72
0054bc94  33c0  XOR EAX,EAX
0054bc96  eb05  JMP 0x0054bc9d
0054bc98  1bc0  SBB EAX,EAX
0054bc9a  83d8ff  SBB EAX,-0x1
0054bc9d  85c0  TEST EAX,EAX
0054bc9f  0f85bb000000  JNZ 0x0054bd60
0054bca5  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0054bca9  8b7738  MOV ESI,dword ptr [EDI + 0x38]
0054bcac  8d4c240c  LEA ECX,[ESP + 0xc]
0054bcb0  51  PUSH ECX
0054bcb1  52  PUSH EDX
0054bcb2  8bcf  MOV ECX,EDI
0054bcb4  89442414  MOV dword ptr [ESP + 0x14],EAX
0054bcb8  e843f9ffff  CALL 0x0054b600 ; Delegate selected prop body to54B600 with caller property context and output descriptor; subordinate grammar is a separate contract.
0054bcbd  84c0  TEST AL,AL
0054bcbf  7474  JZ 0x0054bd35
0054bcc1  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0054bcc5  85c0  TEST EAX,EAX
0054bcc7  7419  JZ 0x0054bce2
0054bcc9  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0054bccd  8b5104  MOV EDX,dword ptr [ECX + 0x4]
0054bcd0  895004  MOV dword ptr [EAX + 0x4],EDX ; Link nonnull returned pending descriptor into supplied list; already-applied descriptor writes are not rolled back.
0054bcd3  8908  MOV dword ptr [EAX],ECX
0054bcd5  894104  MOV dword ptr [ECX + 0x4],EAX
0054bcd8  8b4804  MOV ECX,dword ptr [EAX + 0x4]
0054bcdb  8901  MOV dword ptr [ECX],EAX
0054bcdd  e974ffffff  JMP 0x0054bc56
0054bce2  3b7730  CMP ESI,dword ptr [EDI + 0x30]
0054bce5  8d4f2c  LEA ECX,[EDI + 0x2c]
0054bce8  7610  JBE 0x0054bcfa
0054bcea  3b7108  CMP ESI,dword ptr [ECX + 0x8]
0054bced  730b  JNC 0x0054bcfa
0054bcef  89710c  MOV dword ptr [ECX + 0xc],ESI
0054bcf2  897110  MOV dword ptr [ECX + 0x10],ESI
0054bcf5  e95cffffff  JMP 0x0054bc56
0054bcfa  56  PUSH ESI
0054bcfb  e820cff9ff  CALL 0x004e8c20
0054bd00  e951ffffff  JMP 0x0054bc56
0054bd05  e82652f2ff  CALL 0x00470f30
0054bd0a  83f802  CMP EAX,0x2
0054bd0d  7466  JZ 0x0054bd75
0054bd0f  8bcb  MOV ECX,EBX
0054bd11  e83a54f2ff  CALL 0x00471150
0054bd16  84c0  TEST AL,AL
0054bd18  0f8538ffffff  JNZ 0x0054bc56
0054bd1e  8b97a0000000  MOV EDX,dword ptr [EDI + 0xa0]
0054bd24  52  PUSH EDX
0054bd25  8bcf  MOV ECX,EDI
0054bd27  e804edffff  CALL 0x0054aa30
0054bd2c  5e  POP ESI
0054bd2d  5f  POP EDI
0054bd2e  32c0  XOR AL,AL
0054bd30  5b  POP EBX
0054bd31  59  POP ECX
0054bd32  c20800  RET 0x8
0054bd35  3b7730  CMP ESI,dword ptr [EDI + 0x30]
0054bd38  8d4f2c  LEA ECX,[EDI + 0x2c]
0054bd3b  7614  JBE 0x0054bd51
0054bd3d  3b7108  CMP ESI,dword ptr [ECX + 0x8]
0054bd40  730f  JNC 0x0054bd51
0054bd42  89710c  MOV dword ptr [ECX + 0xc],ESI
0054bd45  897110  MOV dword ptr [ECX + 0x10],ESI
0054bd48  5e  POP ESI
0054bd49  5f  POP EDI
0054bd4a  32c0  XOR AL,AL
0054bd4c  5b  POP EBX
0054bd4d  59  POP ECX
0054bd4e  c20800  RET 0x8
0054bd51  56  PUSH ESI
0054bd52  e8c9cef9ff  CALL 0x004e8c20
0054bd57  5e  POP ESI
0054bd58  5f  POP EDI
0054bd59  32c0  XOR AL,AL
0054bd5b  5b  POP EBX
0054bd5c  59  POP ECX
0054bd5d  c20800  RET 0x8
0054bd60  680100c52f  PUSH 0x2fc50001
0054bd65  8bcf  MOV ECX,EDI
0054bd67  e8c4ecffff  CALL 0x0054aa30
0054bd6c  5e  POP ESI
0054bd6d  5f  POP EDI
0054bd6e  32c0  XOR AL,AL
0054bd70  5b  POP EBX
0054bd71  59  POP ECX
0054bd72  c20800  RET 0x8
0054bd75  5e  POP ESI ; Immediate end-element completes with AL1; RET8 confirms both physical input words.
0054bd76  5f  POP EDI
0054bd77  b001  MOV AL,0x1
0054bd79  5b  POP EBX
0054bd7a  59  POP ECX
0054bd7b  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 1025df60..1025e008; CAW_CopyHeightSamplesAndBuildErrors
1025df60: 8b54240c  MOV EDX,dword ptr [ESP + 0xc]
1025df64: 53  PUSH EBX
1025df65: 55  PUSH EBP
1025df66: 56  PUSH ESI
1025df67: 33ed  XOR EBP,EBP
1025df69: 85d2  TEST EDX,EDX
1025df6b: 57  PUSH EDI
1025df6c: 8bf1  MOV ESI,ECX
1025df6e: 7649  JBE 0x1025dfb9
1025df70: 8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
1025df74: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
1025df77: 8b0e  MOV ECX,dword ptr [ESI]
1025df79: 0fafc5  IMUL EAX,EBP
1025df7c: 8b09  MOV ECX,dword ptr [ECX]
1025df7e: 8d0481  LEA EAX,[ECX + EAX*0x4]
1025df81: 33c9  XOR ECX,ECX
1025df83: 668b3c4b  MOV DI,word ptr [EBX + ECX*0x2]
1025df87: 668938  MOV word ptr [EAX],DI
1025df8a: 83c101  ADD ECX,0x1
1025df8d: 83c004  ADD EAX,0x4
1025df90: 3bca  CMP ECX,EDX
1025df92: 72ef  JC 0x1025df83
1025df94: 3b5608  CMP EDX,dword ptr [ESI + 0x8]
1025df97: 0fb77c53fe  MOVZX EDI,word ptr [EBX + EDX*0x2 + -0x2]
1025df9c: 8bca  MOV ECX,EDX
1025df9e: 730e  JNC 0x1025dfae
1025dfa0: 668938  MOV word ptr [EAX],DI
1025dfa3: 83c101  ADD ECX,0x1
1025dfa6: 83c004  ADD EAX,0x4
1025dfa9: 3b4e08  CMP ECX,dword ptr [ESI + 0x8]
1025dfac: 72f2  JC 0x1025dfa0
1025dfae: 035c2418  ADD EBX,dword ptr [ESP + 0x18]
1025dfb2: 83c501  ADD EBP,0x1
1025dfb5: 3bea  CMP EBP,EDX
1025dfb7: 72bb  JC 0x1025df74
1025dfb9: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
1025dfbc: 8b3e  MOV EDI,dword ptr [ESI]
1025dfbe: 8b3f  MOV EDI,dword ptr [EDI]
1025dfc0: 8d4aff  LEA ECX,[EDX + -0x1]
1025dfc3: 0fafc8  IMUL ECX,EAX
1025dfc6: 3bd0  CMP EDX,EAX
1025dfc8: 8d1c8f  LEA EBX,[EDI + ECX*0x4]
1025dfcb: 8bfa  MOV EDI,EDX
1025dfcd: 7328  JNC 0x1025dff7
1025dfcf: 90  NOP
1025dfd0: 8b4608  MOV EAX,dword ptr [ESI + 0x8]
1025dfd3: 8b0e  MOV ECX,dword ptr [ESI]
1025dfd5: 8d148500000000  LEA EDX,[EAX*0x4 + 0x0]
1025dfdc: 0fafc7  IMUL EAX,EDI
1025dfdf: 52  PUSH EDX
1025dfe0: 8b11  MOV EDX,dword ptr [ECX]
1025dfe2: 8d0482  LEA EAX,[EDX + EAX*0x4]
1025dfe5: 53  PUSH EBX
1025dfe6: 50  PUSH EAX
1025dfe7: e836298300  CALL 0x10a90922
1025dfec: 83c701  ADD EDI,0x1
1025dfef: 83c40c  ADD ESP,0xc
1025dff2: 3b7e08  CMP EDI,dword ptr [ESI + 0x8]
1025dff5: 72d9  JC 0x1025dfd0
1025dff7: 8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
1025dffa: 51  PUSH ECX
1025dffb: 8bce  MOV ECX,ESI
1025dffd: e85ef8ffff  CALL 0x1025d860
1025e002: 5f  POP EDI
1025e003: 5e  POP ESI
1025e004: 5d  POP EBP
1025e005: 5b  POP EBX
1025e006: c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void WallEdgeSet_InsertUnique(void * this, dword * insertResult, void * edgeDescriptor, dword ignored)
Owned ranges: [[00b3f740, 00b3f8b6]]

00b3f740  51  PUSH ECX
00b3f741  53  PUSH EBX
00b3f742  8bd9  MOV EBX,ECX
00b3f744  8b4b0c  MOV ECX,dword ptr [EBX + 0xc]
00b3f747  85c9  TEST ECX,ECX
00b3f749  55  PUSH EBP
00b3f74a  56  PUSH ESI
00b3f74b  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00b3f74f  57  PUSH EDI
00b3f750  895c2410  MOV dword ptr [ESP + 0x10],EBX
00b3f754  8d7b04  LEA EDI,[EBX + 0x4]
00b3f757  b001  MOV AL,0x1
00b3f759  0f84f3000000  JZ 0x00b3f852
00b3f75f  90  NOP
00b3f760  8a5912  MOV BL,byte ptr [ECX + 0x12]
00b3f763  8a4602  MOV AL,byte ptr [ESI + 0x2]
00b3f766  3ac3  CMP AL,BL
00b3f768  753e  JNZ 0x00b3f7a8
00b3f76a  8a16  MOV DL,byte ptr [ESI]
00b3f76c  3a5110  CMP DL,byte ptr [ECX + 0x10]
00b3f76f  7524  JNZ 0x00b3f795
00b3f771  8a5601  MOV DL,byte ptr [ESI + 0x1]
00b3f774  3a5111  CMP DL,byte ptr [ECX + 0x11]
00b3f777  751c  JNZ 0x00b3f795
00b3f779  8a4605  MOV AL,byte ptr [ESI + 0x5]
00b3f77c  8a5115  MOV DL,byte ptr [ECX + 0x15]
00b3f77f  3ac2  CMP AL,DL
00b3f781  7525  JNZ 0x00b3f7a8
00b3f783  8a4603  MOV AL,byte ptr [ESI + 0x3]
00b3f786  8a5113  MOV DL,byte ptr [ECX + 0x13]
00b3f789  3ac2  CMP AL,DL
00b3f78b  751b  JNZ 0x00b3f7a8
00b3f78d  8a4604  MOV AL,byte ptr [ESI + 0x4]
00b3f790  3a4114  CMP AL,byte ptr [ECX + 0x14]
00b3f793  eb13  JMP 0x00b3f7a8
00b3f795  3ac3  CMP AL,BL
00b3f797  750f  JNZ 0x00b3f7a8
00b3f799  8a06  MOV AL,byte ptr [ESI]
00b3f79b  8a5110  MOV DL,byte ptr [ECX + 0x10]
00b3f79e  3ac2  CMP AL,DL
00b3f7a0  7506  JNZ 0x00b3f7a8
00b3f7a2  8a5601  MOV DL,byte ptr [ESI + 0x1]
00b3f7a5  3a5111  CMP DL,byte ptr [ECX + 0x11]
00b3f7a8  0f9cc0  SETL AL
00b3f7ab  84c0  TEST AL,AL
00b3f7ad  7579  JNZ 0x00b3f828
00b3f7af  8a4602  MOV AL,byte ptr [ESI + 0x2]
00b3f7b2  3ad8  CMP BL,AL
00b3f7b4  753e  JNZ 0x00b3f7f4
00b3f7b6  8a5110  MOV DL,byte ptr [ECX + 0x10]
00b3f7b9  3a16  CMP DL,byte ptr [ESI]
00b3f7bb  7524  JNZ 0x00b3f7e1
00b3f7bd  8a5111  MOV DL,byte ptr [ECX + 0x11]
00b3f7c0  3a5601  CMP DL,byte ptr [ESI + 0x1]
00b3f7c3  751c  JNZ 0x00b3f7e1
00b3f7c5  8a4115  MOV AL,byte ptr [ECX + 0x15]
00b3f7c8  8a5605  MOV DL,byte ptr [ESI + 0x5]
00b3f7cb  3ac2  CMP AL,DL
00b3f7cd  7525  JNZ 0x00b3f7f4
00b3f7cf  8a4113  MOV AL,byte ptr [ECX + 0x13]
00b3f7d2  8a5603  MOV DL,byte ptr [ESI + 0x3]
00b3f7d5  3ac2  CMP AL,DL
00b3f7d7  751b  JNZ 0x00b3f7f4
00b3f7d9  8a4114  MOV AL,byte ptr [ECX + 0x14]
00b3f7dc  3a4604  CMP AL,byte ptr [ESI + 0x4]
00b3f7df  eb13  JMP 0x00b3f7f4
00b3f7e1  3ad8  CMP BL,AL
00b3f7e3  750f  JNZ 0x00b3f7f4
00b3f7e5  8a4110  MOV AL,byte ptr [ECX + 0x10]
00b3f7e8  8a16  MOV DL,byte ptr [ESI]
00b3f7ea  3ac2  CMP AL,DL
00b3f7ec  7506  JNZ 0x00b3f7f4
00b3f7ee  8a5111  MOV DL,byte ptr [ECX + 0x11]
00b3f7f1  3a5601  CMP DL,byte ptr [ESI + 0x1]
00b3f7f4  0f9cc0  SETL AL
00b3f7f7  84c0  TEST AL,AL
00b3f7f9  7511  JNZ 0x00b3f80c
00b3f7fb  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00b3f7fe  8b5120  MOV EDX,dword ptr [ECX + 0x20]
00b3f801  3bc2  CMP EAX,EDX
00b3f803  740b  JZ 0x00b3f810
00b3f805  0f9cc0  SETL AL
00b3f808  84c0  TEST AL,AL
00b3f80a  751c  JNZ 0x00b3f828
00b3f80c  32c0  XOR AL,AL
00b3f80e  eb1a  JMP 0x00b3f82a
00b3f810  f30f104608  MOVSS XMM0,dword ptr [ESI + 0x8]
00b3f815  f30f104918  MOVSS XMM1,dword ptr [ECX + 0x18]
00b3f81a  0f2ec1  UCOMISS XMM0,XMM1
00b3f81d  9f  LAHF
00b3f81e  f6c444  TEST AH,0x44
00b3f821  7b12  JNP 0x00b3f835
00b3f823  0f2fc8  COMISS XMM1,XMM0
00b3f826  76e4  JBE 0x00b3f80c
00b3f828  b001  MOV AL,0x1
00b3f82a  84c0  TEST AL,AL
00b3f82c  8bf9  MOV EDI,ECX
00b3f82e  7414  JZ 0x00b3f844
00b3f830  8b4904  MOV ECX,dword ptr [ECX + 0x4]
00b3f833  eb11  JMP 0x00b3f846
00b3f835  f30f10411c  MOVSS XMM0,dword ptr [ECX + 0x1c]
00b3f83a  0f2f460c  COMISS XMM0,dword ptr [ESI + 0xc]
00b3f83e  77e8  JA 0x00b3f828
00b3f840  32c0  XOR AL,AL
00b3f842  ebe6  JMP 0x00b3f82a
00b3f844  8b09  MOV ECX,dword ptr [ECX]
00b3f846  85c9  TEST ECX,ECX
00b3f848  0f8512ffffff  JNZ 0x00b3f760
00b3f84e  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00b3f852  84c0  TEST AL,AL
00b3f854  8bef  MOV EBP,EDI
00b3f856  7410  JZ 0x00b3f868
00b3f858  3b7b08  CMP EDI,dword ptr [EBX + 0x8]
00b3f85b  7422  JZ 0x00b3f87f
00b3f85d  57  PUSH EDI
00b3f85e  e80d189aff  CALL 0x004e1070
00b3f863  83c404  ADD ESP,0x4
00b3f866  8bf8  MOV EDI,EAX
00b3f868  8d5710  LEA EDX,[EDI + 0x10]
00b3f86b  56  PUSH ESI
00b3f86c  52  PUSH EDX
00b3f86d  e85edbffff  CALL 0x00b3d3d0
00b3f872  83c408  ADD ESP,0x8
00b3f875  84c0  TEST AL,AL
00b3f877  742c  JZ 0x00b3f8a5
00b3f879  6a00  PUSH 0x0
00b3f87b  56  PUSH ESI
00b3f87c  55  PUSH EBP
00b3f87d  eb04  JMP 0x00b3f883
00b3f87f  6a00  PUSH 0x0
00b3f881  56  PUSH ESI
00b3f882  57  PUSH EDI
00b3f883  8d442428  LEA EAX,[ESP + 0x28]
00b3f887  50  PUSH EAX
00b3f888  8bcb  MOV ECX,EBX
00b3f88a  e811fcffff  CALL 0x00b3f4a0
00b3f88f  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00b3f893  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00b3f897  5f  POP EDI
00b3f898  5e  POP ESI
00b3f899  5d  POP EBP
00b3f89a  8908  MOV dword ptr [EAX],ECX
00b3f89c  c6400401  MOV byte ptr [EAX + 0x4],0x1
00b3f8a0  5b  POP EBX
00b3f8a1  59  POP ECX
00b3f8a2  c20c00  RET 0xc
00b3f8a5  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00b3f8a9  8938  MOV dword ptr [EAX],EDI
00b3f8ab  5f  POP EDI
00b3f8ac  5e  POP ESI
00b3f8ad  5d  POP EBP
00b3f8ae  c6400400  MOV byte ptr [EAX + 0x4],0x0
00b3f8b2  5b  POP EBX
00b3f8b3  59  POP ECX
00b3f8b4  c20c00  RET 0xc

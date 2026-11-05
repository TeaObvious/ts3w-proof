# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsRandomNode_ReadOutcomes
Paired actual annotated Ghidra pseudocode: 007FA1E0_SacsRandomNode_ReadOutcomes.c
Owned ranges: [[007fa1e0, 007fa329]]
Envelope bytes=330

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fa1e0  83ec20  SUB ESP,0x20
007fa1e3  53  PUSH EBX
007fa1e4  55  PUSH EBP
007fa1e5  56  PUSH ESI
007fa1e6  8b742434  MOV ESI,dword ptr [ESP + 0x34]
007fa1ea  8b1e  MOV EBX,dword ptr [ESI]
007fa1ec  57  PUSH EDI
007fa1ed  8bf9  MOV EDI,ECX
007fa1ef  89742420  MOV dword ptr [ESP + 0x20],ESI
007fa1f3  8d4f30  LEA ECX,[EDI + 0x30]
007fa1f6  53  PUSH EBX
007fa1f7  897c2414  MOV dword ptr [ESP + 0x14],EDI
007fa1fb  895c2420  MOV dword ptr [ESP + 0x20],EBX
007fa1ff  83c604  ADD ESI,0x4
007fa202  e809ffffff  CALL 0x007fa110
007fa207  85db  TEST EBX,EBX
007fa209  c744243800000000  MOV dword ptr [ESP + 0x38],0x0
007fa211  0f869e000000  JBE 0x007fa2b5
007fa217  33db  XOR EBX,EBX
007fa219  8da42400000000  LEA ESP,[ESP]
007fa220  8b4730  MOV EAX,dword ptr [EDI + 0x30]
007fa223  f30f1006  MOVSS XMM0,dword ptr [ESI]
007fa227  f30f104f40  MOVSS XMM1,dword ptr [EDI + 0x40]
007fa22c  f30f5c0c18  SUBSS XMM1,dword ptr [EAX + EBX*0x1]
007fa231  03c3  ADD EAX,EBX
007fa233  83c604  ADD ESI,0x4
007fa236  f30f58c8  ADDSS XMM1,XMM0
007fa23a  f30f114f40  MOVSS dword ptr [EDI + 0x40],XMM1
007fa23f  f30f1100  MOVSS dword ptr [EAX],XMM0
007fa243  8b2e  MOV EBP,dword ptr [ESI]
007fa245  83c604  ADD ESI,0x4
007fa248  33ff  XOR EDI,EDI
007fa24a  85ed  TEST EBP,EBP
007fa24c  764b  JBE 0x007fa299
007fa24e  8bff  MOV EDI,EDI
007fa250  8b0e  MOV ECX,dword ptr [ESI]
007fa252  51  PUSH ECX
007fa253  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
007fa257  e8d4c3f2ff  CALL 0x00726630
007fa25c  83c604  ADD ESI,0x4
007fa25f  85c0  TEST EAX,EAX
007fa261  0f84b7000000  JZ 0x007fa31e
007fa267  89442418  MOV dword ptr [ESP + 0x18],EAX
007fa26b  c644241400  MOV byte ptr [ESP + 0x14],0x0
007fa270  8b542414  MOV EDX,dword ptr [ESP + 0x14]
007fa274  52  PUSH EDX
007fa275  8d44241c  LEA EAX,[ESP + 0x1c]
007fa279  50  PUSH EAX
007fa27a  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007fa27e  8b5030  MOV EDX,dword ptr [EAX + 0x30]
007fa281  83c030  ADD EAX,0x30
007fa284  8d4c242c  LEA ECX,[ESP + 0x2c]
007fa288  51  PUSH ECX
007fa289  8d4c1a04  LEA ECX,[EDX + EBX*0x1 + 0x4]
007fa28d  e82eb9ebff  CALL 0x006b5bc0
007fa292  83c701  ADD EDI,0x1
007fa295  3bfd  CMP EDI,EBP
007fa297  72b7  JC 0x007fa250
007fa299  8b442438  MOV EAX,dword ptr [ESP + 0x38]
007fa29d  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
007fa2a1  83c001  ADD EAX,0x1
007fa2a4  83c324  ADD EBX,0x24
007fa2a7  3b44241c  CMP EAX,dword ptr [ESP + 0x1c]
007fa2ab  89442438  MOV dword ptr [ESP + 0x38],EAX
007fa2af  0f826bffffff  JC 0x007fa220
007fa2b5  817c243401010000  CMP dword ptr [ESP + 0x34],0x101
007fa2bd  7216  JC 0x007fa2d5
007fa2bf  813eefbeadde  CMP dword ptr [ESI],0xdeadbeef
007fa2c5  7557  JNZ 0x007fa31e
007fa2c7  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007fa2ca  83c604  ADD ESI,0x4
007fa2cd  83c604  ADD ESI,0x4
007fa2d0  2401  AND AL,0x1
007fa2d2  884744  MOV byte ptr [EDI + 0x44],AL
007fa2d5  807c244400  CMP byte ptr [ESP + 0x44],0x0
007fa2da  740b  JZ 0x007fa2e7
007fa2dc  6a01  PUSH 0x1
007fa2de  56  PUSH ESI
007fa2df  e88c8dfdff  CALL 0x007d3070
007fa2e4  83c408  ADD ESP,0x8
007fa2e7  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
007fa2eb  8bc6  MOV EAX,ESI
007fa2ed  2b442420  SUB EAX,dword ptr [ESP + 0x20]
007fa2f1  c1f802  SAR EAX,0x2
007fa2f4  2bc8  SUB ECX,EAX
007fa2f6  83f901  CMP ECX,0x1
007fa2f9  7523  JNZ 0x007fa31e
007fa2fb  803e2f  CMP byte ptr [ESI],0x2f
007fa2fe  751e  JNZ 0x007fa31e
007fa300  807e0144  CMP byte ptr [ESI + 0x1],0x44
007fa304  7518  JNZ 0x007fa31e
007fa306  807e0247  CMP byte ptr [ESI + 0x2],0x47
007fa30a  7512  JNZ 0x007fa31e
007fa30c  807e034e  CMP byte ptr [ESI + 0x3],0x4e
007fa310  750c  JNZ 0x007fa31e
007fa312  5f  POP EDI
007fa313  5e  POP ESI
007fa314  5d  POP EBP
007fa315  8ac1  MOV AL,CL
007fa317  5b  POP EBX
007fa318  83c420  ADD ESP,0x20
007fa31b  c21400  RET 0x14
007fa31e  5f  POP EDI
007fa31f  5e  POP ESI
007fa320  5d  POP EBP
007fa321  32c0  XOR AL,AL
007fa323  5b  POP EBX
007fa324  83c420  ADD ESP,0x20
007fa327  c21400  RET 0x14
Owned instructions=109 owned bytes=330 gap/nonowned bytes=0

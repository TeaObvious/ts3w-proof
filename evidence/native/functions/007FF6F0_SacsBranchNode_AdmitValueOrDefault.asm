# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsBranchNode_AdmitValueOrDefault
Paired actual annotated Ghidra pseudocode: 007FF6F0_SacsBranchNode_AdmitValueOrDefault.c
Owned ranges: [[007ff6f0, 007ff7a6]]
Envelope bytes=183

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007ff6f0  83ec18  SUB ESP,0x18
007ff6f3  8b542428  MOV EDX,dword ptr [ESP + 0x28]
007ff6f7  56  PUSH ESI
007ff6f8  8bf1  MOV ESI,ECX
007ff6fa  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
007ff6fe  8b06  MOV EAX,dword ptr [ESI]
007ff700  8b4044  MOV EAX,dword ptr [EAX + 0x44]
007ff703  57  PUSH EDI
007ff704  51  PUSH ECX
007ff705  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
007ff709  52  PUSH EDX
007ff70a  8b542430  MOV EDX,dword ptr [ESP + 0x30]
007ff70e  51  PUSH ECX
007ff70f  52  PUSH EDX
007ff710  8bce  MOV ECX,ESI
007ff712  ffd0  CALL EAX
007ff714  8d4c2434  LEA ECX,[ESP + 0x34]
007ff718  51  PUSH ECX
007ff719  8d54240c  LEA EDX,[ESP + 0xc]
007ff71d  8d7e30  LEA EDI,[ESI + 0x30]
007ff720  52  PUSH EDX
007ff721  8bcf  MOV ECX,EDI
007ff723  8944243c  MOV dword ptr [ESP + 0x3c],EAX
007ff727  e8e4e1ffff  CALL 0x007fd910
007ff72c  8b00  MOV EAX,dword ptr [EAX]
007ff72e  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007ff731  8b5704  MOV EDX,dword ptr [EDI + 0x4]
007ff734  3b048a  CMP EAX,dword ptr [EDX + ECX*0x4]
007ff737  7529  JNZ 0x007ff762
007ff739  8b06  MOV EAX,dword ptr [ESI]
007ff73b  8b504c  MOV EDX,dword ptr [EAX + 0x4c]
007ff73e  8bce  MOV ECX,ESI
007ff740  ffd2  CALL EDX
007ff742  89442434  MOV dword ptr [ESP + 0x34],EAX
007ff746  8d442434  LEA EAX,[ESP + 0x34]
007ff74a  50  PUSH EAX
007ff74b  8d4c2414  LEA ECX,[ESP + 0x14]
007ff74f  51  PUSH ECX
007ff750  8bcf  MOV ECX,EDI
007ff752  e8b9e1ffff  CALL 0x007fd910
007ff757  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007ff75a  8b08  MOV ECX,dword ptr [EAX]
007ff75c  8bc1  MOV EAX,ECX
007ff75e  8954241c  MOV dword ptr [ESP + 0x1c],EDX
007ff762  8b5708  MOV EDX,dword ptr [EDI + 0x8]
007ff765  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
007ff768  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
007ff76b  7432  JZ 0x007ff79f
007ff76d  8b4808  MOV ECX,dword ptr [EAX + 0x8]
007ff770  8b500c  MOV EDX,dword ptr [EAX + 0xc]
007ff773  8b3491  MOV ESI,dword ptr [ECX + EDX*0x4]
007ff776  8d1491  LEA EDX,[ECX + EDX*0x4]
007ff779  8bc1  MOV EAX,ECX
007ff77b  8b08  MOV ECX,dword ptr [EAX]
007ff77d  85c9  TEST ECX,ECX
007ff77f  7511  JNZ 0x007ff792
007ff781  83c004  ADD EAX,0x4
007ff784  3908  CMP dword ptr [EAX],ECX
007ff786  7508  JNZ 0x007ff790
007ff788  83c004  ADD EAX,0x4
007ff78b  833800  CMP dword ptr [EAX],0x0
007ff78e  74f8  JZ 0x007ff788
007ff790  8b08  MOV ECX,dword ptr [EAX]
007ff792  52  PUSH EDX
007ff793  56  PUSH ESI
007ff794  50  PUSH EAX
007ff795  51  PUSH ECX
007ff796  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
007ff79a  e8d14fffff  CALL 0x007f4770
007ff79f  5f  POP EDI
007ff7a0  5e  POP ESI
007ff7a1  83c418  ADD ESP,0x18
007ff7a4  c21400  RET 0x14
Owned instructions=73 owned bytes=183 gap/nonowned bytes=0

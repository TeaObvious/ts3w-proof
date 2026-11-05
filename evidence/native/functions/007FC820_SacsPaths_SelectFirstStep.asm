# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsPaths_SelectFirstStep
Paired actual annotated Ghidra pseudocode: 007FC820_SacsPaths_SelectFirstStep.c
Owned ranges: [[007fc820, 007fc940]]
Envelope bytes=289

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fc820  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007fc824  83ec2c  SUB ESP,0x2c
007fc827  53  PUSH EBX
007fc828  55  PUSH EBP
007fc829  33db  XOR EBX,EBX
007fc82b  3bc3  CMP EAX,EBX
007fc82d  56  PUSH ESI
007fc82e  57  PUSH EDI
007fc82f  8be9  MOV EBP,ECX
007fc831  7405  JZ 0x007fc838
007fc833  8b7028  MOV ESI,dword ptr [EAX + 0x28]
007fc836  eb02  JMP 0x007fc83a
007fc838  33f6  XOR ESI,ESI
007fc83a  53  PUSH EBX
007fc83b  8d4c2414  LEA ECX,[ESP + 0x14]
007fc83f  33ff  XOR EDI,EDI
007fc841  895c2414  MOV dword ptr [ESP + 0x14],EBX
007fc845  895c2418  MOV dword ptr [ESP + 0x18],EBX
007fc849  895c241c  MOV dword ptr [ESP + 0x1c],EBX
007fc84d  895c2420  MOV dword ptr [ESP + 0x20],EBX
007fc851  895c2424  MOV dword ptr [ESP + 0x24],EBX
007fc855  895c2428  MOV dword ptr [ESP + 0x28],EBX
007fc859  895c242c  MOV dword ptr [ESP + 0x2c],EBX
007fc85d  895c2430  MOV dword ptr [ESP + 0x30],EBX
007fc861  895c2434  MOV dword ptr [ESP + 0x34],EBX
007fc865  895c2438  MOV dword ptr [ESP + 0x38],EBX
007fc869  c744243c34020201  MOV dword ptr [ESP + 0x3c],0x1020234
007fc871  e85adcffff  CALL 0x007fa4d0
007fc876  8b442454  MOV EAX,dword ptr [ESP + 0x54]
007fc87a  8b4c2450  MOV ECX,dword ptr [ESP + 0x50]
007fc87e  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
007fc882  50  PUSH EAX
007fc883  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
007fc887  51  PUSH ECX
007fc888  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
007fc88c  52  PUSH EDX
007fc88d  50  PUSH EAX
007fc88e  56  PUSH ESI
007fc88f  51  PUSH ECX
007fc890  8d542428  LEA EDX,[ESP + 0x28]
007fc894  52  PUSH EDX
007fc895  8bcd  MOV ECX,EBP
007fc897  e834fbffff  CALL 0x007fc3d0
007fc89c  3bc3  CMP EAX,EBX
007fc89e  0f8c88000000  JL 0x007fc92c
007fc8a4  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
007fc8a8  2b4c241c  SUB ECX,dword ptr [ESP + 0x1c]
007fc8ac  c1f904  SAR ECX,0x4
007fc8af  03c8  ADD ECX,EAX
007fc8b1  8d8100000001  LEA EAX,[ECX + 0x1000000]
007fc8b7  99  CDQ
007fc8b8  83e20f  AND EDX,0xf
007fc8bb  03c2  ADD EAX,EDX
007fc8bd  c1f804  SAR EAX,0x4
007fc8c0  2d00001000  SUB EAX,0x100000
007fc8c5  8bd0  MOV EDX,EAX
007fc8c7  c1e204  SHL EDX,0x4
007fc8ca  8bf2  MOV ESI,EDX
007fc8cc  8bd1  MOV EDX,ECX
007fc8ce  2bd6  SUB EDX,ESI
007fc8d0  8b742424  MOV ESI,dword ptr [ESP + 0x24]
007fc8d4  c1e204  SHL EDX,0x4
007fc8d7  031486  ADD EDX,dword ptr [ESI + EAX*0x4]
007fc8da  8b4204  MOV EAX,dword ptr [EDX + 0x4]
007fc8dd  2b02  SUB EAX,dword ptr [EDX]
007fc8df  a9fcffffff  TEST EAX,0xfffffffc
007fc8e4  7520  JNZ 0x007fc906
007fc8e6  8b442440  MOV EAX,dword ptr [ESP + 0x40]
007fc8ea  385850  CMP byte ptr [EAX + 0x50],BL
007fc8ed  743d  JZ 0x007fc92c
007fc8ef  8d4c2410  LEA ECX,[ESP + 0x10]
007fc8f3  8bf8  MOV EDI,EAX
007fc8f5  e8a6deffff  CALL 0x007fa7a0
007fc8fa  8bc7  MOV EAX,EDI
007fc8fc  5f  POP EDI
007fc8fd  5e  POP ESI
007fc8fe  5d  POP EBP
007fc8ff  5b  POP EBX
007fc900  83c42c  ADD ESP,0x2c
007fc903  c21800  RET 0x18
007fc906  8d8100000001  LEA EAX,[ECX + 0x1000000]
007fc90c  99  CDQ
007fc90d  83e20f  AND EDX,0xf
007fc910  03c2  ADD EAX,EDX
007fc912  c1f804  SAR EAX,0x4
007fc915  2d00001000  SUB EAX,0x100000
007fc91a  8bd0  MOV EDX,EAX
007fc91c  8b0486  MOV EAX,dword ptr [ESI + EAX*0x4]
007fc91f  c1e204  SHL EDX,0x4
007fc922  2bca  SUB ECX,EDX
007fc924  c1e104  SHL ECX,0x4
007fc927  8b0c01  MOV ECX,dword ptr [ECX + EAX*0x1]
007fc92a  8b39  MOV EDI,dword ptr [ECX]
007fc92c  8d4c2410  LEA ECX,[ESP + 0x10]
007fc930  e86bdeffff  CALL 0x007fa7a0
007fc935  8bc7  MOV EAX,EDI
007fc937  5f  POP EDI
007fc938  5e  POP ESI
007fc939  5d  POP EBP
007fc93a  5b  POP EBX
007fc93b  83c42c  ADD ESP,0x2c
007fc93e  c21800  RET 0x18
Owned instructions=102 owned bytes=289 gap/nonowned bytes=0

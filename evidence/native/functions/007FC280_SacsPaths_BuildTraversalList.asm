# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsPaths_BuildTraversalList
Paired actual annotated Ghidra pseudocode: 007FC280_SacsPaths_BuildTraversalList.c
Owned ranges: [[007fc280, 007fc382]]
Envelope bytes=259

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fc280  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007fc284  83ec30  SUB ESP,0x30
007fc287  57  PUSH EDI
007fc288  33ff  XOR EDI,EDI
007fc28a  3bc7  CMP EAX,EDI
007fc28c  7509  JNZ 0x007fc297
007fc28e  32c0  XOR AL,AL
007fc290  5f  POP EDI
007fc291  83c430  ADD ESP,0x30
007fc294  c21800  RET 0x18
007fc297  8b54244c  MOV EDX,dword ptr [ESP + 0x4c]
007fc29b  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
007fc2a3  53  PUSH EBX
007fc2a4  56  PUSH ESI
007fc2a5  8b742444  MOV ESI,dword ptr [ESP + 0x44]
007fc2a9  52  PUSH EDX
007fc2aa  8b542454  MOV EDX,dword ptr [ESP + 0x54]
007fc2ae  52  PUSH EDX
007fc2af  8b542454  MOV EDX,dword ptr [ESP + 0x54]
007fc2b3  52  PUSH EDX
007fc2b4  8b542454  MOV EDX,dword ptr [ESP + 0x54]
007fc2b8  52  PUSH EDX
007fc2b9  8d54242c  LEA EDX,[ESP + 0x2c]
007fc2bd  52  PUSH EDX
007fc2be  8d542420  LEA EDX,[ESP + 0x20]
007fc2c2  52  PUSH EDX
007fc2c3  56  PUSH ESI
007fc2c4  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
007fc2ca  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
007fc2d2  50  PUSH EAX
007fc2d3  897c242c  MOV dword ptr [ESP + 0x2c],EDI
007fc2d7  897c2430  MOV dword ptr [ESP + 0x30],EDI
007fc2db  897c2434  MOV dword ptr [ESP + 0x34],EDI
007fc2df  c7442438ec010201  MOV dword ptr [ESP + 0x38],0x10201ec
007fc2e7  f30f11442450  MOVSS dword ptr [ESP + 0x50],XMM0
007fc2ed  c7442458cc010201  MOV dword ptr [ESP + 0x58],0x10201cc
007fc2f5  c744244401000000  MOV dword ptr [ESP + 0x44],0x1
007fc2fd  c744244000d91401  MOV dword ptr [ESP + 0x40],0x114d900
007fc305  897c2448  MOV dword ptr [ESP + 0x48],EDI
007fc309  897c2454  MOV dword ptr [ESP + 0x54],EDI
007fc30d  e86efdffff  CALL 0x007fc080
007fc312  8b4624  MOV EAX,dword ptr [ESI + 0x24]
007fc315  2b4614  SUB EAX,dword ptr [ESI + 0x14]
007fc318  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
007fc31b  2b4e1c  SUB ECX,dword ptr [ESI + 0x1c]
007fc31e  8b5610  MOV EDX,dword ptr [ESI + 0x10]
007fc321  2b5608  SUB EDX,dword ptr [ESI + 0x8]
007fc324  c1f802  SAR EAX,0x2
007fc327  83e801  SUB EAX,0x1
007fc32a  c1e004  SHL EAX,0x4
007fc32d  c1f904  SAR ECX,0x4
007fc330  03c1  ADD EAX,ECX
007fc332  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
007fc336  c1fa04  SAR EDX,0x4
007fc339  03c2  ADD EAX,EDX
007fc33b  85c0  TEST EAX,EAX
007fc33d  8b442424  MOV EAX,dword ptr [ESP + 0x24]
007fc341  50  PUSH EAX
007fc342  51  PUSH ECX
007fc343  8d4c2424  LEA ECX,[ESP + 0x24]
007fc347  0f97c3  SETA BL
007fc34a  e8c1402e00  CALL 0x00ae0410
007fc34f  837c242401  CMP dword ptr [ESP + 0x24],0x1
007fc354  897c2428  MOV dword ptr [ESP + 0x28],EDI
007fc358  760d  JBE 0x007fc367
007fc35a  8b542420  MOV EDX,dword ptr [ESP + 0x20]
007fc35e  52  PUSH EDX
007fc35f  e87c81ceff  CALL 0x004e44e0
007fc364  83c404  ADD ESP,0x4
007fc367  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007fc36b  3bc7  CMP EAX,EDI
007fc36d  7409  JZ 0x007fc378
007fc36f  50  PUSH EAX
007fc370  e86b81ceff  CALL 0x004e44e0
007fc375  83c404  ADD ESP,0x4
007fc378  5e  POP ESI
007fc379  8ac3  MOV AL,BL
007fc37b  5b  POP EBX
007fc37c  5f  POP EDI
007fc37d  83c430  ADD ESP,0x30
007fc380  c21800  RET 0x18
Owned instructions=81 owned bytes=259 gap/nonowned bytes=0

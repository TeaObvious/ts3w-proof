# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsDecisionGraph_FlushAnimationGroups
Paired actual annotated Ghidra pseudocode: 007F45E0_SacsDecisionGraph_FlushAnimationGroups.c
Owned ranges: [[007f45e0, 007f4658]]
Envelope bytes=121

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f45e0  56  PUSH ESI
007f45e1  8bf1  MOV ESI,ECX
007f45e3  8b8ecc000000  MOV ECX,dword ptr [ESI + 0xcc]
007f45e9  85c9  TEST ECX,ECX
007f45eb  7421  JZ 0x007f460e
007f45ed  e86ee1d8ff  CALL 0x00582760
007f45f2  8b8ecc000000  MOV ECX,dword ptr [ESI + 0xcc]
007f45f8  85c9  TEST ECX,ECX
007f45fa  7408  JZ 0x007f4604
007f45fc  8b01  MOV EAX,dword ptr [ECX]
007f45fe  8b10  MOV EDX,dword ptr [EAX]
007f4600  6a01  PUSH 0x1
007f4602  ffd2  CALL EDX
007f4604  c786cc00000000000000  MOV dword ptr [ESI + 0xcc],0x0
007f460e  8b8ed0000000  MOV ECX,dword ptr [ESI + 0xd0]
007f4614  85c9  TEST ECX,ECX
007f4616  7421  JZ 0x007f4639
007f4618  e8e3e0d8ff  CALL 0x00582700
007f461d  8b8ed0000000  MOV ECX,dword ptr [ESI + 0xd0]
007f4623  85c9  TEST ECX,ECX
007f4625  7408  JZ 0x007f462f
007f4627  8b01  MOV EAX,dword ptr [ECX]
007f4629  8b10  MOV EDX,dword ptr [EAX]
007f462b  6a01  PUSH 0x1
007f462d  ffd2  CALL EDX
007f462f  c786d000000000000000  MOV dword ptr [ESI + 0xd0],0x0
007f4639  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007f463d  83f802  CMP EAX,0x2
007f4640  c686d400000000  MOV byte ptr [ESI + 0xd4],0x0
007f4647  7c0c  JL 0x007f4655
007f4649  83f803  CMP EAX,0x3
007f464c  7f07  JG 0x007f4655
007f464e  8bce  MOV ECX,ESI
007f4650  e85bfbffff  CALL 0x007f41b0
007f4655  5e  POP ESI
007f4656  c20400  RET 0x4
Owned instructions=36 owned bytes=121 gap/nonowned bytes=0

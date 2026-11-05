# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsParameter_ResolveText
Paired actual annotated Ghidra pseudocode: 007FD4C0_SacsParameter_ResolveText.c
Owned ranges: [[007fd4c0, 007fd516]]
Envelope bytes=87

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd4c0  56  PUSH ESI
007fd4c1  8bf1  MOV ESI,ECX
007fd4c3  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007fd4c6  85c0  TEST EAX,EAX
007fd4c8  7527  JNZ 0x007fd4f1
007fd4ca  38442408  CMP byte ptr [ESP + 0x8],AL
007fd4ce  8b36  MOV ESI,dword ptr [ESI]
007fd4d0  7418  JZ 0x007fd4ea
007fd4d2  394638  CMP dword ptr [ESI + 0x38],EAX
007fd4d5  7513  JNZ 0x007fd4ea
007fd4d7  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
007fd4da  85c9  TEST ECX,ECX
007fd4dc  740c  JZ 0x007fd4ea
007fd4de  8b4634  MOV EAX,dword ptr [ESI + 0x34]
007fd4e1  50  PUSH EAX
007fd4e2  e899fdffff  CALL 0x007fd280
007fd4e7  894638  MOV dword ptr [ESI + 0x38],EAX
007fd4ea  8b4638  MOV EAX,dword ptr [ESI + 0x38]
007fd4ed  5e  POP ESI
007fd4ee  c20400  RET 0x4
007fd4f1  807c240800  CMP byte ptr [ESP + 0x8],0x0
007fd4f6  7418  JZ 0x007fd510
007fd4f8  837e0400  CMP dword ptr [ESI + 0x4],0x0
007fd4fc  7512  JNZ 0x007fd510
007fd4fe  8b0e  MOV ECX,dword ptr [ESI]
007fd500  8b4928  MOV ECX,dword ptr [ECX + 0x28]
007fd503  85c9  TEST ECX,ECX
007fd505  7409  JZ 0x007fd510
007fd507  50  PUSH EAX
007fd508  e873fdffff  CALL 0x007fd280
007fd50d  894604  MOV dword ptr [ESI + 0x4],EAX
007fd510  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007fd513  5e  POP ESI
007fd514  c20400  RET 0x4
Owned instructions=34 owned bytes=87 gap/nonowned bytes=0

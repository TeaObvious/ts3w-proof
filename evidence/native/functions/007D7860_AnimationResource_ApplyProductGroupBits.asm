# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: AnimationResource_ApplyProductGroupBits
Paired actual annotated Ghidra pseudocode: 007D7860_AnimationResource_ApplyProductGroupBits.c
Owned ranges: [[007d7860, 007d7888]]
Envelope bytes=41

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d7860  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d7864  83f801  CMP EAX,0x1
007d7867  7e1f  JLE 0x007d7888
007d7869  50  PUSH EAX
007d786a  e8a163dcff  CALL 0x0059dc10
007d786f  8d48ff  LEA ECX,[EAX + -0x1]
007d7872  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
007d7876  8b10  MOV EDX,dword ptr [EAX]
007d7878  c1e11b  SHL ECX,0x1b
007d787b  81e2ffffff0f  AND EDX,0xfffffff
007d7881  83c404  ADD ESP,0x4
007d7884  0bca  OR ECX,EDX
007d7886  8908  MOV dword ptr [EAX],ECX
007d7888  c3  RET
Owned instructions=14 owned bytes=41 gap/nonowned bytes=0

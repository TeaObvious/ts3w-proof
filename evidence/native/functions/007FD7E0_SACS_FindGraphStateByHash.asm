# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SACS_FindGraphStateByHash
Paired actual annotated Ghidra pseudocode: 007FD7E0_SACS_FindGraphStateByHash.c
Owned ranges: [[007fd7e0, 007fd81b]]
Envelope bytes=60

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fd7e0  83ec08  SUB ESP,0x8
007fd7e3  56  PUSH ESI
007fd7e4  8db180000000  LEA ESI,[ECX + 0x80]
007fd7ea  8d442410  LEA EAX,[ESP + 0x10]
007fd7ee  50  PUSH EAX
007fd7ef  8d4c2408  LEA ECX,[ESP + 0x8]
007fd7f3  51  PUSH ECX
007fd7f4  8bce  MOV ECX,ESI
007fd7f6  e8b5e12500  CALL 0x00a5b9b0
007fd7fb  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007fd7fe  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007fd801  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007fd805  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
007fd808  5e  POP ESI
007fd809  7409  JZ 0x007fd814
007fd80b  8b4004  MOV EAX,dword ptr [EAX + 0x4]
007fd80e  83c408  ADD ESP,0x8
007fd811  c20400  RET 0x4
007fd814  33c0  XOR EAX,EAX
007fd816  83c408  ADD ESP,0x8
007fd819  c20400  RET 0x4
Owned instructions=21 owned bytes=60 gap/nonowned bytes=0

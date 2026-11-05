# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Stream_WriteByte
Paired actual annotated Ghidra pseudocode: 004DDE30_Stream_WriteByte.c
Owned ranges: [[004dde30, 004dde4b]]
Envelope bytes=28

GHIDRA LISTING (original bytes; nonowned alignment explicit)
004dde30  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
004dde34  8b01  MOV EAX,dword ptr [ECX]
004dde36  8b4038  MOV EAX,dword ptr [EAX + 0x38]
004dde39  6a01  PUSH 0x1
004dde3b  8d54240c  LEA EDX,[ESP + 0xc]
004dde3f  52  PUSH EDX
004dde40  ffd0  CALL EAX
004dde42  2c01  SUB AL,0x1
004dde44  f6d8  NEG AL
004dde46  1bc0  SBB EAX,EAX
004dde48  83c001  ADD EAX,0x1
004dde4b  c3  RET
Owned instructions=12 owned bytes=28 gap/nonowned bytes=0

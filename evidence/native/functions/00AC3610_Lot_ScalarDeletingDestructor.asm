# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: Lot_ScalarDeletingDestructor
Paired actual annotated Ghidra pseudocode: 00AC3610_Lot_ScalarDeletingDestructor.c
Owned ranges: [[00ac3610, 00ac362d]]
Envelope bytes=30

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00ac3610  56  PUSH ESI
00ac3611  8bf1  MOV ESI,ECX
00ac3613  e808daffff  CALL 0x00ac1020
00ac3618  f644240801  TEST byte ptr [ESP + 0x8],0x1
00ac361d  7409  JZ 0x00ac3628
00ac361f  56  PUSH ESI
00ac3620  e8bb0ea2ff  CALL 0x004e44e0
00ac3625  83c404  ADD ESP,0x4
00ac3628  8bc6  MOV EAX,ESI
00ac362a  5e  POP ESI
00ac362b  c20400  RET 0x4
Owned instructions=11 owned bytes=30 nonowned bytes=0

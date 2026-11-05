# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C94560_FenceProduct_GetPostBoundsHeight.c
Owned ranges: [[00c94560, 00c9458d]]

00c94560  55  PUSH EBP
00c94561  8bec  MOV EBP,ESP
00c94563  83e4f0  AND ESP,0xfffffff0
00c94566  83ec10  SUB ESP,0x10
00c94569  0f288100010000  MOVAPS XMM0,xmmword ptr [ECX + 0x100]
00c94570  0f290424  MOVAPS xmmword ptr [ESP],XMM0
00c94574  d9442404  FLD float ptr [ESP + 0x4]
00c94578  dd0510e5f900  FLD double ptr [0x00f9e510]
00c9457e  dff1  FCOMIP ST0,ST1
00c94580  7608  JBE 0x00c9458a
00c94582  ddd8  FSTP ST0
00c94584  d9059c2bfa00  FLD float ptr [0x00fa2b9c]
00c9458a  8be5  MOV ESP,EBP
00c9458c  5d  POP EBP
00c9458d  c3  RET

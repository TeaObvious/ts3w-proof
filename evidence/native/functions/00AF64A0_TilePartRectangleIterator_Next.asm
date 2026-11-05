# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined TilePartRectangleIterator_Next(undefined1 * param_1)
Owned ranges: [[00af64a0, 00af64d5]]

00af64a0  8bc1  MOV EAX,ECX
00af64a2  d06009  SHL byte ptr [EAX + 0x9],0x1
00af64a5  80780908  CMP byte ptr [EAX + 0x9],0x8
00af64a9  7e2a  JLE 0x00af64d5
00af64ab  b201  MOV DL,0x1
00af64ad  005007  ADD byte ptr [EAX + 0x7],DL
00af64b0  8a4807  MOV CL,byte ptr [EAX + 0x7]
00af64b3  3a4804  CMP CL,byte ptr [EAX + 0x4]
00af64b6  885009  MOV byte ptr [EAX + 0x9],DL
00af64b9  7e1a  JLE 0x00af64d5
00af64bb  0fb64801  MOVZX ECX,byte ptr [EAX + 0x1]
00af64bf  005006  ADD byte ptr [EAX + 0x6],DL
00af64c2  884807  MOV byte ptr [EAX + 0x7],CL
00af64c5  8a4806  MOV CL,byte ptr [EAX + 0x6]
00af64c8  3a4803  CMP CL,byte ptr [EAX + 0x3]
00af64cb  7e08  JLE 0x00af64d5
00af64cd  8a08  MOV CL,byte ptr [EAX]
00af64cf  005008  ADD byte ptr [EAX + 0x8],DL
00af64d2  884806  MOV byte ptr [EAX + 0x6],CL
00af64d5  c3  RET

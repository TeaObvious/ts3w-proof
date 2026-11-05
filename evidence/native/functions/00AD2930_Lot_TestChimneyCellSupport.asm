# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_TestChimneyCellSupport(pointer lot, char * cell, pointer ignoredObject)
Owned ranges: [[00ad2930, 00ad2987]]

00ad2930  56  PUSH ESI
00ad2931  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00ad2935  807e0200  CMP byte ptr [ESI + 0x2],0x0
00ad2939  57  PUSH EDI
00ad293a  7e25  JLE 0x00ad2961
00ad293c  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ad2940  56  PUSH ESI
00ad2941  57  PUSH EDI
00ad2942  e8f9d6ffff  CALL 0x00ad0040
00ad2947  83c408  ADD ESP,0x8
00ad294a  84c0  TEST AL,AL
00ad294c  7513  JNZ 0x00ad2961
00ad294e  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ad2952  50  PUSH EAX
00ad2953  56  PUSH ESI
00ad2954  57  PUSH EDI
00ad2955  e866f9ffff  CALL 0x00ad22c0
00ad295a  83c40c  ADD ESP,0xc
00ad295d  84c0  TEST AL,AL
00ad295f  7405  JZ 0x00ad2966
00ad2961  5f  POP EDI
00ad2962  b001  MOV AL,0x1
00ad2964  5e  POP ESI
00ad2965  c3  RET
00ad2966  56  PUSH ESI
00ad2967  57  PUSH EDI
00ad2968  e8e3c2ffff  CALL 0x00acec50
00ad296d  83c408  ADD ESP,0x8
00ad2970  84c0  TEST AL,AL
00ad2972  75ed  JNZ 0x00ad2961
00ad2974  8b8fac020000  MOV ECX,dword ptr [EDI + 0x2ac]
00ad297a  56  PUSH ESI
00ad297b  e8b05b0c00  CALL 0x00b98530
00ad2980  84c0  TEST AL,AL
00ad2982  5f  POP EDI
00ad2983  0f95c0  SETNZ AL
00ad2986  5e  POP ESI
00ad2987  c3  RET

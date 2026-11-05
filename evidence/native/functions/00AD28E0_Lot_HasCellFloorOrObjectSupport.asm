# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_HasCellFloorOrObjectSupport(pointer lot, char * cell, pointer ignoredObject, bool includeObjects)
Owned ranges: [[00ad28e0, 00ad2924]]

00ad28e0  56  PUSH ESI
00ad28e1  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00ad28e5  807e0200  CMP byte ptr [ESI + 0x2],0x0
00ad28e9  7f04  JG 0x00ad28ef
00ad28eb  b001  MOV AL,0x1
00ad28ed  5e  POP ESI
00ad28ee  c3  RET
00ad28ef  57  PUSH EDI
00ad28f0  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ad28f4  56  PUSH ESI
00ad28f5  57  PUSH EDI
00ad28f6  e845d7ffff  CALL 0x00ad0040
00ad28fb  83c408  ADD ESP,0x8
00ad28fe  84c0  TEST AL,AL
00ad2900  7519  JNZ 0x00ad291b
00ad2902  38442418  CMP byte ptr [ESP + 0x18],AL
00ad2906  7418  JZ 0x00ad2920
00ad2908  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ad290c  50  PUSH EAX
00ad290d  56  PUSH ESI
00ad290e  57  PUSH EDI
00ad290f  e8acf9ffff  CALL 0x00ad22c0
00ad2914  83c40c  ADD ESP,0xc
00ad2917  84c0  TEST AL,AL
00ad2919  7405  JZ 0x00ad2920
00ad291b  5f  POP EDI
00ad291c  b001  MOV AL,0x1
00ad291e  5e  POP ESI
00ad291f  c3  RET
00ad2920  5f  POP EDI
00ad2921  32c0  XOR AL,AL
00ad2923  5e  POP ESI
00ad2924  c3  RET

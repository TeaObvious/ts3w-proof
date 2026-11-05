# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool PaintUndoable_DiminishPaintAtSample(void * this, pointer lot, uint sampleX, uint sampleZ, byte decrease, bool * ok)
Owned ranges: [[00d24550, 00d245bb]]

00d24550  53  PUSH EBX
00d24551  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00d24555  56  PUSH ESI
00d24556  57  PUSH EDI
00d24557  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00d2455b  8bf1  MOV ESI,ECX
00d2455d  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00d24560  57  PUSH EDI
00d24561  53  PUSH EBX
00d24562  e88961dcff  CALL 0x00aea6f0
00d24567  84c0  TEST AL,AL
00d24569  7442  JZ 0x00d245ad
00d2456b  55  PUSH EBP
00d2456c  8bce  MOV ECX,ESI
00d2456e  e84df9ffff  CALL 0x00d23ec0
00d24573  84c0  TEST AL,AL
00d24575  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00d24579  884500  MOV byte ptr [EBP],AL
00d2457c  7428  JZ 0x00d245a6
00d2457e  57  PUSH EDI
00d2457f  53  PUSH EBX
00d24580  8bce  MOV ECX,ESI
00d24582  e839feffff  CALL 0x00d243c0
00d24587  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00d2458b  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00d2458e  50  PUSH EAX
00d2458f  57  PUSH EDI
00d24590  53  PUSH EBX
00d24591  e8fabcdcff  CALL 0x00af0290
00d24596  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00d2459a  6a01  PUSH 0x1
00d2459c  6a01  PUSH 0x1
00d2459e  e89dc3d8ff  CALL 0x00ab0940
00d245a3  8a4500  MOV AL,byte ptr [EBP]
00d245a6  5d  POP EBP
00d245a7  5f  POP EDI
00d245a8  5e  POP ESI
00d245a9  5b  POP EBX
00d245aa  c21400  RET 0x14
00d245ad  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00d245b1  5f  POP EDI
00d245b2  5e  POP ESI
00d245b3  c60001  MOV byte ptr [EAX],0x1
00d245b6  8a00  MOV AL,byte ptr [EAX]
00d245b8  5b  POP EBX
00d245b9  c21400  RET 0x14

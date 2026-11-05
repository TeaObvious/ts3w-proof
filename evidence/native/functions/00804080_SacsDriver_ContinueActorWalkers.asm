# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined SacsDriver_ContinueActorWalkers(void * this, int param_1)
Owned ranges: [[00804080, 008040cf]]

00804080  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00804084  85c0  TEST EAX,EAX
00804086  752c  JNZ 0x008040b4
00804088  8b4110  MOV EAX,dword ptr [ECX + 0x10]
0080408b  8b5114  MOV EDX,dword ptr [ECX + 0x14]
0080408e  3bc2  CMP EAX,EDX
00804090  743b  JZ 0x008040cd
00804092  56  PUSH ESI
00804093  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00804096  85c9  TEST ECX,ECX
00804098  740f  JZ 0x008040a9
0080409a  8b716c  MOV ESI,dword ptr [ECX + 0x6c]
0080409d  83c16c  ADD ECX,0x6c
008040a0  83fe06  CMP ESI,0x6
008040a3  7504  JNZ 0x008040a9
008040a5  33f6  XOR ESI,ESI
008040a7  8731  XCHG dword ptr [ECX],ESI
008040a9  83c008  ADD EAX,0x8
008040ac  3bc2  CMP EAX,EDX
008040ae  75e3  JNZ 0x00804093
008040b0  5e  POP ESI
008040b1  c20400  RET 0x4
008040b4  50  PUSH EAX
008040b5  e846fbffff  CALL 0x00803c00
008040ba  85c0  TEST EAX,EAX
008040bc  740f  JZ 0x008040cd
008040be  8b486c  MOV ECX,dword ptr [EAX + 0x6c]
008040c1  83c06c  ADD EAX,0x6c
008040c4  83f906  CMP ECX,0x6
008040c7  7504  JNZ 0x008040cd
008040c9  33d2  XOR EDX,EDX
008040cb  8710  XCHG dword ptr [EAX],EDX
008040cd  c20400  RET 0x4

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer ObjectRegistry_FindBorrowedInLot(void * this, ulonglong objectId)
Owned ranges: [[00c6dc80, 00c6dcbc]]

00c6dc80  56  PUSH ESI
00c6dc81  57  PUSH EDI
00c6dc82  8bf9  MOV EDI,ECX
00c6dc84  e8e798ccff  CALL 0x00937570
00c6dc89  85c0  TEST EAX,EAX
00c6dc8b  7429  JZ 0x00c6dcb6
00c6dc8d  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00c6dc91  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00c6dc95  51  PUSH ECX
00c6dc96  52  PUSH EDX
00c6dc97  8bc8  MOV ECX,EAX
00c6dc99  e8e2a2ccff  CALL 0x00937f80
00c6dc9e  8bf0  MOV ESI,EAX
00c6dca0  85f6  TEST ESI,ESI
00c6dca2  7412  JZ 0x00c6dcb6
00c6dca4  8bce  MOV ECX,ESI
00c6dca6  e88514a2ff  CALL 0x0068f130
00c6dcab  3bc7  CMP EAX,EDI
00c6dcad  7507  JNZ 0x00c6dcb6
00c6dcaf  5f  POP EDI
00c6dcb0  8bc6  MOV EAX,ESI
00c6dcb2  5e  POP ESI
00c6dcb3  c20800  RET 0x8
00c6dcb6  5f  POP EDI
00c6dcb7  33c0  XOR EAX,EAX
00c6dcb9  5e  POP ESI
00c6dcba  c20800  RET 0x8

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool Lot_ContainsLocalPoint(void * this, LotPaintPoint * point)
Owned ranges: [[0074aa80, 0074aad3]]

0074aa80  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0074aa84  f30f1000  MOVSS XMM0,dword ptr [EAX]
0074aa88  0f57d2  XORPS XMM2,XMM2
0074aa8b  0f2fc2  COMISS XMM0,XMM2
0074aa8e  f30f104804  MOVSS XMM1,dword ptr [EAX + 0x4]
0074aa93  723a  JC 0x0074aacf
0074aa95  f30f2a9974010000  CVTSI2SS XMM3,dword ptr [ECX + 0x174]
0074aa9d  0f2fd8  COMISS XMM3,XMM0
0074aaa0  722d  JC 0x0074aacf
0074aaa2  0f2fca  COMISS XMM1,XMM2
0074aaa5  7228  JC 0x0074aacf
0074aaa7  f30f2a8178010000  CVTSI2SS XMM0,dword ptr [ECX + 0x178]
0074aaaf  0f2fc1  COMISS XMM0,XMM1
0074aab2  721b  JC 0x0074aacf
0074aab4  8b4008  MOV EAX,dword ptr [EAX + 0x8]
0074aab7  3b817c010000  CMP EAX,dword ptr [ECX + 0x17c]
0074aabd  7c10  JL 0x0074aacf
0074aabf  3b8180010000  CMP EAX,dword ptr [ECX + 0x180]
0074aac5  7f08  JG 0x0074aacf
0074aac7  b801000000  MOV EAX,0x1
0074aacc  c20400  RET 0x4
0074aacf  33c0  XOR EAX,EAX
0074aad1  c20400  RET 0x4

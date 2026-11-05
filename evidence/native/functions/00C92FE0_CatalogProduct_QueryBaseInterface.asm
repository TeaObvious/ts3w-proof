# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer CatalogProduct_QueryBaseInterface(void * this, uint interfaceId)
Owned ranges: [[00c92fe0, 00c93010]]

00c92fe0  8bc1  MOV EAX,ECX
00c92fe2  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c92fe6  81f9073b4ab1  CMP ECX,0xb14a3b07
00c92fec  7420  JZ 0x00c9300e
00c92fee  81f9d19e2602  CMP ECX,0x2269ed1
00c92ff4  7418  JZ 0x00c9300e
00c92ff6  81f902b854eb  CMP ECX,0xeb54b802
00c92ffc  7410  JZ 0x00c9300e
00c92ffe  33d2  XOR EDX,EDX
00c93000  81f96e513fee  CMP ECX,0xee3f516e
00c93006  0f95c2  SETNZ DL
00c93009  83ea01  SUB EDX,0x1
00c9300c  23c2  AND EAX,EDX
00c9300e  c20400  RET 0x4

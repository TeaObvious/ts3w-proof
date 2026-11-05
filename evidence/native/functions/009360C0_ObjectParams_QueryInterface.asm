# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void * ObjectParams_QueryInterface(void * this, dword interfaceId)
Owned ranges: [[009360c0, 009360f0]]

009360c0  8bc1  MOV EAX,ECX
009360c2  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
009360c6  81f95034dc02  CMP ECX,0x2dc3450
009360cc  7420  JZ 0x009360ee
009360ce  81f9d19e2602  CMP ECX,0x2269ed1
009360d4  7418  JZ 0x009360ee
009360d6  81f902b854eb  CMP ECX,0xeb54b802
009360dc  7410  JZ 0x009360ee
009360de  33d2  XOR EDX,EDX
009360e0  81f96e513fee  CMP ECX,0xee3f516e
009360e6  0f95c2  SETNZ DL
009360e9  83ea01  SUB EDX,0x1
009360ec  23c2  AND EAX,EDX
009360ee  c20400  RET 0x4

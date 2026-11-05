# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined1 LotLocation_SelectQuadrantFromFraction(float param_1, float param_2)
Owned ranges: [[00af7bc0, 00af7c1e]]

00af7bc0  d9442404  FLD float ptr [ESP + 0x4]
00af7bc4  83ec08  SUB ESP,0x8
00af7bc7  dd1c24  FSTP double ptr [ESP]
00af7bca  e8017c4800  CALL 0x00f7f7d0
00af7bcf  d86c240c  FSUBR float ptr [ESP + 0xc]
00af7bd3  d95c240c  FSTP float ptr [ESP + 0xc]
00af7bd7  d9442410  FLD float ptr [ESP + 0x10]
00af7bdb  dd1c24  FSTP double ptr [ESP]
00af7bde  e8ed7b4800  CALL 0x00f7f7d0
00af7be3  d86c2410  FSUBR float ptr [ESP + 0x10]
00af7be7  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00af7bef  f30f5c44240c  SUBSS XMM0,dword ptr [ESP + 0xc]
00af7bf5  83c408  ADD ESP,0x8
00af7bf8  d9542408  FST float ptr [ESP + 0x8]
00af7bfc  d9442404  FLD float ptr [ESP + 0x4]
00af7c00  dff1  FCOMIP ST0,ST1
00af7c02  ddd8  FSTP ST0
00af7c04  760d  JBE 0x00af7c13
00af7c06  0f2f442408  COMISS XMM0,dword ptr [ESP + 0x8]
00af7c0b  7603  JBE 0x00af7c10
00af7c0d  b001  MOV AL,0x1
00af7c0f  c3  RET
00af7c10  b002  MOV AL,0x2
00af7c12  c3  RET
00af7c13  0f2f442408  COMISS XMM0,dword ptr [ESP + 0x8]
00af7c18  b008  MOV AL,0x8
00af7c1a  7702  JA 0x00af7c1e
00af7c1c  b004  MOV AL,0x4
00af7c1e  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void TerrainBrush_InitializeEpisodeAspects(void * this, pointer lot, LotPaintPoint * point)
Owned ranges: [[00d197e0, 00d19840]]

00d197e0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00d197e4  56  PUSH ESI
00d197e5  57  PUSH EDI
00d197e6  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00d197ea  8bf1  MOV ESI,ECX
00d197ec  8986c0000000  MOV dword ptr [ESI + 0xc0],EAX
00d197f2  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00d197f8  57  PUSH EDI
00d197f9  e8922ed7ff  CALL 0x00a8c690
00d197fe  d99ec4000000  FSTP float ptr [ESI + 0xc4]
00d19804  0f57c0  XORPS XMM0,XMM0
00d19807  f30f1186ac000000  MOVSS dword ptr [ESI + 0xac],XMM0
00d1980f  d907  FLD float ptr [EDI]
00d19811  f30f104704  MOVSS XMM0,dword ptr [EDI + 0x4]
00d19816  d99ea4000000  FSTP float ptr [ESI + 0xa4]
00d1981c  f30f1186a8000000  MOVSS dword ptr [ESI + 0xa8],XMM0
00d19824  8b86a4000000  MOV EAX,dword ptr [ESI + 0xa4]
00d1982a  8b8ea8000000  MOV ECX,dword ptr [ESI + 0xa8]
00d19830  5f  POP EDI
00d19831  89869c000000  MOV dword ptr [ESI + 0x9c],EAX
00d19837  898ea0000000  MOV dword ptr [ESI + 0xa0],ECX
00d1983d  5e  POP ESI
00d1983e  c20800  RET 0x8

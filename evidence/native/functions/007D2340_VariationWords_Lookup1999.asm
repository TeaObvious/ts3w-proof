# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint VariationWords_Lookup1999(uint identity)
Owned ranges: [[007d2340, 007d2365]]

007d2340  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
007d2344  b86b6f4606  MOV EAX,0x6466f6b
007d2349  f7e1  MUL ECX
007d234b  8bc1  MOV EAX,ECX
007d234d  2bc2  SUB EAX,EDX
007d234f  d1e8  SHR EAX,0x1
007d2351  03c2  ADD EAX,EDX
007d2353  c1e80a  SHR EAX,0xa
007d2356  69c0cf070000  IMUL EAX,EAX,0x7cf
007d235c  2bc8  SUB ECX,EAX
007d235e  8b048d50920101  MOV EAX,dword ptr [ECX*0x4 + 0x1019250]
007d2365  c3  RET

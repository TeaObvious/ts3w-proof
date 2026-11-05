# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00a8b160 Catalog_TestGardenCategoryOrLowFunctionBit31
# Body [[00a8b160, 00a8b183]]; owned bytes=36
00a8b160  8b81b8000000  MOV EAX,dword ptr [ECX + 0xb8]
00a8b166  2500000080  AND EAX,0x80000000
00a8b16b  33d2  XOR EDX,EDX
00a8b16d  0bc2  OR EAX,EDX
00a8b16f  750d  JNZ 0x00a8b17e
00a8b171  f781d0000000000e0000  TEST dword ptr [ECX + 0xd0],0xe00
00a8b17b  7501  JNZ 0x00a8b17e
00a8b17d  c3  RET
00a8b17e  b801000000  MOV EAX,0x1
00a8b183  c3  RET

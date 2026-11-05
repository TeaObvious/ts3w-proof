# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00c97a00 Catalog_TestIntersectionCategoryOrD0Bit4
# Body [[00c97a00, 00c97a28]]; owned bytes=41
00c97a00  f7819800000000001000  TEST dword ptr [ECX + 0x98],0x100000
00c97a0a  7517  JNZ 0x00c97a23
00c97a0c  8b81d0000000  MOV EAX,dword ptr [ECX + 0xd0]
00c97a12  a90a010040  TEST EAX,0x4000010a
00c97a17  750a  JNZ 0x00c97a23
00c97a19  c1e802  SHR EAX,0x2
00c97a1c  a801  TEST AL,0x1
00c97a1e  7503  JNZ 0x00c97a23
00c97a20  33c0  XOR EAX,EAX
00c97a22  c3  RET
00c97a23  b801000000  MOV EAX,0x1
00c97a28  c3  RET

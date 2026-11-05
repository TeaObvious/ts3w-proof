# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void HashGrowth_SelectPrimeCapacity(void * this, void * outputGrowth, uint bucketCount, uint currentCount, uint increment)
Owned ranges: [[004e0ec0, 004e102d]]

004e0ec0  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004e0ec4  83ec08  SUB ESP,0x8
004e0ec7  57  PUSH EDI
004e0ec8  8bf9  MOV EDI,ECX
004e0eca  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004e0ece  03c1  ADD EAX,ECX
004e0ed0  3b4708  CMP EAX,dword ptr [EDI + 0x8]
004e0ed3  0f8640010000  JBE 0x004e1019
004e0ed9  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
004e0edd  83f901  CMP ECX,0x1
004e0ee0  7502  JNZ 0x004e0ee4
004e0ee2  33c9  XOR ECX,ECX
004e0ee4  85c0  TEST EAX,EAX
004e0ee6  d907  FLD float ptr [EDI]
004e0ee8  d9542414  FST float ptr [ESP + 0x14]
004e0eec  8944241c  MOV dword ptr [ESP + 0x1c],EAX
004e0ef0  db44241c  FILD dword ptr [ESP + 0x1c]
004e0ef4  7d06  JGE 0x004e0efc
004e0ef6  d8054899f900  FADD float ptr [0x00f99948]
004e0efc  85c9  TEST ECX,ECX
004e0efe  d8f1  FDIV ST0,ST1
004e0f00  894c2418  MOV dword ptr [ESP + 0x18],ECX
004e0f04  d954241c  FST float ptr [ESP + 0x1c]
004e0f08  db442418  FILD dword ptr [ESP + 0x18]
004e0f0c  7d06  JGE 0x004e0f14
004e0f0e  d8054899f900  FADD float ptr [0x00f99948]
004e0f14  d9542418  FST float ptr [ESP + 0x18]
004e0f18  d9c9  FXCH
004e0f1a  dff1  FCOMIP ST0,ST1
004e0f1c  0f86c1000000  JBE 0x004e0fe3
004e0f22  f30f104704  MOVSS XMM0,dword ptr [EDI + 0x4]
004e0f27  ddd9  FSTP ST1
004e0f29  f30f59442418  MULSS XMM0,dword ptr [ESP + 0x18]
004e0f2f  ddd8  FSTP ST0
004e0f31  0f2f44241c  COMISS XMM0,dword ptr [ESP + 0x1c]
004e0f36  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
004e0f3c  8d442418  LEA EAX,[ESP + 0x18]
004e0f40  7704  JA 0x004e0f46
004e0f42  8d44241c  LEA EAX,[ESP + 0x1c]
004e0f46  d900  FLD float ptr [EAX]
004e0f48  56  PUSH ESI
004e0f49  d97c2420  FNSTCW word ptr [ESP + 0x20]
004e0f4d  0fb7442420  MOVZX EAX,word ptr [ESP + 0x20]
004e0f52  0d000c0000  OR EAX,0xc00
004e0f57  8944241c  MOV dword ptr [ESP + 0x1c],EAX
004e0f5b  8d442420  LEA EAX,[ESP + 0x20]
004e0f5f  d96c241c  FLDCW word ptr [ESP + 0x1c]
004e0f63  50  PUSH EAX
004e0f64  688099fb00  PUSH 0xfb9980
004e0f69  688095fb00  PUSH 0xfb9580
004e0f6e  df7c2414  FISTP qword ptr [ESP + 0x14]
004e0f72  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004e0f76  d96c242c  FLDCW word ptr [ESP + 0x2c]
004e0f7a  8954242c  MOV dword ptr [ESP + 0x2c],EDX
004e0f7e  e8fd866200  CALL 0x00b09680
004e0f83  8b30  MOV ESI,dword ptr [EAX]
004e0f85  8bce  MOV ECX,ESI
004e0f87  85c9  TEST ECX,ECX
004e0f89  894c242c  MOV dword ptr [ESP + 0x2c],ECX
004e0f8d  db44242c  FILD dword ptr [ESP + 0x2c]
004e0f91  7d06  JGE 0x004e0f99
004e0f93  d8054899f900  FADD float ptr [0x00f99948]
004e0f99  d84c2424  FMUL float ptr [ESP + 0x24]
004e0f9d  83c404  ADD ESP,0x4
004e0fa0  dd1c24  FSTP double ptr [ESP]
004e0fa3  ff15a866f900  CALL dword ptr [0x00f966a8]
004e0fa9  d97c2428  FNSTCW word ptr [ESP + 0x28]
004e0fad  0fb7442428  MOVZX EAX,word ptr [ESP + 0x28]
004e0fb2  83c408  ADD ESP,0x8
004e0fb5  0d000c0000  OR EAX,0xc00
004e0fba  8944241c  MOV dword ptr [ESP + 0x1c],EAX
004e0fbe  8b442414  MOV EAX,dword ptr [ESP + 0x14]
004e0fc2  d96c241c  FLDCW word ptr [ESP + 0x1c]
004e0fc6  897004  MOV dword ptr [EAX + 0x4],ESI
004e0fc9  5e  POP ESI
004e0fca  c60001  MOV byte ptr [EAX],0x1
004e0fcd  df7c2404  FISTP qword ptr [ESP + 0x4]
004e0fd1  8b542404  MOV EDX,dword ptr [ESP + 0x4]
004e0fd5  895708  MOV dword ptr [EDI + 0x8],EDX
004e0fd8  5f  POP EDI
004e0fd9  d96c2418  FLDCW word ptr [ESP + 0x18]
004e0fdd  83c408  ADD ESP,0x8
004e0fe0  c21000  RET 0x10
004e0fe3  dec9  FMULP
004e0fe5  83ec08  SUB ESP,0x8
004e0fe8  dd1c24  FSTP double ptr [ESP]
004e0feb  ff15a866f900  CALL dword ptr [0x00f966a8]
004e0ff1  d97c2424  FNSTCW word ptr [ESP + 0x24]
004e0ff5  0fb7442424  MOVZX EAX,word ptr [ESP + 0x24]
004e0ffa  83c408  ADD ESP,0x8
004e0ffd  0d000c0000  OR EAX,0xc00
004e1002  89442418  MOV dword ptr [ESP + 0x18],EAX
004e1006  d96c2418  FLDCW word ptr [ESP + 0x18]
004e100a  df7c2404  FISTP qword ptr [ESP + 0x4]
004e100e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
004e1012  894708  MOV dword ptr [EDI + 0x8],EAX
004e1015  d96c241c  FLDCW word ptr [ESP + 0x1c]
004e1019  8b442410  MOV EAX,dword ptr [ESP + 0x10]
004e101d  c7400400000000  MOV dword ptr [EAX + 0x4],0x0
004e1024  c60000  MOV byte ptr [EAX],0x0
004e1027  5f  POP EDI
004e1028  83c408  ADD ESP,0x8
004e102b  c21000  RET 0x10

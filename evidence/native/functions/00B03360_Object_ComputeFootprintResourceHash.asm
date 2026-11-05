# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Object_ComputeFootprintResourceHash
Paired actual annotated Ghidra pseudocode: 00B03360_Object_ComputeFootprintResourceHash.c
Owned ranges: [[00b03360, 00b03385]]
Envelope bytes=38

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b03360  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00b03364  85c9  TEST ECX,ECX
00b03366  740f  JZ 0x00b03377
00b03368  a1a89f1e01  MOV EAX,[0x011e9fa8]
00b0336d  50  PUSH EAX
00b0336e  e8ed0ee3ff  CALL 0x00934260
00b03373  85c0  TEST EAX,EAX
00b03375  7505  JNZ 0x00b0337c
00b03377  33c0  XOR EAX,EAX
00b03379  33d2  XOR EDX,EDX
00b0337b  c3  RET
00b0337c  6aff  PUSH -0x1
00b0337e  8bc8  MOV ECX,EAX
00b03380  e80b35e4ff  CALL 0x00946890
00b03385  c3  RET
Owned instructions=15 owned bytes=38 gap/nonowned bytes=0

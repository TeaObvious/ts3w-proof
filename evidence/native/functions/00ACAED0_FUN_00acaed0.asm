# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3
Explicit program /TS3W.exe; read-only stored function body, no analyzer/definitions/metadata edits/save.
Paired actual Ghidra pseudocode: 00ACAED0_FUN_00acaed0.c
Body [[00acaed0, 00acaf64]]; envelope exclusive end 00acaf65

GHIDRA LISTING (original bytes)
00acaed0  56  PUSH ESI
00acaed1  8bf1  MOV ESI,ECX
00acaed3  83bee802000000  CMP dword ptr [ESI + 0x2e8],0x0
00acaeda  c6861404000001  MOV byte ptr [ESI + 0x414],0x1
00acaee1  7521  JNZ 0x00acaf04
00acaee3  8b8698020000  MOV EAX,dword ptr [ESI + 0x298]
00acaee9  85c0  TEST EAX,EAX
00acaeeb  740e  JZ 0x00acaefb
00acaeed  8b8820010000  MOV ECX,dword ptr [EAX + 0x120]
00acaef3  3b8824010000  CMP ECX,dword ptr [EAX + 0x124]
00acaef9  7509  JNZ 0x00acaf04
00acaefb  8bce  MOV ECX,ESI
00acaefd  e8feafffff  CALL 0x00ac5f00
00acaf02  eb07  JMP 0x00acaf0b
00acaf04  8bce  MOV ECX,ESI
00acaf06  e885edfeff  CALL 0x00ab9c90
00acaf0b  83bee802000000  CMP dword ptr [ESI + 0x2e8],0x0
00acaf12  c6861404000000  MOV byte ptr [ESI + 0x414],0x0
00acaf19  752e  JNZ 0x00acaf49
00acaf1b  8b8698020000  MOV EAX,dword ptr [ESI + 0x298]
00acaf21  85c0  TEST EAX,EAX
00acaf23  740e  JZ 0x00acaf33
00acaf25  8b9020010000  MOV EDX,dword ptr [EAX + 0x120]
00acaf2b  3b9024010000  CMP EDX,dword ptr [EAX + 0x124]
00acaf31  7516  JNZ 0x00acaf49
00acaf33  f30f2c8620040000  CVTTSS2SI EAX,dword ptr [ESI + 0x420]
00acaf3b  038630030000  ADD EAX,dword ptr [ESI + 0x330]
00acaf41  038624030000  ADD EAX,dword ptr [ESI + 0x324]
00acaf47  eb14  JMP 0x00acaf5d
00acaf49  f30f2c8620040000  CVTTSS2SI EAX,dword ptr [ESI + 0x420]
00acaf51  038650030000  ADD EAX,dword ptr [ESI + 0x350]
00acaf57  03864c030000  ADD EAX,dword ptr [ESI + 0x34c]
00acaf5d  85c0  TEST EAX,EAX
00acaf5f  5e  POP ESI
00acaf60  7d02  JGE 0x00acaf64
00acaf62  33c0  XOR EAX,EAX
00acaf64  c3  RET

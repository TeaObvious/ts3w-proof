# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint StairProduct_CountAuthoredAndInstalledPresets(void * this)
Owned ranges: [[00c96fa0, 00c96ffe]]

00c96fa0  51  PUSH ECX
00c96fa1  56  PUSH ESI
00c96fa2  8bb1fc000000  MOV ESI,dword ptr [ECX + 0xfc]
00c96fa8  2bb1f8000000  SUB ESI,dword ptr [ECX + 0xf8]
00c96fae  6a00  PUSH 0x0
00c96fb0  8d442408  LEA EAX,[ESP + 0x8]
00c96fb4  50  PUSH EAX
00c96fb5  83c108  ADD ECX,0x8
00c96fb8  51  PUSH ECX
00c96fb9  c1fe03  SAR ESI,0x3
00c96fbc  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c96fc4  e8d792e9ff  CALL 0x00b302a0
00c96fc9  8bc8  MOV ECX,EAX
00c96fcb  e860a8e9ff  CALL 0x00b31830
00c96fd0  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c96fd4  85c9  TEST ECX,ECX
00c96fd6  7420  JZ 0x00c96ff8
00c96fd8  57  PUSH EDI
00c96fd9  6a05  PUSH 0x5
00c96fdb  e8803297ff  CALL 0x0060a260
00c96fe0  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c96fe4  85c9  TEST ECX,ECX
00c96fe6  8bf8  MOV EDI,EAX
00c96fe8  7407  JZ 0x00c96ff1
00c96fea  8b11  MOV EDX,dword ptr [ECX]
00c96fec  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c96fef  ffd0  CALL EAX
00c96ff1  8d0437  LEA EAX,[EDI + ESI*0x1]
00c96ff4  5f  POP EDI
00c96ff5  5e  POP ESI
00c96ff6  59  POP ECX
00c96ff7  c3  RET
00c96ff8  33c0  XOR EAX,EAX
00c96ffa  8bc6  MOV EAX,ESI
00c96ffc  5e  POP ESI
00c96ffd  59  POP ECX
00c96ffe  c3  RET

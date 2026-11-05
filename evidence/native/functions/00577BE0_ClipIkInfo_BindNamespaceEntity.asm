# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ClipIkInfo_BindNamespaceEntity
Paired actual annotated Ghidra pseudocode: 00577BE0_ClipIkInfo_BindNamespaceEntity.c
Owned ranges: [[00577be0, 00577ccb]]
Envelope bytes=236

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00577be0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00577be4  85c0  TEST EAX,EAX
00577be6  0f84dd000000  JZ 0x00577cc9
00577bec  3981d0000000  CMP dword ptr [ECX + 0xd0],EAX
00577bf2  57  PUSH EDI
00577bf3  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00577bf7  751c  JNZ 0x00577c15
00577bf9  85ff  TEST EDI,EDI
00577bfb  89b9c8000000  MOV dword ptr [ECX + 0xc8],EDI
00577c01  7412  JZ 0x00577c15
00577c03  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00577c06  8981c0000000  MOV dword ptr [ECX + 0xc0],EAX
00577c0c  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00577c0f  8991c4000000  MOV dword ptr [ECX + 0xc4],EDX
00577c15  8b81a0000000  MOV EAX,dword ptr [ECX + 0xa0]
00577c1b  3b81a4000000  CMP EAX,dword ptr [ECX + 0xa4]
00577c21  0f84a1000000  JZ 0x00577cc8
00577c27  8b9190000000  MOV EDX,dword ptr [ECX + 0x90]
00577c2d  3b9194000000  CMP EDX,dword ptr [ECX + 0x94]
00577c33  0f848f000000  JZ 0x00577cc8
00577c39  8b9194000000  MOV EDX,dword ptr [ECX + 0x94]
00577c3f  8389cc00000003  OR dword ptr [ECX + 0xcc],0x3
00577c46  55  PUSH EBP
00577c47  8ba990000000  MOV EBP,dword ptr [ECX + 0x90]
00577c4d  3bea  CMP EBP,EDX
00577c4f  89542410  MOV dword ptr [ESP + 0x10],EDX
00577c53  7472  JZ 0x00577cc7
00577c55  53  PUSH EBX
00577c56  56  PUSH ESI
00577c57  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00577c5a  8b5d0c  MOV EBX,dword ptr [EBP + 0xc]
00577c5d  3bc3  CMP EAX,EBX
00577c5f  745a  JZ 0x00577cbb
00577c61  8b9000010000  MOV EDX,dword ptr [EAX + 0x100]
00577c67  33f6  XOR ESI,ESI
00577c69  85d2  TEST EDX,EDX
00577c6b  7c09  JL 0x00577c76
00577c6d  8bb1b0000000  MOV ESI,dword ptr [ECX + 0xb0]
00577c73  8b3496  MOV ESI,dword ptr [ESI + EDX*0x4]
00577c76  3b742414  CMP ESI,dword ptr [ESP + 0x14]
00577c7a  7532  JNZ 0x00577cae
00577c7c  85ff  TEST EDI,EDI
00577c7e  7408  JZ 0x00577c88
00577c80  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00577c83  8b770c  MOV ESI,dword ptr [EDI + 0xc]
00577c86  eb04  JMP 0x00577c8c
00577c88  33d2  XOR EDX,EDX
00577c8a  33f6  XOR ESI,ESI
00577c8c  85ff  TEST EDI,EDI
00577c8e  8990e0000000  MOV dword ptr [EAX + 0xe0],EDX
00577c94  89b0e4000000  MOV dword ptr [EAX + 0xe4],ESI
00577c9a  7412  JZ 0x00577cae
00577c9c  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00577c9f  8990e8000000  MOV dword ptr [EAX + 0xe8],EDX
00577ca5  8b570c  MOV EDX,dword ptr [EDI + 0xc]
00577ca8  8990ec000000  MOV dword ptr [EAX + 0xec],EDX
00577cae  0510010000  ADD EAX,0x110
00577cb3  3bc3  CMP EAX,EBX
00577cb5  75aa  JNZ 0x00577c61
00577cb7  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00577cbb  81c5b80a0000  ADD EBP,0xab8
00577cc1  3bea  CMP EBP,EDX
00577cc3  7592  JNZ 0x00577c57
00577cc5  5e  POP ESI
00577cc6  5b  POP EBX
00577cc7  5d  POP EBP
00577cc8  5f  POP EDI
00577cc9  c20800  RET 0x8
Owned instructions=68 owned bytes=236 gap/nonowned bytes=0

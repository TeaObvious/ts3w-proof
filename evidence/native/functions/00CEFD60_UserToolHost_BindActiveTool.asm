# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: UserToolHost_BindActiveTool
Paired actual annotated Ghidra pseudocode: 00CEFD60_UserToolHost_BindActiveTool.c
Owned ranges: [[00cefd60, 00cefec4]]
Envelope bytes=357

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00cefd60  83ec0c  SUB ESP,0xc
00cefd63  55  PUSH EBP
00cefd64  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00cefd68  56  PUSH ESI
00cefd69  8bf1  MOV ESI,ECX
00cefd6b  8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00cefd6e  3be8  CMP EBP,EAX
00cefd70  57  PUSH EDI
00cefd71  8d7e2c  LEA EDI,[ESI + 0x2c]
00cefd74  0f8442010000  JZ 0x00cefebc
00cefd7a  53  PUSH EBX
00cefd7b  33db  XOR EBX,EBX
00cefd7d  83bec801000001  CMP dword ptr [ESI + 0x1c8],0x1
00cefd84  899eb8010000  MOV dword ptr [ESI + 0x1b8],EBX
00cefd8a  899ebc010000  MOV dword ptr [ESI + 0x1bc],EBX
00cefd90  899ec0010000  MOV dword ptr [ESI + 0x1c0],EBX
00cefd96  899ec4010000  MOV dword ptr [ESI + 0x1c4],EBX
00cefd9c  750a  JNZ 0x00cefda8
00cefd9e  0f31  RDTSC
00cefda0  8986b8010000  MOV dword ptr [ESI + 0x1b8],EAX
00cefda6  eb19  JMP 0x00cefdc1
00cefda8  8d442410  LEA EAX,[ESP + 0x10]
00cefdac  50  PUSH EAX
00cefdad  ff15bc63f900  CALL dword ptr [0x00f963bc]
00cefdb3  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00cefdb7  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00cefdbb  898eb8010000  MOV dword ptr [ESI + 0x1b8],ECX
00cefdc1  8996bc010000  MOV dword ptr [ESI + 0x1bc],EDX
00cefdc7  8b0f  MOV ECX,dword ptr [EDI]
00cefdc9  3bcb  CMP ECX,EBX
00cefdcb  a1c4db1e01  MOV EAX,[0x011edbc4]
00cefdd0  89442420  MOV dword ptr [ESP + 0x20],EAX
00cefdd4  7458  JZ 0x00cefe2e
00cefdd6  8b11  MOV EDX,dword ptr [ECX]
00cefdd8  8b4234  MOV EAX,dword ptr [EDX + 0x34]
00cefddb  ffd0  CALL EAX
00cefddd  84c0  TEST AL,AL
00cefddf  750e  JNZ 0x00cefdef
00cefde1  57  PUSH EDI
00cefde2  8d8e80010000  LEA ECX,[ESI + 0x180]
00cefde8  e823ffffff  CALL 0x00cefd10
00cefded  eb30  JMP 0x00cefe1f
00cefdef  8b0f  MOV ECX,dword ptr [EDI]
00cefdf1  8b710c  MOV ESI,dword ptr [ECX + 0xc]
00cefdf4  3bf3  CMP ESI,EBX
00cefdf6  740d  JZ 0x00cefe05
00cefdf8  8d96d0000000  LEA EDX,[ESI + 0xd0]
00cefdfe  52  PUSH EDX
00cefdff  ff152c61f900  CALL dword ptr [0x00f9612c]
00cefe05  8b0f  MOV ECX,dword ptr [EDI]
00cefe07  8b01  MOV EAX,dword ptr [ECX]
00cefe09  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00cefe0c  ffd2  CALL EDX
00cefe0e  3bf3  CMP ESI,EBX
00cefe10  740d  JZ 0x00cefe1f
00cefe12  81c6d0000000  ADD ESI,0xd0
00cefe18  56  PUSH ESI
00cefe19  ff153061f900  CALL dword ptr [0x00f96130]
00cefe1f  395c2420  CMP dword ptr [ESP + 0x20],EBX
00cefe23  7409  JZ 0x00cefe2e
00cefe25  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00cefe29  e842f6f6ff  CALL 0x00c5f470
00cefe2e  8b0f  MOV ECX,dword ptr [EDI]
00cefe30  3be9  CMP EBP,ECX
00cefe32  742a  JZ 0x00cefe5e
00cefe34  3beb  CMP EBP,EBX
00cefe36  7404  JZ 0x00cefe3c
00cefe38  83450401  ADD dword ptr [EBP + 0x4],0x1
00cefe3c  3bcb  CMP ECX,EBX
00cefe3e  892f  MOV dword ptr [EDI],EBP
00cefe40  741c  JZ 0x00cefe5e
00cefe42  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00cefe45  83c0ff  ADD EAX,-0x1
00cefe48  3bc3  CMP EAX,EBX
00cefe4a  894104  MOV dword ptr [ECX + 0x4],EAX
00cefe4d  750f  JNZ 0x00cefe5e
00cefe4f  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00cefe56  8b01  MOV EAX,dword ptr [ECX]
00cefe58  8b10  MOV EDX,dword ptr [EAX]
00cefe5a  6a01  PUSH 0x1
00cefe5c  ffd2  CALL EDX
00cefe5e  391f  CMP dword ptr [EDI],EBX
00cefe60  7417  JZ 0x00cefe79
00cefe62  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00cefe66  3bcb  CMP ECX,EBX
00cefe68  7451  JZ 0x00cefebb
00cefe6a  e8f1f5f6ff  CALL 0x00c5f460
00cefe6f  5b  POP EBX
00cefe70  5f  POP EDI
00cefe71  5e  POP ESI
00cefe72  5d  POP EBP
00cefe73  83c40c  ADD ESP,0xc
00cefe76  c20800  RET 0x8
00cefe79  e82295a7ff  CALL 0x007693a0
00cefe7e  3bc3  CMP EAX,EBX
00cefe80  7439  JZ 0x00cefebb
00cefe82  c74424108c5f0601  MOV dword ptr [ESP + 0x10],0x1065f8c
00cefe8a  33c9  XOR ECX,ECX
00cefe8c  8d542414  LEA EDX,[ESP + 0x14]
00cefe90  870a  XCHG dword ptr [EDX],ECX
00cefe92  8b10  MOV EDX,dword ptr [EAX]
00cefe94  8b5218  MOV EDX,dword ptr [EDX + 0x18]
00cefe97  33c9  XOR ECX,ECX
00cefe99  385c2424  CMP byte ptr [ESP + 0x24],BL
00cefe9d  53  PUSH EBX
00cefe9e  0f95c1  SETNZ CL
00cefea1  c74424148c5f0601  MOV dword ptr [ESP + 0x14],0x1065f8c
00cefea9  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00cefead  8d4c2414  LEA ECX,[ESP + 0x14]
00cefeb1  51  PUSH ECX
00cefeb2  680ae94011  PUSH 0x1140e90a
00cefeb7  8bc8  MOV ECX,EAX
00cefeb9  ffd2  CALL EDX
00cefebb  5b  POP EBX
00cefebc  5f  POP EDI
00cefebd  5e  POP ESI
00cefebe  5d  POP EBP
00cefebf  83c40c  ADD ESP,0xc
00cefec2  c20800  RET 0x8
Owned instructions=119 owned bytes=357 nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Vector16_InsertRepeated(void * this, undefined4 * param_1, undefined4 * param_2, undefined4 * param_3)
Owned ranges: [[005cfcf0, 005cfea5]]

005cfcf0  55  PUSH EBP
005cfcf1  8bec  MOV EBP,ESP
005cfcf3  83e4f0  AND ESP,0xfffffff0
005cfcf6  83ec24  SUB ESP,0x24
005cfcf9  53  PUSH EBX
005cfcfa  56  PUSH ESI
005cfcfb  8bf1  MOV ESI,ECX
005cfcfd  8b4604  MOV EAX,dword ptr [ESI + 0x4]
005cfd00  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
005cfd03  2bc8  SUB ECX,EAX
005cfd05  57  PUSH EDI
005cfd06  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
005cfd09  c1f904  SAR ECX,0x4
005cfd0c  3bf9  CMP EDI,ECX
005cfd0e  0f87bb000000  JA 0x005cfdcf
005cfd14  85ff  TEST EDI,EDI
005cfd16  0f8681010000  JBE 0x005cfe9d
005cfd1c  2b4508  SUB EAX,dword ptr [EBP + 0x8]
005cfd1f  8b5510  MOV EDX,dword ptr [EBP + 0x10]
005cfd22  0f2802  MOVAPS XMM0,xmmword ptr [EDX]
005cfd25  8b5e04  MOV EBX,dword ptr [ESI + 0x4]
005cfd28  c1f804  SAR EAX,0x4
005cfd2b  3bf8  CMP EDI,EAX
005cfd2d  0f29442420  MOVAPS xmmword ptr [ESP + 0x20],XMM0
005cfd32  8944241c  MOV dword ptr [ESP + 0x1c],EAX
005cfd36  7349  JNC 0x005cfd81
005cfd38  c1e704  SHL EDI,0x4
005cfd3b  8bc3  MOV EAX,EBX
005cfd3d  2bc7  SUB EAX,EDI
005cfd3f  8944241c  MOV dword ptr [ESP + 0x1c],EAX
005cfd43  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
005cfd47  51  PUSH ECX
005cfd48  53  PUSH EBX
005cfd49  53  PUSH EBX
005cfd4a  50  PUSH EAX
005cfd4b  8d542428  LEA EDX,[ESP + 0x28]
005cfd4f  52  PUSH EDX
005cfd50  e81bacffff  CALL 0x005ca970
005cfd55  8b442430  MOV EAX,dword ptr [ESP + 0x30]
005cfd59  017e04  ADD dword ptr [ESI + 0x4],EDI
005cfd5c  8b7508  MOV ESI,dword ptr [EBP + 0x8]
005cfd5f  53  PUSH EBX
005cfd60  50  PUSH EAX
005cfd61  56  PUSH ESI
005cfd62  e899330c00  CALL 0x00693100
005cfd67  8d4c2440  LEA ECX,[ESP + 0x40]
005cfd6b  51  PUSH ECX
005cfd6c  03fe  ADD EDI,ESI
005cfd6e  57  PUSH EDI
005cfd6f  56  PUSH ESI
005cfd70  e81b404100  CALL 0x009e3d90
005cfd75  83c42c  ADD ESP,0x2c
005cfd78  5f  POP EDI
005cfd79  5e  POP ESI
005cfd7a  5b  POP EBX
005cfd7b  8be5  MOV ESP,EBP
005cfd7d  5d  POP EBP
005cfd7e  c20c00  RET 0xc
005cfd81  8d542420  LEA EDX,[ESP + 0x20]
005cfd85  52  PUSH EDX
005cfd86  2bf8  SUB EDI,EAX
005cfd88  57  PUSH EDI
005cfd89  53  PUSH EBX
005cfd8a  e881acffff  CALL 0x005caa10
005cfd8f  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
005cfd93  c1e704  SHL EDI,0x4
005cfd96  017e04  ADD dword ptr [ESI + 0x4],EDI
005cfd99  8b4604  MOV EAX,dword ptr [ESI + 0x4]
005cfd9c  8b7d08  MOV EDI,dword ptr [EBP + 0x8]
005cfd9f  51  PUSH ECX
005cfda0  50  PUSH EAX
005cfda1  53  PUSH EBX
005cfda2  8d542430  LEA EDX,[ESP + 0x30]
005cfda6  57  PUSH EDI
005cfda7  52  PUSH EDX
005cfda8  e8c3abffff  CALL 0x005ca970
005cfdad  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
005cfdb1  c1e004  SHL EAX,0x4
005cfdb4  014604  ADD dword ptr [ESI + 0x4],EAX
005cfdb7  8d442440  LEA EAX,[ESP + 0x40]
005cfdbb  50  PUSH EAX
005cfdbc  53  PUSH EBX
005cfdbd  57  PUSH EDI
005cfdbe  e8cd3f4100  CALL 0x009e3d90
005cfdc3  83c42c  ADD ESP,0x2c
005cfdc6  5f  POP EDI
005cfdc7  5e  POP ESI
005cfdc8  5b  POP EBX
005cfdc9  8be5  MOV ESP,EBP
005cfdcb  5d  POP EBP
005cfdcc  c20c00  RET 0xc
005cfdcf  2b06  SUB EAX,dword ptr [ESI]
005cfdd1  c1f804  SAR EAX,0x4
005cfdd4  8d0c00  LEA ECX,[EAX + EAX*0x1]
005cfdd7  7505  JNZ 0x005cfdde
005cfdd9  b901000000  MOV ECX,0x1
005cfdde  03c7  ADD EAX,EDI
005cfde0  3bc8  CMP ECX,EAX
005cfde2  7606  JBE 0x005cfdea
005cfde4  894c2418  MOV dword ptr [ESP + 0x18],ECX
005cfde8  eb06  JMP 0x005cfdf0
005cfdea  89442418  MOV dword ptr [ESP + 0x18],EAX
005cfdee  8bc8  MOV ECX,EAX
005cfdf0  85c9  TEST ECX,ECX
005cfdf2  7426  JZ 0x005cfe1a
005cfdf4  8b560c  MOV EDX,dword ptr [ESI + 0xc]
005cfdf7  68fb000000  PUSH 0xfb
005cfdfc  688899f900  PUSH 0xf99988
005cfe01  6a00  PUSH 0x0
005cfe03  6a00  PUSH 0x0
005cfe05  52  PUSH EDX
005cfe06  6a00  PUSH 0x0
005cfe08  c1e104  SHL ECX,0x4
005cfe0b  6a10  PUSH 0x10
005cfe0d  51  PUSH ECX
005cfe0e  e80d47f1ff  CALL 0x004e4520
005cfe13  83c420  ADD ESP,0x20
005cfe16  8bd8  MOV EBX,EAX
005cfe18  eb02  JMP 0x005cfe1c
005cfe1a  33db  XOR EBX,EBX
005cfe1c  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
005cfe20  8b5508  MOV EDX,dword ptr [EBP + 0x8]
005cfe23  8b06  MOV EAX,dword ptr [ESI]
005cfe25  51  PUSH ECX
005cfe26  53  PUSH EBX
005cfe27  52  PUSH EDX
005cfe28  50  PUSH EAX
005cfe29  8d44242c  LEA EAX,[ESP + 0x2c]
005cfe2d  50  PUSH EAX
005cfe2e  e83dabffff  CALL 0x005ca970
005cfe33  8b442430  MOV EAX,dword ptr [ESP + 0x30]
005cfe37  83c414  ADD ESP,0x14
005cfe3a  85ff  TEST EDI,EDI
005cfe3c  8bcf  MOV ECX,EDI
005cfe3e  7617  JBE 0x005cfe57
005cfe40  8b5510  MOV EDX,dword ptr [EBP + 0x10]
005cfe43  85c0  TEST EAX,EAX
005cfe45  7406  JZ 0x005cfe4d
005cfe47  0f2802  MOVAPS XMM0,xmmword ptr [EDX]
005cfe4a  0f2900  MOVAPS xmmword ptr [EAX],XMM0
005cfe4d  83e901  SUB ECX,0x1
005cfe50  83c010  ADD EAX,0x10
005cfe53  85c9  TEST ECX,ECX
005cfe55  77ec  JA 0x005cfe43
005cfe57  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
005cfe5b  8b4604  MOV EAX,dword ptr [ESI + 0x4]
005cfe5e  8b5508  MOV EDX,dword ptr [EBP + 0x8]
005cfe61  51  PUSH ECX
005cfe62  c1e704  SHL EDI,0x4
005cfe65  037c2420  ADD EDI,dword ptr [ESP + 0x20]
005cfe69  57  PUSH EDI
005cfe6a  50  PUSH EAX
005cfe6b  52  PUSH EDX
005cfe6c  8d44242c  LEA EAX,[ESP + 0x2c]
005cfe70  50  PUSH EAX
005cfe71  e8faaaffff  CALL 0x005ca970
005cfe76  8b06  MOV EAX,dword ptr [ESI]
005cfe78  83c414  ADD ESP,0x14
005cfe7b  85c0  TEST EAX,EAX
005cfe7d  7409  JZ 0x005cfe88
005cfe7f  50  PUSH EAX
005cfe80  e85b46f1ff  CALL 0x004e44e0
005cfe85  83c404  ADD ESP,0x4
005cfe88  8b442418  MOV EAX,dword ptr [ESP + 0x18]
005cfe8c  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
005cfe90  c1e004  SHL EAX,0x4
005cfe93  03c3  ADD EAX,EBX
005cfe95  891e  MOV dword ptr [ESI],EBX
005cfe97  894e04  MOV dword ptr [ESI + 0x4],ECX
005cfe9a  894608  MOV dword ptr [ESI + 0x8],EAX
005cfe9d  5f  POP EDI
005cfe9e  5e  POP ESI
005cfe9f  5b  POP EBX
005cfea0  8be5  MOV ESP,EBP
005cfea2  5d  POP EBP
005cfea3  c20c00  RET 0xc

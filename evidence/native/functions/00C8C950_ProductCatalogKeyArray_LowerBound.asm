# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8C950_ProductCatalogKeyArray_LowerBound.c
Owned ranges: [[00c8c950, 00c8c9c4]]

00c8c950  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c8c954  53  PUSH EBX
00c8c955  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00c8c959  2bcb  SUB ECX,EBX
00c8c95b  b8abaaaa2a  MOV EAX,0x2aaaaaab
00c8c960  f7e9  IMUL ECX
00c8c962  c1fa02  SAR EDX,0x2
00c8c965  56  PUSH ESI
00c8c966  8bf2  MOV ESI,EDX
00c8c968  c1ee1f  SHR ESI,0x1f
00c8c96b  03f2  ADD ESI,EDX
00c8c96d  85f6  TEST ESI,ESI
00c8c96f  7e4f  JLE 0x00c8c9c0
00c8c971  55  PUSH EBP
00c8c972  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
00c8c976  57  PUSH EDI
00c8c977  8b7d00  MOV EDI,dword ptr [EBP]
00c8c97a  8bc6  MOV EAX,ESI
00c8c97c  d1f8  SAR EAX,0x1
00c8c97e  8d0c40  LEA ECX,[EAX + EAX*0x2]
00c8c981  8b14cb  MOV EDX,dword ptr [EBX + ECX*0x8]
00c8c984  3bd7  CMP EDX,EDI
00c8c986  8d0ccb  LEA ECX,[EBX + ECX*0x8]
00c8c989  751a  JNZ 0x00c8c9a5
00c8c98b  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00c8c98e  8b7d04  MOV EDI,dword ptr [EBP + 0x4]
00c8c991  3bd7  CMP EDX,EDI
00c8c993  7510  JNZ 0x00c8c9a5
00c8c995  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00c8c998  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00c8c99b  3bd7  CMP EDX,EDI
00c8c99d  7506  JNZ 0x00c8c9a5
00c8c99f  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00c8c9a2  3b5508  CMP EDX,dword ptr [EBP + 0x8]
00c8c9a5  0f92c2  SETC DL
00c8c9a8  84d2  TEST DL,DL
00c8c9aa  740c  JZ 0x00c8c9b8
00c8c9ac  8d5918  LEA EBX,[ECX + 0x18]
00c8c9af  83c9ff  OR ECX,0xffffffff
00c8c9b2  2bc8  SUB ECX,EAX
00c8c9b4  03f1  ADD ESI,ECX
00c8c9b6  eb02  JMP 0x00c8c9ba
00c8c9b8  8bf0  MOV ESI,EAX
00c8c9ba  85f6  TEST ESI,ESI
00c8c9bc  7fb9  JG 0x00c8c977
00c8c9be  5f  POP EDI
00c8c9bf  5d  POP EBP
00c8c9c0  5e  POP ESI
00c8c9c1  8bc3  MOV EAX,EBX
00c8c9c3  5b  POP EBX
00c8c9c4  c3  RET

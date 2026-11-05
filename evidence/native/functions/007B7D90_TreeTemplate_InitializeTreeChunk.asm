# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 TreeTemplate_InitializeTreeChunk(void * this, int * param_1, undefined4 param_2, char param_3)
Owned ranges: [[007b7d90, 007b7faf]]

007b7d90  55  PUSH EBP
007b7d91  8bec  MOV EBP,ESP
007b7d93  83e4f0  AND ESP,0xfffffff0
007b7d96  83ec14  SUB ESP,0x14
007b7d99  53  PUSH EBX
007b7d9a  56  PUSH ESI
007b7d9b  57  PUSH EDI
007b7d9c  8bf9  MOV EDI,ECX
007b7d9e  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
007b7da1  8b4104  MOV EAX,dword ptr [ECX + 0x4]
007b7da4  85c0  TEST EAX,EAX
007b7da6  7405  JZ 0x007b7dad
007b7da8  8b7008  MOV ESI,dword ptr [EAX + 0x8]
007b7dab  eb02  JMP 0x007b7daf
007b7dad  33f6  XOR ESI,ESI
007b7daf  8b01  MOV EAX,dword ptr [ECX]
007b7db1  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
007b7db4  ffd2  CALL EDX
007b7db6  807d1000  CMP byte ptr [EBP + 0x10],0x0
007b7dba  740d  JZ 0x007b7dc9
007b7dbc  c1e802  SHR EAX,0x2
007b7dbf  50  PUSH EAX
007b7dc0  56  PUSH ESI
007b7dc1  e8aab20100  CALL 0x007d3070
007b7dc6  83c408  ADD ESP,0x8
007b7dc9  813e54524545  CMP dword ptr [ESI],0x45455254
007b7dcf  0f85d0010000  JNZ 0x007b7fa5
007b7dd5  8b4604  MOV EAX,dword ptr [ESI + 0x4]
007b7dd8  3d01020000  CMP EAX,0x201
007b7ddd  0f82c2010000  JC 0x007b7fa5
007b7de3  3dff020000  CMP EAX,0x2ff
007b7de8  0f87b7010000  JA 0x007b7fa5
007b7dee  2d01020000  SUB EAX,0x201
007b7df3  0f840f010000  JZ 0x007b7f08
007b7df9  83e801  SUB EAX,0x1
007b7dfc  0f85a3010000  JNZ 0x007b7fa5
007b7e02  f30f104e10  MOVSS XMM1,dword ptr [ESI + 0x10]
007b7e07  f30f104608  MOVSS XMM0,dword ptr [ESI + 0x8]
007b7e0c  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
007b7e12  f30f104e0c  MOVSS XMM1,dword ptr [ESI + 0xc]
007b7e17  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
007b7e1d  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007b7e23  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
007b7e29  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
007b7e2e  0f294730  MOVAPS xmmword ptr [EDI + 0x30],XMM0
007b7e32  f30f104e1c  MOVSS XMM1,dword ptr [ESI + 0x1c]
007b7e37  f30f104614  MOVSS XMM0,dword ptr [ESI + 0x14]
007b7e3c  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
007b7e42  f30f104e18  MOVSS XMM1,dword ptr [ESI + 0x18]
007b7e47  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007b7e4d  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
007b7e53  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
007b7e59  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
007b7e5e  0f294740  MOVAPS xmmword ptr [EDI + 0x40],XMM0
007b7e62  d94620  FLD float ptr [ESI + 0x20]
007b7e65  d95f50  FSTP float ptr [EDI + 0x50]
007b7e68  8d4f64  LEA ECX,[EDI + 0x64]
007b7e6b  d94624  FLD float ptr [ESI + 0x24]
007b7e6e  d95f54  FSTP float ptr [EDI + 0x54]
007b7e71  d94628  FLD float ptr [ESI + 0x28]
007b7e74  d95f58  FSTP float ptr [EDI + 0x58]
007b7e77  d9462c  FLD float ptr [ESI + 0x2c]
007b7e7a  d95f5c  FSTP float ptr [EDI + 0x5c]
007b7e7d  8b4630  MOV EAX,dword ptr [ESI + 0x30]
007b7e80  894760  MOV dword ptr [EDI + 0x60],EAX
007b7e83  8b11  MOV EDX,dword ptr [ECX]
007b7e85  895104  MOV dword ptr [ECX + 0x4],EDX
007b7e88  8b463c  MOV EAX,dword ptr [ESI + 0x3c]
007b7e8b  8d1440  LEA EDX,[EAX + EAX*0x2]
007b7e8e  3b5640  CMP EDX,dword ptr [ESI + 0x40]
007b7e91  0f85f6000000  JNZ 0x007b7f8d
007b7e97  50  PUSH EAX
007b7e98  e8a3feffff  CALL 0x007b7d40
007b7e9d  33d2  XOR EDX,EDX
007b7e9f  39563c  CMP dword ptr [ESI + 0x3c],EDX
007b7ea2  0f86e5000000  JBE 0x007b7f8d
007b7ea8  33c9  XOR ECX,ECX
007b7eaa  8d4648  LEA EAX,[ESI + 0x48]
007b7ead  8d4900  LEA ECX,[ECX]
007b7eb0  f30f104804  MOVSS XMM1,dword ptr [EAX + 0x4]
007b7eb5  f30f1040fc  MOVSS XMM0,dword ptr [EAX + -0x4]
007b7eba  8b5f64  MOV EBX,dword ptr [EDI + 0x64]
007b7ebd  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
007b7ec3  f30f1008  MOVSS XMM1,dword ptr [EAX]
007b7ec7  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007b7ecd  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
007b7ed3  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
007b7ed9  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
007b7ede  0f29040b  MOVAPS xmmword ptr [EBX + ECX*0x1],XMM0
007b7ee2  83c201  ADD EDX,0x1
007b7ee5  83c00c  ADD EAX,0xc
007b7ee8  83c110  ADD ECX,0x10
007b7eeb  3b563c  CMP EDX,dword ptr [ESI + 0x3c]
007b7eee  72c0  JC 0x007b7eb0
007b7ef0  6880000000  PUSH 0x80
007b7ef5  8d4f08  LEA ECX,[EDI + 0x8]
007b7ef8  e8e39cf7ff  CALL 0x00731be0
007b7efd  b001  MOV AL,0x1
007b7eff  5f  POP EDI
007b7f00  5e  POP ESI
007b7f01  5b  POP EBX
007b7f02  8be5  MOV ESP,EBP
007b7f04  5d  POP EBP
007b7f05  c20c00  RET 0xc
007b7f08  f30f104e10  MOVSS XMM1,dword ptr [ESI + 0x10]
007b7f0d  f30f104608  MOVSS XMM0,dword ptr [ESI + 0x8]
007b7f12  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
007b7f18  f30f104e0c  MOVSS XMM1,dword ptr [ESI + 0xc]
007b7f1d  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
007b7f23  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007b7f29  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
007b7f2f  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
007b7f34  0f294730  MOVAPS xmmword ptr [EDI + 0x30],XMM0
007b7f38  f30f104e1c  MOVSS XMM1,dword ptr [ESI + 0x1c]
007b7f3d  f30f104614  MOVSS XMM0,dword ptr [ESI + 0x14]
007b7f42  f30f114c2418  MOVSS dword ptr [ESP + 0x18],XMM1
007b7f48  f30f104e18  MOVSS XMM1,dword ptr [ESI + 0x18]
007b7f4d  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
007b7f53  f30f114c2414  MOVSS dword ptr [ESP + 0x14],XMM1
007b7f59  f30f11442410  MOVSS dword ptr [ESP + 0x10],XMM0
007b7f5f  0f28442410  MOVAPS XMM0,xmmword ptr [ESP + 0x10]
007b7f64  0f294740  MOVAPS xmmword ptr [EDI + 0x40],XMM0
007b7f68  d94620  FLD float ptr [ESI + 0x20]
007b7f6b  d95f50  FSTP float ptr [EDI + 0x50]
007b7f6e  d94624  FLD float ptr [ESI + 0x24]
007b7f71  d95f54  FSTP float ptr [EDI + 0x54]
007b7f74  d94628  FLD float ptr [ESI + 0x28]
007b7f77  d95f58  FSTP float ptr [EDI + 0x58]
007b7f7a  d9462c  FLD float ptr [ESI + 0x2c]
007b7f7d  d95f5c  FSTP float ptr [EDI + 0x5c]
007b7f80  0fb64630  MOVZX EAX,byte ptr [ESI + 0x30]
007b7f84  894760  MOV dword ptr [EDI + 0x60],EAX
007b7f87  8b4f64  MOV ECX,dword ptr [EDI + 0x64]
007b7f8a  894f68  MOV dword ptr [EDI + 0x68],ECX
007b7f8d  6880000000  PUSH 0x80
007b7f92  8d4f08  LEA ECX,[EDI + 0x8]
007b7f95  e8469cf7ff  CALL 0x00731be0
007b7f9a  b001  MOV AL,0x1
007b7f9c  5f  POP EDI
007b7f9d  5e  POP ESI
007b7f9e  5b  POP EBX
007b7f9f  8be5  MOV ESP,EBP
007b7fa1  5d  POP EBP
007b7fa2  c20c00  RET 0xc
007b7fa5  5f  POP EDI
007b7fa6  5e  POP ESI
007b7fa7  32c0  XOR AL,AL
007b7fa9  5b  POP EBX
007b7faa  8be5  MOV ESP,EBP
007b7fac  5d  POP EBP
007b7fad  c20c00  RET 0xc

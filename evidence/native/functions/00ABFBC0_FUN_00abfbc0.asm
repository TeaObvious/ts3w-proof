# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FUN_00abfbc0(void * this, int param_1)
Owned ranges: [[00abfbc0, 00abfe30]]

00abfbc0  55  PUSH EBP
00abfbc1  8bec  MOV EBP,ESP
00abfbc3  83e4f0  AND ESP,0xfffffff0
00abfbc6  81ec84000000  SUB ESP,0x84
00abfbcc  53  PUSH EBX
00abfbcd  56  PUSH ESI
00abfbce  57  PUSH EDI
00abfbcf  33ff  XOR EDI,EDI
00abfbd1  33db  XOR EBX,EBX
00abfbd3  8bf1  MOV ESI,ECX
00abfbd5  895c240c  MOV dword ptr [ESP + 0xc],EBX
00abfbd9  897c2410  MOV dword ptr [ESP + 0x10],EDI
00abfbdd  897c2414  MOV dword ptr [ESP + 0x14],EDI
00abfbe1  c7442418d8610601  MOV dword ptr [ESP + 0x18],0x10661d8
00abfbe9  e852e51a00  CALL 0x00c6e140
00abfbee  85c0  TEST EAX,EAX
00abfbf0  89442428  MOV dword ptr [ESP + 0x28],EAX
00abfbf4  897c2420  MOV dword ptr [ESP + 0x20],EDI
00abfbf8  0f863d010000  JBE 0x00abfd3b
00abfbfe  8bff  MOV EDI,EDI
00abfc00  57  PUSH EDI
00abfc01  8bce  MOV ECX,ESI
00abfc03  e848e51a00  CALL 0x00c6e150
00abfc08  85c0  TEST EAX,EAX
00abfc0a  0f8416010000  JZ 0x00abfd26
00abfc10  8b0d90a21e01  MOV ECX,dword ptr [0x011ea290]
00abfc16  51  PUSH ECX
00abfc17  8bc8  MOV ECX,EAX
00abfc19  e84246e7ff  CALL 0x00934260
00abfc1e  8bd8  MOV EBX,EAX
00abfc20  85db  TEST EBX,EBX
00abfc22  0f84fe000000  JZ 0x00abfd26
00abfc28  8bcb  MOV ECX,EBX
00abfc2a  e851ace9ff  CALL 0x0095a880
00abfc2f  84c0  TEST AL,AL
00abfc31  0f84ef000000  JZ 0x00abfd26
00abfc37  8b5b08  MOV EBX,dword ptr [EBX + 0x8]
00abfc3a  8b4b0c  MOV ECX,dword ptr [EBX + 0xc]
00abfc3d  2b4b08  SUB ECX,dword ptr [EBX + 0x8]
00abfc40  b867666666  MOV EAX,0x66666667
00abfc45  f7e9  IMUL ECX
00abfc47  c1fa05  SAR EDX,0x5
00abfc4a  8bc2  MOV EAX,EDX
00abfc4c  c1e81f  SHR EAX,0x1f
00abfc4f  03c2  ADD EAX,EDX
00abfc51  0f84cf000000  JZ 0x00abfd26
00abfc57  f30f1025c8f80601  MOVSS XMM4,dword ptr [0x0106f8c8]
00abfc5f  f30f102db4b5f900  MOVSS XMM5,dword ptr [0x00f9b5b4]
00abfc67  0fc6e400  SHUFPS XMM4,XMM4,0x0
00abfc6b  0fc6ed00  SHUFPS XMM5,XMM5,0x0
00abfc6f  0f29642430  MOVAPS xmmword ptr [ESP + 0x30],XMM4
00abfc74  0f296c2450  MOVAPS xmmword ptr [ESP + 0x50],XMM5
00abfc79  33ff  XOR EDI,EDI
00abfc7b  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00abfc7f  eb0a  JMP 0x00abfc8b
00abfc81  0f28642430  MOVAPS XMM4,xmmword ptr [ESP + 0x30]
00abfc86  0f286c2450  MOVAPS XMM5,xmmword ptr [ESP + 0x50]
00abfc8b  8b5308  MOV EDX,dword ptr [EBX + 0x8]
00abfc8e  0f28043a  MOVAPS XMM0,xmmword ptr [EDX + EDI*0x1]
00abfc92  8d44242c  LEA EAX,[ESP + 0x2c]
00abfc96  50  PUSH EAX
00abfc97  03d7  ADD EDX,EDI
00abfc99  8d4c2428  LEA ECX,[ESP + 0x28]
00abfc9d  51  PUSH ECX
00abfc9e  0f29442478  MOVAPS xmmword ptr [ESP + 0x78],XMM0
00abfca3  d9842480000000  FLD float ptr [ESP + 0x80]
00abfcaa  83ec08  SUB ESP,0x8
00abfcad  d95c2404  FSTP float ptr [ESP + 0x4]
00abfcb1  0f29442450  MOVAPS xmmword ptr [ESP + 0x50],XMM0
00abfcb6  d9442450  FLD float ptr [ESP + 0x50]
00abfcba  8bce  MOV ECX,ESI
00abfcbc  d91c24  FSTP float ptr [ESP]
00abfcbf  e87c71ffff  CALL 0x00ab6e40
00abfcc4  0f284a20  MOVAPS XMM1,xmmword ptr [EDX + 0x20]
00abfcc8  0f284230  MOVAPS XMM0,xmmword ptr [EDX + 0x30]
00abfccc  f30f2c44242c  CVTTSS2SI EAX,dword ptr [ESP + 0x2c]
00abfcd2  f30f2c4c2424  CVTTSS2SI ECX,dword ptr [ESP + 0x24]
00abfcd8  0f5cc1  SUBPS XMM0,XMM1
00abfcdb  0f28c8  MOVAPS XMM1,XMM0
00abfcde  0fc6c8aa  SHUFPS XMM1,XMM0,0xaa
00abfce2  0f29842480000000  MOVAPS xmmword ptr [ESP + 0x80],XMM0
00abfcea  0fc6c000  SHUFPS XMM0,XMM0,0x0
00abfcee  0f58c8  ADDPS XMM1,XMM0
00abfcf1  0f28c4  MOVAPS XMM0,XMM4
00abfcf4  0f59c1  MULPS XMM0,XMM1
00abfcf7  0f58c5  ADDPS XMM0,XMM5
00abfcfa  0f29442460  MOVAPS xmmword ptr [ESP + 0x60],XMM0
00abfcff  f30f2c542460  CVTTSS2SI EDX,dword ptr [ESP + 0x60]
00abfd05  52  PUSH EDX
00abfd06  50  PUSH EAX
00abfd07  51  PUSH ECX
00abfd08  8d542418  LEA EDX,[ESP + 0x18]
00abfd0c  52  PUSH EDX
00abfd0d  8bce  MOV ECX,ESI
00abfd0f  e87cfdffff  CALL 0x00abfa90
00abfd14  83c750  ADD EDI,0x50
00abfd17  836c241c01  SUB dword ptr [ESP + 0x1c],0x1
00abfd1c  0f855fffffff  JNZ 0x00abfc81
00abfd22  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00abfd26  83c701  ADD EDI,0x1
00abfd29  3b7c2428  CMP EDI,dword ptr [ESP + 0x28]
00abfd2d  897c2420  MOV dword ptr [ESP + 0x20],EDI
00abfd31  0f82c9feffff  JC 0x00abfc00
00abfd37  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00abfd3b  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00abfd3f  2bcb  SUB ECX,EBX
00abfd41  b856555555  MOV EAX,0x55555556
00abfd46  f7e9  IMUL ECX
00abfd48  8bc2  MOV EAX,EDX
00abfd4a  c1e81f  SHR EAX,0x1f
00abfd4d  03c2  ADD EAX,EDX
00abfd4f  0f84c6000000  JZ 0x00abfe1b
00abfd55  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00abfd59  397c240c  CMP dword ptr [ESP + 0xc],EDI
00abfd5d  742c  JZ 0x00abfd8b
00abfd5f  90  NOP
00abfd60  68ffff0000  PUSH 0xffff
00abfd65  6a08  PUSH 0x8
00abfd67  53  PUSH EBX
00abfd68  8bce  MOV ECX,ESI
00abfd6a  e89168ffff  CALL 0x00ab6600
00abfd6f  84c0  TEST AL,AL
00abfd71  7511  JNZ 0x00abfd84
00abfd73  68ffff0000  PUSH 0xffff
00abfd78  6a01  PUSH 0x1
00abfd7a  6a08  PUSH 0x8
00abfd7c  53  PUSH EBX
00abfd7d  8bce  MOV ECX,ESI
00abfd7f  e86cb8ffff  CALL 0x00abb5f0
00abfd84  83c303  ADD EBX,0x3
00abfd87  3bdf  CMP EBX,EDI
00abfd89  75d5  JNZ 0x00abfd60
00abfd8b  e860c798ff  CALL 0x0044c4f0
00abfd90  8bf8  MOV EDI,EAX
00abfd92  85ff  TEST EDI,EDI
00abfd94  0f847d000000  JZ 0x00abfe17
00abfd9a  6a28  PUSH 0x28
00abfd9c  e8aff30100  CALL 0x00adf150
00abfda1  33db  XOR EBX,EBX
00abfda3  83c404  ADD ESP,0x4
00abfda6  3bc3  CMP EAX,EBX
00abfda8  742e  JZ 0x00abfdd8
00abfdaa  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abfdb0  33c9  XOR ECX,ECX
00abfdb2  8d5004  LEA EDX,[EAX + 0x4]
00abfdb5  870a  XCHG dword ptr [EDX],ECX
00abfdb7  c700f0dd0601  MOV dword ptr [EAX],0x106ddf0
00abfdbd  895810  MOV dword ptr [EAX + 0x10],EBX
00abfdc0  895814  MOV dword ptr [EAX + 0x14],EBX
00abfdc3  895818  MOV dword ptr [EAX + 0x18],EBX
00abfdc6  c7401c30540601  MOV dword ptr [EAX + 0x1c],0x1065430
00abfdcd  8b10  MOV EDX,dword ptr [EAX]
00abfdcf  8bd8  MOV EBX,EAX
00abfdd1  8bc8  MOV ECX,EAX
00abfdd3  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00abfdd6  ffd0  CALL EAX
00abfdd8  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00abfddb  894b08  MOV dword ptr [EBX + 0x8],ECX
00abfdde  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00abfde1  8d44240c  LEA EAX,[ESP + 0xc]
00abfde5  50  PUSH EAX
00abfde6  8d4b10  LEA ECX,[EBX + 0x10]
00abfde9  89530c  MOV dword ptr [EBX + 0xc],EDX
00abfdec  e8bf97feff  CALL 0x00aa95b0
00abfdf1  f30f104508  MOVSS XMM0,dword ptr [EBP + 0x8]
00abfdf6  6a00  PUSH 0x0
00abfdf8  6a00  PUSH 0x0
00abfdfa  f30f114320  MOVSS dword ptr [EBX + 0x20],XMM0
00abfdff  8b17  MOV EDX,dword ptr [EDI]
00abfe01  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00abfe04  53  PUSH EBX
00abfe05  68d920c795  PUSH 0x95c720d9
00abfe0a  8bcf  MOV ECX,EDI
00abfe0c  ffd0  CALL EAX
00abfe0e  8b13  MOV EDX,dword ptr [EBX]
00abfe10  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00abfe13  8bcb  MOV ECX,EBX
00abfe15  ffd0  CALL EAX
00abfe17  8b5c240c  MOV EBX,dword ptr [ESP + 0xc]
00abfe1b  85db  TEST EBX,EBX
00abfe1d  7409  JZ 0x00abfe28
00abfe1f  53  PUSH EBX
00abfe20  e8bb46a2ff  CALL 0x004e44e0
00abfe25  83c404  ADD ESP,0x4
00abfe28  5f  POP EDI
00abfe29  5e  POP ESI
00abfe2a  5b  POP EBX
00abfe2b  8be5  MOV ESP,EBP
00abfe2d  5d  POP EBP
00abfe2e  c20400  RET 0x4

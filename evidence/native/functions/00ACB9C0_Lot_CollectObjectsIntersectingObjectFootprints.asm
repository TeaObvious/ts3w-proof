# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Lot_CollectObjectsIntersectingObjectFootprints(void * this, void * param_1, int * param_2)
Owned ranges: [[00acb9c0, 00acbb08] [00acbb10, 00acbc3c]]

00acb9c0  81ec94000000  SUB ESP,0x94
00acb9c6  53  PUSH EBX
00acb9c7  33db  XOR EBX,EBX
00acb9c9  3999d0020000  CMP dword ptr [ECX + 0x2d0],EBX
00acb9cf  894c2450  MOV dword ptr [ESP + 0x50],ECX
00acb9d3  0f845a020000  JZ 0x00acbc33
00acb9d9  55  PUSH EBP
00acb9da  8bac24a0000000  MOV EBP,dword ptr [ESP + 0xa0]
00acb9e1  3beb  CMP EBP,EBX
00acb9e3  0f8449020000  JZ 0x00acbc32
00acb9e9  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00acb9f1  56  PUSH ESI
00acb9f2  57  PUSH EDI
00acb9f3  8bbc24ac000000  MOV EDI,dword ptr [ESP + 0xac]
00acb9fa  8b07  MOV EAX,dword ptr [EDI]
00acb9fc  894704  MOV dword ptr [EDI + 0x4],EAX
00acb9ff  8b0da89f1e01  MOV ECX,dword ptr [0x011e9fa8]
00acba05  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00acba0b  f30f100588fd0301  MOVSS XMM0,dword ptr [0x0103fd88]
00acba13  51  PUSH ECX
00acba14  8bcd  MOV ECX,EBP
00acba16  f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
00acba1c  c744244cb86a0601  MOV dword ptr [ESP + 0x4c],0x1066ab8
00acba24  c744243801000000  MOV dword ptr [ESP + 0x38],0x1
00acba2c  c744243400d91401  MOV dword ptr [ESP + 0x34],0x114d900
00acba34  895c243c  MOV dword ptr [ESP + 0x3c],EBX
00acba38  895c2448  MOV dword ptr [ESP + 0x48],EBX
00acba3c  e81f88e6ff  CALL 0x00934260
00acba41  8b1508df1e01  MOV EDX,dword ptr [0x011edf08]
00acba47  52  PUSH EDX
00acba48  8bcd  MOV ECX,EBP
00acba4a  89442418  MOV dword ptr [ESP + 0x18],EAX
00acba4e  e80d88e6ff  CALL 0x00934260
00acba53  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00acba57  3bcb  CMP ECX,EBX
00acba59  8bf0  MOV ESI,EAX
00acba5b  0f845e010000  JZ 0x00acbbbf
00acba61  3bf3  CMP ESI,EBX
00acba63  0f8456010000  JZ 0x00acbbbf
00acba69  e8128fe7ff  CALL 0x00944980
00acba6e  84c0  TEST AL,AL
00acba70  0f8449010000  JZ 0x00acbbbf
00acba76  d90518b2fa00  FLD float ptr [0x00fab218]
00acba7c  8d442420  LEA EAX,[ESP + 0x20]
00acba80  50  PUSH EAX
00acba81  d954241c  FST float ptr [ESP + 0x1c]
00acba85  8d4c2420  LEA ECX,[ESP + 0x20]
00acba89  d95c2420  FSTP float ptr [ESP + 0x20]
00acba8d  51  PUSH ECX
00acba8e  8d542420  LEA EDX,[ESP + 0x20]
00acba92  52  PUSH EDX
00acba93  8bce  MOV ECX,ESI
00acba95  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00acba99  e842da1b00  CALL 0x00c894e0
00acba9e  d944241c  FLD float ptr [ESP + 0x1c]
00acbaa2  8d842480000000  LEA EAX,[ESP + 0x80]
00acbaa9  50  PUSH EAX
00acbaaa  83ec08  SUB ESP,0x8
00acbaad  d95c2404  FSTP float ptr [ESP + 0x4]
00acbab1  8bce  MOV ECX,ESI
00acbab3  d9442424  FLD float ptr [ESP + 0x24]
00acbab7  895c2430  MOV dword ptr [ESP + 0x30],EBX
00acbabb  d91c24  FSTP float ptr [ESP]
00acbabe  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00acbac2  e879de1b00  CALL 0x00c89940
00acbac7  51  PUSH ECX
00acbac8  d91c24  FSTP float ptr [ESP]
00acbacb  55  PUSH EBP
00acbacc  e83fe50300  CALL 0x00b0a010
00acbad1  83c414  ADD ESP,0x14
00acbad4  6a01  PUSH 0x1
00acbad6  8d4c2414  LEA ECX,[ESP + 0x14]
00acbada  51  PUSH ECX
00acbadb  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
00acbadf  6a05  PUSH 0x5
00acbae1  8d542430  LEA EDX,[ESP + 0x30]
00acbae5  52  PUSH EDX
00acbae6  895c245c  MOV dword ptr [ESP + 0x5c],EBX
00acbaea  895c2460  MOV dword ptr [ESP + 0x60],EBX
00acbaee  895c2464  MOV dword ptr [ESP + 0x64],EBX
00acbaf2  c7442468786a0601  MOV dword ptr [ESP + 0x68],0x1066a78
00acbafa  e88195e7ff  CALL 0x00945080
00acbaff  84c0  TEST AL,AL
00acbb01  0f84a7000000  JZ 0x00acbbae
00acbb07  eb07  JMP 0x00acbb10
00acbb09  8da42400000000  .byte 8da42400000000 ; NONOWNED envelope gap bytes
00acbb10  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00acbb14  8b5130  MOV EDX,dword ptr [ECX + 0x30]
00acbb17  3b5134  CMP EDX,dword ptr [ECX + 0x34]
00acbb1a  8d4130  LEA EAX,[ECX + 0x30]
00acbb1d  7470  JZ 0x00acbb8f
00acbb1f  0fbe7105  MOVSX ESI,byte ptr [ECX + 0x5]
00acbb23  03742420  ADD ESI,dword ptr [ESP + 0x20]
00acbb27  8d4c244c  LEA ECX,[ESP + 0x4c]
00acbb2b  51  PUSH ECX
00acbb2c  8d942484000000  LEA EDX,[ESP + 0x84]
00acbb33  52  PUSH EDX
00acbb34  50  PUSH EAX
00acbb35  e8e6290400  CALL 0x00b0e520
00acbb3a  8d44247c  LEA EAX,[ESP + 0x7c]
00acbb3e  50  PUSH EAX
00acbb3f  8d4c245c  LEA ECX,[ESP + 0x5c]
00acbb43  51  PUSH ECX
00acbb44  e87726d0ff  CALL 0x007ce1c0
00acbb49  8b4c2470  MOV ECX,dword ptr [ESP + 0x70]
00acbb4d  83c414  ADD ESP,0x14
00acbb50  6a01  PUSH 0x1
00acbb52  6a01  PUSH 0x1
00acbb54  57  PUSH EDI
00acbb55  56  PUSH ESI
00acbb56  8d54245c  LEA EDX,[ESP + 0x5c]
00acbb5a  52  PUSH EDX
00acbb5b  e890c4ffff  CALL 0x00ac7ff0
00acbb60  8b37  MOV ESI,dword ptr [EDI]
00acbb62  8b6f04  MOV EBP,dword ptr [EDI + 0x4]
00acbb65  3bf5  CMP ESI,EBP
00acbb67  7426  JZ 0x00acbb8f
00acbb69  8da42400000000  LEA ESP,[ESP]
00acbb70  885c2428  MOV byte ptr [ESP + 0x28],BL
00acbb74  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00acbb78  50  PUSH EAX
00acbb79  56  PUSH ESI
00acbb7a  8d4c246c  LEA ECX,[ESP + 0x6c]
00acbb7e  51  PUSH ECX
00acbb7f  8d4c2438  LEA ECX,[ESP + 0x38]
00acbb83  e838a0beff  CALL 0x006b5bc0
00acbb88  83c604  ADD ESI,0x4
00acbb8b  3bf5  CMP ESI,EBP
00acbb8d  75e1  JNZ 0x00acbb70
00acbb8f  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00acbb93  6a01  PUSH 0x1
00acbb95  8d542414  LEA EDX,[ESP + 0x14]
00acbb99  52  PUSH EDX
00acbb9a  6a05  PUSH 0x5
00acbb9c  8d442430  LEA EAX,[ESP + 0x30]
00acbba0  50  PUSH EAX
00acbba1  e8da94e7ff  CALL 0x00945080
00acbba6  84c0  TEST AL,AL
00acbba8  0f8562ffffff  JNZ 0x00acbb10
00acbbae  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00acbbb2  3bc3  CMP EAX,EBX
00acbbb4  7409  JZ 0x00acbbbf
00acbbb6  50  PUSH EAX
00acbbb7  e82489a1ff  CALL 0x004e44e0
00acbbbc  83c404  ADD ESP,0x4
00acbbbf  8b07  MOV EAX,dword ptr [EDI]
00acbbc1  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00acbbc4  2bc8  SUB ECX,EAX
00acbbc6  c1f902  SAR ECX,0x2
00acbbc9  3b4c2438  CMP ECX,dword ptr [ESP + 0x38]
00acbbcd  7436  JZ 0x00acbc05
00acbbcf  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00acbbd3  894704  MOV dword ptr [EDI + 0x4],EAX
00acbbd6  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00acbbda  8b2c90  MOV EBP,dword ptr [EAX + EDX*0x4]
00acbbdd  8d4c245c  LEA ECX,[ESP + 0x5c]
00acbbe1  8d3490  LEA ESI,[EAX + EDX*0x4]
00acbbe4  51  PUSH ECX
00acbbe5  8d4c2430  LEA ECX,[ESP + 0x30]
00acbbe9  e882f1e6ff  CALL 0x0093ad70
00acbbee  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acbbf1  8b00  MOV EAX,dword ptr [EAX]
00acbbf3  57  PUSH EDI
00acbbf4  56  PUSH ESI
00acbbf5  55  PUSH EBP
00acbbf6  52  PUSH EDX
00acbbf7  50  PUSH EAX
00acbbf8  8d4c243c  LEA ECX,[ESP + 0x3c]
00acbbfc  51  PUSH ECX
00acbbfd  e89ea8ffff  CALL 0x00ac64a0
00acbc02  83c418  ADD ESP,0x18
00acbc05  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00acbc09  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00acbc0d  52  PUSH EDX
00acbc0e  50  PUSH EAX
00acbc0f  8d4c2434  LEA ECX,[ESP + 0x34]
00acbc13  e8f8470100  CALL 0x00ae0410
00acbc18  837c243401  CMP dword ptr [ESP + 0x34],0x1
00acbc1d  5f  POP EDI
00acbc1e  895c2434  MOV dword ptr [ESP + 0x34],EBX
00acbc22  5e  POP ESI
00acbc23  760d  JBE 0x00acbc32
00acbc25  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00acbc29  51  PUSH ECX
00acbc2a  e8b188a1ff  CALL 0x004e44e0
00acbc2f  83c404  ADD ESP,0x4
00acbc32  5d  POP EBP
00acbc33  5b  POP EBX
00acbc34  81c494000000  ADD ESP,0x94
00acbc3a  c20800  RET 0x8

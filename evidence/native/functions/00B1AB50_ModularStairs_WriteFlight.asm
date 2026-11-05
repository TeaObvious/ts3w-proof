# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ModularStairs_WriteFlight
Paired actual annotated Ghidra pseudocode: 00B1AB50_ModularStairs_WriteFlight.c
Owned ranges: [[00b1ab50, 00b1ad89] [00b1ad90, 00b1ae4f]]
Envelope bytes=768

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00b1ab50  81ec88000000  SUB ESP,0x88
00b1ab56  53  PUSH EBX
00b1ab57  55  PUSH EBP
00b1ab58  56  PUSH ESI
00b1ab59  8bb42498000000  MOV ESI,dword ptr [ESP + 0x98]
00b1ab60  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1ab63  57  PUSH EDI
00b1ab64  8bbc24a4000000  MOV EDI,dword ptr [ESP + 0xa4]
00b1ab6b  8b07  MOV EAX,dword ptr [EDI]
00b1ab6d  894c2410  MOV dword ptr [ESP + 0x10],ECX
00b1ab71  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ab74  51  PUSH ECX
00b1ab75  50  PUSH EAX
00b1ab76  52  PUSH EDX
00b1ab77  e8f4339cff  CALL 0x004ddf70
00b1ab7c  83c40c  ADD ESP,0xc
00b1ab7f  8bce  MOV ECX,ESI
00b1ab81  50  PUSH EAX
00b1ab82  e869cecbff  CALL 0x007d79f0
00b1ab87  8b9c24a0000000  MOV EBX,dword ptr [ESP + 0xa0]
00b1ab8e  33ed  XOR EBP,EBP
00b1ab90  55  PUSH EBP
00b1ab91  83c708  ADD EDI,0x8
00b1ab94  57  PUSH EDI
00b1ab95  8bcb  MOV ECX,EBX
00b1ab97  e8c4c8cbff  CALL 0x007d7460
00b1ab9c  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ab9f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1aba2  0fb7c0  MOVZX EAX,AX
00b1aba5  51  PUSH ECX
00b1aba6  50  PUSH EAX
00b1aba7  52  PUSH EDX
00b1aba8  e8c3329cff  CALL 0x004dde70
00b1abad  83c40c  ADD ESP,0xc
00b1abb0  8bce  MOV ECX,ESI
00b1abb2  50  PUSH EAX
00b1abb3  e838cecbff  CALL 0x007d79f0
00b1abb8  8d4710  LEA EAX,[EDI + 0x10]
00b1abbb  55  PUSH EBP
00b1abbc  50  PUSH EAX
00b1abbd  8bcb  MOV ECX,EBX
00b1abbf  e89cc8cbff  CALL 0x007d7460
00b1abc4  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1abc7  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1abca  0fb7c0  MOVZX EAX,AX
00b1abcd  51  PUSH ECX
00b1abce  50  PUSH EAX
00b1abcf  52  PUSH EDX
00b1abd0  e89b329cff  CALL 0x004dde70
00b1abd5  83c40c  ADD ESP,0xc
00b1abd8  8bce  MOV ECX,ESI
00b1abda  50  PUSH EAX
00b1abdb  e810cecbff  CALL 0x007d79f0
00b1abe0  55  PUSH EBP
00b1abe1  8d4720  LEA EAX,[EDI + 0x20]
00b1abe4  50  PUSH EAX
00b1abe5  8bcb  MOV ECX,EBX
00b1abe7  e874c8cbff  CALL 0x007d7460
00b1abec  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1abef  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1abf2  0fb7c0  MOVZX EAX,AX
00b1abf5  51  PUSH ECX
00b1abf6  50  PUSH EAX
00b1abf7  52  PUSH EDX
00b1abf8  e873329cff  CALL 0x004dde70
00b1abfd  83c40c  ADD ESP,0xc
00b1ac00  8bce  MOV ECX,ESI
00b1ac02  50  PUSH EAX
00b1ac03  e8e8cdcbff  CALL 0x007d79f0
00b1ac08  55  PUSH EBP
00b1ac09  8d4730  LEA EAX,[EDI + 0x30]
00b1ac0c  50  PUSH EAX
00b1ac0d  8bcb  MOV ECX,EBX
00b1ac0f  e84cc8cbff  CALL 0x007d7460
00b1ac14  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ac17  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1ac1a  0fb7c0  MOVZX EAX,AX
00b1ac1d  51  PUSH ECX
00b1ac1e  50  PUSH EAX
00b1ac1f  52  PUSH EDX
00b1ac20  e84b329cff  CALL 0x004dde70
00b1ac25  83c40c  ADD ESP,0xc
00b1ac28  50  PUSH EAX
00b1ac29  8bce  MOV ECX,ESI
00b1ac2b  e8c0cdcbff  CALL 0x007d79f0
00b1ac30  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b1ac33  8b4f74  MOV ECX,dword ptr [EDI + 0x74]
00b1ac36  8b4770  MOV EAX,dword ptr [EDI + 0x70]
00b1ac39  52  PUSH EDX
00b1ac3a  51  PUSH ECX
00b1ac3b  50  PUSH EAX
00b1ac3c  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b1ac3f  50  PUSH EAX
00b1ac40  e87b349cff  CALL 0x004de0c0
00b1ac45  83c410  ADD ESP,0x10
00b1ac48  8bce  MOV ECX,ESI
00b1ac4a  50  PUSH EAX
00b1ac4b  e8a0cdcbff  CALL 0x007d79f0
00b1ac50  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ac53  8b4740  MOV EAX,dword ptr [EDI + 0x40]
00b1ac56  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1ac59  51  PUSH ECX
00b1ac5a  50  PUSH EAX
00b1ac5b  52  PUSH EDX
00b1ac5c  e80f339cff  CALL 0x004ddf70
00b1ac61  83c40c  ADD ESP,0xc
00b1ac64  8bce  MOV ECX,ESI
00b1ac66  50  PUSH EAX
00b1ac67  e884cdcbff  CALL 0x007d79f0
00b1ac6c  d94744  FLD float ptr [EDI + 0x44]
00b1ac6f  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00b1ac72  50  PUSH EAX
00b1ac73  51  PUSH ECX
00b1ac74  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b1ac77  d91c24  FSTP float ptr [ESP]
00b1ac7a  51  PUSH ECX
00b1ac7b  e810379cff  CALL 0x004de390
00b1ac80  83c40c  ADD ESP,0xc
00b1ac83  8bce  MOV ECX,ESI
00b1ac85  50  PUSH EAX
00b1ac86  e865cdcbff  CALL 0x007d79f0
00b1ac8b  d94748  FLD float ptr [EDI + 0x48]
00b1ac8e  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b1ac91  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b1ac94  52  PUSH EDX
00b1ac95  51  PUSH ECX
00b1ac96  d91c24  FSTP float ptr [ESP]
00b1ac99  50  PUSH EAX
00b1ac9a  e8f1369cff  CALL 0x004de390
00b1ac9f  83c40c  ADD ESP,0xc
00b1aca2  8bce  MOV ECX,ESI
00b1aca4  50  PUSH EAX
00b1aca5  e846cdcbff  CALL 0x007d79f0
00b1acaa  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1acad  8b474c  MOV EAX,dword ptr [EDI + 0x4c]
00b1acb0  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1acb3  51  PUSH ECX
00b1acb4  50  PUSH EAX
00b1acb5  52  PUSH EDX
00b1acb6  e8a5339cff  CALL 0x004de060
00b1acbb  83c40c  ADD ESP,0xc
00b1acbe  8bce  MOV ECX,ESI
00b1acc0  50  PUSH EAX
00b1acc1  e82acdcbff  CALL 0x007d79f0
00b1acc6  d94750  FLD float ptr [EDI + 0x50]
00b1acc9  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00b1accc  50  PUSH EAX
00b1accd  51  PUSH ECX
00b1acce  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00b1acd1  d91c24  FSTP float ptr [ESP]
00b1acd4  51  PUSH ECX
00b1acd5  e8b6369cff  CALL 0x004de390
00b1acda  83c40c  ADD ESP,0xc
00b1acdd  8bce  MOV ECX,ESI
00b1acdf  50  PUSH EAX
00b1ace0  e80bcdcbff  CALL 0x007d79f0
00b1ace5  d94754  FLD float ptr [EDI + 0x54]
00b1ace8  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00b1aceb  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00b1acee  52  PUSH EDX
00b1acef  51  PUSH ECX
00b1acf0  d91c24  FSTP float ptr [ESP]
00b1acf3  50  PUSH EAX
00b1acf4  e897369cff  CALL 0x004de390
00b1acf9  83c40c  ADD ESP,0xc
00b1acfc  8bce  MOV ECX,ESI
00b1acfe  50  PUSH EAX
00b1acff  e8eccccbff  CALL 0x007d79f0
00b1ad04  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ad07  8b4758  MOV EAX,dword ptr [EDI + 0x58]
00b1ad0a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1ad0d  51  PUSH ECX
00b1ad0e  50  PUSH EAX
00b1ad0f  52  PUSH EDX
00b1ad10  e84b339cff  CALL 0x004de060
00b1ad15  83c40c  ADD ESP,0xc
00b1ad18  8bce  MOV ECX,ESI
00b1ad1a  50  PUSH EAX
00b1ad1b  e8d0cccbff  CALL 0x007d79f0
00b1ad20  8b4760  MOV EAX,dword ptr [EDI + 0x60]
00b1ad23  2b475c  SUB EAX,dword ptr [EDI + 0x5c]
00b1ad26  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00b1ad29  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00b1ad2c  51  PUSH ECX
00b1ad2d  c1f802  SAR EAX,0x2
00b1ad30  50  PUSH EAX
00b1ad31  52  PUSH EDX
00b1ad32  e839329cff  CALL 0x004ddf70
00b1ad37  83c40c  ADD ESP,0xc
00b1ad3a  8bce  MOV ECX,ESI
00b1ad3c  50  PUSH EAX
00b1ad3d  e8aecccbff  CALL 0x007d79f0
00b1ad42  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00b1ad46  8b4818  MOV ECX,dword ptr [EAX + 0x18]
00b1ad49  3bcd  CMP ECX,EBP
00b1ad4b  7429  JZ 0x00b1ad76
00b1ad4d  8d4710  LEA EAX,[EDI + 0x10]
00b1ad50  50  PUSH EAX
00b1ad51  e86a5cf9ff  CALL 0x00ab09c0
00b1ad56  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00b1ad5a  8d4f20  LEA ECX,[EDI + 0x20]
00b1ad5d  51  PUSH ECX
00b1ad5e  8b4a18  MOV ECX,dword ptr [EDX + 0x18]
00b1ad61  e85a5cf9ff  CALL 0x00ab09c0
00b1ad66  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00b1ad6a  8b4918  MOV ECX,dword ptr [ECX + 0x18]
00b1ad6d  8d4730  LEA EAX,[EDI + 0x30]
00b1ad70  50  PUSH EAX
00b1ad71  e87a5cf9ff  CALL 0x00ab09f0
00b1ad76  8b475c  MOV EAX,dword ptr [EDI + 0x5c]
00b1ad79  8b7f60  MOV EDI,dword ptr [EDI + 0x60]
00b1ad7c  3bc7  CMP EAX,EDI
00b1ad7e  89442414  MOV dword ptr [ESP + 0x14],EAX
00b1ad82  0f84bb000000  JZ 0x00b1ae43
00b1ad88  eb0a  JMP 0x00b1ad94
00b1ad8a  8d  .byte (gap/alignment)
00b1ad8b  9b  .byte (gap/alignment)
00b1ad8c  00  .byte (gap/alignment)
00b1ad8d  00  .byte (gap/alignment)
00b1ad8e  00  .byte (gap/alignment)
00b1ad8f  00  .byte (gap/alignment)
00b1ad90  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00b1ad94  8b10  MOV EDX,dword ptr [EAX]
00b1ad96  8d4c2430  LEA ECX,[ESP + 0x30]
00b1ad9a  89542418  MOV dword ptr [ESP + 0x18],EDX
00b1ad9e  896c2420  MOV dword ptr [ESP + 0x20],EBP
00b1ada2  896c2424  MOV dword ptr [ESP + 0x24],EBP
00b1ada6  896c2428  MOV dword ptr [ESP + 0x28],EBP
00b1adaa  896c242c  MOV dword ptr [ESP + 0x2c],EBP
00b1adae  e8ed0dfeff  CALL 0x00afbba0
00b1adb3  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00b1adbb  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00b1adbf  8d442418  LEA EAX,[ESP + 0x18]
00b1adc3  50  PUSH EAX
00b1adc4  53  PUSH EBX
00b1adc5  56  PUSH ESI
00b1adc6  f30f11442470  MOVSS dword ptr [ESP + 0x70],XMM0
00b1adcc  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00b1add2  896c2478  MOV dword ptr [ESP + 0x78],EBP
00b1add6  f30f1144247c  MOVSS dword ptr [ESP + 0x7c],XMM0
00b1addc  f30f11842480000000  MOVSS dword ptr [ESP + 0x80],XMM0
00b1ade5  89ac2484000000  MOV dword ptr [ESP + 0x84],EBP
00b1adec  89ac2488000000  MOV dword ptr [ESP + 0x88],EBP
00b1adf3  89ac248c000000  MOV dword ptr [ESP + 0x8c],EBP
00b1adfa  89ac2490000000  MOV dword ptr [ESP + 0x90],EBP
00b1ae01  c7842494000000ccbd0601  MOV dword ptr [ESP + 0x94],0x106bdcc
00b1ae0c  89ac249c000000  MOV dword ptr [ESP + 0x9c],EBP
00b1ae13  89ac24a0000000  MOV dword ptr [ESP + 0xa0],EBP
00b1ae1a  e8c1ddffff  CALL 0x00b18be0
00b1ae1f  8b44247c  MOV EAX,dword ptr [ESP + 0x7c]
00b1ae23  3bc5  CMP EAX,EBP
00b1ae25  7409  JZ 0x00b1ae30
00b1ae27  50  PUSH EAX
00b1ae28  e8b3969cff  CALL 0x004e44e0
00b1ae2d  83c404  ADD ESP,0x4
00b1ae30  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00b1ae34  83c004  ADD EAX,0x4
00b1ae37  3bc7  CMP EAX,EDI
00b1ae39  89442414  MOV dword ptr [ESP + 0x14],EAX
00b1ae3d  0f854dffffff  JNZ 0x00b1ad90
00b1ae43  5f  POP EDI
00b1ae44  5e  POP ESI
00b1ae45  5d  POP EBP
00b1ae46  5b  POP EBX
00b1ae47  81c488000000  ADD ESP,0x88
00b1ae4d  c20c00  RET 0xc
Owned instructions=260 owned bytes=762 gap/nonowned bytes=6

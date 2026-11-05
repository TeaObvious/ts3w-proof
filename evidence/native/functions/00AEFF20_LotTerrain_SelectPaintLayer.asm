# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint LotTerrain_SelectPaintLayer(void * this, uint * textureKey, uint * selectionRecord)
Owned ranges: [[00aeff20, 00af0141]]

00aeff20  83ec24  SUB ESP,0x24
00aeff23  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00aeff27  53  PUSH EBX
00aeff28  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
00aeff2c  56  PUSH ESI
00aeff2d  57  PUSH EDI
00aeff2e  8bf9  MOV EDI,ECX
00aeff30  50  PUSH EAX
00aeff31  8d4c2414  LEA ECX,[ESP + 0x14]
00aeff35  8d7740  LEA ESI,[EDI + 0x40]
00aeff38  51  PUSH ECX
00aeff39  8bce  MOV ECX,ESI
00aeff3b  897c2414  MOV dword ptr [ESP + 0x14],EDI
00aeff3f  c70300000000  MOV dword ptr [EBX],0x0
00aeff45  e896daafff  CALL 0x005ed9e0
00aeff4a  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aeff4d  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
00aeff50  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00aeff54  3b0491  CMP EAX,dword ptr [ECX + EDX*0x4]
00aeff57  7412  JZ 0x00aeff6b
00aeff59  5f  POP EDI
00aeff5a  c70301000000  MOV dword ptr [EBX],0x1
00aeff60  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00aeff63  5e  POP ESI
00aeff64  5b  POP EBX
00aeff65  83c424  ADD ESP,0x24
00aeff68  c20800  RET 0x8
00aeff6b  8b5774  MOV EDX,dword ptr [EDI + 0x74]
00aeff6e  0faf5770  IMUL EDX,dword ptr [EDI + 0x70]
00aeff72  85d2  TEST EDX,EDX
00aeff74  8d4f70  LEA ECX,[EDI + 0x70]
00aeff77  751e  JNZ 0x00aeff97
00aeff79  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00aeff7c  0faf01  IMUL EAX,dword ptr [ECX]
00aeff7f  85c0  TEST EAX,EAX
00aeff81  7514  JNZ 0x00aeff97
00aeff83  8b5720  MOV EDX,dword ptr [EDI + 0x20]
00aeff86  8b471c  MOV EAX,dword ptr [EDI + 0x1c]
00aeff89  52  PUSH EDX
00aeff8a  50  PUSH EAX
00aeff8b  e8b0e7ffff  CALL 0x00aee740
00aeff90  8bcf  MOV ECX,EDI
00aeff92  e849eaffff  CALL 0x00aee9e0
00aeff97  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
00aeff9a  2b4f30  SUB ECX,dword ptr [EDI + 0x30]
00aeff9d  55  PUSH EBP
00aeff9e  8d6f30  LEA EBP,[EDI + 0x30]
00aeffa1  b8abaaaa2a  MOV EAX,0x2aaaaaab
00aeffa6  f7e9  IMUL ECX
00aeffa8  c1fa02  SAR EDX,0x2
00aeffab  8bda  MOV EBX,EDX
00aeffad  c1eb1f  SHR EBX,0x1f
00aeffb0  03da  ADD EBX,EDX
00aeffb2  be00000000  MOV ESI,0x0
00aeffb7  7441  JZ 0x00aefffa
00aeffb9  8b4d00  MOV ECX,dword ptr [EBP]
00aeffbc  8d642400  LEA ESP,[ESP]
00aeffc0  83791000  CMP dword ptr [ECX + 0x10],0x0
00aeffc4  7e0c  JLE 0x00aeffd2
00aeffc6  83c601  ADD ESI,0x1
00aeffc9  83c118  ADD ECX,0x18
00aeffcc  3bf3  CMP ESI,EBX
00aeffce  72f0  JC 0x00aeffc0
00aeffd0  eb28  JMP 0x00aefffa
00aeffd2  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00aeffd6  c70003000000  MOV dword ptr [EAX],0x3
00aeffdc  8b11  MOV EDX,dword ptr [ECX]
00aeffde  83c008  ADD EAX,0x8
00aeffe1  83feff  CMP ESI,-0x1
00aeffe4  8910  MOV dword ptr [EAX],EDX
00aeffe6  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00aeffe9  895004  MOV dword ptr [EAX + 0x4],EDX
00aeffec  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00aeffef  895008  MOV dword ptr [EAX + 0x8],EDX
00aefff2  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00aefff5  89480c  MOV dword ptr [EAX + 0xc],ECX
00aefff8  7541  JNZ 0x00af003b
00aefffa  3b9fe8000000  CMP EBX,dword ptr [EDI + 0xe8]
00af0000  0f82d9000000  JC 0x00af00df
00af0006  8bcf  MOV ECX,EDI
00af0008  e8139fffff  CALL 0x00ae9f20
00af000d  8bf0  MOV ESI,EAX
00af000f  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00af0013  c70003000000  MOV dword ptr [EAX],0x3
00af0019  8b4d00  MOV ECX,dword ptr [EBP]
00af001c  8d1476  LEA EDX,[ESI + ESI*0x2]
00af001f  8d0cd1  LEA ECX,[ECX + EDX*0x8]
00af0022  8b11  MOV EDX,dword ptr [ECX]
00af0024  83c008  ADD EAX,0x8
00af0027  8910  MOV dword ptr [EAX],EDX
00af0029  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00af002c  895004  MOV dword ptr [EAX + 0x4],EDX
00af002f  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00af0032  895008  MOV dword ptr [EAX + 0x8],EDX
00af0035  8b490c  MOV ECX,dword ptr [ECX + 0xc]
00af0038  89480c  MOV dword ptr [EAX + 0xc],ECX
00af003b  50  PUSH EAX
00af003c  8d4f40  LEA ECX,[EDI + 0x40]
00af003f  e85cb3ffff  CALL 0x00aeb3a0
00af0044  8b4760  MOV EAX,dword ptr [EDI + 0x60]
00af0047  8b3cb0  MOV EDI,dword ptr [EAX + ESI*0x4]
00af004a  8b4f34  MOV ECX,dword ptr [EDI + 0x34]
00af004d  8b4730  MOV EAX,dword ptr [EDI + 0x30]
00af0050  3bc1  CMP EAX,ECX
00af0052  740c  JZ 0x00af0060
00af0054  66c7000080  MOV word ptr [EAX],0x8000
00af0059  83c002  ADD EAX,0x2
00af005c  3bc1  CMP EAX,ECX
00af005e  75f4  JNZ 0x00af0054
00af0060  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00af0063  8b4f14  MOV ECX,dword ptr [EDI + 0x14]
00af0066  2bc8  SUB ECX,EAX
00af0068  51  PUSH ECX
00af0069  6a00  PUSH 0x0
00af006b  50  PUSH EAX
00af006c  e827f24800  CALL 0x00f7f298
00af0071  8b5720  MOV EDX,dword ptr [EDI + 0x20]
00af0074  895724  MOV dword ptr [EDI + 0x24],EDX
00af0077  c6474000  MOV byte ptr [EDI + 0x40],0x0
00af007b  8b4d00  MOV ECX,dword ptr [EBP]
00af007e  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
00af0082  83c40c  ADD ESP,0xc
00af0085  3bf3  CMP ESI,EBX
00af0087  8d0476  LEA EAX,[ESI + ESI*0x2]
00af008a  c744c11000000000  MOV dword ptr [ECX + EAX*0x8 + 0x10],0x0
00af0092  7566  JNZ 0x00af00fa
00af0094  56  PUSH ESI
00af0095  8bcf  MOV ECX,EDI
00af0097  e8a4f6ffff  CALL 0x00aef740
00af009c  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00af009f  33c9  XOR ECX,ECX
00af00a1  33d2  XOR EDX,EDX
00af00a3  3b4508  CMP EAX,dword ptr [EBP + 0x8]
00af00a6  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00af00aa  89542420  MOV dword ptr [ESP + 0x20],EDX
00af00ae  894c2424  MOV dword ptr [ESP + 0x24],ECX
00af00b2  894c2428  MOV dword ptr [ESP + 0x28],ECX
00af00b6  7335  JNC 0x00af00ed
00af00b8  85c0  TEST EAX,EAX
00af00ba  8d5818  LEA EBX,[EAX + 0x18]
00af00bd  895d04  MOV dword ptr [EBP + 0x4],EBX
00af00c0  7438  JZ 0x00af00fa
00af00c2  8908  MOV dword ptr [EAX],ECX
00af00c4  895004  MOV dword ptr [EAX + 0x4],EDX
00af00c7  8bd1  MOV EDX,ECX
00af00c9  895008  MOV dword ptr [EAX + 0x8],EDX
00af00cc  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00af00d0  89480c  MOV dword ptr [EAX + 0xc],ECX
00af00d3  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00af00d7  895010  MOV dword ptr [EAX + 0x10],EDX
00af00da  894814  MOV dword ptr [EAX + 0x14],ECX
00af00dd  eb1b  JMP 0x00af00fa
00af00df  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00af00e3  8bf3  MOV ESI,EBX
00af00e5  c70202000000  MOV dword ptr [EDX],0x2
00af00eb  eba7  JMP 0x00af0094
00af00ed  8d54241c  LEA EDX,[ESP + 0x1c]
00af00f1  52  PUSH EDX
00af00f2  50  PUSH EAX
00af00f3  8bcd  MOV ECX,EBP
00af00f5  e89673a1ff  CALL 0x00507490
00af00fa  8b4d00  MOV ECX,dword ptr [EBP]
00af00fd  8d0476  LEA EAX,[ESI + ESI*0x2]
00af0100  8d04c1  LEA EAX,[ECX + EAX*0x8]
00af0103  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00af0107  8b11  MOV EDX,dword ptr [ECX]
00af0109  8910  MOV dword ptr [EAX],EDX
00af010b  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00af010e  895004  MOV dword ptr [EAX + 0x4],EDX
00af0111  8b5108  MOV EDX,dword ptr [ECX + 0x8]
00af0114  895008  MOV dword ptr [EAX + 0x8],EDX
00af0117  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00af011a  51  PUSH ECX
00af011b  8d4f40  LEA ECX,[EDI + 0x40]
00af011e  89500c  MOV dword ptr [EAX + 0xc],EDX
00af0121  c7401000000000  MOV dword ptr [EAX + 0x10],0x0
00af0128  e803b6ffff  CALL 0x00aeb730
00af012d  8bcf  MOV ECX,EDI
00af012f  8930  MOV dword ptr [EAX],ESI
00af0131  e84a9fffff  CALL 0x00aea080
00af0136  5d  POP EBP
00af0137  5f  POP EDI
00af0138  8bc6  MOV EAX,ESI
00af013a  5e  POP ESI
00af013b  5b  POP EBX
00af013c  83c424  ADD ESP,0x24
00af013f  c20800  RET 0x8

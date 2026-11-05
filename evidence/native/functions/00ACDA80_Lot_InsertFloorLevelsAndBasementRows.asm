# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined Lot_InsertFloorLevelsAndBasementRows(void * this, int count, dword modeBits)
Owned ranges: [[00acda80, 00acdc8d]]

00acda80  83ec10  SUB ESP,0x10
00acda83  53  PUSH EBX
00acda84  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00acda88  56  PUSH ESI
00acda89  57  PUSH EDI
00acda8a  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00acda8e  53  PUSH EBX
00acda8f  57  PUSH EDI
00acda90  8bf1  MOV ESI,ECX
00acda92  e829effeff  CALL 0x00abc9c0
00acda97  8b8e90020000  MOV ECX,dword ptr [ESI + 0x290]
00acda9d  53  PUSH EBX
00acda9e  57  PUSH EDI
00acda9f  e85cb8fcff  CALL 0x00a99300
00acdaa4  83bed002000000  CMP dword ptr [ESI + 0x2d0],0x0
00acdaab  7411  JZ 0x00acdabe
00acdaad  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00acdab3  8b01  MOV EAX,dword ptr [ECX]
00acdab5  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acdab8  6a00  PUSH 0x0
00acdaba  53  PUSH EBX
00acdabb  57  PUSH EDI
00acdabc  ffd2  CALL EDX
00acdabe  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00acdac5  7411  JZ 0x00acdad8
00acdac7  8b8e9c020000  MOV ECX,dword ptr [ESI + 0x29c]
00acdacd  8b01  MOV EAX,dword ptr [ECX]
00acdacf  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acdad2  6a00  PUSH 0x0
00acdad4  53  PUSH EBX
00acdad5  57  PUSH EDI
00acdad6  ffd2  CALL EDX
00acdad8  83bea002000000  CMP dword ptr [ESI + 0x2a0],0x0
00acdadf  7411  JZ 0x00acdaf2
00acdae1  8b8ea0020000  MOV ECX,dword ptr [ESI + 0x2a0]
00acdae7  8b01  MOV EAX,dword ptr [ECX]
00acdae9  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acdaec  6a00  PUSH 0x0
00acdaee  53  PUSH EBX
00acdaef  57  PUSH EDI
00acdaf0  ffd2  CALL EDX
00acdaf2  8b8ea4020000  MOV ECX,dword ptr [ESI + 0x2a4]
00acdaf8  8b01  MOV EAX,dword ptr [ECX]
00acdafa  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00acdafd  6a00  PUSH 0x0
00acdaff  53  PUSH EBX
00acdb00  57  PUSH EDI
00acdb01  ffd2  CALL EDX
00acdb03  8b8e98020000  MOV ECX,dword ptr [ESI + 0x298]
00acdb09  53  PUSH EBX
00acdb0a  57  PUSH EDI
00acdb0b  e8001f0800  CALL 0x00b4fa10
00acdb10  85ff  TEST EDI,EDI
00acdb12  0f8e2c010000  JLE 0x00acdc44
00acdb18  8b8684010000  MOV EAX,dword ptr [ESI + 0x184]
00acdb1e  8acb  MOV CL,BL
00acdb20  f6d9  NEG CL
00acdb22  55  PUSH EBP
00acdb23  1bc9  SBB ECX,ECX
00acdb25  23c8  AND ECX,EAX
00acdb27  8be9  MOV EBP,ECX
00acdb29  8b8ed0020000  MOV ECX,dword ptr [ESI + 0x2d0]
00acdb2f  33d2  XOR EDX,EDX
00acdb31  3bca  CMP ECX,EDX
00acdb33  8d442fff  LEA EAX,[EDI + EBP*0x1 + -0x1]
00acdb37  744b  JZ 0x00acdb84
00acdb39  89542410  MOV dword ptr [ESP + 0x10],EDX
00acdb3d  89542414  MOV dword ptr [ESP + 0x14],EDX
00acdb41  89542418  MOV dword ptr [ESP + 0x18],EDX
00acdb45  8d542410  LEA EDX,[ESP + 0x10]
00acdb49  52  PUSH EDX
00acdb4a  50  PUSH EAX
00acdb4b  55  PUSH EBP
00acdb4c  e83ff9ffff  CALL 0x00acd490
00acdb51  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00acdb55  85c0  TEST EAX,EAX
00acdb57  742b  JZ 0x00acdb84
00acdb59  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00acdb5d  2bc8  SUB ECX,EAX
00acdb5f  c1f903  SAR ECX,0x3
00acdb62  03c9  ADD ECX,ECX
00acdb64  03c9  ADD ECX,ECX
00acdb66  03c9  ADD ECX,ECX
00acdb68  83f920  CMP ECX,0x20
00acdb6b  50  PUSH EAX
00acdb6c  770b  JA 0x00acdb79
00acdb6e  8d4c2420  LEA ECX,[ESP + 0x20]
00acdb72  e859160100  CALL 0x00adf1d0
00acdb77  eb0b  JMP 0x00acdb84
00acdb79  8b0d64c81c01  MOV ECX,dword ptr [0x011cc864]
00acdb7f  e8ec82a1ff  CALL 0x004e5e70
00acdb84  8b869c020000  MOV EAX,dword ptr [ESI + 0x29c]
00acdb8a  85c0  TEST EAX,EAX
00acdb8c  742d  JZ 0x00acdbbb
00acdb8e  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00acdb91  0faf4804  IMUL ECX,dword ptr [EAX + 0x4]
00acdb95  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00acdb98  8bc1  MOV EAX,ECX
00acdb9a  0fafc5  IMUL EAX,EBP
00acdb9d  03c2  ADD EAX,EDX
00acdb9f  89542428  MOV dword ptr [ESP + 0x28],EDX
00acdba3  8d142f  LEA EDX,[EDI + EBP*0x1]
00acdba6  0fafd1  IMUL EDX,ECX
00acdba9  2bd0  SUB EDX,EAX
00acdbab  03542428  ADD EDX,dword ptr [ESP + 0x28]
00acdbaf  52  PUSH EDX
00acdbb0  6a00  PUSH 0x0
00acdbb2  50  PUSH EAX
00acdbb3  e8e0164b00  CALL 0x00f7f298
00acdbb8  83c40c  ADD ESP,0xc
00acdbbb  8b8ea0020000  MOV ECX,dword ptr [ESI + 0x2a0]
00acdbc1  85c9  TEST ECX,ECX
00acdbc3  7418  JZ 0x00acdbdd
00acdbc5  8d442428  LEA EAX,[ESP + 0x28]
00acdbc9  50  PUSH EAX
00acdbca  8d442fff  LEA EAX,[EDI + EBP*0x1 + -0x1]
00acdbce  50  PUSH EAX
00acdbcf  55  PUSH EBP
00acdbd0  c7442434ffff0000  MOV dword ptr [ESP + 0x34],0xffff
00acdbd8  e80335fbff  CALL 0x00a810e0
00acdbdd  83c8ff  OR EAX,0xffffffff
00acdbe0  8d4c2410  LEA ECX,[ESP + 0x10]
00acdbe4  51  PUSH ECX
00acdbe5  8b8ea4020000  MOV ECX,dword ptr [ESI + 0x2a4]
00acdbeb  89442414  MOV dword ptr [ESP + 0x14],EAX
00acdbef  89442418  MOV dword ptr [ESP + 0x18],EAX
00acdbf3  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00acdbf7  89442420  MOV dword ptr [ESP + 0x20],EAX
00acdbfb  8d442fff  LEA EAX,[EDI + EBP*0x1 + -0x1]
00acdbff  50  PUSH EAX
00acdc00  55  PUSH EBP
00acdc01  e84a85ffff  CALL 0x00ac6150
00acdc06  84db  TEST BL,BL
00acdc08  5d  POP EBP
00acdc09  757a  JNZ 0x00acdc85
00acdc0b  8b8ea8020000  MOV ECX,dword ptr [ESI + 0x2a8]
00acdc11  8b11  MOV EDX,dword ptr [ECX]
00acdc13  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acdc16  8b590c  MOV EBX,dword ptr [ECX + 0xc]
00acdc19  6a00  PUSH 0x0
00acdc1b  6a01  PUSH 0x1
00acdc1d  57  PUSH EDI
00acdc1e  ffd0  CALL EAX
00acdc20  8d4c2424  LEA ECX,[ESP + 0x24]
00acdc24  51  PUSH ECX
00acdc25  8b8ea8020000  MOV ECX,dword ptr [ESI + 0x2a8]
00acdc2b  8d543bff  LEA EDX,[EBX + EDI*0x1 + -0x1]
00acdc2f  52  PUSH EDX
00acdc30  53  PUSH EBX
00acdc31  c644243000  MOV byte ptr [ESP + 0x30],0x0
00acdc36  e86595fcff  CALL 0x00a971a0
00acdc3b  5f  POP EDI
00acdc3c  5e  POP ESI
00acdc3d  5b  POP EBX
00acdc3e  83c410  ADD ESP,0x10
00acdc41  c20800  RET 0x8
00acdc44  7d3f  JGE 0x00acdc85
00acdc46  84db  TEST BL,BL
00acdc48  753b  JNZ 0x00acdc85
00acdc4a  8b86a8020000  MOV EAX,dword ptr [ESI + 0x2a8]
00acdc50  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00acdc53  f7df  NEG EDI
00acdc55  89442424  MOV dword ptr [ESP + 0x24],EAX
00acdc59  3bc7  CMP EAX,EDI
00acdc5b  897c2420  MOV dword ptr [ESP + 0x20],EDI
00acdc5f  8d442424  LEA EAX,[ESP + 0x24]
00acdc63  7c04  JL 0x00acdc69
00acdc65  8d442420  LEA EAX,[ESP + 0x20]
00acdc69  8b00  MOV EAX,dword ptr [EAX]
00acdc6b  85c0  TEST EAX,EAX
00acdc6d  7e16  JLE 0x00acdc85
00acdc6f  8bb6a8020000  MOV ESI,dword ptr [ESI + 0x2a8]
00acdc75  8b16  MOV EDX,dword ptr [ESI]
00acdc77  6a00  PUSH 0x0
00acdc79  f7d8  NEG EAX
00acdc7b  6a01  PUSH 0x1
00acdc7d  50  PUSH EAX
00acdc7e  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00acdc81  8bce  MOV ECX,ESI
00acdc83  ffd0  CALL EAX
00acdc85  5f  POP EDI
00acdc86  5e  POP ESI
00acdc87  5b  POP EBX
00acdc88  83c410  ADD ESP,0x10
00acdc8b  c20800  RET 0x8

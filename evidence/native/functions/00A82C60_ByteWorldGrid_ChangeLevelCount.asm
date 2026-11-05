# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void ByteWorldGrid_ChangeLevelCount(void * this, int count, uchar appendMode, uchar dimensionsOnly)
Owned ranges: [[00a82c60, 00a82d26]]

00a82c60  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a82c65  56  PUSH ESI
00a82c66  8bf1  MOV ESI,ECX
00a82c68  740b  JZ 0x00a82c75
00a82c6a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00a82c6e  01460c  ADD dword ptr [ESI + 0xc],EAX
00a82c71  5e  POP ESI
00a82c72  c20c00  RET 0xc
00a82c75  807c240c00  CMP byte ptr [ESP + 0xc],0x0
00a82c7a  53  PUSH EBX
00a82c7b  8b5e0c  MOV EBX,dword ptr [ESI + 0xc]
00a82c7e  55  PUSH EBP
00a82c7f  57  PUSH EDI
00a82c80  7547  JNZ 0x00a82cc9
00a82c82  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a82c86  85ed  TEST EBP,EBP
00a82c88  7d43  JGE 0x00a82ccd
00a82c8a  85db  TEST EBX,EBX
00a82c8c  7e3f  JLE 0x00a82ccd
00a82c8e  8bd5  MOV EDX,EBP
00a82c90  f7da  NEG EDX
00a82c92  3bd3  CMP EDX,EBX
00a82c94  7d37  JGE 0x00a82ccd
00a82c96  8b6e04  MOV EBP,dword ptr [ESI + 0x4]
00a82c99  8b7e08  MOV EDI,dword ptr [ESI + 0x8]
00a82c9c  8bcb  MOV ECX,EBX
00a82c9e  2bca  SUB ECX,EDX
00a82ca0  8bc5  MOV EAX,EBP
00a82ca2  0fafcd  IMUL ECX,EBP
00a82ca5  0fafc7  IMUL EAX,EDI
00a82ca8  0fafcf  IMUL ECX,EDI
00a82cab  0fafc2  IMUL EAX,EDX
00a82cae  03c8  ADD ECX,EAX
00a82cb0  33ed  XOR EBP,EBP
00a82cb2  3bc1  CMP EAX,ECX
00a82cb4  7d13  JGE 0x00a82cc9
00a82cb6  8b7e10  MOV EDI,dword ptr [ESI + 0x10]
00a82cb9  8a1407  MOV DL,byte ptr [EDI + EAX*0x1]
00a82cbc  88142f  MOV byte ptr [EDI + EBP*0x1],DL
00a82cbf  83c001  ADD EAX,0x1
00a82cc2  83c501  ADD EBP,0x1
00a82cc5  3bc1  CMP EAX,ECX
00a82cc7  7ced  JL 0x00a82cb6
00a82cc9  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
00a82ccd  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00a82cd0  0faf4e04  IMUL ECX,dword ptr [ESI + 0x4]
00a82cd4  016e0c  ADD dword ptr [ESI + 0xc],EBP
00a82cd7  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00a82cda  0fafc8  IMUL ECX,EAX
00a82cdd  8d7e10  LEA EDI,[ESI + 0x10]
00a82ce0  51  PUSH ECX
00a82ce1  8bcf  MOV ECX,EDI
00a82ce3  e8380199ff  CALL 0x00412e20
00a82ce8  807c241800  CMP byte ptr [ESP + 0x18],0x0
00a82ced  7531  JNZ 0x00a82d20
00a82cef  85ed  TEST EBP,EBP
00a82cf1  7e2d  JLE 0x00a82d20
00a82cf3  85db  TEST EBX,EBX
00a82cf5  7e29  JLE 0x00a82d20
00a82cf7  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00a82cfa  0faf4604  IMUL EAX,dword ptr [ESI + 0x4]
00a82cfe  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a82d01  0fafc3  IMUL EAX,EBX
00a82d04  2b0f  SUB ECX,dword ptr [EDI]
00a82d06  83e801  SUB EAX,0x1
00a82d09  83e901  SUB ECX,0x1
00a82d0c  85c0  TEST EAX,EAX
00a82d0e  7c10  JL 0x00a82d20
00a82d10  8b37  MOV ESI,dword ptr [EDI]
00a82d12  8a1406  MOV DL,byte ptr [ESI + EAX*0x1]
00a82d15  88140e  MOV byte ptr [ESI + ECX*0x1],DL
00a82d18  83e901  SUB ECX,0x1
00a82d1b  83e801  SUB EAX,0x1
00a82d1e  79f0  JNS 0x00a82d10
00a82d20  5f  POP EDI
00a82d21  5d  POP EBP
00a82d22  5b  POP EBX
00a82d23  5e  POP ESI
00a82d24  c20c00  RET 0xc

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void FloorManager_SetRestrictedGroundPerimeter(void * this, bool enabled)
Owned ranges: [[00a8d6a0, 00a8d770]]

00a8d6a0  51  PUSH ECX
00a8d6a1  56  PUSH ESI
00a8d6a2  8bf1  MOV ESI,ECX
00a8d6a4  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00a8d6a7  85c0  TEST EAX,EAX
00a8d6a9  0f84bd000000  JZ 0x00a8d76c
00a8d6af  80b8bc04000000  CMP byte ptr [EAX + 0x4bc],0x0
00a8d6b6  0f84b0000000  JZ 0x00a8d76c
00a8d6bc  53  PUSH EBX
00a8d6bd  33db  XOR EBX,EBX
00a8d6bf  395e08  CMP dword ptr [ESI + 0x8],EBX
00a8d6c2  57  PUSH EDI
00a8d6c3  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00a8d6c7  c644240d00  MOV byte ptr [ESP + 0xd],0x0
00a8d6cc  c644240e00  MOV byte ptr [ESP + 0xe],0x0
00a8d6d1  c644240f0f  MOV byte ptr [ESP + 0xf],0xf
00a8d6d6  7e19  JLE 0x00a8d6f1
00a8d6d8  8d44240c  LEA EAX,[ESP + 0xc]
00a8d6dc  50  PUSH EAX
00a8d6dd  57  PUSH EDI
00a8d6de  8bce  MOV ECX,ESI
00a8d6e0  885c2414  MOV byte ptr [ESP + 0x14],BL
00a8d6e4  e847faffff  CALL 0x00a8d130
00a8d6e9  83c301  ADD EBX,0x1
00a8d6ec  3b5e08  CMP EBX,dword ptr [ESI + 0x8]
00a8d6ef  7ce7  JL 0x00a8d6d8
00a8d6f1  8a4e0c  MOV CL,byte ptr [ESI + 0xc]
00a8d6f4  80e901  SUB CL,0x1
00a8d6f7  33db  XOR EBX,EBX
00a8d6f9  395e08  CMP dword ptr [ESI + 0x8],EBX
00a8d6fc  884c240d  MOV byte ptr [ESP + 0xd],CL
00a8d700  7e19  JLE 0x00a8d71b
00a8d702  8d54240c  LEA EDX,[ESP + 0xc]
00a8d706  52  PUSH EDX
00a8d707  57  PUSH EDI
00a8d708  8bce  MOV ECX,ESI
00a8d70a  885c2414  MOV byte ptr [ESP + 0x14],BL
00a8d70e  e81dfaffff  CALL 0x00a8d130
00a8d713  83c301  ADD EBX,0x1
00a8d716  3b5e08  CMP EBX,dword ptr [ESI + 0x8]
00a8d719  7ce7  JL 0x00a8d702
00a8d71b  33db  XOR EBX,EBX
00a8d71d  395e0c  CMP dword ptr [ESI + 0xc],EBX
00a8d720  c644240c00  MOV byte ptr [ESP + 0xc],0x0
00a8d725  7e19  JLE 0x00a8d740
00a8d727  8d44240c  LEA EAX,[ESP + 0xc]
00a8d72b  50  PUSH EAX
00a8d72c  57  PUSH EDI
00a8d72d  8bce  MOV ECX,ESI
00a8d72f  885c2415  MOV byte ptr [ESP + 0x15],BL
00a8d733  e8f8f9ffff  CALL 0x00a8d130
00a8d738  83c301  ADD EBX,0x1
00a8d73b  3b5e0c  CMP EBX,dword ptr [ESI + 0xc]
00a8d73e  7ce7  JL 0x00a8d727
00a8d740  8a4e08  MOV CL,byte ptr [ESI + 0x8]
00a8d743  80e901  SUB CL,0x1
00a8d746  33db  XOR EBX,EBX
00a8d748  395e0c  CMP dword ptr [ESI + 0xc],EBX
00a8d74b  884c240c  MOV byte ptr [ESP + 0xc],CL
00a8d74f  7e19  JLE 0x00a8d76a
00a8d751  8d54240c  LEA EDX,[ESP + 0xc]
00a8d755  52  PUSH EDX
00a8d756  57  PUSH EDI
00a8d757  8bce  MOV ECX,ESI
00a8d759  885c2415  MOV byte ptr [ESP + 0x15],BL
00a8d75d  e8cef9ffff  CALL 0x00a8d130
00a8d762  83c301  ADD EBX,0x1
00a8d765  3b5e0c  CMP EBX,dword ptr [ESI + 0xc]
00a8d768  7ce7  JL 0x00a8d751
00a8d76a  5f  POP EDI
00a8d76b  5b  POP EBX
00a8d76c  5e  POP ESI
00a8d76d  59  POP ECX
00a8d76e  c20400  RET 0x4

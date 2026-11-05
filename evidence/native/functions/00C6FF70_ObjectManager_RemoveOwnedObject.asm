# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined ObjectManager_RemoveOwnedObject(void * this, undefined4 * param_1, char param_2)
Owned ranges: [[00c6ff70, 00c70029]]

00c6ff70  83ec08  SUB ESP,0x8
00c6ff73  56  PUSH ESI
00c6ff74  8b742410  MOV ESI,dword ptr [ESP + 0x10]
00c6ff78  57  PUSH EDI
00c6ff79  8bf9  MOV EDI,ECX
00c6ff7b  8bce  MOV ECX,ESI
00c6ff7d  e8aef1a1ff  CALL 0x0068f130
00c6ff82  85c0  TEST EAX,EAX
00c6ff84  0f8498000000  JZ 0x00c70022
00c6ff8a  3bc7  CMP EAX,EDI
00c6ff8c  0f8590000000  JNZ 0x00c70022
00c6ff92  8b5718  MOV EDX,dword ptr [EDI + 0x18]
00c6ff95  8b4714  MOV EAX,dword ptr [EDI + 0x14]
00c6ff98  3bc2  CMP EAX,EDX
00c6ff9a  8d4f14  LEA ECX,[EDI + 0x14]
00c6ff9d  0f847f000000  JZ 0x00c70022
00c6ffa3  3930  CMP dword ptr [EAX],ESI
00c6ffa5  7407  JZ 0x00c6ffae
00c6ffa7  83c004  ADD EAX,0x4
00c6ffaa  3bc2  CMP EAX,EDX
00c6ffac  75f5  JNZ 0x00c6ffa3
00c6ffae  3bc2  CMP EAX,EDX
00c6ffb0  7470  JZ 0x00c70022
00c6ffb2  53  PUSH EBX
00c6ffb3  8b5e08  MOV EBX,dword ptr [ESI + 0x8]
00c6ffb6  55  PUSH EBP
00c6ffb7  8b6e0c  MOV EBP,dword ptr [ESI + 0xc]
00c6ffba  50  PUSH EAX
00c6ffbb  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c6ffbf  896c2418  MOV dword ptr [ESP + 0x18],EBP
00c6ffc3  e828f1ffff  CALL 0x00c6f0f0
00c6ffc8  8d442410  LEA EAX,[ESP + 0x10]
00c6ffcc  50  PUSH EAX
00c6ffcd  8d4f24  LEA ECX,[EDI + 0x24]
00c6ffd0  e8cbfdffff  CALL 0x00c6fda0
00c6ffd5  8d4c2410  LEA ECX,[ESP + 0x10]
00c6ffd9  51  PUSH ECX
00c6ffda  8d4f7c  LEA ECX,[EDI + 0x7c]
00c6ffdd  e86efeffff  CALL 0x00c6fe50
00c6ffe2  6a00  PUSH 0x0
00c6ffe4  8bce  MOV ECX,ESI
00c6ffe6  e86542ccff  CALL 0x00934250
00c6ffeb  8d4604  LEA EAX,[ESI + 0x4]
00c6ffee  8bd0  MOV EDX,EAX
00c6fff0  83c9ff  OR ECX,0xffffffff
00c6fff3  f00fc10a  XADD.LOCK dword ptr [EDX],ECX
00c6fff7  49  DEC ECX
00c6fff8  7511  JNZ 0x00c7000b
00c6fffa  ba01000000  MOV EDX,0x1
00c6ffff  8710  XCHG dword ptr [EAX],EDX
00c70001  8b06  MOV EAX,dword ptr [ESI]
00c70003  8b10  MOV EDX,dword ptr [EAX]
00c70005  6a01  PUSH 0x1
00c70007  8bce  MOV ECX,ESI
00c70009  ffd2  CALL EDX
00c7000b  807c242000  CMP byte ptr [ESP + 0x20],0x0
00c70010  740e  JZ 0x00c70020
00c70012  e85975ccff  CALL 0x00937570
00c70017  55  PUSH EBP
00c70018  53  PUSH EBX
00c70019  8bc8  MOV ECX,EAX
00c7001b  e8207eccff  CALL 0x00937e40
00c70020  5d  POP EBP
00c70021  5b  POP EBX
00c70022  5f  POP EDI
00c70023  5e  POP ESI
00c70024  83c408  ADD ESP,0x8
00c70027  c20800  RET 0x8

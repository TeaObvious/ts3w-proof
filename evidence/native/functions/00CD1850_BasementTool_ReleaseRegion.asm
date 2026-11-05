# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementTool_ReleaseRegion(void * this, int param_1, float * param_2)
Owned ranges: [[00cd1850, 00cd1a27]]

00cd1850  55  PUSH EBP
00cd1851  8bec  MOV EBP,ESP
00cd1853  83e4f0  AND ESP,0xfffffff0
00cd1856  83ec28  SUB ESP,0x28
00cd1859  56  PUSH ESI
00cd185a  8bf1  MOV ESI,ECX
00cd185c  807e5d00  CMP byte ptr [ESI + 0x5d],0x0
00cd1860  57  PUSH EDI
00cd1861  0f84b7010000  JZ 0x00cd1a1e
00cd1867  e8d4eeffff  CALL 0x00cd0740
00cd186c  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cd186f  c6465d00  MOV byte ptr [ESI + 0x5d],0x0
00cd1873  c6805803000000  MOV byte ptr [EAX + 0x358],0x0
00cd187a  807e5c00  CMP byte ptr [ESI + 0x5c],0x0
00cd187e  740a  JZ 0x00cd188a
00cd1880  32c0  XOR AL,AL
00cd1882  5f  POP EDI
00cd1883  5e  POP ESI
00cd1884  8be5  MOV ESP,EBP
00cd1886  5d  POP EBP
00cd1887  c20800  RET 0x8
00cd188a  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd188d  6a01  PUSH 0x1
00cd188f  51  PUSH ECX
00cd1890  e8fbb6fcff  CALL 0x00c9cf90
00cd1895  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd189b  83c408  ADD ESP,0x8
00cd189e  85c9  TEST ECX,ECX
00cd18a0  7407  JZ 0x00cd18a9
00cd18a2  8b11  MOV EDX,dword ptr [ECX]
00cd18a4  8b4220  MOV EAX,dword ptr [EDX + 0x20]
00cd18a7  ffd0  CALL EAX
00cd18a9  80be8d00000000  CMP byte ptr [ESI + 0x8d],0x0
00cd18b0  8b7d0c  MOV EDI,dword ptr [EBP + 0xc]
00cd18b3  741e  JZ 0x00cd18d3
00cd18b5  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cd18b8  85c0  TEST EAX,EAX
00cd18ba  7405  JZ 0x00cd18c1
00cd18bc  83f802  CMP EAX,0x2
00cd18bf  7509  JNZ 0x00cd18ca
00cd18c1  8bce  MOV ECX,ESI
00cd18c3  e838feffff  CALL 0x00cd1700
00cd18c8  eb1e  JMP 0x00cd18e8
00cd18ca  8bce  MOV ECX,ESI
00cd18cc  e8dffeffff  CALL 0x00cd17b0
00cd18d1  eb15  JMP 0x00cd18e8
00cd18d3  80be8c00000000  CMP byte ptr [ESI + 0x8c],0x0
00cd18da  750c  JNZ 0x00cd18e8
00cd18dc  8b16  MOV EDX,dword ptr [ESI]
00cd18de  8b4254  MOV EAX,dword ptr [EDX + 0x54]
00cd18e1  6a01  PUSH 0x1
00cd18e3  57  PUSH EDI
00cd18e4  8bce  MOV ECX,ESI
00cd18e6  ffd0  CALL EAX
00cd18e8  8bce  MOV ECX,ESI
00cd18ea  e8c1f1ffff  CALL 0x00cd0ab0
00cd18ef  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cd18f2  85c0  TEST EAX,EAX
00cd18f4  7405  JZ 0x00cd18fb
00cd18f6  83f802  CMP EAX,0x2
00cd18f9  7507  JNZ 0x00cd1902
00cd18fb  682cf70701  PUSH 0x107f72c
00cd1900  eb05  JMP 0x00cd1907
00cd1902  6818f70701  PUSH 0x107f718
00cd1907  8bce  MOV ECX,ESI
00cd1909  e802c50100  CALL 0x00cede10
00cd190e  8bce  MOV ECX,ESI
00cd1910  e84bd1ffff  CALL 0x00ccea60
00cd1915  8bce  MOV ECX,ESI
00cd1917  e8f41e0000  CALL 0x00cd3810
00cd191c  8bce  MOV ECX,ESI
00cd191e  e82d1f0000  CALL 0x00cd3850
00cd1923  807e5e00  CMP byte ptr [ESI + 0x5e],0x0
00cd1927  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00cd192f  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00cd1935  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00cd193b  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00cd1943  7514  JNZ 0x00cd1959
00cd1945  8d4c2414  LEA ECX,[ESP + 0x14]
00cd1949  51  PUSH ECX
00cd194a  8d5664  LEA EDX,[ESI + 0x64]
00cd194d  52  PUSH EDX
00cd194e  57  PUSH EDI
00cd194f  e8ace4e2ff  CALL 0x00affe00
00cd1954  83c40c  ADD ESP,0xc
00cd1957  eb0e  JMP 0x00cd1967
00cd1959  8d442414  LEA EAX,[ESP + 0x14]
00cd195d  50  PUSH EAX
00cd195e  57  PUSH EDI
00cd195f  e85c63e2ff  CALL 0x00af7cc0
00cd1964  83c408  ADD ESP,0x8
00cd1967  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00cd196a  8d4c2420  LEA ECX,[ESP + 0x20]
00cd196e  51  PUSH ECX
00cd196f  8d542418  LEA EDX,[ESP + 0x18]
00cd1973  52  PUSH EDX
00cd1974  50  PUSH EAX
00cd1975  e8d6ade0ff  CALL 0x00adc750
00cd197a  d9e8  FLD1
00cd197c  8b1540e51e01  MOV EDX,dword ptr [0x011ee540]
00cd1982  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cd1985  83c40c  ADD ESP,0xc
00cd1988  6a00  PUSH 0x0
00cd198a  51  PUSH ECX
00cd198b  d91c24  FSTP float ptr [ESP]
00cd198e  8d4c2428  LEA ECX,[ESP + 0x28]
00cd1992  51  PUSH ECX
00cd1993  52  PUSH EDX
00cd1994  50  PUSH EAX
00cd1995  e8e6a90000  CALL 0x00cdc380
00cd199a  8b0dc4c01e01  MOV ECX,dword ptr [0x011ec0c4]
00cd19a0  8b15c0c01e01  MOV EDX,dword ptr [0x011ec0c0]
00cd19a6  51  PUSH ECX
00cd19a7  52  PUSH EDX
00cd19a8  e8f3eaffff  CALL 0x00cd04a0
00cd19ad  d9ee  FLDZ
00cd19af  8b06  MOV EAX,dword ptr [ESI]
00cd19b1  d95c2418  FSTP float ptr [ESP + 0x18]
00cd19b5  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cd19b8  8b4074  MOV EAX,dword ptr [EAX + 0x74]
00cd19bb  83c418  ADD ESP,0x18
00cd19be  8d4c2418  LEA ECX,[ESP + 0x18]
00cd19c2  51  PUSH ECX
00cd19c3  52  PUSH EDX
00cd19c4  8bce  MOV ECX,ESI
00cd19c6  ffd0  CALL EAX
00cd19c8  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd19cb  6a00  PUSH 0x0
00cd19cd  51  PUSH ECX
00cd19ce  e8bdb5fcff  CALL 0x00c9cf90
00cd19d3  83c408  ADD ESP,0x8
00cd19d6  8bce  MOV ECX,ESI
00cd19d8  e8e3710000  CALL 0x00cd8bc0
00cd19dd  8bce  MOV ECX,ESI
00cd19df  e8dcbc0100  CALL 0x00ced6c0
00cd19e4  80be8d00000000  CMP byte ptr [ESI + 0x8d],0x0
00cd19eb  7531  JNZ 0x00cd1a1e
00cd19ed  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cd19f0  85c0  TEST EAX,EAX
00cd19f2  7405  JZ 0x00cd19f9
00cd19f4  83f801  CMP EAX,0x1
00cd19f7  7525  JNZ 0x00cd1a1e
00cd19f9  8b466c  MOV EAX,dword ptr [ESI + 0x6c]
00cd19fc  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd19ff  8d50ff  LEA EDX,[EAX + -0x1]
00cd1a02  39917c010000  CMP dword ptr [ECX + 0x17c],EDX
00cd1a08  7514  JNZ 0x00cd1a1e
00cd1a0a  6a00  PUSH 0x0
00cd1a0c  6a00  PUSH 0x0
00cd1a0e  6a00  PUSH 0x0
00cd1a10  50  PUSH EAX
00cd1a11  e80adcdeff  CALL 0x00abf620
00cd1a16  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd1a19  e892c7dfff  CALL 0x00ace1b0
00cd1a1e  5f  POP EDI
00cd1a1f  b001  MOV AL,0x1
00cd1a21  5e  POP ESI
00cd1a22  8be5  MOV ESP,EBP
00cd1a24  5d  POP EBP
00cd1a25  c20800  RET 0x8

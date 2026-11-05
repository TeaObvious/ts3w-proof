# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LocationComponent_NotifyManagedLotUpdate(int param_1)
Owned ranges: [[00c8a200, 00c8a2ec] [00c8a2f0, 00c8a313]]

00c8a200  81eca8000000  SUB ESP,0xa8
00c8a206  56  PUSH ESI
00c8a207  8bf1  MOV ESI,ECX
00c8a209  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8a20c  8b0df8a01e01  MOV ECX,dword ptr [0x011ea0f8]
00c8a212  85482c  TEST dword ptr [EAX + 0x2c],ECX
00c8a215  0f84f1000000  JZ 0x00c8a30c
00c8a21b  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00c8a21e  55  PUSH EBP
00c8a21f  57  PUSH EDI
00c8a220  8d4c240c  LEA ECX,[ESP + 0xc]
00c8a224  8954240c  MOV dword ptr [ESP + 0xc],EDX
00c8a228  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00c8a22b  33ff  XOR EDI,EDI
00c8a22d  51  PUSH ECX
00c8a22e  bdf4a6fb00  MOV EBP,0xfba6f4
00c8a233  8d4c2418  LEA ECX,[ESP + 0x18]
00c8a237  89442414  MOV dword ptr [ESP + 0x14],EAX
00c8a23b  896c2418  MOV dword ptr [ESP + 0x18],EBP
00c8a23f  66897c2420  MOV word ptr [ESP + 0x20],DI
00c8a244  66897c2422  MOV word ptr [ESP + 0x22],DI
00c8a249  e8d2bd86ff  CALL 0x004f6020
00c8a24e  8d5608  LEA EDX,[ESI + 0x8]
00c8a251  52  PUSH EDX
00c8a252  8d4c2438  LEA ECX,[ESP + 0x38]
00c8a256  896c2438  MOV dword ptr [ESP + 0x38],EBP
00c8a25a  66897c2440  MOV word ptr [ESP + 0x40],DI
00c8a25f  66897c2442  MOV word ptr [ESP + 0x42],DI
00c8a264  e8b7bd86ff  CALL 0x004f6020
00c8a269  8d4618  LEA EAX,[ESI + 0x18]
00c8a26c  50  PUSH EAX
00c8a26d  8d4c2458  LEA ECX,[ESP + 0x58]
00c8a271  896c2458  MOV dword ptr [ESP + 0x58],EBP
00c8a275  66897c2460  MOV word ptr [ESP + 0x60],DI
00c8a27a  66897c2462  MOV word ptr [ESP + 0x62],DI
00c8a27f  e81cbc86ff  CALL 0x004f5ea0
00c8a284  83c620  ADD ESI,0x20
00c8a287  56  PUSH ESI
00c8a288  8d4c2478  LEA ECX,[ESP + 0x78]
00c8a28c  896c2478  MOV dword ptr [ESP + 0x78],EBP
00c8a290  6689bc2480000000  MOV word ptr [ESP + 0x80],DI
00c8a298  6689bc2482000000  MOV word ptr [ESP + 0x82],DI
00c8a2a0  e8fbbb86ff  CALL 0x004f5ea0
00c8a2a5  6a04  PUSH 0x4
00c8a2a7  8d4c2418  LEA ECX,[ESP + 0x18]
00c8a2ab  51  PUSH ECX
00c8a2ac  8d94249c000000  LEA EDX,[ESP + 0x9c]
00c8a2b3  6a11  PUSH 0x11
00c8a2b5  52  PUSH EDX
00c8a2b6  e8b553b0ff  CALL 0x0078f670
00c8a2bb  83c410  ADD ESP,0x10
00c8a2be  f684249c00000004  TEST byte ptr [ESP + 0x9c],0x4
00c8a2c6  89ac2494000000  MOV dword ptr [ESP + 0x94],EBP
00c8a2cd  740d  JZ 0x00c8a2dc
00c8a2cf  57  PUSH EDI
00c8a2d0  8d8c2498000000  LEA ECX,[ESP + 0x98]
00c8a2d7  e884b486ff  CALL 0x004f5760
00c8a2dc  8db42494000000  LEA ESI,[ESP + 0x94]
00c8a2e3  c744240c03000000  MOV dword ptr [ESP + 0xc],0x3
00c8a2eb  eb03  JMP 0x00c8a2f0
00c8a2ed  8d4900  .byte 8d4900 ; NONOWNED envelope gap bytes
00c8a2f0  83ee20  SUB ESI,0x20
00c8a2f3  f6460804  TEST byte ptr [ESI + 0x8],0x4
00c8a2f7  892e  MOV dword ptr [ESI],EBP
00c8a2f9  7408  JZ 0x00c8a303
00c8a2fb  57  PUSH EDI
00c8a2fc  8bce  MOV ECX,ESI
00c8a2fe  e85db486ff  CALL 0x004f5760
00c8a303  836c240c01  SUB dword ptr [ESP + 0xc],0x1
00c8a308  79e6  JNS 0x00c8a2f0
00c8a30a  5f  POP EDI
00c8a30b  5d  POP EBP
00c8a30c  5e  POP ESI
00c8a30d  81c4a8000000  ADD ESP,0xa8
00c8a313  c3  RET

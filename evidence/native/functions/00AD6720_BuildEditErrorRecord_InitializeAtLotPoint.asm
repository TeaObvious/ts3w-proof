# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer BuildEditErrorRecord_InitializeAtLotPoint(void * this, uint errorCode, pointer lot, LotPaintPoint * point, uint rawWord28, uint rawWord30)
Owned ranges: [[00ad6720, 00ad676f]]

00ad6720  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00ad6724  56  PUSH ESI
00ad6725  8bf1  MOV ESI,ECX
00ad6727  8906  MOV dword ptr [ESI],EAX
00ad6729  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00ad672d  85c0  TEST EAX,EAX
00ad672f  7408  JZ 0x00ad6739
00ad6731  8b4848  MOV ECX,dword ptr [EAX + 0x48]
00ad6734  8b504c  MOV EDX,dword ptr [EAX + 0x4c]
00ad6737  eb04  JMP 0x00ad673d
00ad6739  33c9  XOR ECX,ECX
00ad673b  33d2  XOR EDX,EDX
00ad673d  894e20  MOV dword ptr [ESI + 0x20],ECX
00ad6740  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ad6744  895624  MOV dword ptr [ESI + 0x24],EDX
00ad6747  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ad674b  894e28  MOV dword ptr [ESI + 0x28],ECX
00ad674e  8d4e10  LEA ECX,[ESI + 0x10]
00ad6751  895630  MOV dword ptr [ESI + 0x30],EDX
00ad6754  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00ad6758  51  PUSH ECX
00ad6759  52  PUSH EDX
00ad675a  50  PUSH EAX
00ad675b  c7462c00000000  MOV dword ptr [ESI + 0x2c],0x0
00ad6762  e8e95f0000  CALL 0x00adc750
00ad6767  83c40c  ADD ESP,0xc
00ad676a  8bc6  MOV EAX,ESI
00ad676c  5e  POP ESI
00ad676d  c21400  RET 0x14

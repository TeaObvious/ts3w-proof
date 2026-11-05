# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined8 HashWordPair_Finalize(uint param_1, int param_2)
Owned ranges: [[00afc670, 00afc706]]

00afc670  53  PUSH EBX
00afc671  56  PUSH ESI
00afc672  57  PUSH EDI
00afc673  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00afc677  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00afc67b  33c0  XOR EAX,EAX
00afc67d  f7d0  NOT EAX
00afc67f  8bf1  MOV ESI,ECX
00afc681  03c8  ADD ECX,EAX
00afc683  f7d6  NOT ESI
00afc685  13d6  ADC EDX,ESI
00afc687  8bf2  MOV ESI,EDX
00afc689  8bc1  MOV EAX,ECX
00afc68b  0facf016  SHRD EAX,ESI,0x16
00afc68f  c1ee16  SHR ESI,0x16
00afc692  33d6  XOR EDX,ESI
00afc694  33c8  XOR ECX,EAX
00afc696  8bf2  MOV ESI,EDX
00afc698  8bc1  MOV EAX,ECX
00afc69a  0fa4c60d  SHLD ESI,EAX,0xd
00afc69e  c1e00d  SHL EAX,0xd
00afc6a1  f7d0  NOT EAX
00afc6a3  03c8  ADD ECX,EAX
00afc6a5  f7d6  NOT ESI
00afc6a7  13d6  ADC EDX,ESI
00afc6a9  8bf2  MOV ESI,EDX
00afc6ab  8bc1  MOV EAX,ECX
00afc6ad  0facf008  SHRD EAX,ESI,0x8
00afc6b1  c1ee08  SHR ESI,0x8
00afc6b4  33d6  XOR EDX,ESI
00afc6b6  33c8  XOR ECX,EAX
00afc6b8  8bf2  MOV ESI,EDX
00afc6ba  8bc1  MOV EAX,ECX
00afc6bc  0facf01d  SHRD EAX,ESI,0x1d
00afc6c0  c1ee1d  SHR ESI,0x1d
00afc6c3  33f6  XOR ESI,ESI
00afc6c5  8d3ccd00000000  LEA EDI,[ECX*0x8 + 0x0]
00afc6cc  0bf7  OR ESI,EDI
00afc6ce  33db  XOR EBX,EBX
00afc6d0  0bc3  OR EAX,EBX
00afc6d2  03ce  ADD ECX,ESI
00afc6d4  13d0  ADC EDX,EAX
00afc6d6  8bf2  MOV ESI,EDX
00afc6d8  8bc1  MOV EAX,ECX
00afc6da  0facf00f  SHRD EAX,ESI,0xf
00afc6de  c1ee0f  SHR ESI,0xf
00afc6e1  33c8  XOR ECX,EAX
00afc6e3  33d6  XOR EDX,ESI
00afc6e5  8bf2  MOV ESI,EDX
00afc6e7  8bc1  MOV EAX,ECX
00afc6e9  0fa4c61b  SHLD ESI,EAX,0x1b
00afc6ed  c1e01b  SHL EAX,0x1b
00afc6f0  f7d0  NOT EAX
00afc6f2  03c8  ADD ECX,EAX
00afc6f4  f7d6  NOT ESI
00afc6f6  13d6  ADC EDX,ESI
00afc6f8  8bc1  MOV EAX,ECX
00afc6fa  0facd01f  SHRD EAX,EDX,0x1f
00afc6fe  5f  POP EDI
00afc6ff  5e  POP ESI
00afc700  c1ea1f  SHR EDX,0x1f
00afc703  33c1  XOR EAX,ECX
00afc705  5b  POP EBX
00afc706  c3  RET

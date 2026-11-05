# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint FenceProduct_CountPresetRows(void * this)
Owned ranges: [[00c94ac0, 00c94b1e]]

00c94ac0  51  PUSH ECX
00c94ac1  56  PUSH ESI
00c94ac2  8bb168010000  MOV ESI,dword ptr [ECX + 0x168]
00c94ac8  2bb164010000  SUB ESI,dword ptr [ECX + 0x164]
00c94ace  6a00  PUSH 0x0
00c94ad0  8d442408  LEA EAX,[ESP + 0x8]
00c94ad4  50  PUSH EAX
00c94ad5  83c108  ADD ECX,0x8
00c94ad8  51  PUSH ECX
00c94ad9  c1fe03  SAR ESI,0x3
00c94adc  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c94ae4  e8b7b7e9ff  CALL 0x00b302a0
00c94ae9  8bc8  MOV ECX,EAX
00c94aeb  e840cde9ff  CALL 0x00b31830
00c94af0  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c94af4  85c9  TEST ECX,ECX
00c94af6  7420  JZ 0x00c94b18
00c94af8  57  PUSH EDI
00c94af9  6a04  PUSH 0x4
00c94afb  e8605797ff  CALL 0x0060a260
00c94b00  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c94b04  85c9  TEST ECX,ECX
00c94b06  8bf8  MOV EDI,EAX
00c94b08  7407  JZ 0x00c94b11
00c94b0a  8b11  MOV EDX,dword ptr [ECX]
00c94b0c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c94b0f  ffd0  CALL EAX
00c94b11  8d0437  LEA EAX,[EDI + ESI*0x1]
00c94b14  5f  POP EDI
00c94b15  5e  POP ESI
00c94b16  59  POP ECX
00c94b17  c3  RET
00c94b18  33c0  XOR EAX,EAX
00c94b1a  8bc6  MOV EAX,ESI
00c94b1c  5e  POP ESI
00c94b1d  59  POP ECX
00c94b1e  c3  RET

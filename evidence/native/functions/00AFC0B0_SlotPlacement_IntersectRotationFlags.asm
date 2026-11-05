# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: uint SlotPlacement_IntersectRotationFlags(uint param_1, uint param_2)
Owned ranges: [[00afc0b0, 00afc0ea]]

00afc0b0  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00afc0b4  56  PUSH ESI
00afc0b5  8bf2  MOV ESI,EDX
00afc0b7  81e600000030  AND ESI,0x30000000
00afc0bd  7428  JZ 0x00afc0e7
00afc0bf  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00afc0c3  8bc1  MOV EAX,ECX
00afc0c5  2500000030  AND EAX,0x30000000
00afc0ca  741b  JZ 0x00afc0e7
00afc0cc  f7c200000020  TEST EDX,0x20000000
00afc0d2  7515  JNZ 0x00afc0e9
00afc0d4  f7c100000020  TEST ECX,0x20000000
00afc0da  7404  JZ 0x00afc0e0
00afc0dc  8bc6  MOV EAX,ESI
00afc0de  5e  POP ESI
00afc0df  c3  RET
00afc0e0  b800000010  MOV EAX,0x10000000
00afc0e5  5e  POP ESI
00afc0e6  c3  RET
00afc0e7  33c0  XOR EAX,EAX
00afc0e9  5e  POP ESI
00afc0ea  c3  RET

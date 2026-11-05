# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool ResourceKeyQuad_Equals(void * this, pointer otherKeys)
Owned ranges: [[007892b0, 00789332]]

007892b0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007892b4  8b10  MOV EDX,dword ptr [EAX]
007892b6  3b11  CMP EDX,dword ptr [ECX]
007892b8  7574  JNZ 0x0078932e
007892ba  8b5008  MOV EDX,dword ptr [EAX + 0x8]
007892bd  3b5108  CMP EDX,dword ptr [ECX + 0x8]
007892c0  756c  JNZ 0x0078932e
007892c2  8b500c  MOV EDX,dword ptr [EAX + 0xc]
007892c5  3b510c  CMP EDX,dword ptr [ECX + 0xc]
007892c8  7564  JNZ 0x0078932e
007892ca  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007892cd  3b5104  CMP EDX,dword ptr [ECX + 0x4]
007892d0  755c  JNZ 0x0078932e
007892d2  8b5010  MOV EDX,dword ptr [EAX + 0x10]
007892d5  3b5110  CMP EDX,dword ptr [ECX + 0x10]
007892d8  7554  JNZ 0x0078932e
007892da  8b5018  MOV EDX,dword ptr [EAX + 0x18]
007892dd  3b5118  CMP EDX,dword ptr [ECX + 0x18]
007892e0  754c  JNZ 0x0078932e
007892e2  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
007892e5  3b511c  CMP EDX,dword ptr [ECX + 0x1c]
007892e8  7544  JNZ 0x0078932e
007892ea  8b5014  MOV EDX,dword ptr [EAX + 0x14]
007892ed  3b5114  CMP EDX,dword ptr [ECX + 0x14]
007892f0  753c  JNZ 0x0078932e
007892f2  8b5020  MOV EDX,dword ptr [EAX + 0x20]
007892f5  3b5120  CMP EDX,dword ptr [ECX + 0x20]
007892f8  7534  JNZ 0x0078932e
007892fa  8b5028  MOV EDX,dword ptr [EAX + 0x28]
007892fd  3b5128  CMP EDX,dword ptr [ECX + 0x28]
00789300  752c  JNZ 0x0078932e
00789302  8b502c  MOV EDX,dword ptr [EAX + 0x2c]
00789305  3b512c  CMP EDX,dword ptr [ECX + 0x2c]
00789308  7524  JNZ 0x0078932e
0078930a  8b5024  MOV EDX,dword ptr [EAX + 0x24]
0078930d  3b5124  CMP EDX,dword ptr [ECX + 0x24]
00789310  751c  JNZ 0x0078932e
00789312  83c130  ADD ECX,0x30
00789315  51  PUSH ECX
00789316  83c030  ADD EAX,0x30
00789319  50  PUSH EAX
0078931a  e881a4d1ff  CALL 0x004a37a0
0078931f  83c408  ADD ESP,0x8
00789322  84c0  TEST AL,AL
00789324  7408  JZ 0x0078932e
00789326  b801000000  MOV EAX,0x1
0078932b  c20400  RET 0x4
0078932e  33c0  XOR EAX,EAX
00789330  c20400  RET 0x4

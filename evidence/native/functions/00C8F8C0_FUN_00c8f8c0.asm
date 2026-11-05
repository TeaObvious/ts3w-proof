# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 FUN_00c8f8c0(void * this, undefined4 param_1, uint * param_2)
Owned ranges: [[00c8f8c0, 00c8f9ba]]

00c8f8c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00c8f8c4  83f81f  CMP EAX,0x1f
00c8f8c7  0f87e9000000  JA 0x00c8f9b6
00c8f8cd  0fb680fcf9c800  MOVZX EAX,byte ptr [EAX + 0xc8f9fc]
00c8f8d4  ff2485bcf9c800  JMP dword ptr [EAX*0x4 + 0xc8f9bc]
00c8f8db  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f8df  6a01  PUSH 0x1
00c8f8e1  52  PUSH EDX
00c8f8e2  e8c9edffff  CALL 0x00c8e6b0
00c8f8e7  c20800  RET 0x8
00c8f8ea  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f8ee  6a01  PUSH 0x1
00c8f8f0  50  PUSH EAX
00c8f8f1  6a02  PUSH 0x2
00c8f8f3  e878f1ffff  CALL 0x00c8ea70
00c8f8f8  c20800  RET 0x8
00c8f8fb  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f8ff  6a01  PUSH 0x1
00c8f901  52  PUSH EDX
00c8f902  6a01  PUSH 0x1
00c8f904  e867f1ffff  CALL 0x00c8ea70
00c8f909  c20800  RET 0x8
00c8f90c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f910  50  PUSH EAX
00c8f911  e84af2ffff  CALL 0x00c8eb60
00c8f916  c20800  RET 0x8
00c8f919  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f91d  52  PUSH EDX
00c8f91e  e88df2ffff  CALL 0x00c8ebb0
00c8f923  c20800  RET 0x8
00c8f926  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f92a  6a01  PUSH 0x1
00c8f92c  50  PUSH EAX
00c8f92d  e8def3ffff  CALL 0x00c8ed10
00c8f932  c20800  RET 0x8
00c8f935  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f939  6a01  PUSH 0x1
00c8f93b  52  PUSH EDX
00c8f93c  e83ff4ffff  CALL 0x00c8ed80
00c8f941  c20800  RET 0x8
00c8f944  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f948  6a01  PUSH 0x1
00c8f94a  50  PUSH EAX
00c8f94b  e810eeffff  CALL 0x00c8e760
00c8f950  c20800  RET 0x8
00c8f953  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f957  52  PUSH EDX
00c8f958  e8d3f4ffff  CALL 0x00c8ee30
00c8f95d  c20800  RET 0x8
00c8f960  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f964  6a01  PUSH 0x1
00c8f966  50  PUSH EAX
00c8f967  e814f5ffff  CALL 0x00c8ee80
00c8f96c  c20800  RET 0x8
00c8f96f  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f973  52  PUSH EDX
00c8f974  e8c7f5ffff  CALL 0x00c8ef40
00c8f979  c20800  RET 0x8
00c8f97c  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f980  6a01  PUSH 0x1
00c8f982  50  PUSH EAX
00c8f983  e848eeffff  CALL 0x00c8e7d0
00c8f988  c20800  RET 0x8
00c8f98b  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00c8f98f  6a01  PUSH 0x1
00c8f991  52  PUSH EDX
00c8f992  e899eeffff  CALL 0x00c8e830
00c8f997  c20800  RET 0x8
00c8f99a  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f99e  6a01  PUSH 0x1
00c8f9a0  50  PUSH EAX
00c8f9a1  e8eaeeffff  CALL 0x00c8e890
00c8f9a6  c20800  RET 0x8
00c8f9a9  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00c8f9ad  50  PUSH EAX
00c8f9ae  e82df4ffff  CALL 0x00c8ede0
00c8f9b3  c20800  RET 0x8
00c8f9b6  33c0  XOR EAX,EAX
00c8f9b8  c20800  RET 0x8

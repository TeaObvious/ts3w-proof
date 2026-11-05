# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool BasementTool_BeginAtLotPick(void * this, void * param_1, float * param_2)
Owned ranges: [[00cd0e80, 00cd1071]]

00cd0e80  55  PUSH EBP
00cd0e81  8bec  MOV EBP,ESP
00cd0e83  83e4f0  AND ESP,0xfffffff0
00cd0e86  81ecd4000000  SUB ESP,0xd4
00cd0e8c  53  PUSH EBX
00cd0e8d  56  PUSH ESI
00cd0e8e  8bf1  MOV ESI,ECX
00cd0e90  807e5d00  CMP byte ptr [ESI + 0x5d],0x0
00cd0e94  57  PUSH EDI
00cd0e95  0f85a9000000  JNZ 0x00cd0f44
00cd0e9b  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00cd0e9e  85c9  TEST ECX,ECX
00cd0ea0  0f849e000000  JZ 0x00cd0f44
00cd0ea6  8b7e0c  MOV EDI,dword ptr [ESI + 0xc]
00cd0ea9  3bcf  CMP ECX,EDI
00cd0eab  0f8593000000  JNZ 0x00cd0f44
00cd0eb1  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00cd0eb4  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00cd0eb7  85d2  TEST EDX,EDX
00cd0eb9  0f8f85000000  JG 0x00cd0f44
00cd0ebf  8b4660  MOV EAX,dword ptr [ESI + 0x60]
00cd0ec2  85c0  TEST EAX,EAX
00cd0ec4  7409  JZ 0x00cd0ecf
00cd0ec6  83f801  CMP EAX,0x1
00cd0ec9  7404  JZ 0x00cd0ecf
00cd0ecb  32db  XOR BL,BL
00cd0ecd  eb02  JMP 0x00cd0ed1
00cd0ecf  b301  MOV BL,0x1
00cd0ed1  85d2  TEST EDX,EDX
00cd0ed3  7504  JNZ 0x00cd0ed9
00cd0ed5  84db  TEST BL,BL
00cd0ed7  746b  JZ 0x00cd0f44
00cd0ed9  8a81bc040000  MOV AL,byte ptr [ECX + 0x4bc]
00cd0edf  f6d8  NEG AL
00cd0ee1  1bc0  SBB EAX,EAX
00cd0ee3  83e003  AND EAX,0x3
00cd0ee6  83c0fc  ADD EAX,-0x4
00cd0ee9  3bd0  CMP EDX,EAX
00cd0eeb  7f62  JG 0x00cd0f4f
00cd0eed  84db  TEST BL,BL
00cd0eef  745e  JZ 0x00cd0f4f
00cd0ef1  8d4c2460  LEA ECX,[ESP + 0x60]
00cd0ef5  e84668e0ff  CALL 0x00ad7740
00cd0efa  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00cd0efd  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cd0f00  6a00  PUSH 0x0
00cd0f02  6a00  PUSH 0x0
00cd0f04  51  PUSH ECX
00cd0f05  52  PUSH EDX
00cd0f06  68ea000000  PUSH 0xea
00cd0f0b  8d4c2434  LEA ECX,[ESP + 0x34]
00cd0f0f  e80c58e0ff  CALL 0x00ad6720
00cd0f14  8d442420  LEA EAX,[ESP + 0x20]
00cd0f18  50  PUSH EAX
00cd0f19  8d4c2464  LEA ECX,[ESP + 0x64]
00cd0f1d  e84e76e0ff  CALL 0x00ad8570
00cd0f22  6a01  PUSH 0x1
00cd0f24  6a01  PUSH 0x1
00cd0f26  8d4c2468  LEA ECX,[ESP + 0x68]
00cd0f2a  51  PUSH ECX
00cd0f2b  8bce  MOV ECX,ESI
00cd0f2d  e85e290000  CALL 0x00cd3890
00cd0f32  8d4c2420  LEA ECX,[ESP + 0x20]
00cd0f36  e89561e0ff  CALL 0x00ad70d0
00cd0f3b  8d4c2460  LEA ECX,[ESP + 0x60]
00cd0f3f  e88c1bd8ff  CALL 0x00a52ad0
00cd0f44  32c0  XOR AL,AL
00cd0f46  5f  POP EDI
00cd0f47  5e  POP ESI
00cd0f48  5b  POP EBX
00cd0f49  8be5  MOV ESP,EBP
00cd0f4b  5d  POP EBP
00cd0f4c  c20800  RET 0x8
00cd0f4f  8bcf  MOV ECX,EDI
00cd0f51  c6465d01  MOV byte ptr [ESI + 0x5d],0x1
00cd0f55  e876abdeff  CALL 0x00abbad0
00cd0f5a  8b550c  MOV EDX,dword ptr [EBP + 0xc]
00cd0f5d  8d7e64  LEA EDI,[ESI + 0x64]
00cd0f60  57  PUSH EDI
00cd0f61  52  PUSH EDX
00cd0f62  e8596de2ff  CALL 0x00af7cc0
00cd0f67  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00cd0f6a  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00cd0f70  83c408  ADD ESP,0x8
00cd0f73  57  PUSH EDI
00cd0f74  e817b7dbff  CALL 0x00a8c690
00cd0f79  d99e84000000  FSTP float ptr [ESI + 0x84]
00cd0f7f  57  PUSH EDI
00cd0f80  8bce  MOV ECX,ESI
00cd0f82  e889fdffff  CALL 0x00cd0d10
00cd0f87  d99e88000000  FSTP float ptr [ESI + 0x88]
00cd0f8d  84db  TEST BL,BL
00cd0f8f  7428  JZ 0x00cd0fb9
00cd0f91  8b466c  MOV EAX,dword ptr [ESI + 0x6c]
00cd0f94  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00cd0f97  83e801  SUB EAX,0x1
00cd0f9a  50  PUSH EAX
00cd0f9b  51  PUSH ECX
00cd0f9c  e8ff1d0000  CALL 0x00cd2da0
00cd0fa1  83c408  ADD ESP,0x8
00cd0fa4  84c0  TEST AL,AL
00cd0fa6  7422  JZ 0x00cd0fca
00cd0fa8  8b8e90000000  MOV ECX,dword ptr [ESI + 0x90]
00cd0fae  85c9  TEST ECX,ECX
00cd0fb0  7418  JZ 0x00cd0fca
00cd0fb2  e8e91a0000  CALL 0x00cd2aa0
00cd0fb7  eb11  JMP 0x00cd0fca
00cd0fb9  e812f3ddff  CALL 0x00ab02d0
00cd0fbe  d88684000000  FADD float ptr [ESI + 0x84]
00cd0fc4  d99e84000000  FSTP float ptr [ESI + 0x84]
00cd0fca  8b566c  MOV EDX,dword ptr [ESI + 0x6c]
00cd0fcd  52  PUSH EDX
00cd0fce  8bce  MOV ECX,ESI
00cd0fd0  e8dbc60100  CALL 0x00ced6b0
00cd0fd5  8b07  MOV EAX,dword ptr [EDI]
00cd0fd7  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00cd0fda  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00cd0fdd  894670  MOV dword ptr [ESI + 0x70],EAX
00cd0fe0  894e74  MOV dword ptr [ESI + 0x74],ECX
00cd0fe3  8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
00cd0fe6  8d442410  LEA EAX,[ESP + 0x10]
00cd0fea  50  PUSH EAX
00cd0feb  895678  MOV dword ptr [ESI + 0x78],EDX
00cd0fee  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00cd0ff1  51  PUSH ECX
00cd0ff2  52  PUSH EDX
00cd0ff3  c6868d00000000  MOV byte ptr [ESI + 0x8d],0x0
00cd0ffa  c6868e00000000  MOV byte ptr [ESI + 0x8e],0x0
00cd1001  e84ab7e0ff  CALL 0x00adc750
00cd1006  d9e8  FLD1
00cd1008  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cd100b  83c40c  ADD ESP,0xc
00cd100e  6a00  PUSH 0x0
00cd1010  51  PUSH ECX
00cd1011  8b0d44e51e01  MOV ECX,dword ptr [0x011ee544]
00cd1017  d91c24  FSTP float ptr [ESP]
00cd101a  8d442418  LEA EAX,[ESP + 0x18]
00cd101e  50  PUSH EAX
00cd101f  51  PUSH ECX
00cd1020  52  PUSH EDX
00cd1021  e85ab30000  CALL 0x00cdc380
00cd1026  a1bcc01e01  MOV EAX,[0x011ec0bc]
00cd102b  8b0db8c01e01  MOV ECX,dword ptr [0x011ec0b8]
00cd1031  50  PUSH EAX
00cd1032  51  PUSH ECX
00cd1033  e868f4ffff  CALL 0x00cd04a0
00cd1038  83c41c  ADD ESP,0x1c
00cd103b  8bce  MOV ECX,ESI
00cd103d  e81ef4ffff  CALL 0x00cd0460
00cd1042  84c0  TEST AL,AL
00cd1044  8bce  MOV ECX,ESI
00cd1046  7415  JZ 0x00cd105d
00cd1048  6800f70701  PUSH 0x107f700
00cd104d  e8becd0100  CALL 0x00cede10
00cd1052  b001  MOV AL,0x1
00cd1054  5f  POP EDI
00cd1055  5e  POP ESI
00cd1056  5b  POP EBX
00cd1057  8be5  MOV ESP,EBP
00cd1059  5d  POP EBP
00cd105a  c20800  RET 0x8
00cd105d  68e8f60701  PUSH 0x107f6e8
00cd1062  e8a9cd0100  CALL 0x00cede10
00cd1067  5f  POP EDI
00cd1068  5e  POP ESI
00cd1069  b001  MOV AL,0x1
00cd106b  5b  POP EBX
00cd106c  8be5  MOV ESP,EBP
00cd106e  5d  POP EBP
00cd106f  c20800  RET 0x8

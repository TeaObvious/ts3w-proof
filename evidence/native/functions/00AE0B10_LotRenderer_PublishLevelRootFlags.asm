# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LotRenderer_PublishLevelRootFlags(int param_1)
Owned ranges: [[00ae0b10, 00ae0dc7] [00ae0dd0, 00ae1099]]

00ae0b10  83ec20  SUB ESP,0x20
00ae0b13  53  PUSH EBX
00ae0b14  55  PUSH EBP
00ae0b15  56  PUSH ESI
00ae0b16  57  PUSH EDI
00ae0b17  8bf1  MOV ESI,ECX
00ae0b19  e85276c0ff  CALL 0x006e8170
00ae0b1e  8b8e9c020000  MOV ECX,dword ptr [ESI + 0x29c]
00ae0b24  8b5618  MOV EDX,dword ptr [ESI + 0x18]
00ae0b27  8bf8  MOV EDI,EAX
00ae0b29  8b4668  MOV EAX,dword ptr [ESI + 0x68]
00ae0b2c  8a9f15050000  MOV BL,byte ptr [EDI + 0x515]
00ae0b32  2bc8  SUB ECX,EAX
00ae0b34  894c2420  MOV dword ptr [ESP + 0x20],ECX
00ae0b38  8b8f1c050000  MOV ECX,dword ptr [EDI + 0x51c]
00ae0b3e  f7d8  NEG EAX
00ae0b40  89442424  MOV dword ptr [ESP + 0x24],EAX
00ae0b44  8b8718050000  MOV EAX,dword ptr [EDI + 0x518]
00ae0b4a  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00ae0b4e  8a8ed9030000  MOV CL,byte ptr [ESI + 0x3d9]
00ae0b54  89442428  MOV dword ptr [ESP + 0x28],EAX
00ae0b58  8a8230040000  MOV AL,byte ptr [EDX + 0x430]
00ae0b5e  884c2413  MOV byte ptr [ESP + 0x13],CL
00ae0b62  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ae0b68  88442412  MOV byte ptr [ESP + 0x12],AL
00ae0b6c  e8efe91700  CALL 0x00c5f560
00ae0b71  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
00ae0b74  3b4148  CMP EAX,dword ptr [ECX + 0x48]
00ae0b77  8bea  MOV EBP,EDX
00ae0b79  750a  JNZ 0x00ae0b85
00ae0b7b  3b694c  CMP EBP,dword ptr [ECX + 0x4c]
00ae0b7e  c644241101  MOV byte ptr [ESP + 0x11],0x1
00ae0b83  7405  JZ 0x00ae0b8a
00ae0b85  c644241100  MOV byte ptr [ESP + 0x11],0x0
00ae0b8a  807c241100  CMP byte ptr [ESP + 0x11],0x0
00ae0b8f  c686d703000000  MOV byte ptr [ESI + 0x3d7],0x0
00ae0b96  0f8411010000  JZ 0x00ae0cad
00ae0b9c  8b9664020000  MOV EDX,dword ptr [ESI + 0x264]
00ae0ba2  52  PUSH EDX
00ae0ba3  8bcf  MOV ECX,EDI
00ae0ba5  e85687c0ff  CALL 0x006e9300
00ae0baa  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0bb1  7c35  JL 0x00ae0be8
00ae0bb3  6a00  PUSH 0x0
00ae0bb5  6a00  PUSH 0x0
00ae0bb7  6a00  PUSH 0x0
00ae0bb9  8bcf  MOV ECX,EDI
00ae0bbb  e87086c0ff  CALL 0x006e9230
00ae0bc0  a1c4db1e01  MOV EAX,[0x011edbc4]
00ae0bc5  8b4064  MOV EAX,dword ptr [EAX + 0x64]
00ae0bc8  c6801802000000  MOV byte ptr [EAX + 0x218],0x0
00ae0bcf  c6801902000000  MOV byte ptr [EAX + 0x219],0x0
00ae0bd6  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ae0bdc  8b5164  MOV EDX,dword ptr [ECX + 0x64]
00ae0bdf  c6821a02000000  MOV byte ptr [EDX + 0x21a],0x0
00ae0be6  eb2f  JMP 0x00ae0c17
00ae0be8  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00ae0beb  8b484c  MOV ECX,dword ptr [EAX + 0x4c]
00ae0bee  8b5048  MOV EDX,dword ptr [EAX + 0x48]
00ae0bf1  51  PUSH ECX
00ae0bf2  52  PUSH EDX
00ae0bf3  6a01  PUSH 0x1
00ae0bf5  8bcf  MOV ECX,EDI
00ae0bf7  e83486c0ff  CALL 0x006e9230
00ae0bfc  a1c4db1e01  MOV EAX,[0x011edbc4]
00ae0c01  8a8ed6030000  MOV CL,byte ptr [ESI + 0x3d6]
00ae0c07  8b4064  MOV EAX,dword ptr [EAX + 0x64]
00ae0c0a  c6801802000001  MOV byte ptr [EAX + 0x218],0x1
00ae0c11  888819020000  MOV byte ptr [EAX + 0x219],CL
00ae0c17  80bed803000000  CMP byte ptr [ESI + 0x3d8],0x0
00ae0c1e  7440  JZ 0x00ae0c60
00ae0c20  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0c27  7408  JZ 0x00ae0c31
00ae0c29  6a00  PUSH 0x0
00ae0c2b  6a00  PUSH 0x0
00ae0c2d  6a00  PUSH 0x0
00ae0c2f  eb0d  JMP 0x00ae0c3e
00ae0c31  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00ae0c34  8b484c  MOV ECX,dword ptr [EAX + 0x4c]
00ae0c37  8b5048  MOV EDX,dword ptr [EAX + 0x48]
00ae0c3a  51  PUSH ECX
00ae0c3b  52  PUSH EDX
00ae0c3c  6a01  PUSH 0x1
00ae0c3e  8bcf  MOV ECX,EDI
00ae0c40  e83b86c0ff  CALL 0x006e9280
00ae0c45  80bed803000000  CMP byte ptr [ESI + 0x3d8],0x0
00ae0c4c  7412  JZ 0x00ae0c60
00ae0c4e  8bcf  MOV ECX,EDI
00ae0c50  e83ba3c0ff  CALL 0x006eaf90
00ae0c55  84c0  TEST AL,AL
00ae0c57  7407  JZ 0x00ae0c60
00ae0c59  b801000000  MOV EAX,0x1
00ae0c5e  eb02  JMP 0x00ae0c62
00ae0c60  33c0  XOR EAX,EAX
00ae0c62  8886d7030000  MOV byte ptr [ESI + 0x3d7],AL
00ae0c68  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00ae0c6b  80b83004000001  CMP byte ptr [EAX + 0x430],0x1
00ae0c72  8bcf  MOV ECX,EDI
00ae0c74  751c  JNZ 0x00ae0c92
00ae0c76  6a01  PUSH 0x1
00ae0c78  e84386c0ff  CALL 0x006e92c0
00ae0c7d  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ae0c83  8b5164  MOV EDX,dword ptr [ECX + 0x64]
00ae0c86  c6821a02000001  MOV byte ptr [EDX + 0x21a],0x1
00ae0c8d  e91a010000  JMP 0x00ae0dac
00ae0c92  6a00  PUSH 0x0
00ae0c94  e82786c0ff  CALL 0x006e92c0
00ae0c99  a1c4db1e01  MOV EAX,[0x011edbc4]
00ae0c9e  8b4864  MOV ECX,dword ptr [EAX + 0x64]
00ae0ca1  c6811a02000000  MOV byte ptr [ECX + 0x21a],0x0
00ae0ca8  e9ff000000  JMP 0x00ae0dac
00ae0cad  0bc5  OR EAX,EBP
00ae0caf  7556  JNZ 0x00ae0d07
00ae0cb1  50  PUSH EAX
00ae0cb2  8bcf  MOV ECX,EDI
00ae0cb4  e84786c0ff  CALL 0x006e9300
00ae0cb9  6a00  PUSH 0x0
00ae0cbb  6a00  PUSH 0x0
00ae0cbd  6a00  PUSH 0x0
00ae0cbf  8bcf  MOV ECX,EDI
00ae0cc1  e86a85c0ff  CALL 0x006e9230
00ae0cc6  6a00  PUSH 0x0
00ae0cc8  6a00  PUSH 0x0
00ae0cca  6a00  PUSH 0x0
00ae0ccc  8bcf  MOV ECX,EDI
00ae0cce  e8ad85c0ff  CALL 0x006e9280
00ae0cd3  6a00  PUSH 0x0
00ae0cd5  8bcf  MOV ECX,EDI
00ae0cd7  e8e485c0ff  CALL 0x006e92c0
00ae0cdc  8b15c4db1e01  MOV EDX,dword ptr [0x011edbc4]
00ae0ce2  8b4264  MOV EAX,dword ptr [EDX + 0x64]
00ae0ce5  c6801802000000  MOV byte ptr [EAX + 0x218],0x0
00ae0cec  c6801902000000  MOV byte ptr [EAX + 0x219],0x0
00ae0cf3  a1c4db1e01  MOV EAX,[0x011edbc4]
00ae0cf8  8b4864  MOV ECX,dword ptr [EAX + 0x64]
00ae0cfb  c6811a02000000  MOV byte ptr [ECX + 0x21a],0x0
00ae0d02  e9a5000000  JMP 0x00ae0dac
00ae0d07  84db  TEST BL,BL
00ae0d09  745e  JZ 0x00ae0d69
00ae0d0b  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00ae0d0f  3b5148  CMP EDX,dword ptr [ECX + 0x48]
00ae0d12  7555  JNZ 0x00ae0d69
00ae0d14  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00ae0d18  3b414c  CMP EAX,dword ptr [ECX + 0x4c]
00ae0d1b  754c  JNZ 0x00ae0d69
00ae0d1d  6a00  PUSH 0x0
00ae0d1f  6a00  PUSH 0x0
00ae0d21  6a00  PUSH 0x0
00ae0d23  8bcf  MOV ECX,EDI
00ae0d25  e80685c0ff  CALL 0x006e9230
00ae0d2a  6a00  PUSH 0x0
00ae0d2c  6a00  PUSH 0x0
00ae0d2e  6a00  PUSH 0x0
00ae0d30  8bcf  MOV ECX,EDI
00ae0d32  e84985c0ff  CALL 0x006e9280
00ae0d37  6a00  PUSH 0x0
00ae0d39  8bcf  MOV ECX,EDI
00ae0d3b  e88085c0ff  CALL 0x006e92c0
00ae0d40  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ae0d46  8b4164  MOV EAX,dword ptr [ECX + 0x64]
00ae0d49  c6801802000000  MOV byte ptr [EAX + 0x218],0x0
00ae0d50  c6801902000000  MOV byte ptr [EAX + 0x219],0x0
00ae0d57  8b15c4db1e01  MOV EDX,dword ptr [0x011edbc4]
00ae0d5d  8b4264  MOV EAX,dword ptr [EDX + 0x64]
00ae0d60  c6801a02000000  MOV byte ptr [EAX + 0x21a],0x0
00ae0d67  eb43  JMP 0x00ae0dac
00ae0d69  807c241200  CMP byte ptr [ESP + 0x12],0x0
00ae0d6e  7428  JZ 0x00ae0d98
00ae0d70  6a00  PUSH 0x0
00ae0d72  8bcf  MOV ECX,EDI
00ae0d74  e84785c0ff  CALL 0x006e92c0
00ae0d79  6a00  PUSH 0x0
00ae0d7b  6a00  PUSH 0x0
00ae0d7d  6a00  PUSH 0x0
00ae0d7f  8bcf  MOV ECX,EDI
00ae0d81  e8fa84c0ff  CALL 0x006e9280
00ae0d86  8b0dc4db1e01  MOV ECX,dword ptr [0x011edbc4]
00ae0d8c  8b5164  MOV EDX,dword ptr [ECX + 0x64]
00ae0d8f  c6821a02000000  MOV byte ptr [EDX + 0x21a],0x0
00ae0d96  eb14  JMP 0x00ae0dac
00ae0d98  807c241300  CMP byte ptr [ESP + 0x13],0x0
00ae0d9d  740d  JZ 0x00ae0dac
00ae0d9f  6a00  PUSH 0x0
00ae0da1  6a00  PUSH 0x0
00ae0da3  6a00  PUSH 0x0
00ae0da5  8bcf  MOV ECX,EDI
00ae0da7  e8d484c0ff  CALL 0x006e9280
00ae0dac  8b4670  MOV EAX,dword ptr [ESI + 0x70]
00ae0daf  83c001  ADD EAX,0x1
00ae0db2  85c0  TEST EAX,EAX
00ae0db4  89442428  MOV dword ptr [ESP + 0x28],EAX
00ae0db8  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00ae0dc0  0f8eba010000  JLE 0x00ae0f80
00ae0dc6  eb08  JMP 0x00ae0dd0
00ae0dc8  8da4240000000090  .byte 8da4240000000090 ; NONOWNED envelope gap bytes
00ae0dd0  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ae0dd4  8b6e68  MOV EBP,dword ptr [ESI + 0x68]
00ae0dd7  8a9e58030000  MOV BL,byte ptr [ESI + 0x358]
00ae0ddd  03e8  ADD EBP,EAX
00ae0ddf  3b442424  CMP EAX,dword ptr [ESP + 0x24]
00ae0de3  7d0b  JGE 0x00ae0df0
00ae0de5  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0dec  7c02  JL 0x00ae0df0
00ae0dee  b301  MOV BL,0x1
00ae0df0  80bed803000000  CMP byte ptr [ESI + 0x3d8],0x0
00ae0df7  c644241401  MOV byte ptr [ESP + 0x14],0x1
00ae0dfc  0f84d1000000  JZ 0x00ae0ed3
00ae0e02  85ed  TEST EBP,EBP
00ae0e04  b301  MOV BL,0x1
00ae0e06  885c2418  MOV byte ptr [ESP + 0x18],BL
00ae0e0a  7f36  JG 0x00ae0e42
00ae0e0c  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ae0e10  3bc1  CMP EAX,ECX
00ae0e12  7d0d  JGE 0x00ae0e21
00ae0e14  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0e1b  885c2418  MOV byte ptr [ESP + 0x18],BL
00ae0e1f  7505  JNZ 0x00ae0e26
00ae0e21  c644241800  MOV byte ptr [ESP + 0x18],0x0
00ae0e26  3bc1  CMP EAX,ECX
00ae0e28  7f53  JG 0x00ae0e7d
00ae0e2a  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae0e2e  744d  JZ 0x00ae0e7d
00ae0e30  807e2000  CMP byte ptr [ESI + 0x20],0x0
00ae0e34  7447  JZ 0x00ae0e7d
00ae0e36  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0e3d  e9ac000000  JMP 0x00ae0eee
00ae0e42  83fd01  CMP EBP,0x1
00ae0e45  754f  JNZ 0x00ae0e96
00ae0e47  8b869c020000  MOV EAX,dword ptr [ESI + 0x29c]
00ae0e4d  85c0  TEST EAX,EAX
00ae0e4f  7c0e  JL 0x00ae0e5f
00ae0e51  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0e58  c644241801  MOV byte ptr [ESP + 0x18],0x1
00ae0e5d  7405  JZ 0x00ae0e64
00ae0e5f  c644241800  MOV byte ptr [ESP + 0x18],0x0
00ae0e64  85c0  TEST EAX,EAX
00ae0e66  7c15  JL 0x00ae0e7d
00ae0e68  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae0e6c  740f  JZ 0x00ae0e7d
00ae0e6e  807e2000  CMP byte ptr [ESI + 0x20],0x0
00ae0e72  7409  JZ 0x00ae0e7d
00ae0e74  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0e7b  7473  JZ 0x00ae0ef0
00ae0e7d  c644241400  MOV byte ptr [ESP + 0x14],0x0
00ae0e82  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0e89  7c76  JL 0x00ae0f01
00ae0e8b  33c0  XOR EAX,EAX
00ae0e8d  384631  CMP byte ptr [ESI + 0x31],AL
00ae0e90  7465  JZ 0x00ae0ef7
00ae0e92  85ed  TEST EBP,EBP
00ae0e94  eb64  JMP 0x00ae0efa
00ae0e96  7eea  JLE 0x00ae0e82
00ae0e98  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ae0e9c  3bc1  CMP EAX,ECX
00ae0e9e  7d0e  JGE 0x00ae0eae
00ae0ea0  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0ea7  c644241801  MOV byte ptr [ESP + 0x18],0x1
00ae0eac  7405  JZ 0x00ae0eb3
00ae0eae  c644241800  MOV byte ptr [ESP + 0x18],0x0
00ae0eb3  3bc1  CMP EAX,ECX
00ae0eb5  7fc6  JG 0x00ae0e7d
00ae0eb7  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae0ebb  74c0  JZ 0x00ae0e7d
00ae0ebd  807e2000  CMP byte ptr [ESI + 0x20],0x0
00ae0ec1  74ba  JZ 0x00ae0e7d
00ae0ec3  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0eca  75b1  JNZ 0x00ae0e7d
00ae0ecc  c644241401  MOV byte ptr [ESP + 0x14],0x1
00ae0ed1  ebaf  JMP 0x00ae0e82
00ae0ed3  8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00ae0ed7  3bc7  CMP EAX,EDI
00ae0ed9  0f9cc1  SETL CL
00ae0edc  3bc7  CMP EAX,EDI
00ae0ede  884c2418  MOV byte ptr [ESP + 0x18],CL
00ae0ee2  7f99  JG 0x00ae0e7d
00ae0ee4  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae0ee8  7493  JZ 0x00ae0e7d
00ae0eea  807e2000  CMP byte ptr [ESI + 0x20],0x0
00ae0eee  748d  JZ 0x00ae0e7d
00ae0ef0  c644241401  MOV byte ptr [ESP + 0x14],0x1
00ae0ef5  eb8b  JMP 0x00ae0e82
00ae0ef7  83fdff  CMP EBP,-0x1
00ae0efa  0f9dc0  SETGE AL
00ae0efd  20442414  AND byte ptr [ESP + 0x14],AL
00ae0f01  8b8e7c020000  MOV ECX,dword ptr [ESI + 0x27c]
00ae0f07  8b8678020000  MOV EAX,dword ptr [ESI + 0x278]
00ae0f0d  2bc1  SUB EAX,ECX
00ae0f0f  8bbe84020000  MOV EDI,dword ptr [ESI + 0x284]
00ae0f15  c1f802  SAR EAX,0x2
00ae0f18  0344241c  ADD EAX,dword ptr [ESP + 0x1c]
00ae0f1c  8bc8  MOV ECX,EAX
00ae0f1e  8d8100000001  LEA EAX,[ECX + 0x1000000]
00ae0f24  99  CDQ
00ae0f25  83e23f  AND EDX,0x3f
00ae0f28  03c2  ADD EAX,EDX
00ae0f2a  c1f806  SAR EAX,0x6
00ae0f2d  2d00000400  SUB EAX,0x40000
00ae0f32  8bd0  MOV EDX,EAX
00ae0f34  8b0487  MOV EAX,dword ptr [EDI + EAX*0x4]
00ae0f37  c1e206  SHL EDX,0x6
00ae0f3a  2bca  SUB ECX,EDX
00ae0f3c  8b3c88  MOV EDI,dword ptr [EAX + ECX*0x4]
00ae0f3f  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00ae0f43  51  PUSH ECX
00ae0f44  6a01  PUSH 0x1
00ae0f46  8bcf  MOV ECX,EDI
00ae0f48  e85399c1ff  CALL 0x006fa8a0
00ae0f4d  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
00ae0f51  f6db  NEG BL
00ae0f53  1adb  SBB BL,BL
00ae0f55  8bcf  MOV ECX,EDI
00ae0f57  23dd  AND EBX,EBP
00ae0f59  53  PUSH EBX
00ae0f5a  6a02  PUSH 0x2
00ae0f5c  e83f99c1ff  CALL 0x006fa8a0
00ae0f61  55  PUSH EBP
00ae0f62  6a04  PUSH 0x4
00ae0f64  8bcf  MOV ECX,EDI
00ae0f66  e83599c1ff  CALL 0x006fa8a0
00ae0f6b  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ae0f6f  83c001  ADD EAX,0x1
00ae0f72  3b442428  CMP EAX,dword ptr [ESP + 0x28]
00ae0f76  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00ae0f7a  0f8c50feffff  JL 0x00ae0dd0
00ae0f80  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0f87  7c0b  JL 0x00ae0f94
00ae0f89  807e1e00  CMP byte ptr [ESI + 0x1e],0x0
00ae0f8d  c644242001  MOV byte ptr [ESP + 0x20],0x1
00ae0f92  7505  JNZ 0x00ae0f99
00ae0f94  c644242000  MOV byte ptr [ESP + 0x20],0x0
00ae0f99  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00ae0f9d  8b8e6c020000  MOV ECX,dword ptr [ESI + 0x26c]
00ae0fa3  52  PUSH EDX
00ae0fa4  6a01  PUSH 0x1
00ae0fa6  e8f598c1ff  CALL 0x006fa8a0
00ae0fab  8b8e6c020000  MOV ECX,dword ptr [ESI + 0x26c]
00ae0fb1  6a00  PUSH 0x0
00ae0fb3  6a02  PUSH 0x2
00ae0fb5  e8e698c1ff  CALL 0x006fa8a0
00ae0fba  80bed803000000  CMP byte ptr [ESI + 0x3d8],0x0
00ae0fc1  742f  JZ 0x00ae0ff2
00ae0fc3  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0fca  7c1a  JL 0x00ae0fe6
00ae0fcc  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00ae0fcf  80b83004000000  CMP byte ptr [EAX + 0x430],0x0
00ae0fd6  750e  JNZ 0x00ae0fe6
00ae0fd8  80bed703000000  CMP byte ptr [ESI + 0x3d7],0x0
00ae0fdf  c644242001  MOV byte ptr [ESP + 0x20],0x1
00ae0fe4  7405  JZ 0x00ae0feb
00ae0fe6  c644242000  MOV byte ptr [ESP + 0x20],0x0
00ae0feb  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ae0fef  51  PUSH ECX
00ae0ff0  eb24  JMP 0x00ae1016
00ae0ff2  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae0ff9  7c11  JL 0x00ae100c
00ae0ffb  8b5618  MOV EDX,dword ptr [ESI + 0x18]
00ae0ffe  80ba3004000000  CMP byte ptr [EDX + 0x430],0x0
00ae1005  c644242001  MOV byte ptr [ESP + 0x20],0x1
00ae100a  7405  JZ 0x00ae1011
00ae100c  c644242000  MOV byte ptr [ESP + 0x20],0x0
00ae1011  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00ae1015  50  PUSH EAX
00ae1016  8b8e68020000  MOV ECX,dword ptr [ESI + 0x268]
00ae101c  6a01  PUSH 0x1
00ae101e  e87d98c1ff  CALL 0x006fa8a0
00ae1023  8b8e68020000  MOV ECX,dword ptr [ESI + 0x268]
00ae1029  6a00  PUSH 0x0
00ae102b  6a02  PUSH 0x2
00ae102d  e86e98c1ff  CALL 0x006fa8a0
00ae1032  8b4e18  MOV ECX,dword ptr [ESI + 0x18]
00ae1035  8a8130040000  MOV AL,byte ptr [ECX + 0x430]
00ae103b  3886d4030000  CMP byte ptr [ESI + 0x3d4],AL
00ae1041  741b  JZ 0x00ae105e
00ae1043  8b8e48020000  MOV ECX,dword ptr [ESI + 0x248]
00ae1049  85c9  TEST ECX,ECX
00ae104b  8886d4030000  MOV byte ptr [ESI + 0x3d4],AL
00ae1051  740b  JZ 0x00ae105e
00ae1053  84c0  TEST AL,AL
00ae1055  0f94c2  SETZ DL
00ae1058  52  PUSH EDX
00ae1059  e86285f8ff  CALL 0x00a695c0
00ae105e  80bed803000000  CMP byte ptr [ESI + 0x3d8],0x0
00ae1065  742b  JZ 0x00ae1092
00ae1067  807c241100  CMP byte ptr [ESP + 0x11],0x0
00ae106c  741c  JZ 0x00ae108a
00ae106e  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00ae1075  7513  JNZ 0x00ae108a
00ae1077  5f  POP EDI
00ae1078  b801000000  MOV EAX,0x1
00ae107d  8886d9030000  MOV byte ptr [ESI + 0x3d9],AL
00ae1083  5e  POP ESI
00ae1084  5d  POP EBP
00ae1085  5b  POP EBX
00ae1086  83c420  ADD ESP,0x20
00ae1089  c3  RET
00ae108a  33c0  XOR EAX,EAX
00ae108c  8886d9030000  MOV byte ptr [ESI + 0x3d9],AL
00ae1092  5f  POP EDI
00ae1093  5e  POP ESI
00ae1094  5d  POP EBP
00ae1095  5b  POP EBX
00ae1096  83c420  ADD ESP,0x20
00ae1099  c3  RET

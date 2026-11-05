# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_ReadDescriptionResource
Paired actual annotated Ghidra pseudocode: 00AC5A40_Lot_ReadDescriptionResource.c
Owned ranges: [[00ac5a40, 00ac5ef7]]
Envelope bytes=1208

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00ac5a40  55  PUSH EBP
00ac5a41  8bec  MOV EBP,ESP
00ac5a43  83e4f0  AND ESP,0xfffffff0
00ac5a46  83ec44  SUB ESP,0x44
00ac5a49  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00ac5a4c  53  PUSH EBX
00ac5a4d  56  PUSH ESI
00ac5a4e  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00ac5a51  57  PUSH EDI
00ac5a52  8bf9  MOV EDI,ECX
00ac5a54  8b4d10  MOV ECX,dword ptr [EBP + 0x10]
00ac5a57  6a00  PUSH 0x0
00ac5a59  8d542434  LEA EDX,[ESP + 0x34]
00ac5a5d  894c2438  MOV dword ptr [ESP + 0x38],ECX
00ac5a61  52  PUSH EDX
00ac5a62  8bce  MOV ECX,ESI
00ac5a64  89442438  MOV dword ptr [ESP + 0x38],EAX
00ac5a68  c74424405b5463d0  MOV dword ptr [ESP + 0x40],0xd063545b
00ac5a70  c744244400000000  MOV dword ptr [ESP + 0x44],0x0
00ac5a78  e8432ad1ff  CALL 0x007d84c0
00ac5a7d  84c0  TEST AL,AL
00ac5a7f  0f8468040000  JZ 0x00ac5eed
00ac5a85  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00ac5a88  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5a8b  50  PUSH EAX
00ac5a8c  8d5f78  LEA EBX,[EDI + 0x78]
00ac5a8f  53  PUSH EBX
00ac5a90  51  PUSH ECX
00ac5a91  e84a7ea1ff  CALL 0x004dd8e0
00ac5a96  83c40c  ADD ESP,0xc
00ac5a99  8bce  MOV ECX,ESI
00ac5a9b  50  PUSH EAX
00ac5a9c  e84f1fd1ff  CALL 0x007d79f0
00ac5aa1  0fb703  MOVZX EAX,word ptr [EBX]
00ac5aa4  663d1400  CMP AX,0x14
00ac5aa8  0f823f040000  JC 0x00ac5eed
00ac5aae  663d4500  CMP AX,0x45
00ac5ab2  0f8735040000  JA 0x00ac5eed
00ac5ab8  663d1e00  CMP AX,0x1e
00ac5abc  7230  JC 0x00ac5aee
00ac5abe  663d1f00  CMP AX,0x1f
00ac5ac2  721c  JC 0x00ac5ae0
00ac5ac4  8d97d0030000  LEA EDX,[EDI + 0x3d0]
00ac5aca  52  PUSH EDX
00ac5acb  8bce  MOV ECX,ESI
00ac5acd  e8be8eb3ff  CALL 0x005fe990
00ac5ad2  8d87e8030000  LEA EAX,[EDI + 0x3e8]
00ac5ad8  50  PUSH EAX
00ac5ad9  8bce  MOV ECX,ESI
00ac5adb  e8b08eb3ff  CALL 0x005fe990
00ac5ae0  8d8f00040000  LEA ECX,[EDI + 0x400]
00ac5ae6  51  PUSH ECX
00ac5ae7  8bce  MOV ECX,ESI
00ac5ae9  e8a28eb3ff  CALL 0x005fe990
00ac5aee  8d5750  LEA EDX,[EDI + 0x50]
00ac5af1  52  PUSH EDX
00ac5af2  8bce  MOV ECX,ESI
00ac5af4  e8b73bd1ff  CALL 0x007d96b0
00ac5af9  66833b20  CMP word ptr [EBX],0x20
00ac5afd  720c  JC 0x00ac5b0b
00ac5aff  8d442428  LEA EAX,[ESP + 0x28]
00ac5b03  50  PUSH EAX
00ac5b04  8bce  MOV ECX,ESI
00ac5b06  e8858eb3ff  CALL 0x005fe990
00ac5b0b  8d4c2440  LEA ECX,[ESP + 0x40]
00ac5b0f  51  PUSH ECX
00ac5b10  8bce  MOV ECX,ESI
00ac5b12  e84920d1ff  CALL 0x007d7b60
00ac5b17  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5b1a  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5b1d  52  PUSH EDX
00ac5b1e  8d442418  LEA EAX,[ESP + 0x18]
00ac5b22  50  PUSH EAX
00ac5b23  51  PUSH ECX
00ac5b24  e8577ea1ff  CALL 0x004dd980
00ac5b29  83c40c  ADD ESP,0xc
00ac5b2c  8bce  MOV ECX,ESI
00ac5b2e  50  PUSH EAX
00ac5b2f  e8bc1ed1ff  CALL 0x007d79f0
00ac5b34  807d1400  CMP byte ptr [EBP + 0x14],0x0
00ac5b38  751a  JNZ 0x00ac5b54
00ac5b3a  0f28442440  MOVAPS XMM0,xmmword ptr [ESP + 0x40]
00ac5b3f  0f298790010000  MOVAPS xmmword ptr [EDI + 0x190],XMM0
00ac5b46  f30f10442414  MOVSS XMM0,dword ptr [ESP + 0x14]
00ac5b4c  f30f1187a0010000  MOVSS dword ptr [EDI + 0x1a0],XMM0
00ac5b54  f30f1087a0010000  MOVSS XMM0,dword ptr [EDI + 0x1a0]
00ac5b5c  0f2f05585d0601  COMISS XMM0,dword ptr [0x01065d58]
00ac5b63  7636  JBE 0x00ac5b9b
00ac5b65  f30f5905ec600601  MULSS XMM0,dword ptr [0x010660ec]
00ac5b6d  51  PUSH ECX
00ac5b6e  f30f110424  MOVSS dword ptr [ESP],XMM0
00ac5b73  e8280c94ff  CALL 0x004067a0
00ac5b78  f30f108fa0010000  MOVSS XMM1,dword ptr [EDI + 0x1a0]
00ac5b80  f30f2ac0  CVTSI2SS XMM0,EAX
00ac5b84  f30f5905585d0601  MULSS XMM0,dword ptr [0x01065d58]
00ac5b8c  f30f5cc8  SUBSS XMM1,XMM0
00ac5b90  83c404  ADD ESP,0x4
00ac5b93  f30f118fa0010000  MOVSS dword ptr [EDI + 0x1a0],XMM1
00ac5b9b  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5b9e  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5ba1  52  PUSH EDX
00ac5ba2  8d442428  LEA EAX,[ESP + 0x28]
00ac5ba6  50  PUSH EAX
00ac5ba7  51  PUSH ECX
00ac5ba8  e8d37da1ff  CALL 0x004dd980
00ac5bad  83c40c  ADD ESP,0xc
00ac5bb0  8bce  MOV ECX,ESI
00ac5bb2  50  PUSH EAX
00ac5bb3  e8381ed1ff  CALL 0x007d79f0
00ac5bb8  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5bbb  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5bbe  52  PUSH EDX
00ac5bbf  8d442424  LEA EAX,[ESP + 0x24]
00ac5bc3  50  PUSH EAX
00ac5bc4  51  PUSH ECX
00ac5bc5  e8b67da1ff  CALL 0x004dd980
00ac5bca  83c40c  ADD ESP,0xc
00ac5bcd  8bce  MOV ECX,ESI
00ac5bcf  50  PUSH EAX
00ac5bd0  e81b1ed1ff  CALL 0x007d79f0
00ac5bd5  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5bd8  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5bdb  52  PUSH EDX
00ac5bdc  8d442420  LEA EAX,[ESP + 0x20]
00ac5be0  50  PUSH EAX
00ac5be1  51  PUSH ECX
00ac5be2  e8997da1ff  CALL 0x004dd980
00ac5be7  83c40c  ADD ESP,0xc
00ac5bea  8bce  MOV ECX,ESI
00ac5bec  50  PUSH EAX
00ac5bed  e8fe1dd1ff  CALL 0x007d79f0
00ac5bf2  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5bf5  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5bf8  52  PUSH EDX
00ac5bf9  8d44241c  LEA EAX,[ESP + 0x1c]
00ac5bfd  50  PUSH EAX
00ac5bfe  51  PUSH ECX
00ac5bff  e87c7da1ff  CALL 0x004dd980
00ac5c04  83c40c  ADD ESP,0xc
00ac5c07  8bce  MOV ECX,ESI
00ac5c09  50  PUSH EAX
00ac5c0a  e8e11dd1ff  CALL 0x007d79f0
00ac5c0f  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5c12  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5c15  52  PUSH EDX
00ac5c16  8d8788010000  LEA EAX,[EDI + 0x188]
00ac5c1c  50  PUSH EAX
00ac5c1d  51  PUSH ECX
00ac5c1e  e85d7da1ff  CALL 0x004dd980
00ac5c23  83c40c  ADD ESP,0xc
00ac5c26  8bce  MOV ECX,ESI
00ac5c28  50  PUSH EAX
00ac5c29  e8c21dd1ff  CALL 0x007d79f0
00ac5c2e  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5c31  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5c34  52  PUSH EDX
00ac5c35  8d878c010000  LEA EAX,[EDI + 0x18c]
00ac5c3b  50  PUSH EAX
00ac5c3c  51  PUSH ECX
00ac5c3d  e83e7da1ff  CALL 0x004dd980
00ac5c42  83c40c  ADD ESP,0xc
00ac5c45  8bce  MOV ECX,ESI
00ac5c47  50  PUSH EAX
00ac5c48  e8a31dd1ff  CALL 0x007d79f0
00ac5c4d  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5c50  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00ac5c53  52  PUSH EDX
00ac5c54  8d9f9c030000  LEA EBX,[EDI + 0x39c]
00ac5c5a  53  PUSH EBX
00ac5c5b  50  PUSH EAX
00ac5c5c  e81f7da1ff  CALL 0x004dd980
00ac5c61  83c40c  ADD ESP,0xc
00ac5c64  8bce  MOV ECX,ESI
00ac5c66  50  PUSH EAX
00ac5c67  e8841dd1ff  CALL 0x007d79f0
00ac5c6c  8b0b  MOV ECX,dword ptr [EBX]
00ac5c6e  898fa0030000  MOV dword ptr [EDI + 0x3a0],ECX
00ac5c74  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5c77  52  PUSH EDX
00ac5c78  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5c7b  8d8730010000  LEA EAX,[EDI + 0x130]
00ac5c81  50  PUSH EAX
00ac5c82  51  PUSH ECX
00ac5c83  e8f87ca1ff  CALL 0x004dd980
00ac5c88  83c40c  ADD ESP,0xc
00ac5c8b  8bce  MOV ECX,ESI
00ac5c8d  50  PUSH EAX
00ac5c8e  e85d1dd1ff  CALL 0x007d79f0
00ac5c93  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ac5c97  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ac5c9b  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ac5c9f  52  PUSH EDX
00ac5ca0  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00ac5ca4  50  PUSH EAX
00ac5ca5  51  PUSH ECX
00ac5ca6  52  PUSH EDX
00ac5ca7  8bcf  MOV ECX,EDI
00ac5ca9  e852f1ffff  CALL 0x00ac4e00
00ac5cae  8b8fc0030000  MOV ECX,dword ptr [EDI + 0x3c0]
00ac5cb4  3b8fc4030000  CMP ECX,dword ptr [EDI + 0x3c4]
00ac5cba  8d87c0030000  LEA EAX,[EDI + 0x3c0]
00ac5cc0  740a  JZ 0x00ac5ccc
00ac5cc2  66c7010000  MOV word ptr [ECX],0x0
00ac5cc7  8b08  MOV ECX,dword ptr [EAX]
00ac5cc9  894804  MOV dword ptr [EAX + 0x4],ECX
00ac5ccc  8b8ff0030000  MOV ECX,dword ptr [EDI + 0x3f0]
00ac5cd2  3b8ff4030000  CMP ECX,dword ptr [EDI + 0x3f4]
00ac5cd8  7411  JZ 0x00ac5ceb
00ac5cda  66c7010000  MOV word ptr [ECX],0x0
00ac5cdf  8b97f0030000  MOV EDX,dword ptr [EDI + 0x3f0]
00ac5ce5  8997f4030000  MOV dword ptr [EDI + 0x3f4],EDX
00ac5ceb  8b8fd8030000  MOV ECX,dword ptr [EDI + 0x3d8]
00ac5cf1  3b8fdc030000  CMP ECX,dword ptr [EDI + 0x3dc]
00ac5cf7  8d9fd8030000  LEA EBX,[EDI + 0x3d8]
00ac5cfd  740a  JZ 0x00ac5d09
00ac5cff  66c7010000  MOV word ptr [ECX],0x0
00ac5d04  8b0b  MOV ECX,dword ptr [EBX]
00ac5d06  894b04  MOV dword ptr [EBX + 0x4],ECX
00ac5d09  66837f781f  CMP word ptr [EDI + 0x78],0x1f
00ac5d0e  7210  JC 0x00ac5d20
00ac5d10  50  PUSH EAX
00ac5d11  8bce  MOV ECX,ESI
00ac5d13  e89839d1ff  CALL 0x007d96b0
00ac5d18  53  PUSH EBX
00ac5d19  8bce  MOV ECX,ESI
00ac5d1b  e89039d1ff  CALL 0x007d96b0
00ac5d20  8d87f0030000  LEA EAX,[EDI + 0x3f0]
00ac5d26  50  PUSH EAX
00ac5d27  8bce  MOV ECX,ESI
00ac5d29  e88239d1ff  CALL 0x007d96b0
00ac5d2e  66837f781d  CMP word ptr [EDI + 0x78],0x1d
00ac5d33  771b  JA 0x00ac5d50
00ac5d35  8b87f0030000  MOV EAX,dword ptr [EDI + 0x3f0]
00ac5d3b  50  PUSH EAX
00ac5d3c  e87fa3d0ff  CALL 0x007d00c0
00ac5d41  83c404  ADD ESP,0x4
00ac5d44  898700040000  MOV dword ptr [EDI + 0x400],EAX
00ac5d4a  899704040000  MOV dword ptr [EDI + 0x404],EDX
00ac5d50  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00ac5d53  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00ac5d56  52  PUSH EDX
00ac5d57  8d442414  LEA EAX,[ESP + 0x14]
00ac5d5b  50  PUSH EAX
00ac5d5c  51  PUSH ECX
00ac5d5d  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
00ac5d65  e8167ca1ff  CALL 0x004dd980
00ac5d6a  83c40c  ADD ESP,0xc
00ac5d6d  8bce  MOV ECX,ESI
00ac5d6f  50  PUSH EAX
00ac5d70  e87b1cd1ff  CALL 0x007d79f0
00ac5d75  66837f7823  CMP word ptr [EDI + 0x78],0x23
00ac5d7a  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00ac5d7e  8d9f0c040000  LEA EBX,[EDI + 0x40c]
00ac5d84  899708040000  MOV dword ptr [EDI + 0x408],EDX
00ac5d8a  c70300000000  MOV dword ptr [EBX],0x0
00ac5d90  7208  JC 0x00ac5d9a
00ac5d92  53  PUSH EBX
00ac5d93  8bce  MOV ECX,ESI
00ac5d95  e81627aaff  CALL 0x005684b0
00ac5d9a  66837f781d  CMP word ptr [EDI + 0x78],0x1d
00ac5d9f  0f57c0  XORPS XMM0,XMM0
00ac5da2  8d8718040000  LEA EAX,[EDI + 0x418]
00ac5da8  f30f1100  MOVSS dword ptr [EAX],XMM0
00ac5dac  7208  JC 0x00ac5db6
00ac5dae  50  PUSH EAX
00ac5daf  8bce  MOV ECX,ESI
00ac5db1  e8fa26aaff  CALL 0x005684b0
00ac5db6  66837f781a  CMP word ptr [EDI + 0x78],0x1a
00ac5dbb  0f57c0  XORPS XMM0,XMM0
00ac5dbe  8d8720040000  LEA EAX,[EDI + 0x420]
00ac5dc4  f30f1100  MOVSS dword ptr [EAX],XMM0
00ac5dc8  7208  JC 0x00ac5dd2
00ac5dca  50  PUSH EAX
00ac5dcb  8bce  MOV ECX,ESI
00ac5dcd  e8de26aaff  CALL 0x005684b0
00ac5dd2  66837f781b  CMP word ptr [EDI + 0x78],0x1b
00ac5dd7  7214  JC 0x00ac5ded
00ac5dd9  8d442428  LEA EAX,[ESP + 0x28]
00ac5ddd  50  PUSH EAX
00ac5dde  8bce  MOV ECX,ESI
00ac5de0  c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
00ac5de8  e8c326aaff  CALL 0x005684b0
00ac5ded  66837f7822  CMP word ptr [EDI + 0x78],0x22
00ac5df2  c6871c04000001  MOV byte ptr [EDI + 0x41c],0x1
00ac5df9  721f  JC 0x00ac5e1a
00ac5dfb  8d4c240f  LEA ECX,[ESP + 0xf]
00ac5dff  51  PUSH ECX
00ac5e00  8bce  MOV ECX,ESI
00ac5e02  c644241301  MOV byte ptr [ESP + 0x13],0x1
00ac5e07  e8e48cabff  CALL 0x0057eaf0
00ac5e0c  807c240f00  CMP byte ptr [ESP + 0xf],0x0
00ac5e11  0f95c2  SETNZ DL
00ac5e14  88971c040000  MOV byte ptr [EDI + 0x41c],DL
00ac5e1a  66837f782b  CMP word ptr [EDI + 0x78],0x2b
00ac5e1f  8d8710030000  LEA EAX,[EDI + 0x310]
00ac5e25  c70000000000  MOV dword ptr [EAX],0x0
00ac5e2b  c7400400000000  MOV dword ptr [EAX + 0x4],0x0
00ac5e32  7208  JC 0x00ac5e3c
00ac5e34  50  PUSH EAX
00ac5e35  8bce  MOV ECX,ESI
00ac5e37  e8548bb3ff  CALL 0x005fe990
00ac5e3c  66837f783a  CMP word ptr [EDI + 0x78],0x3a
00ac5e41  720e  JC 0x00ac5e51
00ac5e43  8d87b0040000  LEA EAX,[EDI + 0x4b0]
00ac5e49  50  PUSH EAX
00ac5e4a  8bce  MOV ECX,ESI
00ac5e4c  e8bffca9ff  CALL 0x00565b10
00ac5e51  66837f783c  CMP word ptr [EDI + 0x78],0x3c
00ac5e56  7210  JC 0x00ac5e68
00ac5e58  8d8fb4040000  LEA ECX,[EDI + 0x4b4]
00ac5e5e  51  PUSH ECX
00ac5e5f  8bce  MOV ECX,ESI
00ac5e61  e84a26aaff  CALL 0x005684b0
00ac5e66  eb10  JMP 0x00ac5e78
00ac5e68  f30f1005a4cbfc00  MOVSS XMM0,dword ptr [0x00fccba4]
00ac5e70  f30f1187b4040000  MOVSS dword ptr [EDI + 0x4b4],XMM0
00ac5e78  66837f783e  CMP word ptr [EDI + 0x78],0x3e
00ac5e7d  7210  JC 0x00ac5e8f
00ac5e7f  8d97bc040000  LEA EDX,[EDI + 0x4bc]
00ac5e85  52  PUSH EDX
00ac5e86  8bce  MOV ECX,ESI
00ac5e88  e883fca9ff  CALL 0x00565b10
00ac5e8d  eb1b  JMP 0x00ac5eaa
00ac5e8f  83bf0804000000  CMP dword ptr [EDI + 0x408],0x0
00ac5e96  7512  JNZ 0x00ac5eaa
00ac5e98  833b04  CMP dword ptr [EBX],0x4
00ac5e9b  760d  JBE 0x00ac5eaa
00ac5e9d  c687bc04000001  MOV byte ptr [EDI + 0x4bc],0x1
00ac5ea4  c70300000000  MOV dword ptr [EBX],0x0
00ac5eaa  66837f783f  CMP word ptr [EDI + 0x78],0x3f
00ac5eaf  8d87bc000000  LEA EAX,[EDI + 0xbc]
00ac5eb5  c70000000000  MOV dword ptr [EAX],0x0
00ac5ebb  7208  JC 0x00ac5ec5
00ac5ebd  50  PUSH EAX
00ac5ebe  8bce  MOV ECX,ESI
00ac5ec0  e8eb25aaff  CALL 0x005684b0
00ac5ec5  66837f7843  CMP word ptr [EDI + 0x78],0x43
00ac5eca  720e  JC 0x00ac5eda
00ac5ecc  81c7bd040000  ADD EDI,0x4bd
00ac5ed2  57  PUSH EDI
00ac5ed3  8bce  MOV ECX,ESI
00ac5ed5  e836fca9ff  CALL 0x00565b10
00ac5eda  8bce  MOV ECX,ESI
00ac5edc  e88f1bd1ff  CALL 0x007d7a70
00ac5ee1  8a4614  MOV AL,byte ptr [ESI + 0x14]
00ac5ee4  5f  POP EDI
00ac5ee5  5e  POP ESI
00ac5ee6  5b  POP EBX
00ac5ee7  8be5  MOV ESP,EBP
00ac5ee9  5d  POP EBP
00ac5eea  c21000  RET 0x10
00ac5eed  5f  POP EDI
00ac5eee  5e  POP ESI
00ac5eef  32c0  XOR AL,AL
00ac5ef1  5b  POP EBX
00ac5ef2  8be5  MOV ESP,EBP
00ac5ef4  5d  POP EBP
00ac5ef5  c21000  RET 0x10
Owned instructions=358 owned bytes=1208 gap/nonowned bytes=0

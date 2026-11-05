# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00B4B0E0_FencePostDesign_SelectTallestAdjacentProduct.c
Owned ranges: [[00b4b0e0, 00b4b44f]]

00b4b0e0  81ecb4000000  SUB ESP,0xb4
00b4b0e6  a1c0c81e01  MOV EAX,[0x011ec8c0]
00b4b0eb  8b15c8c81e01  MOV EDX,dword ptr [0x011ec8c8]
00b4b0f1  53  PUSH EBX
00b4b0f2  8bd9  MOV EBX,ECX
00b4b0f4  8b0dc4c81e01  MOV ECX,dword ptr [0x011ec8c4]
00b4b0fa  56  PUSH ESI
00b4b0fb  89442414  MOV dword ptr [ESP + 0x14],EAX
00b4b0ff  a1ccc81e01  MOV EAX,[0x011ec8cc]
00b4b104  894c2418  MOV dword ptr [ESP + 0x18],ECX
00b4b108  57  PUSH EDI
00b4b109  8d4c2438  LEA ECX,[ESP + 0x38]
00b4b10d  89542420  MOV dword ptr [ESP + 0x20],EDX
00b4b111  89442424  MOV dword ptr [ESP + 0x24],EAX
00b4b115  e8860afbff  CALL 0x00afbba0
00b4b11a  8b4b64  MOV ECX,dword ptr [EBX + 0x64]
00b4b11d  85c9  TEST ECX,ECX
00b4b11f  0f84df020000  JZ 0x00b4b404
00b4b125  8bbc24c4000000  MOV EDI,dword ptr [ESP + 0xc4]
00b4b12c  57  PUSH EDI
00b4b12d  e82e670f00  CALL 0x00c41860
00b4b132  85c0  TEST EAX,EAX
00b4b134  0f84ca020000  JZ 0x00b4b404
00b4b13a  8b7008  MOV ESI,dword ptr [EAX + 0x8]
00b4b13d  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00b4b145  89742468  MOV dword ptr [ESP + 0x68],ESI
00b4b149  8974242c  MOV dword ptr [ESP + 0x2c],ESI
00b4b14d  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
00b4b153  55  PUSH EBP
00b4b154  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00b4b158  e8b3ae0e00  CALL 0x00c36010
00b4b15d  0fbe4804  MOVSX ECX,byte ptr [EAX + 0x4]
00b4b161  0fbe5005  MOVSX EDX,byte ptr [EAX + 0x5]
00b4b165  83c004  ADD EAX,0x4
00b4b168  0fbe4002  MOVSX EAX,byte ptr [EAX + 0x2]
00b4b16c  f30f2ac1  CVTSI2SS XMM0,ECX
00b4b170  f30f11442478  MOVSS dword ptr [ESP + 0x78],XMM0
00b4b176  f30f2ac2  CVTSI2SS XMM0,EDX
00b4b17a  f30f1144247c  MOVSS dword ptr [ESP + 0x7c],XMM0
00b4b180  f30f1007  MOVSS XMM0,dword ptr [EDI]
00b4b184  89842480000000  MOV dword ptr [ESP + 0x80],EAX
00b4b18b  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00b4b191  d9442474  FLD float ptr [ESP + 0x74]
00b4b195  db5c2438  FISTP dword ptr [ESP + 0x38]
00b4b199  8a4c2438  MOV CL,byte ptr [ESP + 0x38]
00b4b19d  f30f104704  MOVSS XMM0,dword ptr [EDI + 0x4]
00b4b1a2  884c2410  MOV byte ptr [ESP + 0x10],CL
00b4b1a6  f30f11442470  MOVSS dword ptr [ESP + 0x70],XMM0
00b4b1ac  d9442470  FLD float ptr [ESP + 0x70]
00b4b1b0  db5c2434  FISTP dword ptr [ESP + 0x34]
00b4b1b4  8a542434  MOV DL,byte ptr [ESP + 0x34]
00b4b1b8  8a4708  MOV AL,byte ptr [EDI + 0x8]
00b4b1bb  8d4c2478  LEA ECX,[ESP + 0x78]
00b4b1bf  51  PUSH ECX
00b4b1c0  8d4c2417  LEA ECX,[ESP + 0x17]
00b4b1c4  88542415  MOV byte ptr [ESP + 0x15],DL
00b4b1c8  88442416  MOV byte ptr [ESP + 0x16],AL
00b4b1cc  e8cf9bc3ff  CALL 0x00784da0
00b4b1d1  8b4b64  MOV ECX,dword ptr [EBX + 0x64]
00b4b1d4  8d542410  LEA EDX,[ESP + 0x10]
00b4b1d8  52  PUSH EDX
00b4b1d9  e8f2660f00  CALL 0x00c418d0
00b4b1de  85c0  TEST EAX,EAX
00b4b1e0  740f  JZ 0x00b4b1f1
00b4b1e2  8b00  MOV EAX,dword ptr [EAX]
00b4b1e4  8b4b6c  MOV ECX,dword ptr [EBX + 0x6c]
00b4b1e7  50  PUSH EAX
00b4b1e8  e8039e0f00  CALL 0x00c44ff0
00b4b1ed  8be8  MOV EBP,EAX
00b4b1ef  eb05  JMP 0x00b4b1f6
00b4b1f1  bdc0c81e01  MOV EBP,0x11ec8c0
00b4b1f6  55  PUSH EBP
00b4b1f7  e834061100  CALL 0x00c5b830
00b4b1fc  83c404  ADD ESP,0x4
00b4b1ff  84c0  TEST AL,AL
00b4b201  55  PUSH EBP
00b4b202  0f840f010000  JZ 0x00b4b317
00b4b208  e8530a1100  CALL 0x00c5bc60
00b4b20d  d9542430  FST float ptr [ESP + 0x30]
00b4b211  d944241c  FLD float ptr [ESP + 0x1c]
00b4b215  83c404  ADD ESP,0x4
00b4b218  d9c9  FXCH
00b4b21a  dff1  FCOMIP ST0,ST1
00b4b21c  ddd8  FSTP ST0
00b4b21e  0f86cc010000  JBE 0x00b4b3f0
00b4b224  8d442410  LEA EAX,[ESP + 0x10]
00b4b228  8bc8  MOV ECX,EAX
00b4b22a  50  PUSH EAX
00b4b22b  51  PUSH ECX
00b4b22c  8bcb  MOV ECX,EBX
00b4b22e  e80dcbffff  CALL 0x00b47d40
00b4b233  8d8c2484000000  LEA ECX,[ESP + 0x84]
00b4b23a  e83108fbff  CALL 0x00afba70
00b4b23f  8d542410  LEA EDX,[ESP + 0x10]
00b4b243  52  PUSH EDX
00b4b244  8bcb  MOV ECX,EBX
00b4b246  e855eeffff  CALL 0x00b4a0a0
00b4b24b  85c0  TEST EAX,EAX
00b4b24d  741b  JZ 0x00b4b26a
00b4b24f  b910000000  MOV ECX,0x10
00b4b254  8bf0  MOV ESI,EAX
00b4b256  8dbc2484000000  LEA EDI,[ESP + 0x84]
00b4b25d  f3a5  MOVSD.REP ES:EDI,ESI
00b4b25f  8bbc24c8000000  MOV EDI,dword ptr [ESP + 0xc8]
00b4b266  8b74246c  MOV ESI,dword ptr [ESP + 0x6c]
00b4b26a  8b4500  MOV EAX,dword ptr [EBP]
00b4b26d  f30f1044242c  MOVSS XMM0,dword ptr [ESP + 0x2c]
00b4b273  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00b4b277  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00b4b27a  894c2420  MOV dword ptr [ESP + 0x20],ECX
00b4b27e  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00b4b281  8b8c2494000000  MOV ECX,dword ptr [ESP + 0x94]
00b4b288  89542424  MOV dword ptr [ESP + 0x24],EDX
00b4b28c  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b4b28f  8b942498000000  MOV EDX,dword ptr [ESP + 0x98]
00b4b296  89442428  MOV dword ptr [ESP + 0x28],EAX
00b4b29a  8b84249c000000  MOV EAX,dword ptr [ESP + 0x9c]
00b4b2a1  894c243c  MOV dword ptr [ESP + 0x3c],ECX
00b4b2a5  8b8c24a0000000  MOV ECX,dword ptr [ESP + 0xa0]
00b4b2ac  89542440  MOV dword ptr [ESP + 0x40],EDX
00b4b2b0  8b9424a4000000  MOV EDX,dword ptr [ESP + 0xa4]
00b4b2b7  89442444  MOV dword ptr [ESP + 0x44],EAX
00b4b2bb  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00b4b2c2  894c2448  MOV dword ptr [ESP + 0x48],ECX
00b4b2c6  8b8c24ac000000  MOV ECX,dword ptr [ESP + 0xac]
00b4b2cd  8954244c  MOV dword ptr [ESP + 0x4c],EDX
00b4b2d1  8b9424b0000000  MOV EDX,dword ptr [ESP + 0xb0]
00b4b2d8  89442450  MOV dword ptr [ESP + 0x50],EAX
00b4b2dc  8b8424b4000000  MOV EAX,dword ptr [ESP + 0xb4]
00b4b2e3  894c2454  MOV dword ptr [ESP + 0x54],ECX
00b4b2e7  8b8c24b8000000  MOV ECX,dword ptr [ESP + 0xb8]
00b4b2ee  89542458  MOV dword ptr [ESP + 0x58],EDX
00b4b2f2  8b9424bc000000  MOV EDX,dword ptr [ESP + 0xbc]
00b4b2f9  8944245c  MOV dword ptr [ESP + 0x5c],EAX
00b4b2fd  8b8424c0000000  MOV EAX,dword ptr [ESP + 0xc0]
00b4b304  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
00b4b30a  894c2460  MOV dword ptr [ESP + 0x60],ECX
00b4b30e  89542464  MOV dword ptr [ESP + 0x64],EDX
00b4b312  e9d5000000  JMP 0x00b4b3ec
00b4b317  e844051100  CALL 0x00c5b860
00b4b31c  83c404  ADD ESP,0x4
00b4b31f  84c0  TEST AL,AL
00b4b321  0f84c9000000  JZ 0x00b4b3f0
00b4b327  55  PUSH EBP
00b4b328  e833091100  CALL 0x00c5bc60
00b4b32d  d9542430  FST float ptr [ESP + 0x30]
00b4b331  d944241c  FLD float ptr [ESP + 0x1c]
00b4b335  83c404  ADD ESP,0x4
00b4b338  d9c9  FXCH
00b4b33a  dff1  FCOMIP ST0,ST1
00b4b33c  ddd8  FSTP ST0
00b4b33e  0f86ac000000  JBE 0x00b4b3f0
00b4b344  8d4c2410  LEA ECX,[ESP + 0x10]
00b4b348  51  PUSH ECX
00b4b349  8bd1  MOV EDX,ECX
00b4b34b  52  PUSH EDX
00b4b34c  8bcb  MOV ECX,EBX
00b4b34e  e8edc9ffff  CALL 0x00b47d40
00b4b353  8b4500  MOV EAX,dword ptr [EBP]
00b4b356  f30f1044242c  MOVSS XMM0,dword ptr [ESP + 0x2c]
00b4b35c  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00b4b360  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00b4b363  894c2420  MOV dword ptr [ESP + 0x20],ECX
00b4b367  8b5508  MOV EDX,dword ptr [EBP + 0x8]
00b4b36a  8d4c2410  LEA ECX,[ESP + 0x10]
00b4b36e  89542424  MOV dword ptr [ESP + 0x24],EDX
00b4b372  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00b4b375  51  PUSH ECX
00b4b376  8bcb  MOV ECX,EBX
00b4b378  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00b4b37c  f30f1144241c  MOVSS dword ptr [ESP + 0x1c],XMM0
00b4b382  e8c9f6ffff  CALL 0x00b4aa50
00b4b387  8b10  MOV EDX,dword ptr [EAX]
00b4b389  8954243c  MOV dword ptr [ESP + 0x3c],EDX
00b4b38d  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00b4b390  894c2440  MOV dword ptr [ESP + 0x40],ECX
00b4b394  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00b4b397  8d4c2410  LEA ECX,[ESP + 0x10]
00b4b39b  89542444  MOV dword ptr [ESP + 0x44],EDX
00b4b39f  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00b4b3a2  51  PUSH ECX
00b4b3a3  8bcb  MOV ECX,EBX
00b4b3a5  8944244c  MOV dword ptr [ESP + 0x4c],EAX
00b4b3a9  e862f7ffff  CALL 0x00b4ab10
00b4b3ae  8b10  MOV EDX,dword ptr [EAX]
00b4b3b0  8954244c  MOV dword ptr [ESP + 0x4c],EDX
00b4b3b4  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00b4b3b7  894c2450  MOV dword ptr [ESP + 0x50],ECX
00b4b3bb  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00b4b3be  8d4c2410  LEA ECX,[ESP + 0x10]
00b4b3c2  89542454  MOV dword ptr [ESP + 0x54],EDX
00b4b3c6  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00b4b3c9  51  PUSH ECX
00b4b3ca  8bcb  MOV ECX,EBX
00b4b3cc  8944245c  MOV dword ptr [ESP + 0x5c],EAX
00b4b3d0  e8fbf7ffff  CALL 0x00b4abd0
00b4b3d5  8b10  MOV EDX,dword ptr [EAX]
00b4b3d7  8954245c  MOV dword ptr [ESP + 0x5c],EDX
00b4b3db  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00b4b3de  894c2460  MOV dword ptr [ESP + 0x60],ECX
00b4b3e2  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00b4b3e5  89542464  MOV dword ptr [ESP + 0x64],EDX
00b4b3e9  8b400c  MOV EAX,dword ptr [EAX + 0xc]
00b4b3ec  89442468  MOV dword ptr [ESP + 0x68],EAX
00b4b3f0  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00b4b3f4  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00b4b3f7  3bc6  CMP EAX,ESI
00b4b3f9  89442430  MOV dword ptr [ESP + 0x30],EAX
00b4b3fd  0f8551fdffff  JNZ 0x00b4b154
00b4b403  5d  POP EBP
00b4b404  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b4b40a  6a01  PUSH 0x1
00b4b40c  8d54241c  LEA EDX,[ESP + 0x1c]
00b4b410  52  PUSH EDX
00b4b411  e84a331400  CALL 0x00c8e760
00b4b416  85c0  TEST EAX,EAX
00b4b418  7425  JZ 0x00b4b43f
00b4b41a  8bbc24c8000000  MOV EDI,dword ptr [ESP + 0xc8]
00b4b421  85ff  TEST EDI,EDI
00b4b423  740b  JZ 0x00b4b430
00b4b425  b90c000000  MOV ECX,0xc
00b4b42a  8d742438  LEA ESI,[ESP + 0x38]
00b4b42e  f3a5  MOVSD.REP ES:EDI,ESI
00b4b430  5f  POP EDI
00b4b431  5e  POP ESI
00b4b432  83c008  ADD EAX,0x8
00b4b435  5b  POP EBX
00b4b436  81c4b4000000  ADD ESP,0xb4
00b4b43c  c20800  RET 0x8
00b4b43f  5f  POP EDI
00b4b440  5e  POP ESI
00b4b441  b8c0c81e01  MOV EAX,0x11ec8c0
00b4b446  5b  POP EBX
00b4b447  81c4b4000000  ADD ESP,0xb4
00b4b44d  c20800  RET 0x8

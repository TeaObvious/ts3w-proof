# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined FloorManager_EmitCutoutSurfaceMessage(void * this, int * param_1, int * param_2, uint param_3, int * param_4, uint * param_5, undefined1 param_6, char param_7)
Owned ranges: [[00a99c50, 00a9a00a]]

00a99c50  83ec0c  SUB ESP,0xc
00a99c53  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00a99c57  8a5002  MOV DL,byte ptr [EAX + 0x2]
00a99c5a  53  PUSH EBX
00a99c5b  55  PUSH EBP
00a99c5c  8bd9  MOV EBX,ECX
00a99c5e  668b08  MOV CX,word ptr [EAX]
00a99c61  8a4003  MOV AL,byte ptr [EAX + 0x3]
00a99c64  56  PUSH ESI
00a99c65  57  PUSH EDI
00a99c66  24ef  AND AL,0xef
00a99c68  6890000000  PUSH 0x90
00a99c6d  66894c2418  MOV word ptr [ESP + 0x18],CX
00a99c72  8854241a  MOV byte ptr [ESP + 0x1a],DL
00a99c76  8844241b  MOV byte ptr [ESP + 0x1b],AL
00a99c7a  e8d1540400  CALL 0x00adf150
00a99c7f  83c404  ADD ESP,0x4
00a99c82  85c0  TEST EAX,EAX
00a99c84  7450  JZ 0x00a99cd6
00a99c86  8bc8  MOV ECX,EAX
00a99c88  e8e313ffff  CALL 0x00a8b070
00a99c8d  8be8  MOV EBP,EAX
00a99c8f  85ed  TEST EBP,EBP
00a99c91  740a  JZ 0x00a99c9d
00a99c93  8b5500  MOV EDX,dword ptr [EBP]
00a99c96  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00a99c99  8bcd  MOV ECX,EBP
00a99c9b  ffd0  CALL EAX
00a99c9d  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a99ca0  8b4848  MOV ECX,dword ptr [EAX + 0x48]
00a99ca3  894d08  MOV dword ptr [EBP + 0x8],ECX
00a99ca6  8b504c  MOV EDX,dword ptr [EAX + 0x4c]
00a99ca9  8d442414  LEA EAX,[ESP + 0x14]
00a99cad  50  PUSH EAX
00a99cae  8bcb  MOV ECX,EBX
00a99cb0  89550c  MOV dword ptr [EBP + 0xc],EDX
00a99cb3  e8582effff  CALL 0x00a8cb10
00a99cb8  84c0  TEST AL,AL
00a99cba  741e  JZ 0x00a99cda
00a99cbc  8d4518  LEA EAX,[EBP + 0x18]
00a99cbf  50  PUSH EAX
00a99cc0  8d4c2418  LEA ECX,[ESP + 0x18]
00a99cc4  51  PUSH ECX
00a99cc5  8bcb  MOV ECX,EBX
00a99cc7  e8f434ffff  CALL 0x00a8d1c0
00a99ccc  8bcb  MOV ECX,EBX
00a99cce  50  PUSH EAX
00a99ccf  e86c51ffff  CALL 0x00a8ee40
00a99cd4  eb13  JMP 0x00a99ce9
00a99cd6  33ed  XOR EBP,EBP
00a99cd8  ebc3  JMP 0x00a99c9d
00a99cda  8d7d18  LEA EDI,[EBP + 0x18]
00a99cdd  b910000000  MOV ECX,0x10
00a99ce2  be20c91e01  MOV ESI,0x11ec920
00a99ce7  f3a5  MOVSD.REP ES:EDI,ESI
00a99ce9  8d5558  LEA EDX,[EBP + 0x58]
00a99cec  52  PUSH EDX
00a99ced  8d7d18  LEA EDI,[EBP + 0x18]
00a99cf0  57  PUSH EDI
00a99cf1  8bcb  MOV ECX,EBX
00a99cf3  e8c874ffff  CALL 0x00a911c0
00a99cf8  0fbe442416  MOVSX EAX,byte ptr [ESP + 0x16]
00a99cfd  2b4310  SUB EAX,dword ptr [EBX + 0x10]
00a99d00  0fbe4c2415  MOVSX ECX,byte ptr [ESP + 0x15]
00a99d05  0fbe542414  MOVSX EDX,byte ptr [ESP + 0x14]
00a99d0a  50  PUSH EAX
00a99d0b  51  PUSH ECX
00a99d0c  8b4b30  MOV ECX,dword ptr [EBX + 0x30]
00a99d0f  52  PUSH EDX
00a99d10  e89b16ffff  CALL 0x00a8b3b0
00a99d15  8a00  MOV AL,byte ptr [EAX]
00a99d17  88455a  MOV byte ptr [EBP + 0x5a],AL
00a99d1a  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00a99d1e  8d7510  LEA ESI,[EBP + 0x10]
00a99d21  8906  MOV dword ptr [ESI],EAX
00a99d23  8b0f  MOV ECX,dword ptr [EDI]
00a99d25  3b0dd0c81e01  CMP ECX,dword ptr [0x011ec8d0]
00a99d2b  7525  JNZ 0x00a99d52
00a99d2d  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00a99d30  3b15d8c81e01  CMP EDX,dword ptr [0x011ec8d8]
00a99d36  751a  JNZ 0x00a99d52
00a99d38  8b470c  MOV EAX,dword ptr [EDI + 0xc]
00a99d3b  3b05dcc81e01  CMP EAX,dword ptr [0x011ec8dc]
00a99d41  750f  JNZ 0x00a99d52
00a99d43  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a99d46  3b0dd4c81e01  CMP ECX,dword ptr [0x011ec8d4]
00a99d4c  7504  JNZ 0x00a99d52
00a99d4e  33c0  XOR EAX,EAX
00a99d50  eb05  JMP 0x00a99d57
00a99d52  b801000000  MOV EAX,0x1
00a99d57  50  PUSH EAX
00a99d58  8d542418  LEA EDX,[ESP + 0x18]
00a99d5c  52  PUSH EDX
00a99d5d  8bcb  MOV ECX,EBX
00a99d5f  e83c97ffff  CALL 0x00a934a0
00a99d64  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a99d68  88455b  MOV byte ptr [EBP + 0x5b],AL
00a99d6b  6a00  PUSH 0x0
00a99d6d  88442417  MOV byte ptr [ESP + 0x17],AL
00a99d71  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a99d74  8b8898020000  MOV ECX,dword ptr [EAX + 0x298]
00a99d7a  6a00  PUSH 0x0
00a99d7c  52  PUSH EDX
00a99d7d  894c2424  MOV dword ptr [ESP + 0x24],ECX
00a99d81  e85ad30a00  CALL 0x00b470e0
00a99d86  6689455e  MOV word ptr [EBP + 0x5e],AX
00a99d8a  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a99d8d  56  PUSH ESI
00a99d8e  50  PUSH EAX
00a99d8f  e8ec750300  CALL 0x00ad1380
00a99d94  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00a99d98  888586000000  MOV byte ptr [EBP + 0x86],AL
00a99d9e  8b0f  MOV ECX,dword ptr [EDI]
00a99da0  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00a99da6  894d60  MOV dword ptr [EBP + 0x60],ECX
00a99da9  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00a99dac  895564  MOV dword ptr [EBP + 0x64],EDX
00a99daf  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00a99db2  894568  MOV dword ptr [EBP + 0x68],EAX
00a99db5  8b4f0c  MOV ECX,dword ptr [EDI + 0xc]
00a99db8  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00a99dbc  8a54243c  MOV DL,byte ptr [ESP + 0x3c]
00a99dc0  894d6c  MOV dword ptr [EBP + 0x6c],ECX
00a99dc3  d900  FLD float ptr [EAX]
00a99dc5  d95d70  FSTP float ptr [EBP + 0x70]
00a99dc8  83c408  ADD ESP,0x8
00a99dcb  d94004  FLD float ptr [EAX + 0x4]
00a99dce  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00a99dd2  d95d74  FSTP float ptr [EBP + 0x74]
00a99dd5  f30f114578  MOVSS dword ptr [EBP + 0x78],XMM0
00a99dda  d900  FLD float ptr [EAX]
00a99ddc  d95d7c  FSTP float ptr [EBP + 0x7c]
00a99ddf  d94004  FLD float ptr [EAX + 0x4]
00a99de2  d99d80000000  FSTP float ptr [EBP + 0x80]
00a99de8  8a4513  MOV AL,byte ptr [EBP + 0x13]
00a99deb  f6d0  NOT AL
00a99ded  a810  TEST AL,0x10
00a99def  889587000000  MOV byte ptr [EBP + 0x87],DL
00a99df5  741c  JZ 0x00a99e13
00a99df7  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00a99dfa  6a00  PUSH 0x0
00a99dfc  6a01  PUSH 0x1
00a99dfe  56  PUSH ESI
00a99dff  51  PUSH ECX
00a99e00  e81b5a0300  CALL 0x00acf820
00a99e05  83c410  ADD ESP,0x10
00a99e08  84c0  TEST AL,AL
00a99e0a  7407  JZ 0x00a99e13
00a99e0c  b801000000  MOV EAX,0x1
00a99e11  eb02  JMP 0x00a99e15
00a99e13  33c0  XOR EAX,EAX
00a99e15  6a00  PUSH 0x0
00a99e17  8d542418  LEA EDX,[ESP + 0x18]
00a99e1b  88455c  MOV byte ptr [EBP + 0x5c],AL
00a99e1e  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a99e21  52  PUSH EDX
00a99e22  50  PUSH EAX
00a99e23  e8384f0600  CALL 0x00afed60
00a99e28  83c40c  ADD ESP,0xc
00a99e2b  888584000000  MOV byte ptr [EBP + 0x84],AL
00a99e31  8b4b04  MOV ECX,dword ptr [EBX + 0x4]
00a99e34  56  PUSH ESI
00a99e35  e8c69b0100  CALL 0x00ab3a00
00a99e3a  807c243800  CMP byte ptr [ESP + 0x38],0x0
00a99e3f  888588000000  MOV byte ptr [EBP + 0x88],AL
00a99e45  751e  JNZ 0x00a99e65
00a99e47  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00a99e4a  6a00  PUSH 0x0
00a99e4c  6a01  PUSH 0x1
00a99e4e  8d4c241c  LEA ECX,[ESP + 0x1c]
00a99e52  51  PUSH ECX
00a99e53  52  PUSH EDX
00a99e54  e8c75b0300  CALL 0x00acfa20
00a99e59  83c410  ADD ESP,0x10
00a99e5c  84c0  TEST AL,AL
00a99e5e  c644243401  MOV byte ptr [ESP + 0x34],0x1
00a99e63  7505  JNZ 0x00a99e6a
00a99e65  c644243400  MOV byte ptr [ESP + 0x34],0x0
00a99e6a  0fb6442434  MOVZX EAX,byte ptr [ESP + 0x34]
00a99e6f  888585000000  MOV byte ptr [EBP + 0x85],AL
00a99e75  e876269bff  CALL 0x0044c4f0
00a99e7a  8b10  MOV EDX,dword ptr [EAX]
00a99e7c  6a00  PUSH 0x0
00a99e7e  6a00  PUSH 0x0
00a99e80  55  PUSH EBP
00a99e81  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00a99e85  8bc8  MOV ECX,EAX
00a99e87  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00a99e8a  689ea13409  PUSH 0x934a19e
00a99e8f  ffd0  CALL EAX
00a99e91  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00a99e95  8a4102  MOV AL,byte ptr [ECX + 0x2]
00a99e98  84c0  TEST AL,AL
00a99e9a  0f8457010000  JZ 0x00a99ff7
00a99ea0  0fbec0  MOVSX EAX,AL
00a99ea3  3b4310  CMP EAX,dword ptr [EBX + 0x10]
00a99ea6  0f8e4b010000  JLE 0x00a99ff7
00a99eac  50  PUSH EAX
00a99ead  8bcb  MOV ECX,EBX
00a99eaf  e8ace1ffff  CALL 0x00a98060
00a99eb4  837b4800  CMP dword ptr [EBX + 0x48],0x0
00a99eb8  0f8439010000  JZ 0x00a99ff7
00a99ebe  6890000000  PUSH 0x90
00a99ec3  e888520400  CALL 0x00adf150
00a99ec8  83c404  ADD ESP,0x4
00a99ecb  85c0  TEST EAX,EAX
00a99ecd  740b  JZ 0x00a99eda
00a99ecf  8bc8  MOV ECX,EAX
00a99ed1  e89a11ffff  CALL 0x00a8b070
00a99ed6  8bf0  MOV ESI,EAX
00a99ed8  eb02  JMP 0x00a99edc
00a99eda  33f6  XOR ESI,ESI
00a99edc  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00a99ee0  668b10  MOV DX,word ptr [EAX]
00a99ee3  8a4802  MOV CL,byte ptr [EAX + 0x2]
00a99ee6  6689542438  MOV word ptr [ESP + 0x38],DX
00a99eeb  8a5003  MOV DL,byte ptr [EAX + 0x3]
00a99eee  8b4304  MOV EAX,dword ptr [EBX + 0x4]
00a99ef1  884c243a  MOV byte ptr [ESP + 0x3a],CL
00a99ef5  80ca10  OR DL,0x10
00a99ef8  8854243b  MOV byte ptr [ESP + 0x3b],DL
00a99efc  8b4848  MOV ECX,dword ptr [EAX + 0x48]
00a99eff  894e08  MOV dword ptr [ESI + 0x8],ECX
00a99f02  8b504c  MOV EDX,dword ptr [EAX + 0x4c]
00a99f05  8d4618  LEA EAX,[ESI + 0x18]
00a99f08  50  PUSH EAX
00a99f09  8d44243c  LEA EAX,[ESP + 0x3c]
00a99f0d  50  PUSH EAX
00a99f0e  8bcb  MOV ECX,EBX
00a99f10  89560c  MOV dword ptr [ESI + 0xc],EDX
00a99f13  e8a832ffff  CALL 0x00a8d1c0
00a99f18  8bcb  MOV ECX,EBX
00a99f1a  50  PUSH EAX
00a99f1b  e8204fffff  CALL 0x00a8ee40
00a99f20  8d4e58  LEA ECX,[ESI + 0x58]
00a99f23  51  PUSH ECX
00a99f24  8d4618  LEA EAX,[ESI + 0x18]
00a99f27  50  PUSH EAX
00a99f28  8bcb  MOV ECX,EBX
00a99f2a  e89172ffff  CALL 0x00a911c0
00a99f2f  837b4800  CMP dword ptr [EBX + 0x48],0x0
00a99f33  7421  JZ 0x00a99f56
00a99f35  0fbe54243a  MOVSX EDX,byte ptr [ESP + 0x3a]
00a99f3a  2b5310  SUB EDX,dword ptr [EBX + 0x10]
00a99f3d  0fbe442439  MOVSX EAX,byte ptr [ESP + 0x39]
00a99f42  0fbe4c2438  MOVSX ECX,byte ptr [ESP + 0x38]
00a99f47  52  PUSH EDX
00a99f48  50  PUSH EAX
00a99f49  51  PUSH ECX
00a99f4a  8b4b4c  MOV ECX,dword ptr [EBX + 0x4c]
00a99f4d  e85e14ffff  CALL 0x00a8b3b0
00a99f52  8a00  MOV AL,byte ptr [EAX]
00a99f54  eb02  JMP 0x00a99f58
00a99f56  32c0  XOR AL,AL
00a99f58  6a00  PUSH 0x0
00a99f5a  88465a  MOV byte ptr [ESI + 0x5a],AL
00a99f5d  8b54243c  MOV EDX,dword ptr [ESP + 0x3c]
00a99f61  8a442417  MOV AL,byte ptr [ESP + 0x17]
00a99f65  6a00  PUSH 0x0
00a99f67  8d4c2440  LEA ECX,[ESP + 0x40]
00a99f6b  51  PUSH ECX
00a99f6c  8b4c2424  MOV ECX,dword ptr [ESP + 0x24]
00a99f70  895610  MOV dword ptr [ESI + 0x10],EDX
00a99f73  88465b  MOV byte ptr [ESI + 0x5b],AL
00a99f76  e865d10a00  CALL 0x00b470e0
00a99f7b  6689465e  MOV word ptr [ESI + 0x5e],AX
00a99f7f  8b5304  MOV EDX,dword ptr [EBX + 0x4]
00a99f82  8d4510  LEA EAX,[EBP + 0x10]
00a99f85  50  PUSH EAX
00a99f86  52  PUSH EDX
00a99f87  e8f4730300  CALL 0x00ad1380
00a99f8c  888586000000  MOV byte ptr [EBP + 0x86],AL
00a99f92  8b07  MOV EAX,dword ptr [EDI]
00a99f94  894660  MOV dword ptr [ESI + 0x60],EAX
00a99f97  8b4f04  MOV ECX,dword ptr [EDI + 0x4]
00a99f9a  f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00a99fa0  894e64  MOV dword ptr [ESI + 0x64],ECX
00a99fa3  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00a99fa6  8a4c243c  MOV CL,byte ptr [ESP + 0x3c]
00a99faa  895668  MOV dword ptr [ESI + 0x68],EDX
00a99fad  8b470c  MOV EAX,dword ptr [EDI + 0xc]
00a99fb0  89466c  MOV dword ptr [ESI + 0x6c],EAX
00a99fb3  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00a99fb7  d900  FLD float ptr [EAX]
00a99fb9  83c408  ADD ESP,0x8
00a99fbc  d95e70  FSTP float ptr [ESI + 0x70]
00a99fbf  6a00  PUSH 0x0
00a99fc1  d94004  FLD float ptr [EAX + 0x4]
00a99fc4  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00a99fc8  d95e74  FSTP float ptr [ESI + 0x74]
00a99fcb  f30f114678  MOVSS dword ptr [ESI + 0x78],XMM0
00a99fd0  d900  FLD float ptr [EAX]
00a99fd2  6a00  PUSH 0x0
00a99fd4  d95e7c  FSTP float ptr [ESI + 0x7c]
00a99fd7  56  PUSH ESI
00a99fd8  d94004  FLD float ptr [EAX + 0x4]
00a99fdb  689ea13409  PUSH 0x934a19e
00a99fe0  d99e80000000  FSTP float ptr [ESI + 0x80]
00a99fe6  888e85000000  MOV byte ptr [ESI + 0x85],CL
00a99fec  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00a99ff0  8b11  MOV EDX,dword ptr [ECX]
00a99ff2  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00a99ff5  ffd0  CALL EAX
00a99ff7  8b5500  MOV EDX,dword ptr [EBP]
00a99ffa  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00a99ffd  8bcd  MOV ECX,EBP
00a99fff  ffd0  CALL EAX
00a9a001  5f  POP EDI
00a9a002  5e  POP ESI
00a9a003  5d  POP EBP
00a9a004  5b  POP EBX
00a9a005  83c40c  ADD ESP,0xc
00a9a008  c21c00  RET 0x1c

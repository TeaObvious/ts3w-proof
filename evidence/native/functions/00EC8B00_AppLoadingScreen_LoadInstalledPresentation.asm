# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; full owned instruction Listing.
Function AppLoadingScreen_LoadInstalledPresentation Entry 00ec8b00
OWNED_RANGE 00ec8b00:00ec8b9c
OWNED_RANGE 00ec8ba0:00ec8d6c
OWNED_RANGE 00ec8d70:00ec90a0
NONOWNED_ALIGNMENT 00ec8b9d..00ec8b9f; 00ec8d6d..00ec8d6f (not exported as owned instructions)
00ec8b00: 83ec50  SUB ESP,0x50
00ec8b03: 53  PUSH EBX
00ec8b04: 55  PUSH EBP
00ec8b05: 56  PUSH ESI
00ec8b06: 8bf1  MOV ESI,ECX
00ec8b08: 8b462c  MOV EAX,dword ptr [ESI + 0x2c]
00ec8b0b: 8b5e04  MOV EBX,dword ptr [ESI + 0x4]
00ec8b0e: 8d4804  LEA ECX,[EAX + 0x4]
00ec8b11: 8b01  MOV EAX,dword ptr [ECX]
00ec8b13: 8b5038  MOV EDX,dword ptr [EAX + 0x38]
00ec8b16: 57  PUSH EDI
00ec8b17: 8d7e04  LEA EDI,[ESI + 0x4]
00ec8b1a: 83c364  ADD EBX,0x64
00ec8b1d: ffd2  CALL EDX
00ec8b1f: 50  PUSH EAX
00ec8b20: 8b03  MOV EAX,dword ptr [EBX]
00ec8b22: 8bcf  MOV ECX,EDI
00ec8b24: ffd0  CALL EAX
00ec8b26: 8b17  MOV EDX,dword ptr [EDI]
00ec8b28: 8b4274  MOV EAX,dword ptr [EDX + 0x74]
00ec8b2b: 6a01  PUSH 0x1
00ec8b2d: 6a08  PUSH 0x8
00ec8b2f: 8bcf  MOV ECX,EDI
00ec8b31: ffd0  CALL EAX
00ec8b33: 8b17  MOV EDX,dword ptr [EDI]
00ec8b35: 8b4234  MOV EAX,dword ptr [EDX + 0x34]
00ec8b38: 8bcf  MOV ECX,EDI
00ec8b3a: ffd0  CALL EAX
00ec8b3c: f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00ec8b41: f30f5c00  SUBSS XMM0,dword ptr [EAX]
00ec8b45: f30f1186e4020000  MOVSS dword ptr [ESI + 0x2e4],XMM0
00ec8b4d: f30f5905b4b5f900  MULSS XMM0,dword ptr [0x00f9b5b4]
00ec8b55: f30f1186e8020000  MOVSS dword ptr [ESI + 0x2e8],XMM0
00ec8b5d: e82e088aff  CALL 0x00769390
00ec8b62: 8be8  MOV EBP,EAX
00ec8b64: e8f70a8bff  CALL 0x00779660
00ec8b69: b8548e1c01  MOV EAX,0x11c8e54
00ec8b6e: b9e0ed1c01  MOV ECX,0x11cede0
00ec8b73: c744243c4c5b0f01  MOV dword ptr [ESP + 0x3c],0x10f5b4c
00ec8b7b: 89442430  MOV dword ptr [ESP + 0x30],EAX
00ec8b7f: 89442434  MOV dword ptr [ESP + 0x34],EAX
00ec8b83: c7442438568e1c01  MOV dword ptr [ESP + 0x38],0x11c8e56
00ec8b8b: e800c86cff  CALL 0x00595390
00ec8b90: 8bd8  MOV EBX,EAX
00ec8b92: 895c2410  MOV dword ptr [ESP + 0x10],EBX
00ec8b96: b8805b0f01  MOV EAX,0x10f5b80
00ec8b9b: eb03  JMP 0x00ec8ba0
00ec8ba0: 83c002  ADD EAX,0x2
00ec8ba3: 66833800  CMP word ptr [EAX],0x0
00ec8ba7: 75f7  JNZ 0x00ec8ba0
00ec8ba9: 2d805b0f01  SUB EAX,0x10f5b80
00ec8bae: d1f8  SAR EAX,0x1
00ec8bb0: 8d0c45805b0f01  LEA ECX,[EAX*0x2 + 0x10f5b80]
00ec8bb7: 51  PUSH ECX
00ec8bb8: 68805b0f01  PUSH 0x10f5b80
00ec8bbd: 8d4c2438  LEA ECX,[ESP + 0x38]
00ec8bc1: e89a0154ff  CALL 0x00408d60
00ec8bc6: 53  PUSH EBX
00ec8bc7: 8d542434  LEA EDX,[ESP + 0x34]
00ec8bcb: 681818fc00  PUSH 0xfc1818
00ec8bd0: 52  PUSH EDX
00ec8bd1: e86a655eff  CALL 0x004af140
00ec8bd6: 8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00ec8bda: 50  PUSH EAX
00ec8bdb: e8e07490ff  CALL 0x007d00c0
00ec8be0: 83c410  ADD ESP,0x10
00ec8be3: 89442440  MOV dword ptr [ESP + 0x40],EAX
00ec8be7: 89542444  MOV dword ptr [ESP + 0x44],EDX
00ec8beb: c7442448b6955c02  MOV dword ptr [ESP + 0x48],0x25c95b6
00ec8bf3: c744244c00000000  MOV dword ptr [ESP + 0x4c],0x0
00ec8bfb: e880725eff  CALL 0x004afe80
00ec8c00: 8b10  MOV EDX,dword ptr [EAX]
00ec8c02: 8b5244  MOV EDX,dword ptr [EDX + 0x44]
00ec8c05: 8d4c2440  LEA ECX,[ESP + 0x40]
00ec8c09: 51  PUSH ECX
00ec8c0a: 8bc8  MOV ECX,EAX
00ec8c0c: ffd2  CALL EDX
00ec8c0e: 85c0  TEST EAX,EAX
00ec8c10: 752b  JNZ 0x00ec8c3d
00ec8c12: b8805b0f01  MOV EAX,0x10f5b80
00ec8c17: 83c002  ADD EAX,0x2
00ec8c1a: 66833800  CMP word ptr [EAX],0x0
00ec8c1e: 75f7  JNZ 0x00ec8c17
00ec8c20: 2d805b0f01  SUB EAX,0x10f5b80
00ec8c25: d1f8  SAR EAX,0x1
00ec8c27: 8d0445805b0f01  LEA EAX,[EAX*0x2 + 0x10f5b80]
00ec8c2e: 50  PUSH EAX
00ec8c2f: 68805b0f01  PUSH 0x10f5b80
00ec8c34: 8d4c2438  LEA ECX,[ESP + 0x38]
00ec8c38: e8230154ff  CALL 0x00408d60
00ec8c3d: 8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ec8c41: 68b6955c02  PUSH 0x25c95b6
00ec8c46: 6a00  PUSH 0x0
00ec8c48: 51  PUSH ECX
00ec8c49: e8727490ff  CALL 0x007d00c0
00ec8c4e: 83c404  ADD ESP,0x4
00ec8c51: 52  PUSH EDX
00ec8c52: 50  PUSH EAX
00ec8c53: e8f8a28bff  CALL 0x00782f50
00ec8c58: 8b5500  MOV EDX,dword ptr [EBP]
00ec8c5b: 83c410  ADD ESP,0x10
00ec8c5e: 89442418  MOV dword ptr [ESP + 0x18],EAX
00ec8c62: 50  PUSH EAX
00ec8c63: 8b82cc000000  MOV EAX,dword ptr [EDX + 0xcc]
00ec8c69: 8bcd  MOV ECX,EBP
00ec8c6b: ffd0  CALL EAX
00ec8c6d: 8be8  MOV EBP,EAX
00ec8c6f: 85ed  TEST EBP,EBP
00ec8c71: 0f848d000000  JZ 0x00ec8d04
00ec8c77: 6a00  PUSH 0x0
00ec8c79: 68c0cefc00  PUSH 0xfccec0
00ec8c7e: e82d296cff  CALL 0x0058b5b0
00ec8c83: 6a00  PUSH 0x0
00ec8c85: 68b4cefc00  PUSH 0xfcceb4
00ec8c8a: 8bd8  MOV EBX,EAX
00ec8c8c: e81f296cff  CALL 0x0058b5b0
00ec8c91: 83c410  ADD ESP,0x10
00ec8c94: 85db  TEST EBX,EBX
00ec8c96: 7504  JNZ 0x00ec8c9c
00ec8c98: 85c0  TEST EAX,EAX
00ec8c9a: 7405  JZ 0x00ec8ca1
00ec8c9c: b801000000  MOV EAX,0x1
00ec8ca1: 33c9  XOR ECX,ECX
00ec8ca3: 84c0  TEST AL,AL
00ec8ca5: 0f95c1  SETNZ CL
00ec8ca8: 8d542414  LEA EDX,[ESP + 0x14]
00ec8cac: 8886f8020000  MOV byte ptr [ESI + 0x2f8],AL
00ec8cb2: 52  PUSH EDX
00ec8cb3: 8d442424  LEA EAX,[ESP + 0x24]
00ec8cb7: 83c544  ADD EBP,0x44
00ec8cba: 50  PUSH EAX
00ec8cbb: 83c101  ADD ECX,0x1
00ec8cbe: 894c241c  MOV dword ptr [ESP + 0x1c],ECX
00ec8cc2: 8bcd  MOV ECX,EBP
00ec8cc4: e8e72cb9ff  CALL 0x00a5b9b0
00ec8cc9: 8b4d08  MOV ECX,dword ptr [EBP + 0x8]
00ec8ccc: 8b5504  MOV EDX,dword ptr [EBP + 0x4]
00ec8ccf: 8d048a  LEA EAX,[EDX + ECX*0x4]
00ec8cd2: 8b00  MOV EAX,dword ptr [EAX]
00ec8cd4: 8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00ec8cd8: 3bc8  CMP ECX,EAX
00ec8cda: 7424  JZ 0x00ec8d00
00ec8cdc: 8b4904  MOV ECX,dword ptr [ECX + 0x4]
00ec8cdf: 85c9  TEST ECX,ECX
00ec8ce1: 741d  JZ 0x00ec8d00
00ec8ce3: 8b01  MOV EAX,dword ptr [ECX]
00ec8ce5: 8b500c  MOV EDX,dword ptr [EAX + 0xc]
00ec8ce8: 681882eeee  PUSH 0xeeee8218
00ec8ced: ffd2  CALL EDX
00ec8cef: 85c0  TEST EAX,EAX
00ec8cf1: 740d  JZ 0x00ec8d00
00ec8cf3: 8b17  MOV EDX,dword ptr [EDI]
00ec8cf5: 50  PUSH EAX
00ec8cf6: 8b82dc000000  MOV EAX,dword ptr [EDX + 0xdc]
00ec8cfc: 8bcf  MOV ECX,EDI
00ec8cfe: ffd0  CALL EAX
00ec8d00: 8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00ec8d04: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ec8d08: 51  PUSH ECX
00ec8d09: e8121b8bff  CALL 0x0077a820
00ec8d0e: 83c404  ADD ESP,0x4
00ec8d11: 80bef802000000  CMP byte ptr [ESI + 0x2f8],0x0
00ec8d18: 0f85f6020000  JNZ 0x00ec9014
00ec8d1e: 8b17  MOV EDX,dword ptr [EDI]
00ec8d20: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8d26: 6a01  PUSH 0x1
00ec8d28: 68ff40eb06  PUSH 0x6eb40ff
00ec8d2d: 8bcf  MOV ECX,EDI
00ec8d2f: ffd0  CALL EAX
00ec8d31: 85c0  TEST EAX,EAX
00ec8d33: 0f8431010000  JZ 0x00ec8e6a
00ec8d39: 8b10  MOV EDX,dword ptr [EAX]
00ec8d3b: 8bc8  MOV ECX,EAX
00ec8d3d: 8b82ac000000  MOV EAX,dword ptr [EDX + 0xac]
00ec8d43: ffd0  CALL EAX
00ec8d45: 89442418  MOV dword ptr [ESP + 0x18],EAX
00ec8d49: b8548e1c01  MOV EAX,0x11c8e54
00ec8d4e: 89442420  MOV dword ptr [ESP + 0x20],EAX
00ec8d52: 89442424  MOV dword ptr [ESP + 0x24],EAX
00ec8d56: c744242c4c5b0f01  MOV dword ptr [ESP + 0x2c],0x10f5b4c
00ec8d5e: c7442428568e1c01  MOV dword ptr [ESP + 0x28],0x11c8e56
00ec8d66: b8685b0f01  MOV EAX,0x10f5b68
00ec8d6b: eb03  JMP 0x00ec8d70
00ec8d70: 83c002  ADD EAX,0x2
00ec8d73: 66833800  CMP word ptr [EAX],0x0
00ec8d77: 75f7  JNZ 0x00ec8d70
00ec8d79: 2d685b0f01  SUB EAX,0x10f5b68
00ec8d7e: d1f8  SAR EAX,0x1
00ec8d80: 8d0c45685b0f01  LEA ECX,[EAX*0x2 + 0x10f5b68]
00ec8d87: 51  PUSH ECX
00ec8d88: 68685b0f01  PUSH 0x10f5b68
00ec8d8d: 8d4c2428  LEA ECX,[ESP + 0x28]
00ec8d91: e8caff53ff  CALL 0x00408d60
00ec8d96: e8152a6dff  CALL 0x0059b7b0
00ec8d9b: 8be8  MOV EBP,EAX
00ec8d9d: 8bc3  MOV EAX,EBX
00ec8d9f: 8d5002  LEA EDX,[EAX + 0x2]
00ec8da2: 668b08  MOV CX,word ptr [EAX]
00ec8da5: 83c002  ADD EAX,0x2
00ec8da8: 6685c9  TEST CX,CX
00ec8dab: 75f5  JNZ 0x00ec8da2
00ec8dad: 2bc2  SUB EAX,EDX
00ec8daf: d1f8  SAR EAX,0x1
00ec8db1: 741c  JZ 0x00ec8dcf
00ec8db3: 53  PUSH EBX
00ec8db4: 8d542424  LEA EDX,[ESP + 0x24]
00ec8db8: 68605b0f01  PUSH 0x10f5b60
00ec8dbd: 52  PUSH EDX
00ec8dbe: e87d635eff  CALL 0x004af140
00ec8dc3: 83c40c  ADD ESP,0xc
00ec8dc6: 8bcd  MOV ECX,EBP
00ec8dc8: e833346dff  CALL 0x0059c200
00ec8dcd: eb07  JMP 0x00ec8dd6
00ec8dcf: 8bcd  MOV ECX,EBP
00ec8dd1: e85a2f6dff  CALL 0x0059bd30
00ec8dd6: 8be8  MOV EBP,EAX
00ec8dd8: 6894abfd00  PUSH 0xfdab94
00ec8ddd: 55  PUSH EBP
00ec8dde: e83d5963ff  CALL 0x004fe720
00ec8de3: 83c408  ADD ESP,0x8
00ec8de6: 85c0  TEST EAX,EAX
00ec8de8: 7461  JZ 0x00ec8e4b
00ec8dea: 55  PUSH EBP
00ec8deb: 8d4c2424  LEA ECX,[ESP + 0x24]
00ec8def: e85cab61ff  CALL 0x004e3950
00ec8df4: b9e0ed1c01  MOV ECX,0x11cede0
00ec8df9: e842c46cff  CALL 0x00595240
00ec8dfe: 50  PUSH EAX
00ec8dff: e80c4e6dff  CALL 0x0059dc10
00ec8e04: 8d68ff  LEA EBP,[EAX + -0x1]
00ec8e07: 8b442424  MOV EAX,dword ptr [ESP + 0x24]
00ec8e0b: 50  PUSH EAX
00ec8e0c: c1e51b  SHL EBP,0x1b
00ec8e0f: e8ac7290ff  CALL 0x007d00c0
00ec8e14: 8d4c2458  LEA ECX,[ESP + 0x58]
00ec8e18: 6a01  PUSH 0x1
00ec8e1a: 51  PUSH ECX
00ec8e1b: 89442460  MOV dword ptr [ESP + 0x60],EAX
00ec8e1f: 89542464  MOV dword ptr [ESP + 0x64],EDX
00ec8e23: c744246804007d2f  MOV dword ptr [ESP + 0x68],0x2f7d0004
00ec8e2b: 896c246c  MOV dword ptr [ESP + 0x6c],EBP
00ec8e2f: e86cfd91ff  CALL 0x007e8ba0
00ec8e34: 83c410  ADD ESP,0x10
00ec8e37: 85c0  TEST EAX,EAX
00ec8e39: 7410  JZ 0x00ec8e4b
00ec8e3b: 8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
00ec8e3f: 8b510c  MOV EDX,dword ptr [ECX + 0xc]
00ec8e42: 83c10c  ADD ECX,0xc
00ec8e45: 50  PUSH EAX
00ec8e46: 8b4214  MOV EAX,dword ptr [EDX + 0x14]
00ec8e49: ffd0  CALL EAX
00ec8e4b: 8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00ec8e4f: 8b442420  MOV EAX,dword ptr [ESP + 0x20]
00ec8e53: 2bc8  SUB ECX,EAX
00ec8e55: 83e1fe  AND ECX,0xfffffffe
00ec8e58: 83f902  CMP ECX,0x2
00ec8e5b: 7e0d  JLE 0x00ec8e6a
00ec8e5d: 85c0  TEST EAX,EAX
00ec8e5f: 7409  JZ 0x00ec8e6a
00ec8e61: 50  PUSH EAX
00ec8e62: e879b661ff  CALL 0x004e44e0
00ec8e67: 83c404  ADD ESP,0x4
00ec8e6a: 80bef802000000  CMP byte ptr [ESI + 0x2f8],0x0
00ec8e71: 0f859d010000  JNZ 0x00ec9014
00ec8e77: 8b17  MOV EDX,dword ptr [EDI]
00ec8e79: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8e7f: 6a01  PUSH 0x1
00ec8e81: 680041eb06  PUSH 0x6eb4100
00ec8e86: 8bcf  MOV ECX,EDI
00ec8e88: ffd0  CALL EAX
00ec8e8a: 8b17  MOV EDX,dword ptr [EDI]
00ec8e8c: 6a01  PUSH 0x1
00ec8e8e: 898664020000  MOV dword ptr [ESI + 0x264],EAX
00ec8e94: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8e9a: 680141eb06  PUSH 0x6eb4101
00ec8e9f: 8bcf  MOV ECX,EDI
00ec8ea1: ffd0  CALL EAX
00ec8ea3: 8b10  MOV EDX,dword ptr [EAX]
00ec8ea5: 8bc8  MOV ECX,EAX
00ec8ea7: 8b4234  MOV EAX,dword ptr [EDX + 0x34]
00ec8eaa: ffd0  CALL EAX
00ec8eac: f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00ec8eb1: f30f5c00  SUBSS XMM0,dword ptr [EAX]
00ec8eb5: 8bce  MOV ECX,ESI
00ec8eb7: f30f118660020000  MOVSS dword ptr [ESI + 0x260],XMM0
00ec8ebf: e85cebffff  CALL 0x00ec7a20
00ec8ec4: 8b17  MOV EDX,dword ptr [EDI]
00ec8ec6: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8ecc: 6a01  PUSH 0x1
00ec8ece: 680241eb06  PUSH 0x6eb4102
00ec8ed3: 8bcf  MOV ECX,EDI
00ec8ed5: ffd0  CALL EAX
00ec8ed7: 33db  XOR EBX,EBX
00ec8ed9: 3bc3  CMP EAX,EBX
00ec8edb: 7410  JZ 0x00ec8eed
00ec8edd: 8b10  MOV EDX,dword ptr [EAX]
00ec8edf: 8bc8  MOV ECX,EAX
00ec8ee1: 8b420c  MOV EAX,dword ptr [EDX + 0xc]
00ec8ee4: 68bdf4150f  PUSH 0xf15f4bd
00ec8ee9: ffd0  CALL EAX
00ec8eeb: eb02  JMP 0x00ec8eef
00ec8eed: 33c0  XOR EAX,EAX
00ec8eef: 8b17  MOV EDX,dword ptr [EDI]
00ec8ef1: 6a01  PUSH 0x1
00ec8ef3: 898668020000  MOV dword ptr [ESI + 0x268],EAX
00ec8ef9: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8eff: 680341eb06  PUSH 0x6eb4103
00ec8f04: 8bcf  MOV ECX,EDI
00ec8f06: ffd0  CALL EAX
00ec8f08: 3bc3  CMP EAX,EBX
00ec8f0a: 7410  JZ 0x00ec8f1c
00ec8f0c: 8b10  MOV EDX,dword ptr [EAX]
00ec8f0e: 8bc8  MOV ECX,EAX
00ec8f10: 8b420c  MOV EAX,dword ptr [EDX + 0xc]
00ec8f13: 68bdf4150f  PUSH 0xf15f4bd
00ec8f18: ffd0  CALL EAX
00ec8f1a: eb02  JMP 0x00ec8f1e
00ec8f1c: 33c0  XOR EAX,EAX
00ec8f1e: 8b8e68020000  MOV ECX,dword ptr [ESI + 0x268]
00ec8f24: 89866c020000  MOV dword ptr [ESI + 0x26c],EAX
00ec8f2a: 8b11  MOV EDX,dword ptr [ECX]
00ec8f2c: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
00ec8f2f: ffd0  CALL EAX
00ec8f31: 50  PUSH EAX
00ec8f32: e8b9e7ffff  CALL 0x00ec76f0
00ec8f37: 8b8e6c020000  MOV ECX,dword ptr [ESI + 0x26c]
00ec8f3d: 898674020000  MOV dword ptr [ESI + 0x274],EAX
00ec8f43: 8b11  MOV EDX,dword ptr [ECX]
00ec8f45: 8b4210  MOV EAX,dword ptr [EDX + 0x10]
00ec8f48: 83c404  ADD ESP,0x4
00ec8f4b: ffd0  CALL EAX
00ec8f4d: 50  PUSH EAX
00ec8f4e: e89de7ffff  CALL 0x00ec76f0
00ec8f53: 898678020000  MOV dword ptr [ESI + 0x278],EAX
00ec8f59: 8b8674020000  MOV EAX,dword ptr [ESI + 0x274]
00ec8f5f: 8b5010  MOV EDX,dword ptr [EAX + 0x10]
00ec8f62: 8d4810  LEA ECX,[EAX + 0x10]
00ec8f65: 8b4214  MOV EAX,dword ptr [EDX + 0x14]
00ec8f68: 83c404  ADD ESP,0x4
00ec8f6b: ffd0  CALL EAX
00ec8f6d: d99e54020000  FSTP float ptr [ESI + 0x254]
00ec8f73: 8b17  MOV EDX,dword ptr [EDI]
00ec8f75: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8f7b: 6a01  PUSH 0x1
00ec8f7d: 680441eb06  PUSH 0x6eb4104
00ec8f82: 8bcf  MOV ECX,EDI
00ec8f84: ffd0  CALL EAX
00ec8f86: 3bc3  CMP EAX,EBX
00ec8f88: 7410  JZ 0x00ec8f9a
00ec8f8a: 8b10  MOV EDX,dword ptr [EAX]
00ec8f8c: 8bc8  MOV ECX,EAX
00ec8f8e: 8b420c  MOV EAX,dword ptr [EDX + 0xc]
00ec8f91: 68bdf4150f  PUSH 0xf15f4bd
00ec8f96: ffd0  CALL EAX
00ec8f98: eb02  JMP 0x00ec8f9c
00ec8f9a: 33c0  XOR EAX,EAX
00ec8f9c: 8b17  MOV EDX,dword ptr [EDI]
00ec8f9e: 6a01  PUSH 0x1
00ec8fa0: 898670020000  MOV dword ptr [ESI + 0x270],EAX
00ec8fa6: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec8fac: 683041eb06  PUSH 0x6eb4130
00ec8fb1: 8bcf  MOV ECX,EDI
00ec8fb3: ffd0  CALL EAX
00ec8fb5: 8bce  MOV ECX,ESI
00ec8fb7: 89867c020000  MOV dword ptr [ESI + 0x27c],EAX
00ec8fbd: e83ef7ffff  CALL 0x00ec8700
00ec8fc2: 83beb802000001  CMP dword ptr [ESI + 0x2b8],0x1
00ec8fc9: 899ea8020000  MOV dword ptr [ESI + 0x2a8],EBX
00ec8fcf: 899eac020000  MOV dword ptr [ESI + 0x2ac],EBX
00ec8fd5: 899eb0020000  MOV dword ptr [ESI + 0x2b0],EBX
00ec8fdb: 899eb4020000  MOV dword ptr [ESI + 0x2b4],EBX
00ec8fe1: 7510  JNZ 0x00ec8ff3
00ec8fe3: 0f31  RDTSC
00ec8fe5: 8986a8020000  MOV dword ptr [ESI + 0x2a8],EAX
00ec8feb: 8996ac020000  MOV dword ptr [ESI + 0x2ac],EDX
00ec8ff1: eb70  JMP 0x00ec9063
00ec8ff3: 8d4c2418  LEA ECX,[ESP + 0x18]
00ec8ff7: 51  PUSH ECX
00ec8ff8: ff15bc63f900  CALL dword ptr [0x00f963bc]
00ec8ffe: 8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ec9002: 8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00ec9006: 8996a8020000  MOV dword ptr [ESI + 0x2a8],EDX
00ec900c: 8986ac020000  MOV dword ptr [ESI + 0x2ac],EAX
00ec9012: eb4f  JMP 0x00ec9063
00ec9014: 8b17  MOV EDX,dword ptr [EDI]
00ec9016: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec901c: 6a01  PUSH 0x1
00ec901e: 684041eb06  PUSH 0x6eb4140
00ec9023: 8bcf  MOV ECX,EDI
00ec9025: ffd0  CALL EAX
00ec9027: 8b17  MOV EDX,dword ptr [EDI]
00ec9029: 6a01  PUSH 0x1
00ec902b: 898664020000  MOV dword ptr [ESI + 0x264],EAX
00ec9031: 8b82f4000000  MOV EAX,dword ptr [EDX + 0xf4]
00ec9037: 684141eb06  PUSH 0x6eb4141
00ec903c: 8bcf  MOV ECX,EDI
00ec903e: ffd0  CALL EAX
00ec9040: 8b10  MOV EDX,dword ptr [EAX]
00ec9042: 8bc8  MOV ECX,EAX
00ec9044: 8b4234  MOV EAX,dword ptr [EDX + 0x34]
00ec9047: ffd0  CALL EAX
00ec9049: f30f104008  MOVSS XMM0,dword ptr [EAX + 0x8]
00ec904e: f30f5c00  SUBSS XMM0,dword ptr [EAX]
00ec9052: 8bce  MOV ECX,ESI
00ec9054: f30f118660020000  MOVSS dword ptr [ESI + 0x260],XMM0
00ec905c: e8bfe9ffff  CALL 0x00ec7a20
00ec9061: 33db  XOR EBX,EBX
00ec9063: e8b8c863ff  CALL 0x00505920
00ec9068: 3bc3  CMP EAX,EBX
00ec906a: 740c  JZ 0x00ec9078
00ec906c: 6803100000  PUSH 0x1003
00ec9071: 8bc8  MOV ECX,EAX
00ec9073: e868c963ff  CALL 0x005059e0
00ec9078: 8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00ec907c: 8b442430  MOV EAX,dword ptr [ESP + 0x30]
00ec9080: 2bc8  SUB ECX,EAX
00ec9082: 83e1fe  AND ECX,0xfffffffe
00ec9085: 83f902  CMP ECX,0x2
00ec9088: 7e0d  JLE 0x00ec9097
00ec908a: 3bc3  CMP EAX,EBX
00ec908c: 7409  JZ 0x00ec9097
00ec908e: 50  PUSH EAX
00ec908f: e84cb461ff  CALL 0x004e44e0
00ec9094: 83c404  ADD ESP,0x4
00ec9097: 5f  POP EDI
00ec9098: 5e  POP ESI
00ec9099: 5d  POP EBP
00ec909a: b001  MOV AL,0x1
00ec909c: 5b  POP EBX
00ec909d: 83c450  ADD ESP,0x50
00ec90a0: c3  RET
Total instructions: 431; owned bytes: 1435

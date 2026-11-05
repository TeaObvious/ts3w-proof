# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101ffbb0..101ffeeb; CAW_LoadTerrainDataForMode
101ffbb0: 55  PUSH EBP
101ffbb1: 8bec  MOV EBP,ESP
101ffbb3: 83e4f0  AND ESP,0xfffffff0
101ffbb6: 81ec94000000  SUB ESP,0x94
101ffbbc: 53  PUSH EBX
101ffbbd: 8b5d10  MOV EBX,dword ptr [EBP + 0x10]
101ffbc0: 56  PUSH ESI
101ffbc1: 57  PUSH EDI
101ffbc2: 8bf9  MOV EDI,ECX
101ffbc4: 8b4f08  MOV ECX,dword ptr [EDI + 0x8]
101ffbc7: 33f6  XOR ESI,ESI
101ffbc9: 3bce  CMP ECX,ESI
101ffbcb: 885f1c  MOV byte ptr [EDI + 0x1c],BL
101ffbce: c6471f00  MOV byte ptr [EDI + 0x1f],0x0
101ffbd2: 7427  JZ 0x101ffbfb
101ffbd4: 8d4104  LEA EAX,[ECX + 0x4]
101ffbd7: 8bd0  MOV EDX,EAX
101ffbd9: 83ceff  OR ESI,0xffffffff
101ffbdc: f00fc132  XADD.LOCK dword ptr [EDX],ESI
101ffbe0: 4e  DEC ESI
101ffbe1: 7513  JNZ 0x101ffbf6
101ffbe3: ba01000000  MOV EDX,0x1
101ffbe8: 8710  XCHG dword ptr [EAX],EDX
101ffbea: 85c9  TEST ECX,ECX
101ffbec: 7408  JZ 0x101ffbf6
101ffbee: 8b01  MOV EAX,dword ptr [ECX]
101ffbf0: 8b10  MOV EDX,dword ptr [EAX]
101ffbf2: 6a01  PUSH 0x1
101ffbf4: ffd2  CALL EDX
101ffbf6: 33f6  XOR ESI,ESI
101ffbf8: 897708  MOV dword ptr [EDI + 0x8],ESI
101ffbfb: 8b4508  MOV EAX,dword ptr [EBP + 0x8]
101ffbfe: c644241300  MOV byte ptr [ESP + 0x13],0x0
101ffc03: 89442414  MOV dword ptr [ESP + 0x14],EAX
101ffc07: e8c4546e00  CALL 0x108e50d0
101ffc0c: 84db  TEST BL,BL
101ffc0e: 0f849b000000  JZ 0x101ffcaf
101ffc14: 8b10  MOV EDX,dword ptr [EAX]
101ffc16: 8b5244  MOV EDX,dword ptr [EDX + 0x44]
101ffc19: 8d4c2468  LEA ECX,[ESP + 0x68]
101ffc1d: 51  PUSH ECX
101ffc1e: 8bc8  MOV ECX,EAX
101ffc20: c744246c01000000  MOV dword ptr [ESP + 0x6c],0x1
101ffc28: 89742470  MOV dword ptr [ESP + 0x70],ESI
101ffc2c: c74424740d666390  MOV dword ptr [ESP + 0x74],0x9063660d
101ffc34: 89742478  MOV dword ptr [ESP + 0x78],ESI
101ffc38: ffd2  CALL EDX
101ffc3a: 3bc6  CMP EAX,ESI
101ffc3c: 7471  JZ 0x101ffcaf
101ffc3e: 8b10  MOV EDX,dword ptr [EAX]
101ffc40: 89442414  MOV dword ptr [ESP + 0x14],EAX
101ffc44: 8bc8  MOV ECX,EAX
101ffc46: 8b420c  MOV EAX,dword ptr [EDX + 0xc]
101ffc49: ffd0  CALL EAX
101ffc4b: 3d6002db03  CMP EAX,0x3db0260
101ffc50: 755d  JNZ 0x101ffcaf
101ffc52: 8b750c  MOV ESI,dword ptr [EBP + 0xc]
101ffc55: 8b4d08  MOV ECX,dword ptr [EBP + 0x8]
101ffc58: 56  PUSH ESI
101ffc59: 51  PUSH ECX
101ffc5a: 8d8c2480000000  LEA ECX,[ESP + 0x80]
101ffc61: e82aac3c00  CALL 0x105ca890
101ffc66: 680d666390  PUSH 0x9063660d
101ffc6b: 8d4c247c  LEA ECX,[ESP + 0x7c]
101ffc6f: e85cc63c00  CALL 0x105cc2d0
101ffc74: 84c0  TEST AL,AL
101ffc76: 742c  JZ 0x101ffca4
101ffc78: 8d542420  LEA EDX,[ESP + 0x20]
101ffc7c: 52  PUSH EDX
101ffc7d: 8d4c247c  LEA ECX,[ESP + 0x7c]
101ffc81: c7442424ffff0000  MOV dword ptr [ESP + 0x24],0xffff
101ffc89: e8820cf1ff  CALL 0x10110910
101ffc8e: 8d4c2478  LEA ECX,[ESP + 0x78]
101ffc92: e849ad3c00  CALL 0x105ca9e0
101ffc97: 66837c24200b  CMP word ptr [ESP + 0x20],0xb
101ffc9d: 7305  JNC 0x101ffca4
101ffc9f: c644241301  MOV byte ptr [ESP + 0x13],0x1
101ffca4: 8d4c2478  LEA ECX,[ESP + 0x78]
101ffca8: e853ac3c00  CALL 0x105ca900
101ffcad: eb03  JMP 0x101ffcb2
101ffcaf: 8b750c  MOV ESI,dword ptr [EBP + 0xc]
101ffcb2: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
101ffcb6: 8d442418  LEA EAX,[ESP + 0x18]
101ffcba: 50  PUSH EAX
101ffcbb: 53  PUSH EBX
101ffcbc: 56  PUSH ESI
101ffcbd: 51  PUSH ECX
101ffcbe: 8bcf  MOV ECX,EDI
101ffcc0: e8bbeeffff  CALL 0x101feb80
101ffcc5: 84c0  TEST AL,AL
101ffcc7: 0f8482010000  JZ 0x101ffe4f
101ffccd: 8b5508  MOV EDX,dword ptr [EBP + 0x8]
101ffcd0: 56  PUSH ESI
101ffcd1: 52  PUSH EDX
101ffcd2: 8d4c2430  LEA ECX,[ESP + 0x30]
101ffcd6: e8b5ab3c00  CALL 0x105ca890
101ffcdb: 84db  TEST BL,BL
101ffcdd: 0f84c6010000  JZ 0x101ffea9
101ffce3: e8e8536e00  CALL 0x108e50d0
101ffce8: 8bb7ac000000  MOV ESI,dword ptr [EDI + 0xac]
101ffcee: 8bd8  MOV EBX,EAX
101ffcf0: 8b87b0000000  MOV EAX,dword ptr [EDI + 0xb0]
101ffcf6: 3bf0  CMP ESI,EAX
101ffcf8: 8944241c  MOV dword ptr [ESP + 0x1c],EAX
101ffcfc: 0f84fa000000  JZ 0x101ffdfc
101ffd02: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
101ffd05: c1e010  SHL EAX,0x10
101ffd08: 0306  ADD EAX,dword ptr [ESI]
101ffd0a: 6a00  PUSH 0x0
101ffd0c: 6a00  PUSH 0x0
101ffd0e: 99  CDQ
101ffd0f: 6a00  PUSH 0x0
101ffd11: 6a00  PUSH 0x0
101ffd13: 89442450  MOV dword ptr [ESP + 0x50],EAX
101ffd17: 8b03  MOV EAX,dword ptr [EBX]
101ffd19: 8b4018  MOV EAX,dword ptr [EAX + 0x18]
101ffd1c: 8d4c2424  LEA ECX,[ESP + 0x24]
101ffd20: 89542454  MOV dword ptr [ESP + 0x54],EDX
101ffd24: 51  PUSH ECX
101ffd25: 8d542454  LEA EDX,[ESP + 0x54]
101ffd29: 52  PUSH EDX
101ffd2a: 8bcb  MOV ECX,EBX
101ffd2c: c7442460662b3b03  MOV dword ptr [ESP + 0x60],0x33b2b66
101ffd34: c744246401000000  MOV dword ptr [ESP + 0x64],0x1
101ffd3c: c744242c00000000  MOV dword ptr [ESP + 0x2c],0x0
101ffd44: ffd0  CALL EAX
101ffd46: 84c0  TEST AL,AL
101ffd48: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
101ffd4c: 0f84e9000000  JZ 0x101ffe3b
101ffd52: 85c9  TEST ECX,ECX
101ffd54: 0f8495000000  JZ 0x101ffdef
101ffd5a: 8b11  MOV EDX,dword ptr [ECX]
101ffd5c: 8b420c  MOV EAX,dword ptr [EDX + 0xc]
101ffd5f: 68662b3b03  PUSH 0x33b2b66
101ffd64: ffd0  CALL EAX
101ffd66: 85c0  TEST EAX,EAX
101ffd68: 7476  JZ 0x101ffde0
101ffd6a: f30f10058ce1aa10  MOVSS XMM0,dword ptr [0x10aae18c]
101ffd72: db4734  FILD dword ptr [EDI + 0x34]
101ffd75: 8b4f34  MOV ECX,dword ptr [EDI + 0x34]
101ffd78: 85c9  TEST ECX,ECX
101ffd7a: f30f1144245c  MOVSS dword ptr [ESP + 0x5c],XMM0
101ffd80: f30f10058ce1aa10  MOVSS XMM0,dword ptr [0x10aae18c]
101ffd88: f30f11442458  MOVSS dword ptr [ESP + 0x58],XMM0
101ffd8e: 7d06  JGE 0x101ffd96
101ffd90: d80590e1aa10  FADD float ptr [0x10aae190]
101ffd96: d80dec10b310  FMUL float ptr [0x10b310ec]
101ffd9c: 8d942490000000  LEA EDX,[ESP + 0x90]
101ffda3: 52  PUSH EDX
101ffda4: 6a00  PUSH 0x0
101ffda6: 50  PUSH EAX
101ffda7: d95c2430  FSTP float ptr [ESP + 0x30]
101ffdab: f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
101ffdb1: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
101ffdb4: 8b0e  MOV ECX,dword ptr [ESI]
101ffdb6: f30f11442460  MOVSS dword ptr [ESP + 0x60],XMM0
101ffdbc: f30f10058ce1aa10  MOVSS XMM0,dword ptr [0x10aae18c]
101ffdc4: 50  PUSH EAX
101ffdc5: f30f11442460  MOVSS dword ptr [ESP + 0x60],XMM0
101ffdcb: 0f28442460  MOVAPS XMM0,xmmword ptr [ESP + 0x60]
101ffdd0: 51  PUSH ECX
101ffdd1: 8bcf  MOV ECX,EDI
101ffdd3: 0f298424a4000000  MOVAPS xmmword ptr [ESP + 0xa4],XMM0
101ffddb: e8a0aeffff  CALL 0x101fac80
101ffde0: 8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
101ffde4: 85c9  TEST ECX,ECX
101ffde6: 7407  JZ 0x101ffdef
101ffde8: 8b11  MOV EDX,dword ptr [ECX]
101ffdea: 8b4204  MOV EAX,dword ptr [EDX + 0x4]
101ffded: ffd0  CALL EAX
101ffdef: 83c670  ADD ESI,0x70
101ffdf2: 3b74241c  CMP ESI,dword ptr [ESP + 0x1c]
101ffdf6: 0f8506ffffff  JNZ 0x101ffd02
101ffdfc: 66837c24180b  CMP word ptr [ESP + 0x18],0xb
101ffe02: 7356  JNC 0x101ffe5a
101ffe04: 8b4d0c  MOV ECX,dword ptr [EBP + 0xc]
101ffe07: 8b5508  MOV EDX,dword ptr [EBP + 0x8]
101ffe0a: 51  PUSH ECX
101ffe0b: 52  PUSH EDX
101ffe0c: 8bcf  MOV ECX,EDI
101ffe0e: e85da3ffff  CALL 0x101fa170
101ffe13: 84c0  TEST AL,AL
101ffe15: 756e  JNZ 0x101ffe85
101ffe17: 6a00  PUSH 0x0
101ffe19: 8d4c242c  LEA ECX,[ESP + 0x2c]
101ffe1d: e83eab3c00  CALL 0x105ca960
101ffe22: 8d4c2428  LEA ECX,[ESP + 0x28]
101ffe26: c644243c00  MOV byte ptr [ESP + 0x3c],0x0
101ffe2b: e8d0aa3c00  CALL 0x105ca900
101ffe30: 32c0  XOR AL,AL
101ffe32: 5f  POP EDI
101ffe33: 5e  POP ESI
101ffe34: 5b  POP EBX
101ffe35: 8be5  MOV ESP,EBP
101ffe37: 5d  POP EBP
101ffe38: c20c00  RET 0xc
101ffe3b: 85c9  TEST ECX,ECX
101ffe3d: 7407  JZ 0x101ffe46
101ffe3f: 8b11  MOV EDX,dword ptr [ECX]
101ffe41: 8b4204  MOV EAX,dword ptr [EDX + 0x4]
101ffe44: ffd0  CALL EAX
101ffe46: 8d4c2428  LEA ECX,[ESP + 0x28]
101ffe4a: e8b1aa3c00  CALL 0x105ca900
101ffe4f: 32c0  XOR AL,AL
101ffe51: 5f  POP EDI
101ffe52: 5e  POP ESI
101ffe53: 5b  POP EBX
101ffe54: 8be5  MOV ESP,EBP
101ffe56: 5d  POP EBP
101ffe57: c20c00  RET 0xc
101ffe5a: 8b5d0c  MOV EBX,dword ptr [EBP + 0xc]
101ffe5d: 8b7508  MOV ESI,dword ptr [EBP + 0x8]
101ffe60: 53  PUSH EBX
101ffe61: 56  PUSH ESI
101ffe62: 8bcf  MOV ECX,EDI
101ffe64: e867d2ffff  CALL 0x101fd0d0
101ffe69: 84c0  TEST AL,AL
101ffe6b: 74d9  JZ 0x101ffe46
101ffe6d: 807c241300  CMP byte ptr [ESP + 0x13],0x0
101ffe72: 740d  JZ 0x101ffe81
101ffe74: 53  PUSH EBX
101ffe75: 56  PUSH ESI
101ffe76: 8bcf  MOV ECX,EDI
101ffe78: e8f3a2ffff  CALL 0x101fa170
101ffe7d: 84c0  TEST AL,AL
101ffe7f: 7496  JZ 0x101ffe17
101ffe81: c6471f01  MOV byte ptr [EDI + 0x1f],0x1
101ffe85: 8d442428  LEA EAX,[ESP + 0x28]
101ffe89: 50  PUSH EAX
101ffe8a: 8bcf  MOV ECX,EDI
101ffe8c: e80fa2ffff  CALL 0x101fa0a0
101ffe91: 84c0  TEST AL,AL
101ffe93: 8d4c2428  LEA ECX,[ESP + 0x28]
101ffe97: 74b1  JZ 0x101ffe4a
101ffe99: e862aa3c00  CALL 0x105ca900
101ffe9e: b001  MOV AL,0x1
101ffea0: 5f  POP EDI
101ffea1: 5e  POP ESI
101ffea2: 5b  POP EBX
101ffea3: 8be5  MOV ESP,EBP
101ffea5: 5d  POP EBP
101ffea6: c20c00  RET 0xc
101ffea9: 8b5d08  MOV EBX,dword ptr [EBP + 0x8]
101ffeac: 6a00  PUSH 0x0
101ffeae: 56  PUSH ESI
101ffeaf: 53  PUSH EBX
101ffeb0: 8bcf  MOV ECX,EDI
101ffeb2: e819a8ffff  CALL 0x101fa6d0
101ffeb7: 84c0  TEST AL,AL
101ffeb9: 748b  JZ 0x101ffe46
101ffebb: 56  PUSH ESI
101ffebc: 53  PUSH EBX
101ffebd: 8bcf  MOV ECX,EDI
101ffebf: e8aca2ffff  CALL 0x101fa170
101ffec4: 84c0  TEST AL,AL
101ffec6: 75bd  JNZ 0x101ffe85
101ffec8: 6a00  PUSH 0x0
101ffeca: 8d4c242c  LEA ECX,[ESP + 0x2c]
101ffece: e88daa3c00  CALL 0x105ca960
101ffed3: 8d4c2428  LEA ECX,[ESP + 0x28]
101ffed7: c644243c00  MOV byte ptr [ESP + 0x3c],0x0
101ffedc: e81faa3c00  CALL 0x105ca900
101ffee1: 5f  POP EDI
101ffee2: 5e  POP ESI
101ffee3: 32c0  XOR AL,AL
101ffee5: 5b  POP EBX
101ffee6: 8be5  MOV ESP,EBP
101ffee8: 5d  POP EBP
101ffee9: c20c00  RET 0xc

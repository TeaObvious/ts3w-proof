# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101fac80..101faee5; CAW_TerrainPublishSectorCollision
101fac80: 55  PUSH EBP
101fac81: 8bec  MOV EBP,ESP
101fac83: 83e4f0  AND ESP,0xfffffff0
101fac86: 8b550c  MOV EDX,dword ptr [EBP + 0xc]
101fac89: 83ec24  SUB ESP,0x24
101fac8c: 53  PUSH EBX
101fac8d: 8bd9  MOV EBX,ECX
101fac8f: 8b4d08  MOV ECX,dword ptr [EBP + 0x8]
101fac92: 8b83cc000000  MOV EAX,dword ptr [EBX + 0xcc]
101fac98: c1f908  SAR ECX,0x8
101fac9b: 56  PUSH ESI
101fac9c: c1fa08  SAR EDX,0x8
101fac9f: 3bc8  CMP ECX,EAX
101faca1: 57  PUSH EDI
101faca2: 0f8335020000  JNC 0x101faedd
101faca8: 3b93d0000000  CMP EDX,dword ptr [EBX + 0xd0]
101facae: 0f8329020000  JNC 0x101faedd
101facb4: 0fafc2  IMUL EAX,EDX
101facb7: 03c1  ADD EAX,ECX
101facb9: 8b8bbc000000  MOV ECX,dword ptr [EBX + 0xbc]
101facbf: 8b3481  MOV ESI,dword ptr [ECX + EAX*0x4]
101facc2: 85f6  TEST ESI,ESI
101facc4: 0f8413020000  JZ 0x101faedd
101facca: 8b4e38  MOV ECX,dword ptr [ESI + 0x38]
101faccd: 85c9  TEST ECX,ECX
101faccf: 740c  JZ 0x101facdd
101facd1: e88aed2700  CALL 0x10479a60
101facd6: c7463800000000  MOV dword ptr [ESI + 0x38],0x0
101facdd: 8b7e30  MOV EDI,dword ptr [ESI + 0x30]
101face0: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
101face3: 3bcf  CMP ECX,EDI
101face5: 7420  JZ 0x101fad07
101face7: 85c9  TEST ECX,ECX
101face9: 7409  JZ 0x101facf4
101faceb: 8b11  MOV EDX,dword ptr [ECX]
101faced: 8b02  MOV EAX,dword ptr [EDX]
101facef: ffd0  CALL EAX
101facf1: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
101facf4: 85ff  TEST EDI,EDI
101facf6: 894e30  MOV dword ptr [ESI + 0x30],ECX
101facf9: 740c  JZ 0x101fad07
101facfb: 8b17  MOV EDX,dword ptr [EDI]
101facfd: 8b4204  MOV EAX,dword ptr [EDX + 0x4]
101fad00: 8bcf  MOV ECX,EDI
101fad02: ffd0  CALL EAX
101fad04: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
101fad07: 8b4634  MOV EAX,dword ptr [ESI + 0x34]
101fad0a: 8b7d14  MOV EDI,dword ptr [EBP + 0x14]
101fad0d: 3bf8  CMP EDI,EAX
101fad0f: 89442418  MOV dword ptr [ESP + 0x18],EAX
101fad13: 7426  JZ 0x101fad3b
101fad15: 85ff  TEST EDI,EDI
101fad17: 740f  JZ 0x101fad28
101fad19: 8b17  MOV EDX,dword ptr [EDI]
101fad1b: 8b02  MOV EAX,dword ptr [EDX]
101fad1d: 8bcf  MOV ECX,EDI
101fad1f: ffd0  CALL EAX
101fad21: 8b442418  MOV EAX,dword ptr [ESP + 0x18]
101fad25: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
101fad28: 85c0  TEST EAX,EAX
101fad2a: 897e34  MOV dword ptr [ESI + 0x34],EDI
101fad2d: 740c  JZ 0x101fad3b
101fad2f: 8b10  MOV EDX,dword ptr [EAX]
101fad31: 8bc8  MOV ECX,EAX
101fad33: 8b4204  MOV EAX,dword ptr [EDX + 0x4]
101fad36: ffd0  CALL EAX
101fad38: 8b4d10  MOV ECX,dword ptr [EBP + 0x10]
101fad3b: 85c9  TEST ECX,ECX
101fad3d: 0f84a4000000  JZ 0x101fade7
101fad43: f30f104e14  MOVSS XMM1,dword ptr [ESI + 0x14]
101fad48: f30f104610  MOVSS XMM0,dword ptr [ESI + 0x10]
101fad4d: 8b4d18  MOV ECX,dword ptr [EBP + 0x18]
101fad50: 6a00  PUSH 0x0
101fad52: 6a00  PUSH 0x0
101fad54: 6a00  PUSH 0x0
101fad56: 6a00  PUSH 0x0
101fad58: 686870ac10  PUSH 0x10ac7068
101fad5d: f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
101fad63: 0f57c9  XORPS XMM1,XMM1
101fad66: 6a00  PUSH 0x0
101fad68: f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
101fad6e: f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
101fad74: 0f2809  MOVAPS XMM1,xmmword ptr [ECX]
101fad77: f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
101fad7d: 0f28442438  MOVAPS XMM0,xmmword ptr [ESP + 0x38]
101fad82: 6a10  PUSH 0x10
101fad84: 0f58c1  ADDPS XMM0,XMM1
101fad87: 6a70  PUSH 0x70
101fad89: 0f294620  MOVAPS xmmword ptr [ESI + 0x20],XMM0
101fad8d: e83ee17100  CALL 0x10918ed0
101fad92: 8bd8  MOV EBX,EAX
101fad94: 83c420  ADD ESP,0x20
101fad97: 85db  TEST EBX,EBX
101fad99: 7416  JZ 0x101fadb1
101fad9b: 8bcb  MOV ECX,EBX
101fad9d: e8feed2700  CALL 0x10479ba0
101fada2: c703ec6fac10  MOV dword ptr [EBX],0x10ac6fec
101fada8: c7436000000000  MOV dword ptr [EBX + 0x60],0x0
101fadaf: eb02  JMP 0x101fadb3
101fadb1: 33db  XOR EBX,EBX
101fadb3: 8bcb  MOV ECX,EBX
101fadb5: e896ec2700  CALL 0x10479a50
101fadba: 8b5630  MOV EDX,dword ptr [ESI + 0x30]
101fadbd: 52  PUSH EDX
101fadbe: 8bcb  MOV ECX,EBX
101fadc0: e80ba72700  CALL 0x104754d0
101fadc5: 8b4334  MOV EAX,dword ptr [EBX + 0x34]
101fadc8: 250000ffff  AND EAX,0xffff0000
101fadcd: 83c001  ADD EAX,0x1
101fadd0: 894334  MOV dword ptr [EBX + 0x34],EAX
101fadd3: 0f284620  MOVAPS XMM0,xmmword ptr [ESI + 0x20]
101fadd7: 0f294310  MOVAPS xmmword ptr [EBX + 0x10],XMM0
101faddb: 895e38  MOV dword ptr [ESI + 0x38],EBX
101fadde: 5f  POP EDI
101faddf: 5e  POP ESI
101fade0: 5b  POP EBX
101fade1: 8be5  MOV ESP,EBP
101fade3: 5d  POP EBP
101fade4: c21400  RET 0x14
101fade7: 8b4b08  MOV ECX,dword ptr [EBX + 0x8]
101fadea: e8d1dae6ff  CALL 0x100688c0
101fadef: 8b4b08  MOV ECX,dword ptr [EBX + 0x8]
101fadf2: 8bf8  MOV EDI,EAX
101fadf4: 897c241c  MOV dword ptr [ESP + 0x1c],EDI
101fadf8: e8b3dae6ff  CALL 0x100688b0
101fadfd: 8b4e04  MOV ECX,dword ptr [ESI + 0x4]
101fae00: 8b16  MOV EDX,dword ptr [ESI]
101fae02: 6a00  PUSH 0x0
101fae04: 8944241c  MOV dword ptr [ESP + 0x1c],EAX
101fae08: 6a00  PUSH 0x0
101fae0a: 8bc1  MOV EAX,ECX
101fae0c: 0fafc7  IMUL EAX,EDI
101fae0f: 03442420  ADD EAX,dword ptr [ESP + 0x20]
101fae13: 6a00  PUSH 0x0
101fae15: 6a00  PUSH 0x0
101fae17: 684070ac10  PUSH 0x10ac7040
101fae1c: f30f2ac9  CVTSI2SS XMM1,ECX
101fae20: f30f2ac2  CVTSI2SS XMM0,EDX
101fae24: f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
101fae2a: 0f57c9  XORPS XMM1,XMM1
101fae2d: 6a00  PUSH 0x0
101fae2f: f30f11442444  MOVSS dword ptr [ESP + 0x44],XMM0
101fae35: f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
101fae3b: f30f11442438  MOVSS dword ptr [ESP + 0x38],XMM0
101fae41: 0f28442438  MOVAPS XMM0,xmmword ptr [ESP + 0x38]
101fae46: 6a10  PUSH 0x10
101fae48: 68a0000000  PUSH 0xa0
101fae4d: 8d3c50  LEA EDI,[EAX + EDX*0x2]
101fae50: 0f294620  MOVAPS xmmword ptr [ESI + 0x20],XMM0
101fae54: e877e07100  CALL 0x10918ed0
101fae59: 83c420  ADD ESP,0x20
101fae5c: 85c0  TEST EAX,EAX
101fae5e: 741b  JZ 0x101fae7b
101fae60: 8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
101fae64: 6801010000  PUSH 0x101
101fae69: 6801010000  PUSH 0x101
101fae6e: 51  PUSH ECX
101fae6f: 57  PUSH EDI
101fae70: 8bc8  MOV ECX,EAX
101fae72: e839f0ffff  CALL 0x101f9eb0
101fae77: 8bf8  MOV EDI,EAX
101fae79: eb02  JMP 0x101fae7d
101fae7b: 33ff  XOR EDI,EDI
101fae7d: f30f104328  MOVSS XMM0,dword ptr [EBX + 0x28]
101fae82: f30f104b24  MOVSS XMM1,dword ptr [EBX + 0x24]
101fae87: f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
101fae8d: f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
101fae93: f30f114c2424  MOVSS dword ptr [ESP + 0x24],XMM1
101fae99: f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
101fae9f: 0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
101faea4: 8d542420  LEA EDX,[ESP + 0x20]
101faea8: 52  PUSH EDX
101faea9: 8bcf  MOV ECX,EDI
101faeab: 0f29442424  MOVAPS xmmword ptr [ESP + 0x24],XMM0
101faeb0: e87b032800  CALL 0x1047b230
101faeb5: 0f284620  MOVAPS XMM0,xmmword ptr [ESI + 0x20]
101faeb9: 68ffffff7f  PUSH 0x7fffffff
101faebe: 6801010000  PUSH 0x101
101faec3: 6801010000  PUSH 0x101
101faec8: 8bcf  MOV ECX,EDI
101faeca: 0f294710  MOVAPS xmmword ptr [EDI + 0x10],XMM0
101faece: e81dec2700  CALL 0x10479af0
101faed3: 8bcf  MOV ECX,EDI
101faed5: e876eb2700  CALL 0x10479a50
101faeda: 897e38  MOV dword ptr [ESI + 0x38],EDI
101faedd: 5f  POP EDI
101faede: 5e  POP ESI
101faedf: 5b  POP EBX
101faee0: 8be5  MOV ESP,EBP
101faee2: 5d  POP EBP
101faee3: c21400  RET 0x14

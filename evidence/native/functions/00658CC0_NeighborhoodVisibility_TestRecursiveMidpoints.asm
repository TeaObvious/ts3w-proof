# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual complete Ghidra Listing function NeighborhoodVisibility_TestRecursiveMidpoints 00658cc0..00658e4f; original envelope includes explicitly marked nonowned gaps; PE envelope SHA256=1e6940055dbdb7177edef0c934b38639c6296c6db2f244fbd81561a1983ade45
; PC 1.67 original: Thirteen stack words, plain RET and caller cleanup. When half-length is strictly below 0.25, clears mask 0x40 before calling 00658830 on supplied midpoint with null reason and FLT_MAX height. Samples before comparing half-length strictly below supplied termination step. Splits each coordinate with binary32 endpoint ADDSS and MULSS 0.5; halves length through binary32 x87 store. Recurses left before right and short circuits failure. AL is the truth result on every path: recursive success writes EAX=1 and recursive failure writes EAX=0, while immediate paths preserve unrelated high bits.
00658cc0: f30f1005c8f80601  MOVSS XMM0,dword ptr [0x0106f8c8]
00658cc8: 0f2f44242c  COMISS XMM0,dword ptr [ESP + 0x2c]
00658ccd: 53  PUSH EBX
00658cce: 55  PUSH EBP
00658ccf: 56  PUSH ESI
00658cd0: 8b742410  MOV ESI,dword ptr [ESP + 0x10]
00658cd4: 57  PUSH EDI
00658cd5: 7603  JBE 0x00658cda
00658cd7: 83e6bf  AND ESI,0xffffffbf
00658cda: d90588e1fe00  FLD float ptr [0x00fee188]
00658ce0: 8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
00658ce4: 8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00658ce8: 8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
00658cec: 51  PUSH ECX
00658ced: d91c24  FSTP float ptr [ESP]
00658cf0: 6a00  PUSH 0x0
00658cf2: d944244c  FLD float ptr [ESP + 0x4c]
00658cf6: 83ec0c  SUB ESP,0xc
00658cf9: d95c2408  FSTP float ptr [ESP + 0x8]
00658cfd: d9442444  FLD float ptr [ESP + 0x44]
00658d01: d95c2404  FSTP float ptr [ESP + 0x4]
00658d05: d9442440  FLD float ptr [ESP + 0x40]
00658d09: d91c24  FSTP float ptr [ESP]
00658d0c: 57  PUSH EDI
00658d0d: 53  PUSH EBX
00658d0e: 55  PUSH EBP
00658d0f: 56  PUSH ESI
00658d10: e81bfbffff  CALL 0x00658830
00658d15: 83c424  ADD ESP,0x24
00658d18: 84c0  TEST AL,AL
00658d1a: 7505  JNZ 0x00658d21
00658d1c: 5f  POP EDI
00658d1d: 5e  POP ESI
00658d1e: 5d  POP EBP
00658d1f: 5b  POP EBX
00658d20: c3  RET
00658d21: f30f10442440  MOVSS XMM0,dword ptr [ESP + 0x40]
00658d27: 0f2f44243c  COMISS XMM0,dword ptr [ESP + 0x3c]
00658d2c: 7607  JBE 0x00658d35
00658d2e: 5f  POP EDI
00658d2f: 5e  POP ESI
00658d30: 5d  POP EBP
00658d31: b001  MOV AL,0x1
00658d33: 5b  POP EBX
00658d34: c3  RET
00658d35: d944243c  FLD float ptr [ESP + 0x3c]
00658d39: f30f104c2428  MOVSS XMM1,dword ptr [ESP + 0x28]
00658d3f: d80db4b5f900  FMUL float ptr [0x00f9b5b4]
00658d45: f30f584c2430  ADDSS XMM1,dword ptr [ESP + 0x30]
00658d4b: f30f1005b4b5f900  MOVSS XMM0,dword ptr [0x00f9b5b4]
00658d53: 83ec24  SUB ESP,0x24
00658d56: d9542460  FST float ptr [ESP + 0x60]
00658d5a: f30f59c8  MULSS XMM1,XMM0
00658d5e: d9442468  FLD float ptr [ESP + 0x68]
00658d62: d95c2420  FSTP float ptr [ESP + 0x20]
00658d66: d9442464  FLD float ptr [ESP + 0x64]
00658d6a: d95c241c  FSTP float ptr [ESP + 0x1c]
00658d6e: d95c2418  FSTP float ptr [ESP + 0x18]
00658d72: d9442454  FLD float ptr [ESP + 0x54]
00658d76: d95c2414  FSTP float ptr [ESP + 0x14]
00658d7a: d9442450  FLD float ptr [ESP + 0x50]
00658d7e: d95c2410  FSTP float ptr [ESP + 0x10]
00658d82: f30f114c240c  MOVSS dword ptr [ESP + 0xc],XMM1
00658d88: f30f104c2448  MOVSS XMM1,dword ptr [ESP + 0x48]
00658d8e: d944244c  FLD float ptr [ESP + 0x4c]
00658d92: f30f584c2450  ADDSS XMM1,dword ptr [ESP + 0x50]
00658d98: f30f59c8  MULSS XMM1,XMM0
00658d9c: f30f114c2408  MOVSS dword ptr [ESP + 0x8],XMM1
00658da2: d95c2404  FSTP float ptr [ESP + 0x4]
00658da6: d9442448  FLD float ptr [ESP + 0x48]
00658daa: d91c24  FSTP float ptr [ESP]
00658dad: 57  PUSH EDI
00658dae: 53  PUSH EBX
00658daf: 55  PUSH EBP
00658db0: 56  PUSH ESI
00658db1: e80affffff  CALL 0x00658cc0
00658db6: 83c434  ADD ESP,0x34
00658db9: 84c0  TEST AL,AL
00658dbb: 0f8488000000  JZ 0x00658e49
00658dc1: d9442444  FLD float ptr [ESP + 0x44]
00658dc5: f30f10442430  MOVSS XMM0,dword ptr [ESP + 0x30]
00658dcb: f30f58442438  ADDSS XMM0,dword ptr [ESP + 0x38]
00658dd1: f30f100db4b5f900  MOVSS XMM1,dword ptr [0x00f9b5b4]
00658dd9: 83ec24  SUB ESP,0x24
00658ddc: d95c2420  FSTP float ptr [ESP + 0x20]
00658de0: f30f59c1  MULSS XMM0,XMM1
00658de4: d9442464  FLD float ptr [ESP + 0x64]
00658de8: d95c241c  FSTP float ptr [ESP + 0x1c]
00658dec: d9442460  FLD float ptr [ESP + 0x60]
00658df0: d95c2418  FSTP float ptr [ESP + 0x18]
00658df4: d944245c  FLD float ptr [ESP + 0x5c]
00658df8: d95c2414  FSTP float ptr [ESP + 0x14]
00658dfc: d9442458  FLD float ptr [ESP + 0x58]
00658e00: d95c2410  FSTP float ptr [ESP + 0x10]
00658e04: f30f1144240c  MOVSS dword ptr [ESP + 0xc],XMM0
00658e0a: f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
00658e10: d9442454  FLD float ptr [ESP + 0x54]
00658e14: f30f58442458  ADDSS XMM0,dword ptr [ESP + 0x58]
00658e1a: f30f59c1  MULSS XMM0,XMM1
00658e1e: f30f11442408  MOVSS dword ptr [ESP + 0x8],XMM0
00658e24: d95c2404  FSTP float ptr [ESP + 0x4]
00658e28: d9442450  FLD float ptr [ESP + 0x50]
00658e2c: d91c24  FSTP float ptr [ESP]
00658e2f: 57  PUSH EDI
00658e30: 53  PUSH EBX
00658e31: 55  PUSH EBP
00658e32: 56  PUSH ESI
00658e33: e888feffff  CALL 0x00658cc0
00658e38: 83c434  ADD ESP,0x34
00658e3b: 84c0  TEST AL,AL
00658e3d: 740a  JZ 0x00658e49
00658e3f: 5f  POP EDI
00658e40: 5e  POP ESI
00658e41: 5d  POP EBP
00658e42: b801000000  MOV EAX,0x1
00658e47: 5b  POP EBX
00658e48: c3  RET
00658e49: 5f  POP EDI
00658e4a: 5e  POP ESI
00658e4b: 5d  POP EBP
00658e4c: 33c0  XOR EAX,EAX
00658e4e: 5b  POP EBX
00658e4f: c3  RET

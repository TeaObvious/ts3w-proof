# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original CAW 1.22.10 Sims3Common.dll; complete Ghidra function body 101f5c90..101f5d7c; CAW_RemapTerrainVerticesInIndexOrder
101f5c90: 83ec20  SUB ESP,0x20
101f5c93: 53  PUSH EBX
101f5c94: 55  PUSH EBP
101f5c95: 56  PUSH ESI
101f5c96: 8b742430  MOV ESI,dword ptr [ESP + 0x30]
101f5c9a: 57  PUSH EDI
101f5c9b: 8b7e04  MOV EDI,dword ptr [ESI + 0x4]
101f5c9e: 2b3e  SUB EDI,dword ptr [ESI]
101f5ca0: 8d442434  LEA EAX,[ESP + 0x34]
101f5ca4: 50  PUSH EAX
101f5ca5: c1ff03  SAR EDI,0x3
101f5ca8: 57  PUSH EDI
101f5ca9: 8d4c2428  LEA ECX,[ESP + 0x28]
101f5cad: 33ed  XOR EBP,EBP
101f5caf: c744243c886bac10  MOV dword ptr [ESP + 0x3c],0x10ac6b88
101f5cb7: e8145c4200  CALL 0x1061b8d0
101f5cbc: 3bfd  CMP EDI,EBP
101f5cbe: 760b  JBE 0x101f5ccb
101f5cc0: 8bcf  MOV ECX,EDI
101f5cc2: 8b7c2420  MOV EDI,dword ptr [ESP + 0x20]
101f5cc6: 83c8ff  OR EAX,0xffffffff
101f5cc9: f3ab  STOSD.REP ES:EDI
101f5ccb: 56  PUSH ESI
101f5ccc: 8d4c2414  LEA ECX,[ESP + 0x14]
101f5cd0: 896c2414  MOV dword ptr [ESP + 0x14],EBP
101f5cd4: 896c2418  MOV dword ptr [ESP + 0x18],EBP
101f5cd8: 896c241c  MOV dword ptr [ESP + 0x1c],EBP
101f5cdc: c7442420686bac10  MOV dword ptr [ESP + 0x20],0x10ac6b68
101f5ce4: e8c7403500  CALL 0x10549db0
101f5ce9: 8b0e  MOV ECX,dword ptr [ESI]
101f5ceb: 8b442438  MOV EAX,dword ptr [ESP + 0x38]
101f5cef: 894e04  MOV dword ptr [ESI + 0x4],ECX
101f5cf2: 8b18  MOV EBX,dword ptr [EAX]
101f5cf4: 8b4004  MOV EAX,dword ptr [EAX + 0x4]
101f5cf7: 3bd8  CMP EBX,EAX
101f5cf9: 89442434  MOV dword ptr [ESP + 0x34],EAX
101f5cfd: 7454  JZ 0x101f5d53
101f5cff: 90  NOP
101f5d00: 0fb703  MOVZX EAX,word ptr [EBX]
101f5d03: 8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
101f5d07: 0fb7c0  MOVZX EAX,AX
101f5d0a: 8b3c81  MOV EDI,dword ptr [ECX + EAX*0x4]
101f5d0d: 85ff  TEST EDI,EDI
101f5d0f: 7d36  JGE 0x101f5d47
101f5d11: 8b542410  MOV EDX,dword ptr [ESP + 0x10]
101f5d15: 8bfd  MOV EDI,EBP
101f5d17: 893c81  MOV dword ptr [ECX + EAX*0x4],EDI
101f5d1a: 8d0cc2  LEA ECX,[EDX + EAX*0x8]
101f5d1d: 8b4604  MOV EAX,dword ptr [ESI + 0x4]
101f5d20: 83c501  ADD EBP,0x1
101f5d23: 3b4608  CMP EAX,dword ptr [ESI + 0x8]
101f5d26: 7316  JNC 0x101f5d3e
101f5d28: 85c0  TEST EAX,EAX
101f5d2a: 8d5008  LEA EDX,[EAX + 0x8]
101f5d2d: 895604  MOV dword ptr [ESI + 0x4],EDX
101f5d30: 7415  JZ 0x101f5d47
101f5d32: 8b11  MOV EDX,dword ptr [ECX]
101f5d34: 8910  MOV dword ptr [EAX],EDX
101f5d36: 8b4904  MOV ECX,dword ptr [ECX + 0x4]
101f5d39: 894804  MOV dword ptr [EAX + 0x4],ECX
101f5d3c: eb09  JMP 0x101f5d47
101f5d3e: 51  PUSH ECX
101f5d3f: 50  PUSH EAX
101f5d40: 8bce  MOV ECX,ESI
101f5d42: e829feffff  CALL 0x101f5b70
101f5d47: 66893b  MOV word ptr [EBX],DI
101f5d4a: 83c302  ADD EBX,0x2
101f5d4d: 3b5c2434  CMP EBX,dword ptr [ESP + 0x34]
101f5d51: 75ad  JNZ 0x101f5d00
101f5d53: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
101f5d57: 85c0  TEST EAX,EAX
101f5d59: 5f  POP EDI
101f5d5a: 5e  POP ESI
101f5d5b: 5d  POP EBP
101f5d5c: 5b  POP EBX
101f5d5d: 7409  JZ 0x101f5d68
101f5d5f: 50  PUSH EAX
101f5d60: e82b317200  CALL 0x10918e90
101f5d65: 83c404  ADD ESP,0x4
101f5d68: 8b442410  MOV EAX,dword ptr [ESP + 0x10]
101f5d6c: 85c0  TEST EAX,EAX
101f5d6e: 7409  JZ 0x101f5d79
101f5d70: 50  PUSH EAX
101f5d71: e81a317200  CALL 0x10918e90
101f5d76: 83c404  ADD ESP,0x4
101f5d79: 83c420  ADD ESP,0x20
101f5d7c: c3  RET

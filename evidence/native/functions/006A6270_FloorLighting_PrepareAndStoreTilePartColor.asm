# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorLighting_PrepareAndStoreTilePartColor
; Owned ranges: [[006a6270, 006a63ec]]
; Actual entry PLATE: PC1.67 ECX owner plus six stack DWORD slots, RET24. Unsigned X/Z bounds select an optional physical tile. Convert incoming packed A/R/G/B bytes to float lanes, compute weighted RGB grey and mix it into all four lanes including alpha, then pass B/G/R/A to6A3F90. The seven actual scalar bit patterns are a separate original-data receipt; no guessed values or catalog lookup is inferred here. For a present tile write selector9 through6A9800 with actual signed low-byte part input, obtain current room and call6B5BC0. Full catalog reader, tile setter and callback semantics remain separate.

006a6270  83ec10  SUB ESP,0x10
006a6273  56  PUSH ESI
006a6274  57  PUSH EDI
006a6275  8bf9  MOV EDI,ECX
006a6277  8b8764020000  MOV EAX,dword ptr [EDI + 0x264]
006a627d  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
006a6281  3bc8  CMP ECX,EAX
006a6283  7204  JC 0x006a6289
006a6285  33f6  XOR ESI,ESI
006a6287  eb1e  JMP 0x006a62a7
006a6289  8b542420  MOV EDX,dword ptr [ESP + 0x20]
006a628d  3b9768020000  CMP EDX,dword ptr [EDI + 0x268]
006a6293  7204  JC 0x006a6299
006a6295  33f6  XOR ESI,ESI
006a6297  eb0e  JMP 0x006a62a7
006a6299  0fafc2  IMUL EAX,EDX
006a629c  03c1  ADD EAX,ECX
006a629e  8b8f60020000  MOV ECX,dword ptr [EDI + 0x260]
006a62a4  8b3481  MOV ESI,dword ptr [ECX + EAX*0x4]
006a62a7  8b442428  MOV EAX,dword ptr [ESP + 0x28]
006a62ab  f30f101d64e5fa00  MOVSS XMM3,dword ptr [0x00fae564]
006a62b3  8bd0  MOV EDX,EAX
006a62b5  c1ea18  SHR EDX,0x18
006a62b8  8bc8  MOV ECX,EAX
006a62ba  c1e910  SHR ECX,0x10
006a62bd  f30f2aca  CVTSI2SS XMM1,EDX
006a62c1  0fb6d1  MOVZX EDX,CL
006a62c4  8bc8  MOV ECX,EAX
006a62c6  c1e908  SHR ECX,0x8
006a62c9  f30f2ac2  CVTSI2SS XMM0,EDX
006a62cd  f30f59c3  MULSS XMM0,XMM3
006a62d1  0fb6d1  MOVZX EDX,CL
006a62d4  f30f59cb  MULSS XMM1,XMM3
006a62d8  0f28e0  MOVAPS XMM4,XMM0
006a62db  0f28f0  MOVAPS XMM6,XMM0
006a62de  f30f59354060fe00  MULSS XMM6,dword ptr [0x00fe6040]
006a62e6  0fb6c0  MOVZX EAX,AL
006a62e9  f30f2ad2  CVTSI2SS XMM2,EDX
006a62ed  f30f59d3  MULSS XMM2,XMM3
006a62f1  0f28ea  MOVAPS XMM5,XMM2
006a62f4  f30f59150c46ff00  MULSS XMM2,dword ptr [0x00ff460c]
006a62fc  0f28fa  MOVAPS XMM7,XMM2
006a62ff  f30f2ac0  CVTSI2SS XMM0,EAX
006a6303  f30f59c3  MULSS XMM0,XMM3
006a6307  0f28d6  MOVAPS XMM2,XMM6
006a630a  f30f58d7  ADDSS XMM2,XMM7
006a630e  0f28d8  MOVAPS XMM3,XMM0
006a6311  f30f591d0846ff00  MULSS XMM3,dword ptr [0x00ff4608]
006a6319  f30f58d3  ADDSS XMM2,XMM3
006a631d  f30f101d38b8fb00  MOVSS XMM3,dword ptr [0x00fbb838]
006a6325  f30f591504e5f900  MULSS XMM2,dword ptr [0x00f9e504]
006a632d  f30f59eb  MULSS XMM5,XMM3
006a6331  f30f59e3  MULSS XMM4,XMM3
006a6335  f30f59cb  MULSS XMM1,XMM3
006a6339  f30f59c3  MULSS XMM0,XMM3
006a633d  0f28da  MOVAPS XMM3,XMM2
006a6340  0f28f2  MOVAPS XMM6,XMM2
006a6343  0f28fa  MOVAPS XMM7,XMM2
006a6346  83ec10  SUB ESP,0x10
006a6349  f30f58d1  ADDSS XMM2,XMM1
006a634d  f30f11542424  MOVSS dword ptr [ESP + 0x24],XMM2
006a6353  d9442424  FLD float ptr [ESP + 0x24]
006a6357  d95c240c  FSTP float ptr [ESP + 0xc]
006a635b  f30f58fc  ADDSS XMM7,XMM4
006a635f  f30f117c2420  MOVSS dword ptr [ESP + 0x20],XMM7
006a6365  d9442420  FLD float ptr [ESP + 0x20]
006a6369  d95c2408  FSTP float ptr [ESP + 0x8]
006a636d  f30f58f5  ADDSS XMM6,XMM5
006a6371  f30f1174241c  MOVSS dword ptr [ESP + 0x1c],XMM6
006a6377  d944241c  FLD float ptr [ESP + 0x1c]
006a637b  d95c2404  FSTP float ptr [ESP + 0x4]
006a637f  f30f58d8  ADDSS XMM3,XMM0
006a6383  f30f115c2418  MOVSS dword ptr [ESP + 0x18],XMM3
006a6389  d9442418  FLD float ptr [ESP + 0x18]
006a638d  8d4c242c  LEA ECX,[ESP + 0x2c]
006a6391  d91c24  FSTP float ptr [ESP]
006a6394  e8f7dbffff  CALL 0x006a3f90
006a6399  85f6  TEST ESI,ESI
006a639b  7448  JZ 0x006a63e5
006a639d  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
006a63a1  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
006a63a5  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
006a63a9  53  PUSH EBX
006a63aa  0fbe5c2428  MOVSX EBX,byte ptr [ESP + 0x28]
006a63af  51  PUSH ECX
006a63b0  52  PUSH EDX
006a63b1  53  PUSH EBX
006a63b2  50  PUSH EAX
006a63b3  6a09  PUSH 0x9
006a63b5  8bce  MOV ECX,ESI
006a63b7  e844340000  CALL 0x006a9800
006a63bc  53  PUSH EBX
006a63bd  8bce  MOV ECX,ESI
006a63bf  e83c350000  CALL 0x006a9900
006a63c4  c644242800  MOV byte ptr [ESP + 0x28],0x0
006a63c9  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
006a63cd  51  PUSH ECX
006a63ce  8d542424  LEA EDX,[ESP + 0x24]
006a63d2  89442424  MOV dword ptr [ESP + 0x24],EAX
006a63d6  52  PUSH EDX
006a63d7  8d442414  LEA EAX,[ESP + 0x14]
006a63db  50  PUSH EAX
006a63dc  8d4f14  LEA ECX,[EDI + 0x14]
006a63df  e8dcf70000  CALL 0x006b5bc0
006a63e4  5b  POP EBX
006a63e5  5f  POP EDI
006a63e6  5e  POP ESI
006a63e7  83c410  ADD ESP,0x10
006a63ea  c21800  RET 0x18

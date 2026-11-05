# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightingTile_AssignPartitionAtlasOrigins
; Owned ranges: [[006aa650, 006aa7a0]]
; Actual entry PLATE: Static PC1.67: ECX tile, allocator pointer at stack+4, base low byte at stack+8, density low16 at stack+0C, RET12; no meaningful return/status asserted. Reads seven two-byte-spaced descriptor lanes, tests only lane0 direction bits4/6 and assigns four relative labels. ID0 stores tile-coordinate*density low16 origins. Other labels call6A9050 while cached X is0 and store low16(X+1,Y+1). Later origin-key equality is not established by equal relative labels; no nonzero/uniqueness/capacity guarantee.

006aa650  83ec3c  SUB ESP,0x3c
006aa653  33c0  XOR EAX,EAX
006aa655  38442444  CMP byte ptr [ESP + 0x44],AL
006aa659  53  PUSH EBX
006aa65a  0f95c0  SETNZ AL
006aa65d  55  PUSH EBP
006aa65e  8bd1  MOV EDX,ECX
006aa660  56  PUSH ESI
006aa661  b901010101  MOV ECX,0x1010101
006aa666  57  PUSH EDI
006aa667  8d7a48  LEA EDI,[EDX + 0x48]
006aa66a  894c2415  MOV dword ptr [ESP + 0x15],ECX
006aa66e  66894c2419  MOV word ptr [ESP + 0x19],CX
006aa673  884c241b  MOV byte ptr [ESP + 0x1b],CL
006aa677  89542410  MOV dword ptr [ESP + 0x10],EDX
006aa67b  bd01000000  MOV EBP,0x1
006aa680  8944241c  MOV dword ptr [ESP + 0x1c],EAX
006aa684  89442420  MOV dword ptr [ESP + 0x20],EAX
006aa688  89442424  MOV dword ptr [ESP + 0x24],EAX
006aa68c  89442428  MOV dword ptr [ESP + 0x28],EAX
006aa690  33c9  XOR ECX,ECX
006aa692  8bf7  MOV ESI,EDI
006aa694  8a1e  MOV BL,byte ptr [ESI]
006aa696  c0eb04  SHR BL,0x4
006aa699  80e301  AND BL,0x1
006aa69c  885c0c15  MOV byte ptr [ESP + ECX*0x1 + 0x15],BL
006aa6a0  03cd  ADD ECX,EBP
006aa6a2  83c602  ADD ESI,0x2
006aa6a5  83f907  CMP ECX,0x7
006aa6a8  72ea  JC 0x006aa694
006aa6aa  807c241500  CMP byte ptr [ESP + 0x15],0x0
006aa6af  7410  JZ 0x006aa6c1
006aa6b1  8d4801  LEA ECX,[EAX + 0x1]
006aa6b4  894c2424  MOV dword ptr [ESP + 0x24],ECX
006aa6b8  894c2420  MOV dword ptr [ESP + 0x20],ECX
006aa6bc  bd02000000  MOV EBP,0x2
006aa6c1  b901010101  MOV ECX,0x1010101
006aa6c6  894c2415  MOV dword ptr [ESP + 0x15],ECX
006aa6ca  66894c2419  MOV word ptr [ESP + 0x19],CX
006aa6cf  884c241b  MOV byte ptr [ESP + 0x1b],CL
006aa6d3  33c9  XOR ECX,ECX
006aa6d5  8bf7  MOV ESI,EDI
006aa6d7  8a1e  MOV BL,byte ptr [ESI]
006aa6d9  c0eb06  SHR BL,0x6
006aa6dc  80e301  AND BL,0x1
006aa6df  885c0c15  MOV byte ptr [ESP + ECX*0x1 + 0x15],BL
006aa6e3  83c101  ADD ECX,0x1
006aa6e6  83c602  ADD ESI,0x2
006aa6e9  83f907  CMP ECX,0x7
006aa6ec  72e9  JC 0x006aa6d7
006aa6ee  807c241500  CMP byte ptr [ESP + 0x15],0x0
006aa6f3  740a  JZ 0x006aa6ff
006aa6f5  016c2424  ADD dword ptr [ESP + 0x24],EBP
006aa6f9  03c5  ADD EAX,EBP
006aa6fb  89442428  MOV dword ptr [ESP + 0x28],EAX
006aa6ff  33c9  XOR ECX,ECX
006aa701  894c243c  MOV dword ptr [ESP + 0x3c],ECX
006aa705  894c2440  MOV dword ptr [ESP + 0x40],ECX
006aa709  894c2444  MOV dword ptr [ESP + 0x44],ECX
006aa70d  894c2448  MOV dword ptr [ESP + 0x48],ECX
006aa711  894c242c  MOV dword ptr [ESP + 0x2c],ECX
006aa715  894c2430  MOV dword ptr [ESP + 0x30],ECX
006aa719  894c2434  MOV dword ptr [ESP + 0x34],ECX
006aa71d  894c2438  MOV dword ptr [ESP + 0x38],ECX
006aa721  33db  XOR EBX,EBX
006aa723  8dba8c000000  LEA EDI,[EDX + 0x8c]
006aa729  8da42400000000  LEA ESP,[ESP]
006aa730  8b749c1c  MOV ESI,dword ptr [ESP + EBX*0x4 + 0x1c]
006aa734  3bf1  CMP ESI,ECX
006aa736  751d  JNZ 0x006aa755
006aa738  0fb77240  MOVZX ESI,word ptr [EDX + 0x40]
006aa73c  8b442458  MOV EAX,dword ptr [ESP + 0x58]
006aa740  660faff0  IMUL SI,AX
006aa744  668977fe  MOV word ptr [EDI + -0x2],SI
006aa748  0fb77244  MOVZX ESI,word ptr [EDX + 0x44]
006aa74c  660faff0  IMUL SI,AX
006aa750  668937  MOV word ptr [EDI],SI
006aa753  eb37  JMP 0x006aa78c
006aa755  394cb43c  CMP dword ptr [ESP + ESI*0x4 + 0x3c],ECX
006aa759  8d6cb43c  LEA EBP,[ESP + ESI*0x4 + 0x3c]
006aa75d  7515  JNZ 0x006aa774
006aa75f  8b4c2450  MOV ECX,dword ptr [ESP + 0x50]
006aa763  8d44b42c  LEA EAX,[ESP + ESI*0x4 + 0x2c]
006aa767  50  PUSH EAX
006aa768  55  PUSH EBP
006aa769  e8e2e8ffff  CALL 0x006a9050
006aa76e  8b542410  MOV EDX,dword ptr [ESP + 0x10]
006aa772  33c9  XOR ECX,ECX
006aa774  0fb74500  MOVZX EAX,word ptr [EBP]
006aa778  66050100  ADD AX,0x1
006aa77c  668947fe  MOV word ptr [EDI + -0x2],AX
006aa780  0fb744b42c  MOVZX EAX,word ptr [ESP + ESI*0x4 + 0x2c]
006aa785  66050100  ADD AX,0x1
006aa789  668907  MOV word ptr [EDI],AX
006aa78c  83c301  ADD EBX,0x1
006aa78f  83c714  ADD EDI,0x14
006aa792  83fb04  CMP EBX,0x4
006aa795  7299  JC 0x006aa730
006aa797  5f  POP EDI
006aa798  5e  POP ESI
006aa799  5d  POP EBP
006aa79a  5b  POP EBX
006aa79b  83c43c  ADD ESP,0x3c
006aa79e  c20c00  RET 0xc

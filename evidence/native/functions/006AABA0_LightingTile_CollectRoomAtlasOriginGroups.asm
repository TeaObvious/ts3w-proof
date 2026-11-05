# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: LightingTile_CollectRoomAtlasOriginGroups
; Owned ranges: [[006aaba0, 006aadab]]
; Actual entry PLATE: Static PC1.67: ECX tile, stack+4 room DWORD, stack+8 output vector, RET8; no semantic return asserted. Clears vector end to begin. Ascending unvisited room-owned start i, then ascending j>=i compares both UInt16 stored origin words, rejects visited, and does not repeat room-membership test. Appends48-byte origin/offset records, growing vector when required. Offset rows use live global01159B70; full sampler/global initializer and host mask-Span ABI remain separate.

006aaba0  55  PUSH EBP
006aaba1  8bec  MOV EBP,ESP
006aaba3  83e4f0  AND ESP,0xfffffff0
006aaba6  81ec94000000  SUB ESP,0x94
006aabac  8b450c  MOV EAX,dword ptr [EBP + 0xc]
006aabaf  8b10  MOV EDX,dword ptr [EAX]
006aabb1  0f57e4  XORPS XMM4,XMM4
006aabb4  f30f102d709b1501  MOVSS XMM5,dword ptr [0x01159b70]
006aabbc  53  PUSH EBX
006aabbd  56  PUSH ESI
006aabbe  33f6  XOR ESI,ESI
006aabc0  895004  MOV dword ptr [EAX + 0x4],EDX
006aabc3  57  PUSH EDI
006aabc4  ba01000000  MOV EDX,0x1
006aabc9  83c8ff  OR EAX,0xffffffff
006aabcc  8db98a000000  LEA EDI,[ECX + 0x8a]
006aabd2  89742440  MOV dword ptr [ESP + 0x40],ESI
006aabd6  89542444  MOV dword ptr [ESP + 0x44],EDX
006aabda  89742448  MOV dword ptr [ESP + 0x48],ESI
006aabde  8944244c  MOV dword ptr [ESP + 0x4c],EAX
006aabe2  89442460  MOV dword ptr [ESP + 0x60],EAX
006aabe6  89742464  MOV dword ptr [ESP + 0x64],ESI
006aabea  89542468  MOV dword ptr [ESP + 0x68],EDX
006aabee  8974246c  MOV dword ptr [ESP + 0x6c],ESI
006aabf2  c644241000  MOV byte ptr [ESP + 0x10],0x0
006aabf7  c644241100  MOV byte ptr [ESP + 0x11],0x0
006aabfc  c644241200  MOV byte ptr [ESP + 0x12],0x0
006aac01  c644241300  MOV byte ptr [ESP + 0x13],0x0
006aac06  89742414  MOV dword ptr [ESP + 0x14],ESI
006aac0a  897c2418  MOV dword ptr [ESP + 0x18],EDI
006aac0e  807c341000  CMP byte ptr [ESP + ESI*0x1 + 0x10],0x0
006aac13  0f8573010000  JNZ 0x006aad8c
006aac19  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006aac1c  3947f2  CMP dword ptr [EDI + -0xe],EAX
006aac1f  0f8567010000  JNZ 0x006aad8c
006aac25  83fe04  CMP ESI,0x4
006aac28  f30f1164242c  MOVSS dword ptr [ESP + 0x2c],XMM4
006aac2e  f30f11642428  MOVSS dword ptr [ESP + 0x28],XMM4
006aac34  f30f11642424  MOVSS dword ptr [ESP + 0x24],XMM4
006aac3a  f30f11642420  MOVSS dword ptr [ESP + 0x20],XMM4
006aac40  0f28542420  MOVAPS XMM2,xmmword ptr [ESP + 0x20]
006aac45  0f28da  MOVAPS XMM3,XMM2
006aac48  0f83db000000  JNC 0x006aad29
006aac4e  0fb70f  MOVZX ECX,word ptr [EDI]
006aac51  894c241c  MOV dword ptr [ESP + 0x1c],ECX
006aac55  8d5f02  LEA EBX,[EDI + 0x2]
006aac58  668b54241c  MOV DX,word ptr [ESP + 0x1c]
006aac5d  663b53fe  CMP DX,word ptr [EBX + -0x2]
006aac61  0f85b3000000  JNZ 0x006aad1a
006aac67  668b4702  MOV AX,word ptr [EDI + 0x2]
006aac6b  663b03  CMP AX,word ptr [EBX]
006aac6e  0f85a6000000  JNZ 0x006aad1a
006aac74  807c341000  CMP byte ptr [ESP + ESI*0x1 + 0x10],0x0
006aac79  0f859b000000  JNZ 0x006aad1a
006aac7f  8b44b460  MOV EAX,dword ptr [ESP + ESI*0x4 + 0x60]
006aac83  85c0  TEST EAX,EAX
006aac85  8b4cb440  MOV ECX,dword ptr [ESP + ESI*0x4 + 0x40]
006aac89  c644341001  MOV byte ptr [ESP + ESI*0x1 + 0x10],0x1
006aac8e  7404  JZ 0x006aac94
006aac90  8bf8  MOV EDI,EAX
006aac92  eb04  JMP 0x006aac98
006aac94  8bf9  MOV EDI,ECX
006aac96  f7df  NEG EDI
006aac98  85c9  TEST ECX,ECX
006aac9a  7404  JZ 0x006aaca0
006aac9c  8bd1  MOV EDX,ECX
006aac9e  eb04  JMP 0x006aaca4
006aaca0  8bd0  MOV EDX,EAX
006aaca2  f7da  NEG EDX
006aaca4  85c0  TEST EAX,EAX
006aaca6  f30f2aca  CVTSI2SS XMM1,EDX
006aacaa  f30f114c243c  MOVSS dword ptr [ESP + 0x3c],XMM1
006aacb0  f30f114c2438  MOVSS dword ptr [ESP + 0x38],XMM1
006aacb6  f30f114c2430  MOVSS dword ptr [ESP + 0x30],XMM1
006aacbc  f30f2af7  CVTSI2SS XMM6,EDI
006aacc0  f30f11742434  MOVSS dword ptr [ESP + 0x34],XMM6
006aacc6  0f284c2430  MOVAPS XMM1,xmmword ptr [ESP + 0x30]
006aaccb  f30f10c5  MOVSS XMM0,XMM5
006aaccf  0fc6c000  SHUFPS XMM0,XMM0,0x0
006aacd3  0f59c8  MULPS XMM1,XMM0
006aacd6  0f58ca  ADDPS XMM1,XMM2
006aacd9  0f28d1  MOVAPS XMM2,XMM1
006aacdc  8bd0  MOV EDX,EAX
006aacde  7502  JNZ 0x006aace2
006aace0  8bd1  MOV EDX,ECX
006aace2  85c9  TEST ECX,ECX
006aace4  7402  JZ 0x006aace8
006aace6  8bc1  MOV EAX,ECX
006aace8  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
006aacec  f30f2ac8  CVTSI2SS XMM1,EAX
006aacf0  f30f114c245c  MOVSS dword ptr [ESP + 0x5c],XMM1
006aacf6  f30f114c2458  MOVSS dword ptr [ESP + 0x58],XMM1
006aacfc  f30f114c2450  MOVSS dword ptr [ESP + 0x50],XMM1
006aad02  f30f2af2  CVTSI2SS XMM6,EDX
006aad06  f30f11742454  MOVSS dword ptr [ESP + 0x54],XMM6
006aad0c  0f284c2450  MOVAPS XMM1,xmmword ptr [ESP + 0x50]
006aad11  0f59c8  MULPS XMM1,XMM0
006aad14  0f58cb  ADDPS XMM1,XMM3
006aad17  0f28d9  MOVAPS XMM3,XMM1
006aad1a  83c601  ADD ESI,0x1
006aad1d  83c314  ADD EBX,0x14
006aad20  83fe04  CMP ESI,0x4
006aad23  0f822fffffff  JC 0x006aac58
006aad29  8b750c  MOV ESI,dword ptr [EBP + 0xc]
006aad2c  0fb70f  MOVZX ECX,word ptr [EDI]
006aad2f  0fb75702  MOVZX EDX,word ptr [EDI + 0x2]
006aad33  8b4604  MOV EAX,dword ptr [ESI + 0x4]
006aad36  3b4608  CMP EAX,dword ptr [ESI + 0x8]
006aad39  894c2470  MOV dword ptr [ESP + 0x70],ECX
006aad3d  89542474  MOV dword ptr [ESP + 0x74],EDX
006aad41  0f29942480000000  MOVAPS xmmword ptr [ESP + 0x80],XMM2
006aad49  0f299c2490000000  MOVAPS xmmword ptr [ESP + 0x90],XMM3
006aad51  731d  JNC 0x006aad70
006aad53  85c0  TEST EAX,EAX
006aad55  8d5830  LEA EBX,[EAX + 0x30]
006aad58  895e04  MOV dword ptr [ESI + 0x4],EBX
006aad5b  8b742414  MOV ESI,dword ptr [ESP + 0x14]
006aad5f  742b  JZ 0x006aad8c
006aad61  8908  MOV dword ptr [EAX],ECX
006aad63  895004  MOV dword ptr [EAX + 0x4],EDX
006aad66  0f295010  MOVAPS xmmword ptr [EAX + 0x10],XMM2
006aad6a  0f295820  MOVAPS xmmword ptr [EAX + 0x20],XMM3
006aad6e  eb1c  JMP 0x006aad8c
006aad70  8d4c2470  LEA ECX,[ESP + 0x70]
006aad74  51  PUSH ECX
006aad75  50  PUSH EAX
006aad76  8bce  MOV ECX,ESI
006aad78  e8b36fffff  CALL 0x006a1d30
006aad7d  f30f102d709b1501  MOVSS XMM5,dword ptr [0x01159b70]
006aad85  0f57e4  XORPS XMM4,XMM4
006aad88  8b742414  MOV ESI,dword ptr [ESP + 0x14]
006aad8c  83c601  ADD ESI,0x1
006aad8f  83c714  ADD EDI,0x14
006aad92  83fe04  CMP ESI,0x4
006aad95  89742414  MOV dword ptr [ESP + 0x14],ESI
006aad99  897c2418  MOV dword ptr [ESP + 0x18],EDI
006aad9d  0f826bfeffff  JC 0x006aac0e
006aada3  5f  POP EDI
006aada4  5e  POP ESI
006aada5  5b  POP EBX
006aada6  8be5  MOV ESP,EBP
006aada8  5d  POP EBP
006aada9  c20800  RET 0x8

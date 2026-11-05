# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined BasementRegion_EnumeratePerimeterLocators(char * param_1, char * param_2, char param_3, void * param_4)
Owned ranges: [[00c5cb40, 00c5cbc9] [00c5cbd0, 00c5ce0e] [00c5ce10, 00c5d1ba]]

00c5cb40  81ec98000000  SUB ESP,0x98
00c5cb46  53  PUSH EBX
00c5cb47  56  PUSH ESI
00c5cb48  8bb424a4000000  MOV ESI,dword ptr [ESP + 0xa4]
00c5cb4f  0fb64601  MOVZX EAX,byte ptr [ESI + 0x1]
00c5cb53  8a0e  MOV CL,byte ptr [ESI]
00c5cb55  8844240b  MOV byte ptr [ESP + 0xb],AL
00c5cb59  8b8424a8000000  MOV EAX,dword ptr [ESP + 0xa8]
00c5cb60  8a10  MOV DL,byte ptr [EAX]
00c5cb62  8a5801  MOV BL,byte ptr [EAX + 0x1]
00c5cb65  8a4602  MOV AL,byte ptr [ESI + 0x2]
00c5cb68  028424ac000000  ADD AL,byte ptr [ESP + 0xac]
00c5cb6f  3aca  CMP CL,DL
00c5cb71  8844240a  MOV byte ptr [ESP + 0xa],AL
00c5cb75  8a44240b  MOV AL,byte ptr [ESP + 0xb]
00c5cb79  884c2417  MOV byte ptr [ESP + 0x17],CL
00c5cb7d  88542427  MOV byte ptr [ESP + 0x27],DL
00c5cb81  7c08  JL 0x00c5cb8b
00c5cb83  3ac3  CMP AL,BL
00c5cb85  0f8d27060000  JGE 0x00c5d1b2
00c5cb8b  3aca  CMP CL,DL
00c5cb8d  55  PUSH EBP
00c5cb8e  57  PUSH EDI
00c5cb8f  0f850a010000  JNZ 0x00c5cc9f
00c5cb95  3ac3  CMP AL,BL
00c5cb97  0f8d13060000  JGE 0x00c5d1b0
00c5cb9d  0fbe6c2412  MOVSX EBP,byte ptr [ESP + 0x12]
00c5cba2  8bb424b8000000  MOV ESI,dword ptr [ESP + 0xb8]
00c5cba9  0fbec9  MOVSX ECX,CL
00c5cbac  f30f2ad1  CVTSI2SS XMM2,ECX
00c5cbb0  2ad8  SUB BL,AL
00c5cbb2  f30f11542454  MOVSS dword ptr [ESP + 0x54],XMM2
00c5cbb8  f30f11542444  MOVSS dword ptr [ESP + 0x44],XMM2
00c5cbbe  896c244c  MOV dword ptr [ESP + 0x4c],EBP
00c5cbc2  0fbec8  MOVSX ECX,AL
00c5cbc5  0fb6db  MOVZX EBX,BL
00c5cbc8  eb06  JMP 0x00c5cbd0
00c5cbca  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00c5cbd0  8d7901  LEA EDI,[ECX + 0x1]
00c5cbd3  f30f2ac1  CVTSI2SS XMM0,ECX
00c5cbd7  f30f2acf  CVTSI2SS XMM1,EDI
00c5cbdb  f30f11542438  MOVSS dword ptr [ESP + 0x38],XMM2
00c5cbe1  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00c5cbe7  896c2440  MOV dword ptr [ESP + 0x40],EBP
00c5cbeb  f30f114c2448  MOVSS dword ptr [ESP + 0x48],XMM1
00c5cbf1  d9442438  FLD float ptr [ESP + 0x38]
00c5cbf5  db5c2450  FISTP dword ptr [ESP + 0x50]
00c5cbf9  0fb6542450  MOVZX EDX,byte ptr [ESP + 0x50]
00c5cbfe  88542414  MOV byte ptr [ESP + 0x14],DL
00c5cc02  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00c5cc08  d9442434  FLD float ptr [ESP + 0x34]
00c5cc0c  db5c2428  FISTP dword ptr [ESP + 0x28]
00c5cc10  0fb6442428  MOVZX EAX,byte ptr [ESP + 0x28]
00c5cc15  0fb64c2440  MOVZX ECX,byte ptr [ESP + 0x40]
00c5cc1a  88442415  MOV byte ptr [ESP + 0x15],AL
00c5cc1e  884c2416  MOV byte ptr [ESP + 0x16],CL
00c5cc22  d9442444  FLD float ptr [ESP + 0x44]
00c5cc26  db5c2420  FISTP dword ptr [ESP + 0x20]
00c5cc2a  0fb6542420  MOVZX EDX,byte ptr [ESP + 0x20]
00c5cc2f  88542417  MOV byte ptr [ESP + 0x17],DL
00c5cc33  f30f114c2430  MOVSS dword ptr [ESP + 0x30],XMM1
00c5cc39  d9442430  FLD float ptr [ESP + 0x30]
00c5cc3d  db5c2424  FISTP dword ptr [ESP + 0x24]
00c5cc41  0fb6442424  MOVZX EAX,byte ptr [ESP + 0x24]
00c5cc46  0fb64c244c  MOVZX ECX,byte ptr [ESP + 0x4c]
00c5cc4b  88442418  MOV byte ptr [ESP + 0x18],AL
00c5cc4f  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5cc52  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5cc55  884c2419  MOV byte ptr [ESP + 0x19],CL
00c5cc59  731b  JNC 0x00c5cc76
00c5cc5b  85c0  TEST EAX,EAX
00c5cc5d  8d5006  LEA EDX,[EAX + 0x6]
00c5cc60  895604  MOV dword ptr [ESI + 0x4],EDX
00c5cc63  7424  JZ 0x00c5cc89
00c5cc65  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00c5cc69  668b542418  MOV DX,word ptr [ESP + 0x18]
00c5cc6e  8908  MOV dword ptr [EAX],ECX
00c5cc70  66895004  MOV word ptr [EAX + 0x4],DX
00c5cc74  eb13  JMP 0x00c5cc89
00c5cc76  8d4c2414  LEA ECX,[ESP + 0x14]
00c5cc7a  51  PUSH ECX
00c5cc7b  50  PUSH EAX
00c5cc7c  8bce  MOV ECX,ESI
00c5cc7e  e87dece8ff  CALL 0x00aeb900
00c5cc83  f30f10542454  MOVSS XMM2,dword ptr [ESP + 0x54]
00c5cc89  83eb01  SUB EBX,0x1
00c5cc8c  8bcf  MOV ECX,EDI
00c5cc8e  0f853cffffff  JNZ 0x00c5cbd0
00c5cc94  5f  POP EDI
00c5cc95  5d  POP EBP
00c5cc96  5e  POP ESI
00c5cc97  5b  POP EBX
00c5cc98  81c498000000  ADD ESP,0x98
00c5cc9e  c3  RET
00c5cc9f  3ac3  CMP AL,BL
00c5cca1  0f8502010000  JNZ 0x00c5cda9
00c5cca7  3aca  CMP CL,DL
00c5cca9  0f8d01050000  JGE 0x00c5d1b0
00c5ccaf  0fbe6c2412  MOVSX EBP,byte ptr [ESP + 0x12]
00c5ccb4  8bb424b8000000  MOV ESI,dword ptr [ESP + 0xb8]
00c5ccbb  0fbec0  MOVSX EAX,AL
00c5ccbe  f30f2ac0  CVTSI2SS XMM0,EAX
00c5ccc2  2ad1  SUB DL,CL
00c5ccc4  f30f11442454  MOVSS dword ptr [ESP + 0x54],XMM0
00c5ccca  f30f11442448  MOVSS dword ptr [ESP + 0x48],XMM0
00c5ccd0  896c244c  MOV dword ptr [ESP + 0x4c],EBP
00c5ccd4  f30f11442430  MOVSS dword ptr [ESP + 0x30],XMM0
00c5ccda  0fbec1  MOVSX EAX,CL
00c5ccdd  0fb6da  MOVZX EBX,DL
00c5cce0  f30f2ac8  CVTSI2SS XMM1,EAX
00c5cce4  8d7801  LEA EDI,[EAX + 0x1]
00c5cce7  f30f114c2438  MOVSS dword ptr [ESP + 0x38],XMM1
00c5cced  f30f2acf  CVTSI2SS XMM1,EDI
00c5ccf1  f30f1144243c  MOVSS dword ptr [ESP + 0x3c],XMM0
00c5ccf7  896c2440  MOV dword ptr [ESP + 0x40],EBP
00c5ccfb  f30f114c2444  MOVSS dword ptr [ESP + 0x44],XMM1
00c5cd01  d9442438  FLD float ptr [ESP + 0x38]
00c5cd05  db5c2424  FISTP dword ptr [ESP + 0x24]
00c5cd09  0fb64c2424  MOVZX ECX,byte ptr [ESP + 0x24]
00c5cd0e  884c2414  MOV byte ptr [ESP + 0x14],CL
00c5cd12  f30f11442434  MOVSS dword ptr [ESP + 0x34],XMM0
00c5cd18  d9442434  FLD float ptr [ESP + 0x34]
00c5cd1c  db5c2420  FISTP dword ptr [ESP + 0x20]
00c5cd20  0fb6542420  MOVZX EDX,byte ptr [ESP + 0x20]
00c5cd25  0fb6442440  MOVZX EAX,byte ptr [ESP + 0x40]
00c5cd2a  88542415  MOV byte ptr [ESP + 0x15],DL
00c5cd2e  88442416  MOV byte ptr [ESP + 0x16],AL
00c5cd32  d9442444  FLD float ptr [ESP + 0x44]
00c5cd36  db5c2428  FISTP dword ptr [ESP + 0x28]
00c5cd3a  0fb64c2428  MOVZX ECX,byte ptr [ESP + 0x28]
00c5cd3f  884c2417  MOV byte ptr [ESP + 0x17],CL
00c5cd43  d9442430  FLD float ptr [ESP + 0x30]
00c5cd47  db5c2450  FISTP dword ptr [ESP + 0x50]
00c5cd4b  0fb644244c  MOVZX EAX,byte ptr [ESP + 0x4c]
00c5cd50  0fb6542450  MOVZX EDX,byte ptr [ESP + 0x50]
00c5cd55  88442419  MOV byte ptr [ESP + 0x19],AL
00c5cd59  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5cd5c  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5cd5f  88542418  MOV byte ptr [ESP + 0x18],DL
00c5cd63  731b  JNC 0x00c5cd80
00c5cd65  85c0  TEST EAX,EAX
00c5cd67  8d4806  LEA ECX,[EAX + 0x6]
00c5cd6a  894e04  MOV dword ptr [ESI + 0x4],ECX
00c5cd6d  7424  JZ 0x00c5cd93
00c5cd6f  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c5cd73  668b4c2418  MOV CX,word ptr [ESP + 0x18]
00c5cd78  8910  MOV dword ptr [EAX],EDX
00c5cd7a  66894804  MOV word ptr [EAX + 0x4],CX
00c5cd7e  eb13  JMP 0x00c5cd93
00c5cd80  8d542414  LEA EDX,[ESP + 0x14]
00c5cd84  52  PUSH EDX
00c5cd85  50  PUSH EAX
00c5cd86  8bce  MOV ECX,ESI
00c5cd88  e873ebe8ff  CALL 0x00aeb900
00c5cd8d  f30f10442454  MOVSS XMM0,dword ptr [ESP + 0x54]
00c5cd93  83eb01  SUB EBX,0x1
00c5cd96  8bc7  MOV EAX,EDI
00c5cd98  0f8542ffffff  JNZ 0x00c5cce0
00c5cd9e  5f  POP EDI
00c5cd9f  5d  POP EBP
00c5cda0  5e  POP ESI
00c5cda1  5b  POP EBX
00c5cda2  81c498000000  ADD ESP,0x98
00c5cda8  c3  RET
00c5cda9  3aca  CMP CL,DL
00c5cdab  8bb424b8000000  MOV ESI,dword ptr [ESP + 0xb8]
00c5cdb2  0f8d0e020000  JGE 0x00c5cfc6
00c5cdb8  0fbe6c2412  MOVSX EBP,byte ptr [ESP + 0x12]
00c5cdbd  0fbec0  MOVSX EAX,AL
00c5cdc0  f30f2ad0  CVTSI2SS XMM2,EAX
00c5cdc4  0fbec3  MOVSX EAX,BL
00c5cdc7  f30f2ad8  CVTSI2SS XMM3,EAX
00c5cdcb  8ac2  MOV AL,DL
00c5cdcd  2ac1  SUB AL,CL
00c5cdcf  0fb6c0  MOVZX EAX,AL
00c5cdd2  0f28c2  MOVAPS XMM0,XMM2
00c5cdd5  0f28cb  MOVAPS XMM1,XMM3
00c5cdd8  f30f11542454  MOVSS dword ptr [ESP + 0x54],XMM2
00c5cdde  f30f11842484000000  MOVSS dword ptr [ESP + 0x84],XMM0
00c5cde7  f30f119c24a4000000  MOVSS dword ptr [ESP + 0xa4],XMM3
00c5cdf0  f30f114c2478  MOVSS dword ptr [ESP + 0x78],XMM1
00c5cdf6  896c247c  MOV dword ptr [ESP + 0x7c],EBP
00c5cdfa  f30f11442470  MOVSS dword ptr [ESP + 0x70],XMM0
00c5ce00  f30f114c2468  MOVSS dword ptr [ESP + 0x68],XMM1
00c5ce06  0fbef9  MOVSX EDI,CL
00c5ce09  89442434  MOV dword ptr [ESP + 0x34],EAX
00c5ce0d  eb10  JMP 0x00c5ce1f
00c5ce0f  90  .byte 90 ; NONOWNED envelope gap bytes
00c5ce10  f30f109c24a4000000  MOVSS XMM3,dword ptr [ESP + 0xa4]
00c5ce19  f30f10542454  MOVSS XMM2,dword ptr [ESP + 0x54]
00c5ce1f  f30f2ac7  CVTSI2SS XMM0,EDI
00c5ce23  83c701  ADD EDI,0x1
00c5ce26  f30f1184248c000000  MOVSS dword ptr [ESP + 0x8c],XMM0
00c5ce2f  f30f2acf  CVTSI2SS XMM1,EDI
00c5ce33  f30f11842498000000  MOVSS dword ptr [ESP + 0x98],XMM0
00c5ce3c  0f28c3  MOVAPS XMM0,XMM3
00c5ce3f  f30f11942490000000  MOVSS dword ptr [ESP + 0x90],XMM2
00c5ce48  89ac2494000000  MOV dword ptr [ESP + 0x94],EBP
00c5ce4f  897c2414  MOV dword ptr [ESP + 0x14],EDI
00c5ce53  f30f118c2480000000  MOVSS dword ptr [ESP + 0x80],XMM1
00c5ce5c  89ac2488000000  MOV dword ptr [ESP + 0x88],EBP
00c5ce63  f30f1184249c000000  MOVSS dword ptr [ESP + 0x9c],XMM0
00c5ce6c  89ac24a0000000  MOV dword ptr [ESP + 0xa0],EBP
00c5ce73  f30f114c2474  MOVSS dword ptr [ESP + 0x74],XMM1
00c5ce79  d984248c000000  FLD float ptr [ESP + 0x8c]
00c5ce80  db5c2424  FISTP dword ptr [ESP + 0x24]
00c5ce84  0fb6442424  MOVZX EAX,byte ptr [ESP + 0x24]
00c5ce89  88442444  MOV byte ptr [ESP + 0x44],AL
00c5ce8d  f30f1154246c  MOVSS dword ptr [ESP + 0x6c],XMM2
00c5ce93  d944246c  FLD float ptr [ESP + 0x6c]
00c5ce97  db5c2420  FISTP dword ptr [ESP + 0x20]
00c5ce9b  0fb6442420  MOVZX EAX,byte ptr [ESP + 0x20]
00c5cea0  88442445  MOV byte ptr [ESP + 0x45],AL
00c5cea4  0fb6842494000000  MOVZX EAX,byte ptr [ESP + 0x94]
00c5ceac  88442446  MOV byte ptr [ESP + 0x46],AL
00c5ceb0  d9842480000000  FLD float ptr [ESP + 0x80]
00c5ceb7  db5c2428  FISTP dword ptr [ESP + 0x28]
00c5cebb  0fb6442428  MOVZX EAX,byte ptr [ESP + 0x28]
00c5cec0  88442447  MOV byte ptr [ESP + 0x47],AL
00c5cec4  d9442470  FLD float ptr [ESP + 0x70]
00c5cec8  db5c2450  FISTP dword ptr [ESP + 0x50]
00c5cecc  0fb6442450  MOVZX EAX,byte ptr [ESP + 0x50]
00c5ced1  88442448  MOV byte ptr [ESP + 0x48],AL
00c5ced5  0fb6842488000000  MOVZX EAX,byte ptr [ESP + 0x88]
00c5cedd  88442449  MOV byte ptr [ESP + 0x49],AL
00c5cee1  d9842498000000  FLD float ptr [ESP + 0x98]
00c5cee8  db5c2458  FISTP dword ptr [ESP + 0x58]
00c5ceec  0fb6442458  MOVZX EAX,byte ptr [ESP + 0x58]
00c5cef1  88442438  MOV byte ptr [ESP + 0x38],AL
00c5cef5  f30f11442464  MOVSS dword ptr [ESP + 0x64],XMM0
00c5cefb  d9442464  FLD float ptr [ESP + 0x64]
00c5ceff  db5c2460  FISTP dword ptr [ESP + 0x60]
00c5cf03  0fb6442460  MOVZX EAX,byte ptr [ESP + 0x60]
00c5cf08  88442439  MOV byte ptr [ESP + 0x39],AL
00c5cf0c  0fb68424a0000000  MOVZX EAX,byte ptr [ESP + 0xa0]
00c5cf14  8844243a  MOV byte ptr [ESP + 0x3a],AL
00c5cf18  d9442474  FLD float ptr [ESP + 0x74]
00c5cf1c  db5c245c  FISTP dword ptr [ESP + 0x5c]
00c5cf20  0fb644245c  MOVZX EAX,byte ptr [ESP + 0x5c]
00c5cf25  8844243b  MOV byte ptr [ESP + 0x3b],AL
00c5cf29  d9442468  FLD float ptr [ESP + 0x68]
00c5cf2d  db5c2430  FISTP dword ptr [ESP + 0x30]
00c5cf31  0fb6442430  MOVZX EAX,byte ptr [ESP + 0x30]
00c5cf36  8844243c  MOV byte ptr [ESP + 0x3c],AL
00c5cf3a  0fb644247c  MOVZX EAX,byte ptr [ESP + 0x7c]
00c5cf3f  8844243d  MOV byte ptr [ESP + 0x3d],AL
00c5cf43  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5cf46  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5cf49  731b  JNC 0x00c5cf66
00c5cf4b  85c0  TEST EAX,EAX
00c5cf4d  8d7806  LEA EDI,[EAX + 0x6]
00c5cf50  897e04  MOV dword ptr [ESI + 0x4],EDI
00c5cf53  7426  JZ 0x00c5cf7b
00c5cf55  8b7c2444  MOV EDI,dword ptr [ESP + 0x44]
00c5cf59  8938  MOV dword ptr [EAX],EDI
00c5cf5b  668b7c2448  MOV DI,word ptr [ESP + 0x48]
00c5cf60  66897804  MOV word ptr [EAX + 0x4],DI
00c5cf64  eb15  JMP 0x00c5cf7b
00c5cf66  8d4c2444  LEA ECX,[ESP + 0x44]
00c5cf6a  51  PUSH ECX
00c5cf6b  50  PUSH EAX
00c5cf6c  8bce  MOV ECX,ESI
00c5cf6e  e88de9e8ff  CALL 0x00aeb900
00c5cf73  8a54242f  MOV DL,byte ptr [ESP + 0x2f]
00c5cf77  8a4c241f  MOV CL,byte ptr [ESP + 0x1f]
00c5cf7b  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5cf7e  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5cf81  731b  JNC 0x00c5cf9e
00c5cf83  85c0  TEST EAX,EAX
00c5cf85  8d7806  LEA EDI,[EAX + 0x6]
00c5cf88  897e04  MOV dword ptr [ESI + 0x4],EDI
00c5cf8b  7426  JZ 0x00c5cfb3
00c5cf8d  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
00c5cf91  8938  MOV dword ptr [EAX],EDI
00c5cf93  668b7c243c  MOV DI,word ptr [ESP + 0x3c]
00c5cf98  66897804  MOV word ptr [EAX + 0x4],DI
00c5cf9c  eb15  JMP 0x00c5cfb3
00c5cf9e  8d542438  LEA EDX,[ESP + 0x38]
00c5cfa2  52  PUSH EDX
00c5cfa3  50  PUSH EAX
00c5cfa4  8bce  MOV ECX,ESI
00c5cfa6  e855e9e8ff  CALL 0x00aeb900
00c5cfab  8a54242f  MOV DL,byte ptr [ESP + 0x2f]
00c5cfaf  8a4c241f  MOV CL,byte ptr [ESP + 0x1f]
00c5cfb3  836c243401  SUB dword ptr [ESP + 0x34],0x1
00c5cfb8  8b7c2414  MOV EDI,dword ptr [ESP + 0x14]
00c5cfbc  0f854efeffff  JNZ 0x00c5ce10
00c5cfc2  8a442413  MOV AL,byte ptr [ESP + 0x13]
00c5cfc6  3ac3  CMP AL,BL
00c5cfc8  0f8de2010000  JGE 0x00c5d1b0
00c5cfce  0fbe7c2412  MOVSX EDI,byte ptr [ESP + 0x12]
00c5cfd3  0fbec9  MOVSX ECX,CL
00c5cfd6  0fbed2  MOVSX EDX,DL
00c5cfd9  f30f2ac1  CVTSI2SS XMM0,ECX
00c5cfdd  f30f2ae2  CVTSI2SS XMM4,EDX
00c5cfe1  2ad8  SUB BL,AL
00c5cfe3  f30f11442454  MOVSS dword ptr [ESP + 0x54],XMM0
00c5cfe9  f30f11842498000000  MOVSS dword ptr [ESP + 0x98],XMM0
00c5cff2  f30f11642414  MOVSS dword ptr [ESP + 0x14],XMM4
00c5cff8  f30f11a4248c000000  MOVSS dword ptr [ESP + 0x8c],XMM4
00c5d001  89bc2494000000  MOV dword ptr [ESP + 0x94],EDI
00c5d008  0fbec8  MOVSX ECX,AL
00c5d00b  0fb6db  MOVZX EBX,BL
00c5d00e  eb0c  JMP 0x00c5d01c
00c5d010  f30f10642414  MOVSS XMM4,dword ptr [ESP + 0x14]
00c5d016  f30f10442454  MOVSS XMM0,dword ptr [ESP + 0x54]
00c5d01c  8d6901  LEA EBP,[ECX + 0x1]
00c5d01f  f30f11442474  MOVSS dword ptr [ESP + 0x74],XMM0
00c5d025  f30f2ac1  CVTSI2SS XMM0,ECX
00c5d029  f30f2acd  CVTSI2SS XMM1,EBP
00c5d02d  0f28d0  MOVAPS XMM2,XMM0
00c5d030  0f28d9  MOVAPS XMM3,XMM1
00c5d033  f30f11542478  MOVSS dword ptr [ESP + 0x78],XMM2
00c5d039  897c247c  MOV dword ptr [ESP + 0x7c],EDI
00c5d03d  f30f119c249c000000  MOVSS dword ptr [ESP + 0x9c],XMM3
00c5d046  89bc24a0000000  MOV dword ptr [ESP + 0xa0],EDI
00c5d04d  f30f11a42480000000  MOVSS dword ptr [ESP + 0x80],XMM4
00c5d056  f30f11842484000000  MOVSS dword ptr [ESP + 0x84],XMM0
00c5d05f  89bc2488000000  MOV dword ptr [ESP + 0x88],EDI
00c5d066  f30f118c2490000000  MOVSS dword ptr [ESP + 0x90],XMM1
00c5d06f  d9442474  FLD float ptr [ESP + 0x74]
00c5d073  db5c2434  FISTP dword ptr [ESP + 0x34]
00c5d077  0fb6442434  MOVZX EAX,byte ptr [ESP + 0x34]
00c5d07c  88442438  MOV byte ptr [ESP + 0x38],AL
00c5d080  f30f11542468  MOVSS dword ptr [ESP + 0x68],XMM2
00c5d086  d9442468  FLD float ptr [ESP + 0x68]
00c5d08a  db5c2430  FISTP dword ptr [ESP + 0x30]
00c5d08e  0fb64c2430  MOVZX ECX,byte ptr [ESP + 0x30]
00c5d093  0fb654247c  MOVZX EDX,byte ptr [ESP + 0x7c]
00c5d098  884c2439  MOV byte ptr [ESP + 0x39],CL
00c5d09c  8854243a  MOV byte ptr [ESP + 0x3a],DL
00c5d0a0  d9842498000000  FLD float ptr [ESP + 0x98]
00c5d0a7  db5c245c  FISTP dword ptr [ESP + 0x5c]
00c5d0ab  0fb644245c  MOVZX EAX,byte ptr [ESP + 0x5c]
00c5d0b0  8844243b  MOV byte ptr [ESP + 0x3b],AL
00c5d0b4  f30f115c2464  MOVSS dword ptr [ESP + 0x64],XMM3
00c5d0ba  d9442464  FLD float ptr [ESP + 0x64]
00c5d0be  db5c2460  FISTP dword ptr [ESP + 0x60]
00c5d0c2  0fb64c2460  MOVZX ECX,byte ptr [ESP + 0x60]
00c5d0c7  0fb69424a0000000  MOVZX EDX,byte ptr [ESP + 0xa0]
00c5d0cf  884c243c  MOV byte ptr [ESP + 0x3c],CL
00c5d0d3  8854243d  MOV byte ptr [ESP + 0x3d],DL
00c5d0d7  d9842480000000  FLD float ptr [ESP + 0x80]
00c5d0de  db5c2458  FISTP dword ptr [ESP + 0x58]
00c5d0e2  0fb6442458  MOVZX EAX,byte ptr [ESP + 0x58]
00c5d0e7  88442444  MOV byte ptr [ESP + 0x44],AL
00c5d0eb  f30f11442470  MOVSS dword ptr [ESP + 0x70],XMM0
00c5d0f1  d9442470  FLD float ptr [ESP + 0x70]
00c5d0f5  db5c2424  FISTP dword ptr [ESP + 0x24]
00c5d0f9  0fb64c2424  MOVZX ECX,byte ptr [ESP + 0x24]
00c5d0fe  0fb6942488000000  MOVZX EDX,byte ptr [ESP + 0x88]
00c5d106  884c2445  MOV byte ptr [ESP + 0x45],CL
00c5d10a  88542446  MOV byte ptr [ESP + 0x46],DL
00c5d10e  d984248c000000  FLD float ptr [ESP + 0x8c]
00c5d115  db5c2420  FISTP dword ptr [ESP + 0x20]
00c5d119  0fb6442420  MOVZX EAX,byte ptr [ESP + 0x20]
00c5d11e  88442447  MOV byte ptr [ESP + 0x47],AL
00c5d122  f30f114c246c  MOVSS dword ptr [ESP + 0x6c],XMM1
00c5d128  d944246c  FLD float ptr [ESP + 0x6c]
00c5d12c  db5c2428  FISTP dword ptr [ESP + 0x28]
00c5d130  0fb64c2428  MOVZX ECX,byte ptr [ESP + 0x28]
00c5d135  0fb6942494000000  MOVZX EDX,byte ptr [ESP + 0x94]
00c5d13d  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5d140  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5d143  884c2448  MOV byte ptr [ESP + 0x48],CL
00c5d147  88542449  MOV byte ptr [ESP + 0x49],DL
00c5d14b  731b  JNC 0x00c5d168
00c5d14d  85c0  TEST EAX,EAX
00c5d14f  8d4806  LEA ECX,[EAX + 0x6]
00c5d152  894e04  MOV dword ptr [ESI + 0x4],ECX
00c5d155  741e  JZ 0x00c5d175
00c5d157  8b542438  MOV EDX,dword ptr [ESP + 0x38]
00c5d15b  668b4c243c  MOV CX,word ptr [ESP + 0x3c]
00c5d160  8910  MOV dword ptr [EAX],EDX
00c5d162  66894804  MOV word ptr [EAX + 0x4],CX
00c5d166  eb0d  JMP 0x00c5d175
00c5d168  8d542438  LEA EDX,[ESP + 0x38]
00c5d16c  52  PUSH EDX
00c5d16d  50  PUSH EAX
00c5d16e  8bce  MOV ECX,ESI
00c5d170  e88be7e8ff  CALL 0x00aeb900
00c5d175  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c5d178  3b4608  CMP EAX,dword ptr [ESI + 0x8]
00c5d17b  731b  JNC 0x00c5d198
00c5d17d  85c0  TEST EAX,EAX
00c5d17f  8d4806  LEA ECX,[EAX + 0x6]
00c5d182  894e04  MOV dword ptr [ESI + 0x4],ECX
00c5d185  741e  JZ 0x00c5d1a5
00c5d187  8b542444  MOV EDX,dword ptr [ESP + 0x44]
00c5d18b  668b4c2448  MOV CX,word ptr [ESP + 0x48]
00c5d190  8910  MOV dword ptr [EAX],EDX
00c5d192  66894804  MOV word ptr [EAX + 0x4],CX
00c5d196  eb0d  JMP 0x00c5d1a5
00c5d198  8d542444  LEA EDX,[ESP + 0x44]
00c5d19c  52  PUSH EDX
00c5d19d  50  PUSH EAX
00c5d19e  8bce  MOV ECX,ESI
00c5d1a0  e85be7e8ff  CALL 0x00aeb900
00c5d1a5  83eb01  SUB EBX,0x1
00c5d1a8  8bcd  MOV ECX,EBP
00c5d1aa  0f8560feffff  JNZ 0x00c5d010
00c5d1b0  5f  POP EDI
00c5d1b1  5d  POP EBP
00c5d1b2  5e  POP ESI
00c5d1b3  5b  POP EBX
00c5d1b4  81c498000000  ADD ESP,0x98
00c5d1ba  c3  RET

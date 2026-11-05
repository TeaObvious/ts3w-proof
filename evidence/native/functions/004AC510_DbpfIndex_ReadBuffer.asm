# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004ac510, 004ac59c] [004ac5a0, 004ac6a6]]
Signature: undefined4 DbpfIndex_ReadBuffer(void * this, uint * param_1, uint param_2, char param_3)

004ac510  83ec68  SUB ESP,0x68
004ac513  8b54246c  MOV EDX,dword ptr [ESP + 0x6c]
004ac517  8b442470  MOV EAX,dword ptr [ESP + 0x70]
004ac51b  53  PUSH EBX
004ac51c  c1e802  SHR EAX,0x2
004ac51f  55  PUSH EBP
004ac520  8d2c82  LEA EBP,[EDX + EAX*0x4]
004ac523  8b02  MOV EAX,dword ptr [EDX]
004ac525  56  PUSH ESI
004ac526  8bd8  MOV EBX,EAX
004ac528  8d7204  LEA ESI,[EDX + 0x4]
004ac52b  8ad0  MOV DL,AL
004ac52d  d1eb  SHR EBX,0x1
004ac52f  c1e802  SHR EAX,0x2
004ac532  57  PUSH EDI
004ac533  80e201  AND DL,0x1
004ac536  8bf9  MOV EDI,ECX
004ac538  80e301  AND BL,0x1
004ac53b  2401  AND AL,0x1
004ac53d  83c9ff  OR ECX,0xffffffff
004ac540  84d2  TEST DL,DL
004ac542  896c2428  MOV dword ptr [ESP + 0x28],EBP
004ac546  8854247c  MOV byte ptr [ESP + 0x7c],DL
004ac54a  885c2413  MOV byte ptr [ESP + 0x13],BL
004ac54e  88842480000000  MOV byte ptr [ESP + 0x80],AL
004ac555  740b  JZ 0x004ac562
004ac557  8b06  MOV EAX,dword ptr [ESI]
004ac559  89442414  MOV dword ptr [ESP + 0x14],EAX
004ac55d  83c604  ADD ESI,0x4
004ac560  eb04  JMP 0x004ac566
004ac562  894c2414  MOV dword ptr [ESP + 0x14],ECX
004ac566  84db  TEST BL,BL
004ac568  740b  JZ 0x004ac575
004ac56a  8b06  MOV EAX,dword ptr [ESI]
004ac56c  89442418  MOV dword ptr [ESP + 0x18],EAX
004ac570  83c604  ADD ESI,0x4
004ac573  eb04  JMP 0x004ac579
004ac575  894c2418  MOV dword ptr [ESP + 0x18],ECX
004ac579  80bc248000000000  CMP byte ptr [ESP + 0x80],0x0
004ac581  7405  JZ 0x004ac588
004ac583  8b0e  MOV ECX,dword ptr [ESI]
004ac585  83c604  ADD ESI,0x4
004ac588  3bf5  CMP ESI,EBP
004ac58a  894c241c  MOV dword ptr [ESP + 0x1c],ECX
004ac58e  0f8307010000  JNC 0x004ac69b
004ac594  83c708  ADD EDI,0x8
004ac597  897c2424  MOV dword ptr [ESP + 0x24],EDI
004ac59b  eb0b  JMP 0x004ac5a8
004ac59d  8d4900  .byte ; non-owned envelope gap
004ac5a0  8a54247c  MOV DL,byte ptr [ESP + 0x7c]
004ac5a4  8a5c2413  MOV BL,byte ptr [ESP + 0x13]
004ac5a8  84d2  TEST DL,DL
004ac5aa  740a  JZ 0x004ac5b6
004ac5ac  8b542414  MOV EDX,dword ptr [ESP + 0x14]
004ac5b0  89542440  MOV dword ptr [ESP + 0x40],EDX
004ac5b4  eb09  JMP 0x004ac5bf
004ac5b6  8b06  MOV EAX,dword ptr [ESI]
004ac5b8  89442440  MOV dword ptr [ESP + 0x40],EAX
004ac5bc  83c604  ADD ESI,0x4
004ac5bf  84db  TEST BL,BL
004ac5c1  740a  JZ 0x004ac5cd
004ac5c3  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
004ac5c7  894c2444  MOV dword ptr [ESP + 0x44],ECX
004ac5cb  eb09  JMP 0x004ac5d6
004ac5cd  8b16  MOV EDX,dword ptr [ESI]
004ac5cf  89542444  MOV dword ptr [ESP + 0x44],EDX
004ac5d3  83c604  ADD ESI,0x4
004ac5d6  80bc248000000000  CMP byte ptr [ESP + 0x80],0x0
004ac5de  7406  JZ 0x004ac5e6
004ac5e0  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
004ac5e4  eb05  JMP 0x004ac5eb
004ac5e6  8b1e  MOV EBX,dword ptr [ESI]
004ac5e8  83c604  ADD ESI,0x4
004ac5eb  8b3e  MOV EDI,dword ptr [ESI]
004ac5ed  8b6e04  MOV EBP,dword ptr [ESI + 0x4]
004ac5f0  83c604  ADD ESI,0x4
004ac5f3  8b4604  MOV EAX,dword ptr [ESI + 0x4]
004ac5f6  83c604  ADD ESI,0x4
004ac5f9  8b5604  MOV EDX,dword ptr [ESI + 0x4]
004ac5fc  83c604  ADD ESI,0x4
004ac5ff  83c604  ADD ESI,0x4
004ac602  85c0  TEST EAX,EAX
004ac604  791b  JNS 0x004ac621
004ac606  8b0e  MOV ECX,dword ptr [ESI]
004ac608  66894c2454  MOV word ptr [ESP + 0x54],CX
004ac60d  c1e910  SHR ECX,0x10
004ac610  83c604  ADD ESI,0x4
004ac613  25ffffff7f  AND EAX,0x7fffffff
004ac618  80e101  AND CL,0x1
004ac61b  884c2456  MOV byte ptr [ESP + 0x56],CL
004ac61f  eb18  JMP 0x004ac639
004ac621  8bc8  MOV ECX,EAX
004ac623  2bca  SUB ECX,EDX
004ac625  f7d9  NEG ECX
004ac627  1bc9  SBB ECX,ECX
004ac629  81e1ffff0000  AND ECX,0xffff
004ac62f  66894c2454  MOV word ptr [ESP + 0x54],CX
004ac634  c644245600  MOV byte ptr [ESP + 0x56],0x0
004ac639  80bc248400000000  CMP byte ptr [ESP + 0x84],0x0
004ac641  7405  JZ 0x004ac648
004ac643  c644245601  MOV byte ptr [ESP + 0x56],0x1
004ac648  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
004ac64c  894c2460  MOV dword ptr [ESP + 0x60],ECX
004ac650  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
004ac654  8944246c  MOV dword ptr [ESP + 0x6c],EAX
004ac658  89542470  MOV dword ptr [ESP + 0x70],EDX
004ac65c  8b542454  MOV EDX,dword ptr [ESP + 0x54]
004ac660  894c2464  MOV dword ptr [ESP + 0x64],ECX
004ac664  c644242000  MOV byte ptr [ESP + 0x20],0x0
004ac669  8b442420  MOV EAX,dword ptr [ESP + 0x20]
004ac66d  50  PUSH EAX
004ac66e  8d4c245c  LEA ECX,[ESP + 0x5c]
004ac672  89542478  MOV dword ptr [ESP + 0x78],EDX
004ac676  51  PUSH ECX
004ac677  8b4c242c  MOV ECX,dword ptr [ESP + 0x2c]
004ac67b  8d542434  LEA EDX,[ESP + 0x34]
004ac67f  52  PUSH EDX
004ac680  897c2464  MOV dword ptr [ESP + 0x64],EDI
004ac684  895c2468  MOV dword ptr [ESP + 0x68],EBX
004ac688  896c2474  MOV dword ptr [ESP + 0x74],EBP
004ac68c  e86ff2ffff  CALL 0x004ab900
004ac691  3b742428  CMP ESI,dword ptr [ESP + 0x28]
004ac695  0f8205ffffff  JC 0x004ac5a0
004ac69b  5f  POP EDI
004ac69c  5e  POP ESI
004ac69d  5d  POP EBP
004ac69e  b001  MOV AL,0x1
004ac6a0  5b  POP EBX
004ac6a1  83c468  ADD ESP,0x68
004ac6a4  c20c00  RET 0xc

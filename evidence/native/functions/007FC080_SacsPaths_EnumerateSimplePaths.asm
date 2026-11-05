# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsPaths_EnumerateSimplePaths
Paired actual annotated Ghidra pseudocode: 007FC080_SacsPaths_EnumerateSimplePaths.c
Owned ranges: [[007fc080, 007fc271]]
Envelope bytes=498

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fc080  83ec1c  SUB ESP,0x1c
007fc083  53  PUSH EBX
007fc084  55  PUSH EBP
007fc085  894c240c  MOV dword ptr [ESP + 0xc],ECX
007fc089  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
007fc08d  85c9  TEST ECX,ECX
007fc08f  56  PUSH ESI
007fc090  57  PUSH EDI
007fc091  0f84d1010000  JZ 0x007fc268
007fc097  8b442444  MOV EAX,dword ptr [ESP + 0x44]
007fc09b  83e800  SUB EAX,0x0
007fc09e  c644241200  MOV byte ptr [ESP + 0x12],0x0
007fc0a3  c644241300  MOV byte ptr [ESP + 0x13],0x0
007fc0a8  741b  JZ 0x007fc0c5
007fc0aa  83e801  SUB EAX,0x1
007fc0ad  740f  JZ 0x007fc0be
007fc0af  83e801  SUB EAX,0x1
007fc0b2  751b  JNZ 0x007fc0cf
007fc0b4  88442412  MOV byte ptr [ESP + 0x12],AL
007fc0b8  88442413  MOV byte ptr [ESP + 0x13],AL
007fc0bc  eb11  JMP 0x007fc0cf
007fc0be  c644241300  MOV byte ptr [ESP + 0x13],0x0
007fc0c3  eb05  JMP 0x007fc0ca
007fc0c5  c644241301  MOV byte ptr [ESP + 0x13],0x1
007fc0ca  c644241201  MOV byte ptr [ESP + 0x12],0x1
007fc0cf  8b7c2438  MOV EDI,dword ptr [ESP + 0x38]
007fc0d3  8b4704  MOV EAX,dword ptr [EDI + 0x4]
007fc0d6  2b07  SUB EAX,dword ptr [EDI]
007fc0d8  c1f802  SAR EAX,0x2
007fc0db  743e  JZ 0x007fc11b
007fc0dd  8b542440  MOV EDX,dword ptr [ESP + 0x40]
007fc0e1  395128  CMP dword ptr [ECX + 0x28],EDX
007fc0e4  7535  JNZ 0x007fc11b
007fc0e6  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
007fc0ea  8b5118  MOV EDX,dword ptr [ECX + 0x18]
007fc0ed  57  PUSH EDI
007fc0ee  83ec10  SUB ESP,0x10
007fc0f1  8bc4  MOV EAX,ESP
007fc0f3  8910  MOV dword ptr [EAX],EDX
007fc0f5  8b511c  MOV EDX,dword ptr [ECX + 0x1c]
007fc0f8  895004  MOV dword ptr [EAX + 0x4],EDX
007fc0fb  8b5120  MOV EDX,dword ptr [ECX + 0x20]
007fc0fe  895008  MOV dword ptr [EAX + 0x8],EDX
007fc101  8b5124  MOV EDX,dword ptr [ECX + 0x24]
007fc104  89500c  MOV dword ptr [EAX + 0xc],EDX
007fc107  8d442430  LEA EAX,[ESP + 0x30]
007fc10b  50  PUSH EAX
007fc10c  e86ffeffff  CALL 0x007fbf80
007fc111  5f  POP EDI
007fc112  5e  POP ESI
007fc113  5d  POP EBP
007fc114  5b  POP EBX
007fc115  83c41c  ADD ESP,0x1c
007fc118  c22000  RET 0x20
007fc11b  8b6c243c  MOV EBP,dword ptr [ESP + 0x3c]
007fc11f  8b4504  MOV EAX,dword ptr [EBP + 0x4]
007fc122  8b08  MOV ECX,dword ptr [EAX]
007fc124  85c9  TEST ECX,ECX
007fc126  7510  JNZ 0x007fc138
007fc128  83c004  ADD EAX,0x4
007fc12b  3908  CMP dword ptr [EAX],ECX
007fc12d  7509  JNZ 0x007fc138
007fc12f  90  NOP
007fc130  83c004  ADD EAX,0x4
007fc133  833800  CMP dword ptr [EAX],0x0
007fc136  74f8  JZ 0x007fc130
007fc138  c644243800  MOV byte ptr [ESP + 0x38],0x0
007fc13d  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
007fc141  51  PUSH ECX
007fc142  8d542434  LEA EDX,[ESP + 0x34]
007fc146  52  PUSH EDX
007fc147  8d442424  LEA EAX,[ESP + 0x24]
007fc14b  50  PUSH EAX
007fc14c  8bcd  MOV ECX,EBP
007fc14e  e86d9aebff  CALL 0x006b5bc0
007fc153  8b442430  MOV EAX,dword ptr [ESP + 0x30]
007fc157  8b483c  MOV ECX,dword ptr [EAX + 0x3c]
007fc15a  8b4040  MOV EAX,dword ptr [EAX + 0x40]
007fc15d  3bc8  CMP ECX,EAX
007fc15f  894c243c  MOV dword ptr [ESP + 0x3c],ECX
007fc163  89442418  MOV dword ptr [ESP + 0x18],EAX
007fc167  0f84fb000000  JZ 0x007fc268
007fc16d  8b5c244c  MOV EBX,dword ptr [ESP + 0x4c]
007fc171  8b31  MOV ESI,dword ptr [ECX]
007fc173  33c0  XOR EAX,EAX
007fc175  85db  TEST EBX,EBX
007fc177  89742438  MOV dword ptr [ESP + 0x38],ESI
007fc17b  7617  JBE 0x007fc194
007fc17d  8d4900  LEA ECX,[ECX]
007fc180  8b542448  MOV EDX,dword ptr [ESP + 0x48]
007fc184  3b3482  CMP ESI,dword ptr [EDX + EAX*0x4]
007fc187  0f84ca000000  JZ 0x007fc257
007fc18d  83c001  ADD EAX,0x1
007fc190  3bc3  CMP EAX,EBX
007fc192  72ec  JC 0x007fc180
007fc194  3b742430  CMP ESI,dword ptr [ESP + 0x30]
007fc198  0f84b9000000  JZ 0x007fc257
007fc19e  8b4628  MOV EAX,dword ptr [ESI + 0x28]
007fc1a1  3b442440  CMP EAX,dword ptr [ESP + 0x40]
007fc1a5  7454  JZ 0x007fc1fb
007fc1a7  8a542412  MOV DL,byte ptr [ESP + 0x12]
007fc1ab  84d2  TEST DL,DL
007fc1ad  7509  JNZ 0x007fc1b8
007fc1af  38564f  CMP byte ptr [ESI + 0x4f],DL
007fc1b2  0f859f000000  JNZ 0x007fc257
007fc1b8  807e4e00  CMP byte ptr [ESI + 0x4e],0x0
007fc1bc  7415  JZ 0x007fc1d3
007fc1be  807e4f00  CMP byte ptr [ESI + 0x4f],0x0
007fc1c2  7407  JZ 0x007fc1cb
007fc1c4  807c241300  CMP byte ptr [ESP + 0x13],0x0
007fc1c9  eb02  JMP 0x007fc1cd
007fc1cb  84d2  TEST DL,DL
007fc1cd  0f8484000000  JZ 0x007fc257
007fc1d3  3b442440  CMP EAX,dword ptr [ESP + 0x40]
007fc1d7  7422  JZ 0x007fc1fb
007fc1d9  8b4508  MOV EAX,dword ptr [EBP + 0x8]
007fc1dc  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
007fc1df  8b1c81  MOV EBX,dword ptr [ECX + EAX*0x4]
007fc1e2  8d542438  LEA EDX,[ESP + 0x38]
007fc1e6  52  PUSH EDX
007fc1e7  8d442420  LEA EAX,[ESP + 0x20]
007fc1eb  50  PUSH EAX
007fc1ec  8bcd  MOV ECX,EBP
007fc1ee  e8cd640b00  CALL 0x008b26c0
007fc1f3  3918  CMP dword ptr [EAX],EBX
007fc1f5  755c  JNZ 0x007fc253
007fc1f7  8b5c244c  MOV EBX,dword ptr [ESP + 0x4c]
007fc1fb  8b4704  MOV EAX,dword ptr [EDI + 0x4]
007fc1fe  3b4708  CMP EAX,dword ptr [EDI + 0x8]
007fc201  730e  JNC 0x007fc211
007fc203  85c0  TEST EAX,EAX
007fc205  8d4804  LEA ECX,[EAX + 0x4]
007fc208  894f04  MOV dword ptr [EDI + 0x4],ECX
007fc20b  7415  JZ 0x007fc222
007fc20d  8930  MOV dword ptr [EAX],ESI
007fc20f  eb11  JMP 0x007fc222
007fc211  8d542438  LEA EDX,[ESP + 0x38]
007fc215  52  PUSH EDX
007fc216  50  PUSH EAX
007fc217  8bcf  MOV ECX,EDI
007fc219  e802621800  CALL 0x00982420
007fc21e  8b742438  MOV ESI,dword ptr [ESP + 0x38]
007fc222  8b442448  MOV EAX,dword ptr [ESP + 0x48]
007fc226  8b4c2444  MOV ECX,dword ptr [ESP + 0x44]
007fc22a  8b542440  MOV EDX,dword ptr [ESP + 0x40]
007fc22e  53  PUSH EBX
007fc22f  50  PUSH EAX
007fc230  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
007fc234  51  PUSH ECX
007fc235  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
007fc239  52  PUSH EDX
007fc23a  55  PUSH EBP
007fc23b  57  PUSH EDI
007fc23c  50  PUSH EAX
007fc23d  56  PUSH ESI
007fc23e  e83dfeffff  CALL 0x007fc080
007fc243  834704fc  ADD dword ptr [EDI + 0x4],-0x4
007fc247  8d4c2438  LEA ECX,[ESP + 0x38]
007fc24b  51  PUSH ECX
007fc24c  8bcd  MOV ECX,EBP
007fc24e  e87d98eaff  CALL 0x006a5ad0
007fc253  8b4c243c  MOV ECX,dword ptr [ESP + 0x3c]
007fc257  83c104  ADD ECX,0x4
007fc25a  3b4c2418  CMP ECX,dword ptr [ESP + 0x18]
007fc25e  894c243c  MOV dword ptr [ESP + 0x3c],ECX
007fc262  0f8505ffffff  JNZ 0x007fc16d
007fc268  5f  POP EDI
007fc269  5e  POP ESI
007fc26a  5d  POP EBP
007fc26b  5b  POP EBX
007fc26c  83c41c  ADD ESP,0x1c
007fc26f  c22000  RET 0x20
Owned instructions=172 owned bytes=498 gap/nonowned bytes=0

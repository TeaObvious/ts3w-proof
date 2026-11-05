# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: SceneShadow_DrawQueuedCasters
Paired annotated actual pseudocode: 006EA9A0_SceneShadow_DrawQueuedCasters.c
Owned ranges: [[006ea9a0, 006ea9e7] [006ea9f0, 006eaafd]]

GHIDRA LISTING (original bytes)
006ea9a0  83ec10  SUB ESP,0x10
006ea9a3  8b442414  MOV EAX,dword ptr [ESP + 0x14]
006ea9a7  55  PUSH EBP
006ea9a8  8b2d30851d01  MOV EBP,dword ptr [0x011d8530]
006ea9ae  56  PUSH ESI
006ea9af  8bf1  MOV ESI,ECX
006ea9b1  8b8810020000  MOV ECX,dword ptr [EAX + 0x210]
006ea9b7  894c2410  MOV dword ptr [ESP + 0x10],ECX
006ea9bb  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
006ea9bf  8b01  MOV EAX,dword ptr [ECX]
006ea9c1  57  PUSH EDI
006ea9c2  8b7904  MOV EDI,dword ptr [ECX + 0x4]
006ea9c5  2bf8  SUB EDI,EAX
006ea9c7  c1ff03  SAR EDI,0x3
006ea9ca  b900000000  MOV ECX,0x0
006ea9cf  c7442420ffffffff  MOV dword ptr [ESP + 0x20],0xffffffff
006ea9d7  894c2424  MOV dword ptr [ESP + 0x24],ECX
006ea9db  894c240c  MOV dword ptr [ESP + 0xc],ECX
006ea9df  0f84ca000000  JZ 0x006eaaaf
006ea9e5  53  PUSH EBX
006ea9e6  eb0c  JMP 0x006ea9f4
006ea9e8  eb068d9b00000000  GAP_BYTES (non-owned alignment inside complete function envelope)
006ea9f0  8b442414  MOV EAX,dword ptr [ESP + 0x14]
006ea9f4  8b18  MOV EBX,dword ptr [EAX]
006ea9f6  8b542424  MOV EDX,dword ptr [ESP + 0x24]
006ea9fa  83ef01  SUB EDI,0x1
006ea9fd  83c008  ADD EAX,0x8
006eaa00  3b5324  CMP EDX,dword ptr [EBX + 0x24]
006eaa03  897c241c  MOV dword ptr [ESP + 0x1c],EDI
006eaa07  89442414  MOV dword ptr [ESP + 0x14],EAX
006eaa0b  7527  JNZ 0x006eaa34
006eaa0d  8b8ed4010000  MOV ECX,dword ptr [ESI + 0x1d4]
006eaa13  8b4504  MOV EAX,dword ptr [EBP + 0x4]
006eaa16  8b542428  MOV EDX,dword ptr [ESP + 0x28]
006eaa1a  c1e104  SHL ECX,0x4
006eaa1d  391401  CMP dword ptr [ECX + EAX*0x1],EDX
006eaa20  7512  JNZ 0x006eaa34
006eaa22  8b8ed8010000  MOV ECX,dword ptr [ESI + 0x1d8]
006eaa28  8b542410  MOV EDX,dword ptr [ESP + 0x10]
006eaa2c  c1e104  SHL ECX,0x4
006eaa2f  391401  CMP dword ptr [ECX + EAX*0x1],EDX
006eaa32  7460  JZ 0x006eaa94
006eaa34  8b7b24  MOV EDI,dword ptr [EBX + 0x24]
006eaa37  8b86d4010000  MOV EAX,dword ptr [ESI + 0x1d4]
006eaa3d  897c2424  MOV dword ptr [ESP + 0x24],EDI
006eaa41  c1e707  SHL EDI,0x7
006eaa44  037c2418  ADD EDI,dword ptr [ESP + 0x18]
006eaa48  8bcd  MOV ECX,EBP
006eaa4a  57  PUSH EDI
006eaa4b  50  PUSH EAX
006eaa4c  e8eff50a00  CALL 0x0079a040
006eaa51  8b8ed8010000  MOV ECX,dword ptr [ESI + 0x1d8]
006eaa57  83c740  ADD EDI,0x40
006eaa5a  57  PUSH EDI
006eaa5b  51  PUSH ECX
006eaa5c  8bcd  MOV ECX,EBP
006eaa5e  e8ddf50a00  CALL 0x0079a040
006eaa63  8b96d4010000  MOV EDX,dword ptr [ESI + 0x1d4]
006eaa69  8b4504  MOV EAX,dword ptr [EBP + 0x4]
006eaa6c  c1e204  SHL EDX,0x4
006eaa6f  8b0c02  MOV ECX,dword ptr [EDX + EAX*0x1]
006eaa72  8b96d8010000  MOV EDX,dword ptr [ESI + 0x1d8]
006eaa78  894c2428  MOV dword ptr [ESP + 0x28],ECX
006eaa7c  8b0b  MOV ECX,dword ptr [EBX]
006eaa7e  c1e204  SHL EDX,0x4
006eaa81  8b0402  MOV EAX,dword ptr [EDX + EAX*0x1]
006eaa84  51  PUSH ECX
006eaa85  8bce  MOV ECX,ESI
006eaa87  89442414  MOV dword ptr [ESP + 0x14],EAX
006eaa8b  e880fbffff  CALL 0x006ea610
006eaa90  8b7c241c  MOV EDI,dword ptr [ESP + 0x1c]
006eaa94  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
006eaa98  8b0b  MOV ECX,dword ptr [EBX]
006eaa9a  8b11  MOV EDX,dword ptr [ECX]
006eaa9c  8b5218  MOV EDX,dword ptr [EDX + 0x18]
006eaa9f  50  PUSH EAX
006eaaa0  8b4304  MOV EAX,dword ptr [EBX + 0x4]
006eaaa3  50  PUSH EAX
006eaaa4  ffd2  CALL EDX
006eaaa6  85ff  TEST EDI,EDI
006eaaa8  0f8542ffffff  JNZ 0x006ea9f0
006eaaae  5b  POP EBX
006eaaaf  8b86d4010000  MOV EAX,dword ptr [ESI + 0x1d4]
006eaab5  6a00  PUSH 0x0
006eaab7  50  PUSH EAX
006eaab8  8bcd  MOV ECX,EBP
006eaaba  e881f50a00  CALL 0x0079a040
006eaabf  8b8ed8010000  MOV ECX,dword ptr [ESI + 0x1d8]
006eaac5  6a00  PUSH 0x0
006eaac7  51  PUSH ECX
006eaac8  8bcd  MOV ECX,EBP
006eaaca  e871f50a00  CALL 0x0079a040
006eaacf  8b3d30851d01  MOV EDI,dword ptr [0x011d8530]
006eaad5  8b96dc010000  MOV EDX,dword ptr [ESI + 0x1dc]
006eaadb  6a00  PUSH 0x0
006eaadd  52  PUSH EDX
006eaade  8bcf  MOV ECX,EDI
006eaae0  e85bf50a00  CALL 0x0079a040
006eaae5  8b86e0010000  MOV EAX,dword ptr [ESI + 0x1e0]
006eaaeb  6a00  PUSH 0x0
006eaaed  50  PUSH EAX
006eaaee  8bcf  MOV ECX,EDI
006eaaf0  e84bf50a00  CALL 0x0079a040
006eaaf5  5f  POP EDI
006eaaf6  5e  POP ESI
006eaaf7  5d  POP EBP
006eaaf8  83c410  ADD ESP,0x10
006eaafb  c20c00  RET 0xc
Owned instructions=107 owned bytes=342 envelope bytes=350

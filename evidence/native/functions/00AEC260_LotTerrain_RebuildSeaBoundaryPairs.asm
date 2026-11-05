# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LotTerrain_RebuildSeaBoundaryPairs
Paired actual annotated Ghidra pseudocode: 00AEC260_LotTerrain_RebuildSeaBoundaryPairs.c
Owned ranges: [[00aec260, 00aec472]]
Envelope bytes=531

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aec260  83ec74  SUB ESP,0x74
00aec263  55  PUSH EBP
00aec264  8be9  MOV EBP,ECX
00aec266  8b8554010000  MOV EAX,dword ptr [EBP + 0x154]
00aec26c  898558010000  MOV dword ptr [EBP + 0x158],EAX
00aec272  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00aec275  80b9b004000000  CMP byte ptr [ECX + 0x4b0],0x0
00aec27c  896c2414  MOV dword ptr [ESP + 0x14],EBP
00aec280  0f84e8010000  JZ 0x00aec46e
00aec286  c644240c00  MOV byte ptr [ESP + 0xc],0x0
00aec28b  c644240d00  MOV byte ptr [ESP + 0xd],0x0
00aec290  c644240e00  MOV byte ptr [ESP + 0xe],0x0
00aec295  8b8178010000  MOV EAX,dword ptr [ECX + 0x178]
00aec29b  8a9174010000  MOV DL,byte ptr [ECX + 0x174]
00aec2a1  2c01  SUB AL,0x1
00aec2a3  88442409  MOV byte ptr [ESP + 0x9],AL
00aec2a7  8d442408  LEA EAX,[ESP + 0x8]
00aec2ab  50  PUSH EAX
00aec2ac  8d4c2410  LEA ECX,[ESP + 0x10]
00aec2b0  80ea01  SUB DL,0x1
00aec2b3  51  PUSH ECX
00aec2b4  8d4c2434  LEA ECX,[ESP + 0x34]
00aec2b8  88542410  MOV byte ptr [ESP + 0x10],DL
00aec2bc  c644241200  MOV byte ptr [ESP + 0x12],0x0
00aec2c1  e8caa20000  CALL 0x00af6590
00aec2c6  8b4d04  MOV ECX,dword ptr [EBP + 0x4]
00aec2c9  e8c257fcff  CALL 0x00ab1a90
00aec2ce  d95c2418  FSTP float ptr [ESP + 0x18]
00aec2d2  8d4c242c  LEA ECX,[ESP + 0x2c]
00aec2d6  e8b5a10000  CALL 0x00af6490
00aec2db  84c0  TEST AL,AL
00aec2dd  0f858b010000  JNZ 0x00aec46e
00aec2e3  53  PUSH EBX
00aec2e4  56  PUSH ESI
00aec2e5  57  PUSH EDI
00aec2e6  8d4c2438  LEA ECX,[ESP + 0x38]
00aec2ea  e8f1a10000  CALL 0x00af64e0
00aec2ef  8bf0  MOV ESI,EAX
00aec2f1  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00aec2f4  8bb890020000  MOV EDI,dword ptr [EAX + 0x290]
00aec2fa  8b5718  MOV EDX,dword ptr [EDI + 0x18]
00aec2fd  2b5710  SUB EDX,dword ptr [EDI + 0x10]
00aec300  8b4f24  MOV ECX,dword ptr [EDI + 0x24]
00aec303  0faf5104  IMUL EDX,dword ptr [ECX + 0x4]
00aec307  8a5e01  MOV BL,byte ptr [ESI + 0x1]
00aec30a  f30f10442424  MOVSS XMM0,dword ptr [ESP + 0x24]
00aec310  89442428  MOV dword ptr [ESP + 0x28],EAX
00aec314  8a06  MOV AL,byte ptr [ESI]
00aec316  8974242c  MOV dword ptr [ESP + 0x2c],ESI
00aec31a  0fbef0  MOVSX ESI,AL
00aec31d  03d6  ADD EDX,ESI
00aec31f  0faf5108  IMUL EDX,dword ptr [ECX + 0x8]
00aec323  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00aec326  0fbef3  MOVSX ESI,BL
00aec329  03d6  ADD EDX,ESI
00aec32b  f30f100c91  MOVSS XMM1,dword ptr [ECX + EDX*0x4]
00aec330  0f2fc8  COMISS XMM1,XMM0
00aec333  885c2413  MOV byte ptr [ESP + 0x13],BL
00aec337  0f8614010000  JBE 0x00aec451
00aec33d  ba01000000  MOV EDX,0x1
00aec342  33f6  XOR ESI,ESI
00aec344  83c9ff  OR ECX,0xffffffff
00aec347  89542444  MOV dword ptr [ESP + 0x44],EDX
00aec34b  89542448  MOV dword ptr [ESP + 0x48],EDX
00aec34f  8974244c  MOV dword ptr [ESP + 0x4c],ESI
00aec353  894c2450  MOV dword ptr [ESP + 0x50],ECX
00aec357  894c2454  MOV dword ptr [ESP + 0x54],ECX
00aec35b  894c2458  MOV dword ptr [ESP + 0x58],ECX
00aec35f  8974245c  MOV dword ptr [ESP + 0x5c],ESI
00aec363  89542460  MOV dword ptr [ESP + 0x60],EDX
00aec367  89742464  MOV dword ptr [ESP + 0x64],ESI
00aec36b  894c2468  MOV dword ptr [ESP + 0x68],ECX
00aec36f  894c246c  MOV dword ptr [ESP + 0x6c],ECX
00aec373  894c2470  MOV dword ptr [ESP + 0x70],ECX
00aec377  89742474  MOV dword ptr [ESP + 0x74],ESI
00aec37b  89542478  MOV dword ptr [ESP + 0x78],EDX
00aec37f  8954247c  MOV dword ptr [ESP + 0x7c],EDX
00aec383  89942480000000  MOV dword ptr [ESP + 0x80],EDX
00aec38a  8d9b00000000  LEA EBX,[EBX]
00aec390  8a4c3444  MOV CL,byte ptr [ESP + ESI*0x1 + 0x44]
00aec394  8a543464  MOV DL,byte ptr [ESP + ESI*0x1 + 0x64]
00aec398  02c8  ADD CL,AL
00aec39a  884c241c  MOV byte ptr [ESP + 0x1c],CL
00aec39e  0fbec9  MOVSX ECX,CL
00aec3a1  02d3  ADD DL,BL
00aec3a3  85c9  TEST ECX,ECX
00aec3a5  8854241d  MOV byte ptr [ESP + 0x1d],DL
00aec3a9  0fbeea  MOVSX EBP,DL
00aec3ac  7c3a  JL 0x00aec3e8
00aec3ae  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00aec3b2  3b8a74010000  CMP ECX,dword ptr [EDX + 0x174]
00aec3b8  7f2e  JG 0x00aec3e8
00aec3ba  85ed  TEST EBP,EBP
00aec3bc  7c2a  JL 0x00aec3e8
00aec3be  3baa78010000  CMP EBP,dword ptr [EDX + 0x178]
00aec3c4  7f22  JG 0x00aec3e8
00aec3c6  8b5f18  MOV EBX,dword ptr [EDI + 0x18]
00aec3c9  2b5f10  SUB EBX,dword ptr [EDI + 0x10]
00aec3cc  8b5724  MOV EDX,dword ptr [EDI + 0x24]
00aec3cf  0faf5a04  IMUL EBX,dword ptr [EDX + 0x4]
00aec3d3  03d9  ADD EBX,ECX
00aec3d5  0faf5a08  IMUL EBX,dword ptr [EDX + 0x8]
00aec3d9  8b5210  MOV EDX,dword ptr [EDX + 0x10]
00aec3dc  03dd  ADD EBX,EBP
00aec3de  0f2f049a  COMISS XMM0,dword ptr [EDX + EBX*0x4]
00aec3e2  7312  JNC 0x00aec3f6
00aec3e4  8a5c2413  MOV BL,byte ptr [ESP + 0x13]
00aec3e8  83c604  ADD ESI,0x4
00aec3eb  83fe20  CMP ESI,0x20
00aec3ee  7ca0  JL 0x00aec390
00aec3f0  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00aec3f4  eb5b  JMP 0x00aec451
00aec3f6  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00aec3fa  668b08  MOV CX,word ptr [EAX]
00aec3fd  8a5002  MOV DL,byte ptr [EAX + 0x2]
00aec400  668b44241c  MOV AX,word ptr [ESP + 0x1c]
00aec405  8b6c2420  MOV EBP,dword ptr [ESP + 0x20]
00aec409  6689442435  MOV word ptr [ESP + 0x35],AX
00aec40e  32c0  XOR AL,AL
00aec410  66894c2432  MOV word ptr [ESP + 0x32],CX
00aec415  8d8d54010000  LEA ECX,[EBP + 0x154]
00aec41b  88442437  MOV byte ptr [ESP + 0x37],AL
00aec41f  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00aec422  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00aec425  88542434  MOV byte ptr [ESP + 0x34],DL
00aec429  731b  JNC 0x00aec446
00aec42b  85c0  TEST EAX,EAX
00aec42d  8d5006  LEA EDX,[EAX + 0x6]
00aec430  895104  MOV dword ptr [ECX + 0x4],EDX
00aec433  741c  JZ 0x00aec451
00aec435  8b4c2432  MOV ECX,dword ptr [ESP + 0x32]
00aec439  668b542436  MOV DX,word ptr [ESP + 0x36]
00aec43e  8908  MOV dword ptr [EAX],ECX
00aec440  66895004  MOV word ptr [EAX + 0x4],DX
00aec444  eb0b  JMP 0x00aec451
00aec446  8d542432  LEA EDX,[ESP + 0x32]
00aec44a  52  PUSH EDX
00aec44b  50  PUSH EAX
00aec44c  e8aff4ffff  CALL 0x00aeb900
00aec451  8d4c2438  LEA ECX,[ESP + 0x38]
00aec455  e8b6a10000  CALL 0x00af6610
00aec45a  8d4c2438  LEA ECX,[ESP + 0x38]
00aec45e  e82da00000  CALL 0x00af6490
00aec463  84c0  TEST AL,AL
00aec465  0f847bfeffff  JZ 0x00aec2e6
00aec46b  5f  POP EDI
00aec46c  5e  POP ESI
00aec46d  5b  POP EBX
00aec46e  5d  POP EBP
00aec46f  83c474  ADD ESP,0x74
00aec472  c3  RET
Owned instructions=151 owned bytes=531 gap/nonowned bytes=0

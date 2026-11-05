# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ByteBlockGrid_CompressUniformBlocks
Paired actual annotated Ghidra pseudocode: 00AEE3C0_ByteBlockGrid_CompressUniformBlocks.c
Owned ranges: [[00aee3c0, 00aee5f4]]
Envelope bytes=565

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aee3c0  83ec30  SUB ESP,0x30
00aee3c3  57  PUSH EDI
00aee3c4  8bf9  MOV EDI,ECX
00aee3c6  8b4720  MOV EAX,dword ptr [EDI + 0x20]
00aee3c9  3b4724  CMP EAX,dword ptr [EDI + 0x24]
00aee3cc  0f841a020000  JZ 0x00aee5ec
00aee3d2  53  PUSH EBX
00aee3d3  56  PUSH ESI
00aee3d4  8b7724  MOV ESI,dword ptr [EDI + 0x24]
00aee3d7  2bf0  SUB ESI,EAX
00aee3d9  8d4c2414  LEA ECX,[ESP + 0x14]
00aee3dd  51  PUSH ECX
00aee3de  33db  XOR EBX,EBX
00aee3e0  c1ee04  SHR ESI,0x4
00aee3e3  56  PUSH ESI
00aee3e4  8d4c2434  LEA ECX,[ESP + 0x34]
00aee3e8  895c2424  MOV dword ptr [ESP + 0x24],EBX
00aee3ec  895c2428  MOV dword ptr [ESP + 0x28],EBX
00aee3f0  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00aee3f4  c744243034a70601  MOV dword ptr [ESP + 0x30],0x106a734
00aee3fc  c744241c00a70601  MOV dword ptr [ESP + 0x1c],0x106a700
00aee404  e8a7b21300  CALL 0x00c296b0
00aee409  3bf3  CMP ESI,EBX
00aee40b  895c2414  MOV dword ptr [ESP + 0x14],EBX
00aee40f  0f86b3010000  JBE 0x00aee5c8
00aee415  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00aee419  55  PUSH EBP
00aee41a  bd10000000  MOV EBP,0x10
00aee41f  89542414  MOV dword ptr [ESP + 0x14],EDX
00aee423  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00aee426  8d45f1  LEA EAX,[EBP + -0xf]
00aee429  3bc5  CMP EAX,EBP
00aee42b  7d10  JGE 0x00aee43d
00aee42d  8a5429f0  MOV DL,byte ptr [ECX + EBP*0x1 + -0x10]
00aee431  3a1401  CMP DL,byte ptr [ECX + EAX*0x1]
00aee434  7551  JNZ 0x00aee487
00aee436  83c001  ADD EAX,0x1
00aee439  3bc5  CMP EAX,EBP
00aee43b  7cf4  JL 0x00aee431
00aee43d  3b5c2428  CMP EBX,dword ptr [ESP + 0x28]
00aee441  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aee445  c60001  MOV byte ptr [EAX],0x1
00aee448  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00aee44b  8a5429f0  MOV DL,byte ptr [ECX + EBP*0x1 + -0x10]
00aee44f  885001  MOV byte ptr [EAX + 0x1],DL
00aee452  0fb7442418  MOVZX EAX,word ptr [ESP + 0x18]
00aee457  0fb7c8  MOVZX ECX,AX
00aee45a  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00aee45e  7312  JNC 0x00aee472
00aee460  8bcb  MOV ECX,EBX
00aee462  83c302  ADD EBX,0x2
00aee465  85c9  TEST ECX,ECX
00aee467  895c2424  MOV dword ptr [ESP + 0x24],EBX
00aee46b  7421  JZ 0x00aee48e
00aee46d  668901  MOV word ptr [ECX],AX
00aee470  eb1c  JMP 0x00aee48e
00aee472  8d54241c  LEA EDX,[ESP + 0x1c]
00aee476  52  PUSH EDX
00aee477  53  PUSH EBX
00aee478  8d4c2428  LEA ECX,[ESP + 0x28]
00aee47c  e8af42aeff  CALL 0x005d2730
00aee481  8b5c2424  MOV EBX,dword ptr [ESP + 0x24]
00aee485  eb07  JMP 0x00aee48e
00aee487  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aee48b  c60000  MOV byte ptr [EAX],0x0
00aee48e  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00aee492  8344241402  ADD dword ptr [ESP + 0x14],0x2
00aee497  83c001  ADD EAX,0x1
00aee49a  83c510  ADD EBP,0x10
00aee49d  3bc6  CMP EAX,ESI
00aee49f  89442418  MOV dword ptr [ESP + 0x18],EAX
00aee4a3  0f827affffff  JC 0x00aee423
00aee4a9  395c2420  CMP dword ptr [ESP + 0x20],EBX
00aee4ad  0f8414010000  JZ 0x00aee5c7
00aee4b3  2b5c2420  SUB EBX,dword ptr [ESP + 0x20]
00aee4b7  33ed  XOR EBP,EBP
00aee4b9  d1fb  SAR EBX,0x1
00aee4bb  2bf3  SUB ESI,EBX
00aee4bd  8bde  MOV EBX,ESI
00aee4bf  33f6  XOR ESI,ESI
00aee4c1  39770c  CMP dword ptr [EDI + 0xc],ESI
00aee4c4  895c241c  MOV dword ptr [ESP + 0x1c],EBX
00aee4c8  89742414  MOV dword ptr [ESP + 0x14],ESI
00aee4cc  0f8eae000000  JLE 0x00aee580
00aee4d2  837f0800  CMP dword ptr [EDI + 0x8],0x0
00aee4d6  c744241800000000  MOV dword ptr [ESP + 0x18],0x0
00aee4de  0f8e88000000  JLE 0x00aee56c
00aee4e4  8b4f30  MOV ECX,dword ptr [EDI + 0x30]
00aee4e7  0fb70471  MOVZX EAX,word ptr [ECX + ESI*0x2]
00aee4eb  8d0c71  LEA ECX,[ECX + ESI*0x2]
00aee4ee  8bd0  MOV EDX,EAX
00aee4f0  c1ea0f  SHR EDX,0xf
00aee4f3  f6c201  TEST DL,0x1
00aee4f6  755d  JNZ 0x00aee555
00aee4f8  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00aee4fc  0fb7c0  MOVZX EAX,AX
00aee4ff  803c4200  CMP byte ptr [EDX + EAX*0x2],0x0
00aee503  7411  JZ 0x00aee516
00aee505  66c7010080  MOV word ptr [ECX],0x8000
00aee50a  8b4f10  MOV ECX,dword ptr [EDI + 0x10]
00aee50d  8a544201  MOV DL,byte ptr [EDX + EAX*0x2 + 0x1]
00aee511  88140e  MOV byte ptr [ESI + ECX*0x1],DL
00aee514  eb3f  JMP 0x00aee555
00aee516  3bc3  CMP EAX,EBX
00aee518  723b  JC 0x00aee555
00aee51a  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00aee51e  668b146a  MOV DX,word ptr [EDX + EBP*0x2]
00aee522  668911  MOV word ptr [ECX],DX
00aee525  8b4f20  MOV ECX,dword ptr [EDI + 0x20]
00aee528  c1e004  SHL EAX,0x4
00aee52b  8d1401  LEA EDX,[ECX + EAX*0x1]
00aee52e  8bd9  MOV EBX,ECX
00aee530  2bda  SUB EBX,EDX
00aee532  8d440310  LEA EAX,[EBX + EAX*0x1 + 0x10]
00aee536  50  PUSH EAX
00aee537  52  PUSH EDX
00aee538  8b5730  MOV EDX,dword ptr [EDI + 0x30]
00aee53b  0fb70472  MOVZX EAX,word ptr [EDX + ESI*0x2]
00aee53f  c1e004  SHL EAX,0x4
00aee542  03c1  ADD EAX,ECX
00aee544  50  PUSH EAX
00aee545  83c501  ADD EBP,0x1
00aee548  ff158866f900  CALL dword ptr [0x00f96688]
00aee54e  8b5c2428  MOV EBX,dword ptr [ESP + 0x28]
00aee552  83c40c  ADD ESP,0xc
00aee555  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00aee559  83c001  ADD EAX,0x1
00aee55c  83c601  ADD ESI,0x1
00aee55f  3b4708  CMP EAX,dword ptr [EDI + 0x8]
00aee562  89442418  MOV dword ptr [ESP + 0x18],EAX
00aee566  0f8c78ffffff  JL 0x00aee4e4
00aee56c  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aee570  83c001  ADD EAX,0x1
00aee573  3b470c  CMP EAX,dword ptr [EDI + 0xc]
00aee576  89442414  MOV dword ptr [ESP + 0x14],EAX
00aee57a  0f8c52ffffff  JL 0x00aee4d2
00aee580  8b7724  MOV ESI,dword ptr [EDI + 0x24]
00aee583  8b4720  MOV EAX,dword ptr [EDI + 0x20]
00aee586  c1e304  SHL EBX,0x4
00aee589  8bcb  MOV ECX,EBX
00aee58b  8d5f20  LEA EBX,[EDI + 0x20]
00aee58e  8bd6  MOV EDX,ESI
00aee590  2bd0  SUB EDX,EAX
00aee592  3bca  CMP ECX,EDX
00aee594  7619  JBE 0x00aee5af
00aee596  8d542413  LEA EDX,[ESP + 0x13]
00aee59a  2bc6  SUB EAX,ESI
00aee59c  52  PUSH EDX
00aee59d  03c1  ADD EAX,ECX
00aee59f  50  PUSH EAX
00aee5a0  56  PUSH ESI
00aee5a1  8bcb  MOV ECX,EBX
00aee5a3  c644241f00  MOV byte ptr [ESP + 0x1f],0x0
00aee5a8  e8130f0800  CALL 0x00b6f4c0
00aee5ad  eb18  JMP 0x00aee5c7
00aee5af  8d2c08  LEA EBP,[EAX + ECX*0x1]
00aee5b2  8bc6  MOV EAX,ESI
00aee5b4  2bc6  SUB EAX,ESI
00aee5b6  50  PUSH EAX
00aee5b7  56  PUSH ESI
00aee5b8  55  PUSH EBP
00aee5b9  ff158866f900  CALL dword ptr [0x00f96688]
00aee5bf  2bee  SUB EBP,ESI
00aee5c1  83c40c  ADD ESP,0xc
00aee5c4  016b04  ADD dword ptr [EBX + 0x4],EBP
00aee5c7  5d  POP EBP
00aee5c8  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00aee5cc  85c0  TEST EAX,EAX
00aee5ce  5e  POP ESI
00aee5cf  5b  POP EBX
00aee5d0  7409  JZ 0x00aee5db
00aee5d2  50  PUSH EAX
00aee5d3  e8085f9fff  CALL 0x004e44e0
00aee5d8  83c404  ADD ESP,0x4
00aee5db  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aee5df  85c0  TEST EAX,EAX
00aee5e1  7409  JZ 0x00aee5ec
00aee5e3  50  PUSH EAX
00aee5e4  e8f75e9fff  CALL 0x004e44e0
00aee5e9  83c404  ADD ESP,0x4
00aee5ec  c6474000  MOV byte ptr [EDI + 0x40],0x0
00aee5f0  5f  POP EDI
00aee5f1  83c430  ADD ESP,0x30
00aee5f4  c3  RET
Owned instructions=184 owned bytes=565 gap/nonowned bytes=0

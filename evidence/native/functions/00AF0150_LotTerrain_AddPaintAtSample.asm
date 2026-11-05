# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotTerrain_AddPaintAtSample(void * this, uint layerIndex, uint x, uint z, uchar addAlpha, uchar otherDecrease)
Owned ranges: [[00af0150, 00af0199] [00af01a0, 00af0285]]

00af0150  83ec0c  SUB ESP,0xc
00af0153  53  PUSH EBX
00af0154  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00af0158  55  PUSH EBP
00af0159  8be9  MOV EBP,ECX
00af015b  8b4d34  MOV ECX,dword ptr [EBP + 0x34]
00af015e  2b4d30  SUB ECX,dword ptr [EBP + 0x30]
00af0161  b8abaaaa2a  MOV EAX,0x2aaaaaab
00af0166  f7e9  IMUL ECX
00af0168  c1fa02  SAR EDX,0x2
00af016b  8bc2  MOV EAX,EDX
00af016d  57  PUSH EDI
00af016e  33ff  XOR EDI,EDI
00af0170  c1e81f  SHR EAX,0x1f
00af0173  03c2  ADD EAX,EDX
00af0175  897c240c  MOV dword ptr [ESP + 0xc],EDI
00af0179  89442414  MOV dword ptr [ESP + 0x14],EAX
00af017d  0f84e8000000  JZ 0x00af026b
00af0183  56  PUSH ESI
00af0184  8b742424  MOV ESI,dword ptr [ESP + 0x24]
00af0188  8bd3  MOV EDX,EBX
00af018a  c1fa02  SAR EDX,0x2
00af018d  c1fe02  SAR ESI,0x2
00af0190  89542428  MOV dword ptr [ESP + 0x28],EDX
00af0194  89742414  MOV dword ptr [ESP + 0x14],ESI
00af0198  eb0e  JMP 0x00af01a8
00af019a  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00af01a0  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00af01a4  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00af01a8  8b4560  MOV EAX,dword ptr [EBP + 0x60]
00af01ab  8b0cb8  MOV ECX,dword ptr [EAX + EDI*0x4]
00af01ae  8b4108  MOV EAX,dword ptr [ECX + 0x8]
00af01b1  0fafc2  IMUL EAX,EDX
00af01b4  8b5130  MOV EDX,dword ptr [ECX + 0x30]
00af01b7  03c6  ADD EAX,ESI
00af01b9  0fb73442  MOVZX ESI,word ptr [EDX + EAX*0x2]
00af01bd  8bd6  MOV EDX,ESI
00af01bf  c1ea0f  SHR EDX,0xf
00af01c2  f6c201  TEST DL,0x1
00af01c5  7409  JZ 0x00af01d0
00af01c7  8b4910  MOV ECX,dword ptr [ECX + 0x10]
00af01ca  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00af01ce  eb1a  JMP 0x00af01ea
00af01d0  8b4920  MOV ECX,dword ptr [ECX + 0x20]
00af01d3  0fb7c6  MOVZX EAX,SI
00af01d6  8bd3  MOV EDX,EBX
00af01d8  83e203  AND EDX,0x3
00af01db  8d0482  LEA EAX,[EDX + EAX*0x4]
00af01de  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00af01e2  8d0c81  LEA ECX,[ECX + EAX*0x4]
00af01e5  8bc2  MOV EAX,EDX
00af01e7  83e003  AND EAX,0x3
00af01ea  03c8  ADD ECX,EAX
00af01ec  3b7c2420  CMP EDI,dword ptr [ESP + 0x20]
00af01f0  0fb601  MOVZX EAX,byte ptr [ECX]
00af01f3  752e  JNZ 0x00af0223
00af01f5  0fb674242c  MOVZX ESI,byte ptr [ESP + 0x2c]
00af01fa  03f0  ADD ESI,EAX
00af01fc  81feff000000  CMP ESI,0xff
00af0202  7605  JBE 0x00af0209
00af0204  beff000000  MOV ESI,0xff
00af0209  3bf0  CMP ESI,EAX
00af020b  740b  JZ 0x00af0218
00af020d  56  PUSH ESI
00af020e  53  PUSH EBX
00af020f  52  PUSH EDX
00af0210  57  PUSH EDI
00af0211  8bcd  MOV ECX,EBP
00af0213  e8f8e8ffff  CALL 0x00aeeb10
00af0218  3b7d18  CMP EDI,dword ptr [EBP + 0x18]
00af021b  7440  JZ 0x00af025d
00af021d  01742410  ADD dword ptr [ESP + 0x10],ESI
00af0221  eb3a  JMP 0x00af025d
00af0223  8a4c2430  MOV CL,byte ptr [ESP + 0x30]
00af0227  84c9  TEST CL,CL
00af0229  7629  JBE 0x00af0254
00af022b  0fb6c9  MOVZX ECX,CL
00af022e  3bc1  CMP EAX,ECX
00af0230  7704  JA 0x00af0236
00af0232  33f6  XOR ESI,ESI
00af0234  eb04  JMP 0x00af023a
00af0236  8bf0  MOV ESI,EAX
00af0238  2bf1  SUB ESI,ECX
00af023a  3bf0  CMP ESI,EAX
00af023c  740b  JZ 0x00af0249
00af023e  56  PUSH ESI
00af023f  53  PUSH EBX
00af0240  52  PUSH EDX
00af0241  57  PUSH EDI
00af0242  8bcd  MOV ECX,EBP
00af0244  e8c7e8ffff  CALL 0x00aeeb10
00af0249  3b7d18  CMP EDI,dword ptr [EBP + 0x18]
00af024c  740f  JZ 0x00af025d
00af024e  01742410  ADD dword ptr [ESP + 0x10],ESI
00af0252  eb09  JMP 0x00af025d
00af0254  3b7d18  CMP EDI,dword ptr [EBP + 0x18]
00af0257  7404  JZ 0x00af025d
00af0259  01442410  ADD dword ptr [ESP + 0x10],EAX
00af025d  83c701  ADD EDI,0x1
00af0260  3b7c2418  CMP EDI,dword ptr [ESP + 0x18]
00af0264  0f8236ffffff  JC 0x00af01a0
00af026a  5e  POP ESI
00af026b  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00af026f  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00af0273  51  PUSH ECX
00af0274  53  PUSH EBX
00af0275  52  PUSH EDX
00af0276  8bcd  MOV ECX,EBP
00af0278  e8b3f5ffff  CALL 0x00aef830
00af027d  5f  POP EDI
00af027e  5d  POP EBP
00af027f  5b  POP EBX
00af0280  83c40c  ADD ESP,0xc
00af0283  c21400  RET 0x14

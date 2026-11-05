# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name LayoutXml_ReadDocument
Owned ranges: [[0054bfc0, 0054c20f]]
Signature: uint __thiscall LayoutXml_ReadDocument(void)
Physical ABI: ECX reader; no stack words; full UInt32 EAX status:0 success, reader+5C on failure; plain RET. This is NOT AL-bool.

0054bfc0  83ec1c  SUB ESP,0x1c
0054bfc3  53  PUSH EBX
0054bfc4  56  PUSH ESI
0054bfc5  8bd9  MOV EBX,ECX
0054bfc7  8b8b88000000  MOV ECX,dword ptr [EBX + 0x88]
0054bfcd  57  PUSH EDI
0054bfce  c644240f01  MOV byte ptr [ESP + 0xf],0x1
0054bfd3  e878ddffff  CALL 0x00549d50 ; Prepare target document before consuming input; later failure does not establish transactional rollback.
0054bfd8  8dbb98000000  LEA EDI,[EBX + 0x98]
0054bfde  8bcf  MOV ECX,EDI
0054bfe0  e86b51f2ff  CALL 0x00471150
0054bfe5  84c0  TEST AL,AL
0054bfe7  741e  JZ 0x0054c007
0054bfe9  8da42400000000  LEA ESP,[ESP]
0054bff0  8bcf  MOV ECX,EDI
0054bff2  e8394ff2ff  CALL 0x00470f30
0054bff7  83f801  CMP EAX,0x1
0054bffa  8bcf  MOV ECX,EDI
0054bffc  744a  JZ 0x0054c048
0054bffe  e84d51f2ff  CALL 0x00471150
0054c003  84c0  TEST AL,AL
0054c005  75e9  JNZ 0x0054bff0
0054c007  837b5000  CMP dword ptr [EBX + 0x50],0x0
0054c00b  8b83a0000000  MOV EAX,dword ptr [EBX + 0xa0]
0054c011  89435c  MOV dword ptr [EBX + 0x5c],EAX
0054c014  7428  JZ 0x0054c03e
0054c016  8b4b54  MOV ECX,dword ptr [EBX + 0x54]
0054c019  51  PUSH ECX
0054c01a  8bcf  MOV ECX,EDI
0054c01c  e8cf4ef2ff  CALL 0x00470ef0
0054c021  50  PUSH EAX
0054c022  8bcf  MOV ECX,EDI
0054c024  e8a74ef2ff  CALL 0x00470ed0
0054c029  50  PUSH EAX
0054c02a  8bcf  MOV ECX,EDI
0054c02c  e8cf44ecff  CALL 0x00410500
0054c031  8b535c  MOV EDX,dword ptr [EBX + 0x5c]
0054c034  50  PUSH EAX
0054c035  8b4350  MOV EAX,dword ptr [EBX + 0x50]
0054c038  52  PUSH EDX
0054c039  ffd0  CALL EAX
0054c03b  83c414  ADD ESP,0x14
0054c03e  c644240f00  MOV byte ptr [ESP + 0xf],0x0
0054c043  e9bc000000  JMP 0x0054c104
0054c048  bed420fc00  MOV ESI,0xfc20d4
0054c04d  e8fe4ef2ff  CALL 0x00470f50 ; First actual start element is compared to graph, then object; comparisons use lexical cursor name.
0054c052  668b08  MOV CX,word ptr [EAX]
0054c055  663b0e  CMP CX,word ptr [ESI]
0054c058  751e  JNZ 0x0054c078
0054c05a  6685c9  TEST CX,CX
0054c05d  7415  JZ 0x0054c074
0054c05f  668b4802  MOV CX,word ptr [EAX + 0x2]
0054c063  663b4e02  CMP CX,word ptr [ESI + 0x2]
0054c067  750f  JNZ 0x0054c078
0054c069  83c004  ADD EAX,0x4
0054c06c  83c604  ADD ESI,0x4
0054c06f  6685c9  TEST CX,CX
0054c072  75de  JNZ 0x0054c052
0054c074  33c0  XOR EAX,EAX
0054c076  eb05  JMP 0x0054c07d
0054c078  1bc0  SBB EAX,EAX
0054c07a  83d8ff  SBB EAX,-0x1
0054c07d  85c0  TEST EAX,EAX
0054c07f  7511  JNZ 0x0054c092
0054c081  8bcb  MOV ECX,EBX
0054c083  e868feffff  CALL 0x0054bef0
0054c088  84c0  TEST AL,AL
0054c08a  756d  JNZ 0x0054c0f9
0054c08c  8844240f  MOV byte ptr [ESP + 0xf],AL
0054c090  eb72  JMP 0x0054c104
0054c092  8bcf  MOV ECX,EDI
0054c094  be881ffc00  MOV ESI,0xfc1f88
0054c099  e8b24ef2ff  CALL 0x00470f50
0054c09e  8bff  MOV EDI,EDI
0054c0a0  668b08  MOV CX,word ptr [EAX]
0054c0a3  663b0e  CMP CX,word ptr [ESI]
0054c0a6  751e  JNZ 0x0054c0c6
0054c0a8  6685c9  TEST CX,CX
0054c0ab  7415  JZ 0x0054c0c2
0054c0ad  668b4802  MOV CX,word ptr [EAX + 0x2]
0054c0b1  663b4e02  CMP CX,word ptr [ESI + 0x2]
0054c0b5  750f  JNZ 0x0054c0c6
0054c0b7  83c004  ADD EAX,0x4
0054c0ba  83c604  ADD ESI,0x4
0054c0bd  6685c9  TEST CX,CX
0054c0c0  75de  JNZ 0x0054c0a0
0054c0c2  33c0  XOR EAX,EAX
0054c0c4  eb05  JMP 0x0054c0cb
0054c0c6  1bc0  SBB EAX,EAX
0054c0c8  83d8ff  SBB EAX,-0x1
0054c0cb  85c0  TEST EAX,EAX
0054c0cd  0f8528010000  JNZ 0x0054c1fb
0054c0d3  8d4c2410  LEA ECX,[ESP + 0x10]
0054c0d7  51  PUSH ECX
0054c0d8  8bcb  MOV ECX,EBX
0054c0da  89442414  MOV dword ptr [ESP + 0x14],EAX
0054c0de  e89dfcffff  CALL 0x0054bd80 ; Direct object arm passes UInt32 ID output pointer, then appends created object.
0054c0e3  85c0  TEST EAX,EAX
0054c0e5  7506  JNZ 0x0054c0ed
0054c0e7  8844240f  MOV byte ptr [ESP + 0xf],AL
0054c0eb  eb17  JMP 0x0054c104
0054c0ed  8b8b88000000  MOV ECX,dword ptr [EBX + 0x88]
0054c0f3  50  PUSH EAX
0054c0f4  e8c7deffff  CALL 0x00549fc0
0054c0f9  8d5360  LEA EDX,[EBX + 0x60]
0054c0fc  52  PUSH EDX
0054c0fd  8bcb  MOV ECX,EBX
0054c0ff  e81cf8ffff  CALL 0x0054b920 ; Invoke pending-reference resolution after successful grammar branch; complete resolver internals remain outside this body.
0054c104  8d4360  LEA EAX,[EBX + 0x60]
0054c107  894004  MOV dword ptr [EAX + 0x4],EAX
0054c10a  8900  MOV dword ptr [EAX],EAX
0054c10c  8b838c000000  MOV EAX,dword ptr [EBX + 0x8c]
0054c112  8b30  MOV ESI,dword ptr [EAX]
0054c114  3b7004  CMP ESI,dword ptr [EAX + 0x4]
0054c117  741e  JZ 0x0054c137
0054c119  8da42400000000  LEA ESP,[ESP]
0054c120  8b0e  MOV ECX,dword ptr [ESI] ; Perform notification virtual+14 calls; these are native callbacks, not a hosted thread-safety guarantee.
0054c122  8b01  MOV EAX,dword ptr [ECX]
0054c124  8b5014  MOV EDX,dword ptr [EAX + 0x14]
0054c127  ffd2  CALL EDX
0054c129  8b838c000000  MOV EAX,dword ptr [EBX + 0x8c]
0054c12f  83c604  ADD ESI,0x4
0054c132  3b7004  CMP ESI,dword ptr [EAX + 0x4]
0054c135  75e9  JNZ 0x0054c120
0054c137  8b436c  MOV EAX,dword ptr [EBX + 0x6c]
0054c13a  8b4b70  MOV ECX,dword ptr [EBX + 0x70]
0054c13d  8b536c  MOV EDX,dword ptr [EBX + 0x6c]
0054c140  8b30  MOV ESI,dword ptr [EAX]
0054c142  85f6  TEST ESI,ESI
0054c144  8b0c8a  MOV ECX,dword ptr [EDX + ECX*0x4]
0054c147  55  PUSH EBP
0054c148  8d6b68  LEA EBP,[EBX + 0x68]
0054c14b  894c2414  MOV dword ptr [ESP + 0x14],ECX
0054c14f  7511  JNZ 0x0054c162
0054c151  83c004  ADD EAX,0x4
0054c154  3930  CMP dword ptr [EAX],ESI
0054c156  7508  JNZ 0x0054c160
0054c158  83c004  ADD EAX,0x4
0054c15b  833800  CMP dword ptr [EAX],0x0
0054c15e  74f8  JZ 0x0054c158
0054c160  8b30  MOV ESI,dword ptr [EAX]
0054c162  3bf1  CMP ESI,ECX
0054c164  8bf8  MOV EDI,EAX
0054c166  745b  JZ 0x0054c1c3
0054c168  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0054c16b  85c9  TEST ECX,ECX
0054c16d  7433  JZ 0x0054c1a2
0054c16f  8b01  MOV EAX,dword ptr [ECX]
0054c171  8b500c  MOV EDX,dword ptr [EAX + 0xc]
0054c174  688283c5ee  PUSH 0xeec58382
0054c179  ffd2  CALL EDX
0054c17b  85c0  TEST EAX,EAX
0054c17d  7423  JZ 0x0054c1a2
0054c17f  8b10  MOV EDX,dword ptr [EAX]
0054c181  8b5210  MOV EDX,dword ptr [EDX + 0x10]
0054c184  8d4c241c  LEA ECX,[ESP + 0x1c]
0054c188  51  PUSH ECX
0054c189  8bc8  MOV ECX,EAX
0054c18b  ffd2  CALL EDX
0054c18d  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
0054c191  8b401c  MOV EAX,dword ptr [EAX + 0x1c]
0054c194  85c0  TEST EAX,EAX
0054c196  740a  JZ 0x0054c1a2
0054c198  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
0054c19c  51  PUSH ECX
0054c19d  ffd0  CALL EAX
0054c19f  83c404  ADD ESP,0x4
0054c1a2  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
0054c1a5  8b11  MOV EDX,dword ptr [ECX]
0054c1a7  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0054c1aa  ffd0  CALL EAX
0054c1ac  8b7608  MOV ESI,dword ptr [ESI + 0x8]
0054c1af  85f6  TEST ESI,ESI
0054c1b1  750a  JNZ 0x0054c1bd
0054c1b3  8b7704  MOV ESI,dword ptr [EDI + 0x4]
0054c1b6  83c704  ADD EDI,0x4
0054c1b9  85f6  TEST ESI,ESI
0054c1bb  74f6  JZ 0x0054c1b3
0054c1bd  3b742414  CMP ESI,dword ptr [ESP + 0x14]
0054c1c1  75a5  JNZ 0x0054c168
0054c1c3  8b4d08  MOV ECX,dword ptr [EBP + 0x8]
0054c1c6  8b5504  MOV EDX,dword ptr [EBP + 0x4]
0054c1c9  51  PUSH ECX
0054c1ca  52  PUSH EDX
0054c1cb  8bcd  MOV ECX,EBP
0054c1cd  e80e2a1f00  CALL 0x0073ebe0
0054c1d2  8d4b08  LEA ECX,[EBX + 0x8]
0054c1d5  c7450c00000000  MOV dword ptr [EBP + 0xc],0x0
0054c1dc  e8bfcbf9ff  CALL 0x004e8da0
0054c1e1  8d4b2c  LEA ECX,[EBX + 0x2c]
0054c1e4  e8b7cbf9ff  CALL 0x004e8da0
0054c1e9  807c241300  CMP byte ptr [ESP + 0x13],0x0
0054c1ee  5d  POP EBP
0054c1ef  7516  JNZ 0x0054c207
0054c1f1  8b435c  MOV EAX,dword ptr [EBX + 0x5c] ; Failed parse returns stored full error code; successful path returns UInt32 zero at54C209.
0054c1f4  5f  POP EDI
0054c1f5  5e  POP ESI
0054c1f6  5b  POP EBX
0054c1f7  83c41c  ADD ESP,0x1c
0054c1fa  c3  RET
0054c1fb  680100c52f  PUSH 0x2fc50001
0054c200  8bcb  MOV ECX,EBX
0054c202  e829e8ffff  CALL 0x0054aa30
0054c207  5f  POP EDI
0054c208  5e  POP ESI
0054c209  33c0  XOR EAX,EAX
0054c20b  5b  POP EBX
0054c20c  83c41c  ADD ESP,0x1c
0054c20f  c3  RET

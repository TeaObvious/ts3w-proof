# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectCatalog_FindByTypedKey
Paired actual annotated Ghidra pseudocode: 00C8EBB0_ObjectCatalog_FindByTypedKey.c
Owned ranges: [[00c8ebb0, 00c8ecbb]]
Envelope bytes=268

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c8ebb0  83ec18  SUB ESP,0x18
00c8ebb3  53  PUSH EBX
00c8ebb4  56  PUSH ESI
00c8ebb5  57  PUSH EDI
00c8ebb6  8b7c2428  MOV EDI,dword ptr [ESP + 0x28]
00c8ebba  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00c8ebbd  3d1d4f9e31  CMP EAX,0x319e4f1d
00c8ebc2  8bd9  MOV EBX,ECX
00c8ebc4  7578  JNZ 0x00c8ec3e
00c8ebc6  57  PUSH EDI
00c8ebc7  8d442410  LEA EAX,[ESP + 0x10]
00c8ebcb  8db3c0000000  LEA ESI,[EBX + 0xc0]
00c8ebd1  50  PUSH EAX
00c8ebd2  8bce  MOV ECX,ESI
00c8ebd4  e847efffff  CALL 0x00c8db20
00c8ebd9  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8ebdd  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00c8ebe1  7503  JNZ 0x00c8ebe6
00c8ebe3  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8ebe6  3b83c4000000  CMP EAX,dword ptr [EBX + 0xc4]
00c8ebec  740c  JZ 0x00c8ebfa
00c8ebee  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00c8ebf1  5f  POP EDI
00c8ebf2  5e  POP ESI
00c8ebf3  5b  POP EBX
00c8ebf4  83c418  ADD ESP,0x18
00c8ebf7  c20400  RET 0x4
00c8ebfa  8d4c2414  LEA ECX,[ESP + 0x14]
00c8ebfe  57  PUSH EDI
00c8ebff  51  PUSH ECX
00c8ec00  e8ab8bb4ff  CALL 0x007d77b0
00c8ec05  83c408  ADD ESP,0x8
00c8ec08  8d542414  LEA EDX,[ESP + 0x14]
00c8ec0c  52  PUSH EDX
00c8ec0d  8d442410  LEA EAX,[ESP + 0x10]
00c8ec11  50  PUSH EAX
00c8ec12  8bce  MOV ECX,ESI
00c8ec14  e807efffff  CALL 0x00c8db20
00c8ec19  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8ec1d  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00c8ec21  7404  JZ 0x00c8ec27
00c8ec23  8bf0  MOV ESI,EAX
00c8ec25  eb03  JMP 0x00c8ec2a
00c8ec27  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8ec2a  3bb3c4000000  CMP ESI,dword ptr [EBX + 0xc4]
00c8ec30  747f  JZ 0x00c8ecb1
00c8ec32  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8ec35  5f  POP EDI
00c8ec36  5e  POP ESI
00c8ec37  5b  POP EBX
00c8ec38  83c418  ADD ESP,0x18
00c8ec3b  c20400  RET 0x4
00c8ec3e  3d3f34dc02  CMP EAX,0x2dc343f
00c8ec43  756c  JNZ 0x00c8ecb1
00c8ec45  57  PUSH EDI
00c8ec46  8d4c2410  LEA ECX,[ESP + 0x10]
00c8ec4a  8db3d4000000  LEA ESI,[EBX + 0xd4]
00c8ec50  51  PUSH ECX
00c8ec51  8bce  MOV ECX,ESI
00c8ec53  e8c8eeffff  CALL 0x00c8db20
00c8ec58  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8ec5c  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00c8ec60  7503  JNZ 0x00c8ec65
00c8ec62  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8ec65  3b83d8000000  CMP EAX,dword ptr [EBX + 0xd8]
00c8ec6b  7581  JNZ 0x00c8ebee
00c8ec6d  8d542414  LEA EDX,[ESP + 0x14]
00c8ec71  57  PUSH EDI
00c8ec72  52  PUSH EDX
00c8ec73  e8388bb4ff  CALL 0x007d77b0
00c8ec78  83c408  ADD ESP,0x8
00c8ec7b  8d442414  LEA EAX,[ESP + 0x14]
00c8ec7f  50  PUSH EAX
00c8ec80  8d4c2410  LEA ECX,[ESP + 0x10]
00c8ec84  51  PUSH ECX
00c8ec85  8bce  MOV ECX,ESI
00c8ec87  e894eeffff  CALL 0x00c8db20
00c8ec8c  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8ec90  3b442410  CMP EAX,dword ptr [ESP + 0x10]
00c8ec94  7404  JZ 0x00c8ec9a
00c8ec96  8bf0  MOV ESI,EAX
00c8ec98  eb03  JMP 0x00c8ec9d
00c8ec9a  8b7604  MOV ESI,dword ptr [ESI + 0x4]
00c8ec9d  3bb3d8000000  CMP ESI,dword ptr [EBX + 0xd8]
00c8eca3  740c  JZ 0x00c8ecb1
00c8eca5  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c8eca8  5f  POP EDI
00c8eca9  5e  POP ESI
00c8ecaa  5b  POP EBX
00c8ecab  83c418  ADD ESP,0x18
00c8ecae  c20400  RET 0x4
00c8ecb1  5f  POP EDI
00c8ecb2  5e  POP ESI
00c8ecb3  33c0  XOR EAX,EAX
00c8ecb5  5b  POP EBX
00c8ecb6  83c418  ADD ESP,0x18
00c8ecb9  c20400  RET 0x4
Owned instructions=97 owned bytes=268 nonowned bytes=0

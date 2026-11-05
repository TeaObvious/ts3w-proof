# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: KeyNames_FindFirstMappedName
Paired actual annotated Ghidra pseudocode: 007D9040_KeyNames_FindFirstMappedName.c
Owned ranges: [[007d9040, 007d907c]]
Envelope bytes=61

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d9040  e8fb60f5ff  CALL 0x0072f140
007d9045  85c0  TEST EAX,EAX
007d9047  7501  JNZ 0x007d904a
007d9049  c3  RET
007d904a  8b10  MOV EDX,dword ptr [EAX]
007d904c  56  PUSH ESI
007d904d  8bc8  MOV ECX,EAX
007d904f  8b423c  MOV EAX,dword ptr [EDX + 0x3c]
007d9052  57  PUSH EDI
007d9053  ffd0  CALL EAX
007d9055  8bf8  MOV EDI,EAX
007d9057  85ff  TEST EDI,EDI
007d9059  741d  JZ 0x007d9078
007d905b  8b37  MOV ESI,dword ptr [EDI]
007d905d  3bf7  CMP ESI,EDI
007d905f  7417  JZ 0x007d9078
007d9061  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d9064  8d54240c  LEA EDX,[ESP + 0xc]
007d9068  52  PUSH EDX
007d9069  e8c261f5ff  CALL 0x0072f230
007d906e  85c0  TEST EAX,EAX
007d9070  7508  JNZ 0x007d907a
007d9072  8b36  MOV ESI,dword ptr [ESI]
007d9074  3bf7  CMP ESI,EDI
007d9076  75e9  JNZ 0x007d9061
007d9078  33c0  XOR EAX,EAX
007d907a  5f  POP EDI
007d907b  5e  POP ESI
007d907c  c3  RET
Owned instructions=29 owned bytes=61 gap/nonowned bytes=0

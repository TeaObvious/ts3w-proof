# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsParameterNode_ReadMatches
Paired actual annotated Ghidra pseudocode: 007FFB40_SacsParameterNode_ReadMatches.c
Owned ranges: [[007ffb40, 007ffbeb]]
Envelope bytes=172

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007ffb40  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007ffb44  3d01010000  CMP EAX,0x101
007ffb49  53  PUSH EBX
007ffb4a  55  PUSH EBP
007ffb4b  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
007ffb4f  8bd9  MOV EBX,ECX
007ffb51  7322  JNC 0x007ffb75
007ffb53  83fd01  CMP EBP,0x1
007ffb56  751d  JNZ 0x007ffb75
007ffb58  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
007ffb5c  8b542418  MOV EDX,dword ptr [ESP + 0x18]
007ffb60  51  PUSH ECX
007ffb61  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007ffb65  52  PUSH EDX
007ffb66  55  PUSH EBP
007ffb67  51  PUSH ECX
007ffb68  50  PUSH EAX
007ffb69  8bcb  MOV ECX,EBX
007ffb6b  e8f063ffff  CALL 0x007f5f60
007ffb70  5d  POP EBP
007ffb71  5b  POP EBX
007ffb72  c21400  RET 0x14
007ffb75  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
007ffb79  56  PUSH ESI
007ffb7a  57  PUSH EDI
007ffb7b  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007ffb7f  8b17  MOV EDX,dword ptr [EDI]
007ffb81  52  PUSH EDX
007ffb82  897c2420  MOV dword ptr [ESP + 0x20],EDI
007ffb86  e8a56af2ff  CALL 0x00726630
007ffb8b  8bf0  MOV ESI,EAX
007ffb8d  83c704  ADD EDI,0x4
007ffb90  85f6  TEST ESI,ESI
007ffb92  744f  JZ 0x007ffbe3
007ffb94  8b4350  MOV EAX,dword ptr [EBX + 0x50]
007ffb97  3bf0  CMP ESI,EAX
007ffb99  89442418  MOV dword ptr [ESP + 0x18],EAX
007ffb9d  741a  JZ 0x007ffbb9
007ffb9f  8b06  MOV EAX,dword ptr [ESI]
007ffba1  8b10  MOV EDX,dword ptr [EAX]
007ffba3  8bce  MOV ECX,ESI
007ffba5  ffd2  CALL EDX
007ffba7  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
007ffbab  85c9  TEST ECX,ECX
007ffbad  897350  MOV dword ptr [EBX + 0x50],ESI
007ffbb0  7407  JZ 0x007ffbb9
007ffbb2  8b01  MOV EAX,dword ptr [ECX]
007ffbb4  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007ffbb7  ffd2  CALL EDX
007ffbb9  8b442424  MOV EAX,dword ptr [ESP + 0x24]
007ffbbd  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
007ffbc1  50  PUSH EAX
007ffbc2  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007ffbc6  8bd7  MOV EDX,EDI
007ffbc8  2b542420  SUB EDX,dword ptr [ESP + 0x20]
007ffbcc  51  PUSH ECX
007ffbcd  c1fa02  SAR EDX,0x2
007ffbd0  2bea  SUB EBP,EDX
007ffbd2  55  PUSH EBP
007ffbd3  57  PUSH EDI
007ffbd4  50  PUSH EAX
007ffbd5  8bcb  MOV ECX,EBX
007ffbd7  e8a4f8ffff  CALL 0x007ff480
007ffbdc  5f  POP EDI
007ffbdd  5e  POP ESI
007ffbde  5d  POP EBP
007ffbdf  5b  POP EBX
007ffbe0  c21400  RET 0x14
007ffbe3  5f  POP EDI
007ffbe4  5e  POP ESI
007ffbe5  5d  POP EBP
007ffbe6  32c0  XOR AL,AL
007ffbe8  5b  POP EBX
007ffbe9  c21400  RET 0x14
Owned instructions=74 owned bytes=172 gap/nonowned bytes=0

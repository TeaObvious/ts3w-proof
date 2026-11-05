# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LoadSaveMetadata_WriteDatabase
Paired actual annotated Ghidra pseudocode: 00AAD7F0_LoadSaveMetadata_WriteDatabase.c
Owned ranges: [[00aad7f0, 00aad96a]]
Envelope bytes=379

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aad7f0  55  PUSH EBP
00aad7f1  8bec  MOV EBP,ESP
00aad7f3  83e4f8  AND ESP,0xfffffff8
00aad7f6  b8a41c0000  MOV EAX,0x1ca4
00aad7fb  e840204d00  CALL 0x00f7f840
00aad800  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00aad803  85c0  TEST EAX,EAX
00aad805  53  PUSH EBX
00aad806  56  PUSH ESI
00aad807  57  PUSH EDI
00aad808  8bd9  MOV EBX,ECX
00aad80a  7405  JZ 0x00aad811
00aad80c  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00aad80f  eb02  JMP 0x00aad813
00aad811  33c0  XOR EAX,EAX
00aad813  50  PUSH EAX
00aad814  8d8c2424040000  LEA ECX,[ESP + 0x424]
00aad81b  e800d3ffff  CALL 0x00aaab20
00aad820  8b4510  MOV EAX,dword ptr [EBP + 0x10]
00aad823  50  PUSH EAX
00aad824  6a00  PUSH 0x0
00aad826  8d8c2428040000  LEA ECX,[ESP + 0x428]
00aad82d  51  PUSH ECX
00aad82e  8bcb  MOV ECX,EBX
00aad830  e8abf7ffff  CALL 0x00aacfe0
00aad835  8d4c2410  LEA ECX,[ESP + 0x10]
00aad839  e8a2efa3ff  CALL 0x004ec7e0
00aad83e  6a00  PUSH 0x0
00aad840  6a00  PUSH 0x0
00aad842  6a00  PUSH 0x0
00aad844  6a00  PUSH 0x0
00aad846  68c8570601  PUSH 0x10657c8
00aad84b  b904010000  MOV ECX,0x104
00aad850  8db424a4140000  LEA ESI,[ESP + 0x14a4]
00aad857  8d7c2424  LEA EDI,[ESP + 0x24]
00aad85b  6898030000  PUSH 0x398
00aad860  f3a5  MOVSD.REP ES:EDI,ESI
00aad862  e8f96ea3ff  CALL 0x004e4760
00aad867  83c418  ADD ESP,0x18
00aad86a  85c0  TEST EAX,EAX
00aad86c  740f  JZ 0x00aad87d
00aad86e  6a00  PUSH 0x0
00aad870  6a00  PUSH 0x0
00aad872  8bc8  MOV ECX,EAX
00aad874  e817ba9fff  CALL 0x004a9290
00aad879  8bf0  MOV ESI,EAX
00aad87b  eb02  JMP 0x00aad87f
00aad87d  33f6  XOR ESI,ESI
00aad87f  8b7b2c  MOV EDI,dword ptr [EBX + 0x2c]
00aad882  3bf7  CMP ESI,EDI
00aad884  7420  JZ 0x00aad8a6
00aad886  85f6  TEST ESI,ESI
00aad888  740a  JZ 0x00aad894
00aad88a  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00aad88d  8b02  MOV EAX,dword ptr [EDX]
00aad88f  8d4e04  LEA ECX,[ESI + 0x4]
00aad892  ffd0  CALL EAX
00aad894  85ff  TEST EDI,EDI
00aad896  89732c  MOV dword ptr [EBX + 0x2c],ESI
00aad899  740b  JZ 0x00aad8a6
00aad89b  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00aad89e  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aad8a1  8d4f04  LEA ECX,[EDI + 0x4]
00aad8a4  ffd0  CALL EAX
00aad8a6  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aad8a9  8b11  MOV EDX,dword ptr [ECX]
00aad8ab  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aad8ae  ffd0  CALL EAX
00aad8b0  84c0  TEST AL,AL
00aad8b2  0f8484000000  JZ 0x00aad93c
00aad8b8  8b7b2c  MOV EDI,dword ptr [EBX + 0x2c]
00aad8bb  8b37  MOV ESI,dword ptr [EDI]
00aad8bd  8d4c2410  LEA ECX,[ESP + 0x10]
00aad8c1  83c62c  ADD ESI,0x2c
00aad8c4  e8d778d3ff  CALL 0x007e51a0
00aad8c9  8b16  MOV EDX,dword ptr [ESI]
00aad8cb  50  PUSH EAX
00aad8cc  8bcf  MOV ECX,EDI
00aad8ce  ffd2  CALL EDX
00aad8d0  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aad8d3  8b01  MOV EAX,dword ptr [ECX]
00aad8d5  8b5018  MOV EDX,dword ptr [EAX + 0x18]
00aad8d8  6a00  PUSH 0x0
00aad8da  6a02  PUSH 0x2
00aad8dc  6a02  PUSH 0x2
00aad8de  ffd2  CALL EDX
00aad8e0  84c0  TEST AL,AL
00aad8e2  744e  JZ 0x00aad932
00aad8e4  8b750c  MOV ESI,dword ptr [EBP + 0xc]
00aad8e7  b801000000  MOV EAX,0x1
00aad8ec  894608  MOV dword ptr [ESI + 0x8],EAX
00aad8ef  33c9  XOR ECX,ECX
00aad8f1  ba8f788a62  MOV EDX,0x628a788f
00aad8f6  894e0c  MOV dword ptr [ESI + 0xc],ECX
00aad8f9  33ff  XOR EDI,EDI
00aad8fb  895610  MOV dword ptr [ESI + 0x10],EDX
00aad8fe  897e14  MOV dword ptr [ESI + 0x14],EDI
00aad901  e87a25a0ff  CALL 0x004afe80
00aad906  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aad909  8b10  MOV EDX,dword ptr [EAX]
00aad90b  57  PUSH EDI
00aad90c  57  PUSH EDI
00aad90d  51  PUSH ECX
00aad90e  57  PUSH EDI
00aad90f  8bc8  MOV ECX,EAX
00aad911  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00aad914  56  PUSH ESI
00aad915  ffd0  CALL EAX
00aad917  84c0  TEST AL,AL
00aad919  7417  JZ 0x00aad932
00aad91b  8d8c2420040000  LEA ECX,[ESP + 0x420]
00aad922  e8a9c8ffff  CALL 0x00aaa1d0
00aad927  b001  MOV AL,0x1
00aad929  5f  POP EDI
00aad92a  5e  POP ESI
00aad92b  5b  POP EBX
00aad92c  8be5  MOV ESP,EBP
00aad92e  5d  POP EBP
00aad92f  c20c00  RET 0xc
00aad932  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aad935  8b11  MOV EDX,dword ptr [ECX]
00aad937  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00aad93a  ffd0  CALL EAX
00aad93c  8b432c  MOV EAX,dword ptr [EBX + 0x2c]
00aad93f  85c0  TEST EAX,EAX
00aad941  7411  JZ 0x00aad954
00aad943  8d4804  LEA ECX,[EAX + 0x4]
00aad946  c7432c00000000  MOV dword ptr [EBX + 0x2c],0x0
00aad94d  8b11  MOV EDX,dword ptr [ECX]
00aad94f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aad952  ffd0  CALL EAX
00aad954  8d8c2420040000  LEA ECX,[ESP + 0x420]
00aad95b  e870c8ffff  CALL 0x00aaa1d0
00aad960  5f  POP EDI
00aad961  5e  POP ESI
00aad962  32c0  XOR AL,AL
00aad964  5b  POP EBX
00aad965  8be5  MOV ESP,EBP
00aad967  5d  POP EBP
00aad968  c20c00  RET 0xc
Owned instructions=140 owned bytes=379 gap/nonowned bytes=0

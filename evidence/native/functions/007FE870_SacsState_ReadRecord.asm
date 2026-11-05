# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsState_ReadRecord
Paired actual annotated Ghidra pseudocode: 007FE870_SacsState_ReadRecord.c
Owned ranges: [[007fe870, 007fe951]]
Envelope bytes=226

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007fe870  53  PUSH EBX
007fe871  8bd9  MOV EBX,ECX
007fe873  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007fe877  8b4104  MOV EAX,dword ptr [ECX + 0x4]
007fe87a  85c0  TEST EAX,EAX
007fe87c  56  PUSH ESI
007fe87d  7405  JZ 0x007fe884
007fe87f  8b7008  MOV ESI,dword ptr [EAX + 0x8]
007fe882  eb02  JMP 0x007fe886
007fe884  33f6  XOR ESI,ESI
007fe886  8b01  MOV EAX,dword ptr [ECX]
007fe888  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
007fe88b  ffd2  CALL EDX
007fe88d  83f814  CMP EAX,0x14
007fe890  7307  JNC 0x007fe899
007fe892  5e  POP ESI
007fe893  32c0  XOR AL,AL
007fe895  5b  POP EBX
007fe896  c20c00  RET 0xc
007fe899  807c241400  CMP byte ptr [ESP + 0x14],0x0
007fe89e  740d  JZ 0x007fe8ad
007fe8a0  c1e802  SHR EAX,0x2
007fe8a3  50  PUSH EAX
007fe8a4  56  PUSH ESI
007fe8a5  e8c647fdff  CALL 0x007d3070
007fe8aa  83c408  ADD ESP,0x8
007fe8ad  8d4604  LEA EAX,[ESI + 0x4]
007fe8b0  89442414  MOV dword ptr [ESP + 0x14],EAX
007fe8b4  8b00  MOV EAX,dword ptr [EAX]
007fe8b6  3d00010000  CMP EAX,0x100
007fe8bb  72d5  JC 0x007fe892
007fe8bd  3dff010000  CMP EAX,0x1ff
007fe8c2  77ce  JA 0x007fe892
007fe8c4  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007fe8c7  55  PUSH EBP
007fe8c8  894328  MOV dword ptr [EBX + 0x28],EAX
007fe8cb  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
007fe8ce  51  PUSH ECX
007fe8cf  6aff  PUSH -0x1
007fe8d1  8bcb  MOV ECX,EBX
007fe8d3  e878edffff  CALL 0x007fd650
007fe8d8  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007fe8db  85c0  TEST EAX,EAX
007fe8dd  8b6c2414  MOV EBP,dword ptr [ESP + 0x14]
007fe8e1  7414  JZ 0x007fe8f7
007fe8e3  50  PUSH EAX
007fe8e4  8bcd  MOV ECX,EBP
007fe8e6  e8457df2ff  CALL 0x00726630
007fe8eb  85c0  TEST EAX,EAX
007fe8ed  7452  JZ 0x007fe941
007fe8ef  50  PUSH EAX
007fe8f0  8bcb  MOV ECX,EBX
007fe8f2  e8d9e8ffff  CALL 0x007fd1d0
007fe8f7  83c614  ADD ESI,0x14
007fe8fa  57  PUSH EDI
007fe8fb  8b3e  MOV EDI,dword ptr [ESI]
007fe8fd  83c604  ADD ESI,0x4
007fe900  85ff  TEST EDI,EDI
007fe902  741e  JZ 0x007fe922
007fe904  8b16  MOV EDX,dword ptr [ESI]
007fe906  52  PUSH EDX
007fe907  8bcd  MOV ECX,EBP
007fe909  e8227df2ff  CALL 0x00726630
007fe90e  85c0  TEST EAX,EAX
007fe910  7437  JZ 0x007fe949
007fe912  50  PUSH EAX
007fe913  8bcb  MOV ECX,EBX
007fe915  e806ffffff  CALL 0x007fe820
007fe91a  83c604  ADD ESI,0x4
007fe91d  83ef01  SUB EDI,0x1
007fe920  75e2  JNZ 0x007fe904
007fe922  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
007fe926  813801010000  CMP dword ptr [EAX],0x101
007fe92c  720a  JC 0x007fe938
007fe92e  8b36  MOV ESI,dword ptr [ESI]
007fe930  83fe06  CMP ESI,0x6
007fe933  7403  JZ 0x007fe938
007fe935  897330  MOV dword ptr [EBX + 0x30],ESI
007fe938  5f  POP EDI
007fe939  5d  POP EBP
007fe93a  5e  POP ESI
007fe93b  b001  MOV AL,0x1
007fe93d  5b  POP EBX
007fe93e  c20c00  RET 0xc
007fe941  5d  POP EBP
007fe942  5e  POP ESI
007fe943  32c0  XOR AL,AL
007fe945  5b  POP EBX
007fe946  c20c00  RET 0xc
007fe949  5f  POP EDI
007fe94a  5d  POP EBP
007fe94b  5e  POP ESI
007fe94c  32c0  XOR AL,AL
007fe94e  5b  POP EBX
007fe94f  c20c00  RET 0xc
Owned instructions=95 owned bytes=226 gap/nonowned bytes=0

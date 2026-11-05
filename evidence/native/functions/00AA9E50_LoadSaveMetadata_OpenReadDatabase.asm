# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: LoadSaveMetadata_OpenReadDatabase
Paired actual annotated Ghidra pseudocode: 00AA9E50_LoadSaveMetadata_OpenReadDatabase.c
Owned ranges: [[00aa9e50, 00aaa009]]
Envelope bytes=442

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aa9e50  55  PUSH EBP
00aa9e51  8bec  MOV EBP,ESP
00aa9e53  83e4f8  AND ESP,0xfffffff8
00aa9e56  81ec34040000  SUB ESP,0x434
00aa9e5c  53  PUSH EBX
00aa9e5d  56  PUSH ESI
00aa9e5e  8bd9  MOV EBX,ECX
00aa9e60  57  PUSH EDI
00aa9e61  8d4c2430  LEA ECX,[ESP + 0x30]
00aa9e65  e87629a4ff  CALL 0x004ec7e0
00aa9e6a  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00aa9e6d  b904010000  MOV ECX,0x104
00aa9e72  8d7c2430  LEA EDI,[ESP + 0x30]
00aa9e76  f3a5  MOVSD.REP ES:EDI,ESI
00aa9e78  8d4c2430  LEA ECX,[ESP + 0x30]
00aa9e7c  e81fb3d3ff  CALL 0x007e51a0
00aa9e81  50  PUSH EAX
00aa9e82  e8a922a3ff  CALL 0x004dc130
00aa9e87  8b7508  MOV ESI,dword ptr [EBP + 0x8]
00aa9e8a  83c404  ADD ESP,0x4
00aa9e8d  84c0  TEST AL,AL
00aa9e8f  b904010000  MOV ECX,0x104
00aa9e94  8d7c2430  LEA EDI,[ESP + 0x30]
00aa9e98  7508  JNZ 0x00aa9ea2
00aa9e9a  81c6600c0000  ADD ESI,0xc60
00aa9ea0  eb06  JMP 0x00aa9ea8
00aa9ea2  81c670100000  ADD ESI,0x1070
00aa9ea8  f3a5  MOVSD.REP ES:EDI,ESI
00aa9eaa  6a02  PUSH 0x2
00aa9eac  8d4c2434  LEA ECX,[ESP + 0x34]
00aa9eb0  e8ebb2d3ff  CALL 0x007e51a0
00aa9eb5  50  PUSH EAX
00aa9eb6  e80520a3ff  CALL 0x004dbec0
00aa9ebb  89442420  MOV dword ptr [ESP + 0x20],EAX
00aa9ebf  8d442420  LEA EAX,[ESP + 0x20]
00aa9ec3  50  PUSH EAX
00aa9ec4  89542428  MOV dword ptr [ESP + 0x28],EDX
00aa9ec8  ff15e865f900  CALL dword ptr [0x00f965e8]
00aa9ece  6a00  PUSH 0x0
00aa9ed0  6a00  PUSH 0x0
00aa9ed2  6a00  PUSH 0x0
00aa9ed4  6a00  PUSH 0x0
00aa9ed6  68ac560601  PUSH 0x10656ac
00aa9edb  68b0000000  PUSH 0xb0
00aa9ee0  89442438  MOV dword ptr [ESP + 0x38],EAX
00aa9ee4  e877a8a3ff  CALL 0x004e4760
00aa9ee9  83c424  ADD ESP,0x24
00aa9eec  85c0  TEST EAX,EAX
00aa9eee  740d  JZ 0x00aa9efd
00aa9ef0  6a00  PUSH 0x0
00aa9ef2  8bc8  MOV ECX,EAX
00aa9ef4  e8572dc8ff  CALL 0x0072cc50
00aa9ef9  8bf0  MOV ESI,EAX
00aa9efb  eb02  JMP 0x00aa9eff
00aa9efd  33f6  XOR ESI,ESI
00aa9eff  8b7b2c  MOV EDI,dword ptr [EBX + 0x2c]
00aa9f02  3bf7  CMP ESI,EDI
00aa9f04  7420  JZ 0x00aa9f26
00aa9f06  85f6  TEST ESI,ESI
00aa9f08  740a  JZ 0x00aa9f14
00aa9f0a  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00aa9f0d  8b02  MOV EAX,dword ptr [EDX]
00aa9f0f  8d4e04  LEA ECX,[ESI + 0x4]
00aa9f12  ffd0  CALL EAX
00aa9f14  85ff  TEST EDI,EDI
00aa9f16  89732c  MOV dword ptr [EBX + 0x2c],ESI
00aa9f19  740b  JZ 0x00aa9f26
00aa9f1b  8b5704  MOV EDX,dword ptr [EDI + 0x4]
00aa9f1e  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aa9f21  8d4f04  LEA ECX,[EDI + 0x4]
00aa9f24  ffd0  CALL EAX
00aa9f26  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aa9f29  8b11  MOV EDX,dword ptr [ECX]
00aa9f2b  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aa9f2e  ffd0  CALL EAX
00aa9f30  84c0  TEST AL,AL
00aa9f32  0f84af000000  JZ 0x00aa9fe7
00aa9f38  8b7b2c  MOV EDI,dword ptr [EBX + 0x2c]
00aa9f3b  8b37  MOV ESI,dword ptr [EDI]
00aa9f3d  8d4c2430  LEA ECX,[ESP + 0x30]
00aa9f41  83c62c  ADD ESI,0x2c
00aa9f44  e857b2d3ff  CALL 0x007e51a0
00aa9f49  8b16  MOV EDX,dword ptr [ESI]
00aa9f4b  50  PUSH EAX
00aa9f4c  8bcf  MOV ECX,EDI
00aa9f4e  ffd2  CALL EDX
00aa9f50  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aa9f53  8b01  MOV EAX,dword ptr [ECX]
00aa9f55  8b5018  MOV EDX,dword ptr [EAX + 0x18]
00aa9f58  33f6  XOR ESI,ESI
00aa9f5a  56  PUSH ESI
00aa9f5b  6a03  PUSH 0x3
00aa9f5d  6a01  PUSH 0x1
00aa9f5f  ffd2  CALL EDX
00aa9f61  84c0  TEST AL,AL
00aa9f63  7478  JZ 0x00aa9fdd
00aa9f65  c744242001000000  MOV dword ptr [ESP + 0x20],0x1
00aa9f6d  89742424  MOV dword ptr [ESP + 0x24],ESI
00aa9f71  c74424288f788a62  MOV dword ptr [ESP + 0x28],0x628a788f
00aa9f79  8974242c  MOV dword ptr [ESP + 0x2c],ESI
00aa9f7d  e8fe5ea0ff  CALL 0x004afe80
00aa9f82  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aa9f85  8b10  MOV EDX,dword ptr [EAX]
00aa9f87  8b520c  MOV EDX,dword ptr [EDX + 0xc]
00aa9f8a  56  PUSH ESI
00aa9f8b  56  PUSH ESI
00aa9f8c  51  PUSH ECX
00aa9f8d  56  PUSH ESI
00aa9f8e  8d4c2420  LEA ECX,[ESP + 0x20]
00aa9f92  51  PUSH ECX
00aa9f93  8d4c2434  LEA ECX,[ESP + 0x34]
00aa9f97  51  PUSH ECX
00aa9f98  8bc8  MOV ECX,EAX
00aa9f9a  ffd2  CALL EDX
00aa9f9c  84c0  TEST AL,AL
00aa9f9e  743d  JZ 0x00aa9fdd
00aa9fa0  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00aa9fa4  8b450c  MOV EAX,dword ptr [EBP + 0xc]
00aa9fa7  8908  MOV dword ptr [EAX],ECX
00aa9fa9  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00aa9fad  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00aa9fb0  81c26c070000  ADD EDX,0x76c
00aa9fb6  52  PUSH EDX
00aa9fb7  8b5010  MOV EDX,dword ptr [EAX + 0x10]
00aa9fba  83c201  ADD EDX,0x1
00aa9fbd  52  PUSH EDX
00aa9fbe  8b500c  MOV EDX,dword ptr [EAX + 0xc]
00aa9fc1  52  PUSH EDX
00aa9fc2  8b10  MOV EDX,dword ptr [EAX]
00aa9fc4  52  PUSH EDX
00aa9fc5  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00aa9fc8  8b4008  MOV EAX,dword ptr [EAX + 0x8]
00aa9fcb  52  PUSH EDX
00aa9fcc  50  PUSH EAX
00aa9fcd  e8ae3cafff  CALL 0x0059dc80
00aa9fd2  b001  MOV AL,0x1
00aa9fd4  5f  POP EDI
00aa9fd5  5e  POP ESI
00aa9fd6  5b  POP EBX
00aa9fd7  8be5  MOV ESP,EBP
00aa9fd9  5d  POP EBP
00aa9fda  c20800  RET 0x8
00aa9fdd  8b4b2c  MOV ECX,dword ptr [EBX + 0x2c]
00aa9fe0  8b11  MOV EDX,dword ptr [ECX]
00aa9fe2  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00aa9fe5  ffd0  CALL EAX
00aa9fe7  8b432c  MOV EAX,dword ptr [EBX + 0x2c]
00aa9fea  85c0  TEST EAX,EAX
00aa9fec  7411  JZ 0x00aa9fff
00aa9fee  8d4804  LEA ECX,[EAX + 0x4]
00aa9ff1  c7432c00000000  MOV dword ptr [EBX + 0x2c],0x0
00aa9ff8  8b11  MOV EDX,dword ptr [ECX]
00aa9ffa  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00aa9ffd  ffd0  CALL EAX
00aa9fff  5f  POP EDI
00aaa000  5e  POP ESI
00aaa001  32c0  XOR AL,AL
00aaa003  5b  POP EBX
00aaa004  8be5  MOV ESP,EBP
00aaa006  5d  POP EBP
00aaa007  c20800  RET 0x8
Owned instructions=161 owned bytes=442 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete original owned function listing.
Analyst name: SceneRenderer_ApplyDrawContextRasterDefaults
Paired actual annotated Ghidra pseudocode: 006E8EC0_SceneRenderer_ApplyDrawContextRasterDefaults.c
Owned ranges: [[006e8ec0, 006e8f61]]
Owned bytes=162; instructions=59. Nonowned holes are excluded.

GHIDRA LISTING (original bytes)
006e8ec0  53  PUSH EBX
006e8ec1  56  PUSH ESI
006e8ec2  57  PUSH EDI
006e8ec3  8bf9  MOV EDI,ECX
006e8ec5  e8465af2ff  CALL 0x0060e910
006e8eca  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
006e8ece  8bf0  MOV ESI,EAX
006e8ed0  8b4304  MOV EAX,dword ptr [EBX + 0x4]
006e8ed3  c1e803  SHR EAX,0x3
006e8ed6  a801  TEST AL,0x1
006e8ed8  8bce  MOV ECX,ESI
006e8eda  741c  JZ 0x006e8ef8
006e8edc  6a02  PUSH 0x2
006e8ede  e8fd70f2ff  CALL 0x0060ffe0
006e8ee3  33c9  XOR ECX,ECX
006e8ee5  384b10  CMP byte ptr [EBX + 0x10],CL
006e8ee8  0f95c1  SETNZ CL
006e8eeb  83c101  ADD ECX,0x1
006e8eee  51  PUSH ECX
006e8eef  8bce  MOV ECX,ESI
006e8ef1  e8ca6ef2ff  CALL 0x0060fdc0
006e8ef6  eb37  JMP 0x006e8f2f
006e8ef8  8a975c020000  MOV DL,byte ptr [EDI + 0x25c]
006e8efe  f6da  NEG DL
006e8f00  1bd2  SBB EDX,EDX
006e8f02  83c202  ADD EDX,0x2
006e8f05  52  PUSH EDX
006e8f06  e8d570f2ff  CALL 0x0060ffe0
006e8f0b  33c0  XOR EAX,EAX
006e8f0d  388763020000  CMP byte ptr [EDI + 0x263],AL
006e8f13  7409  JZ 0x006e8f1e
006e8f15  384310  CMP byte ptr [EBX + 0x10],AL
006e8f18  0f95c0  SETNZ AL
006e8f1b  83c001  ADD EAX,0x1
006e8f1e  50  PUSH EAX
006e8f1f  8bce  MOV ECX,ESI
006e8f21  e89a6ef2ff  CALL 0x0060fdc0
006e8f26  6a0f  PUSH 0xf
006e8f28  8bce  MOV ECX,ESI
006e8f2a  e8716ef2ff  CALL 0x0060fda0
006e8f2f  6a01  PUSH 0x1
006e8f31  8bce  MOV ECX,ESI
006e8f33  e8a86ef2ff  CALL 0x0060fde0
006e8f38  6a03  PUSH 0x3
006e8f3a  8bce  MOV ECX,ESI
006e8f3c  e8cf6ef2ff  CALL 0x0060fe10
006e8f41  6a01  PUSH 0x1
006e8f43  8bce  MOV ECX,ESI
006e8f45  e8b66ef2ff  CALL 0x0060fe00
006e8f4a  6a00  PUSH 0x0
006e8f4c  8bce  MOV ECX,ESI
006e8f4e  e89d6ff2ff  CALL 0x0060fef0
006e8f53  6a00  PUSH 0x0
006e8f55  8bce  MOV ECX,ESI
006e8f57  e83470f2ff  CALL 0x0060ff90
006e8f5c  5f  POP EDI
006e8f5d  5e  POP ESI
006e8f5e  5b  POP EBX
006e8f5f  c20400  RET 0x4

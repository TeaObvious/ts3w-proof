# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: UInt32PairMap_InsertUnique
Paired actual annotated Ghidra pseudocode: 007F4270_UInt32PairMap_InsertUnique.c
Owned ranges: [[007f4270, 007f4357]]
Envelope bytes=232

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f4270  8b442408  MOV EAX,dword ptr [ESP + 0x8]
007f4274  83ec08  SUB ESP,0x8
007f4277  53  PUSH EBX
007f4278  8b18  MOV EBX,dword ptr [EAX]
007f427a  55  PUSH EBP
007f427b  56  PUSH ESI
007f427c  8bf1  MOV ESI,ECX
007f427e  33d2  XOR EDX,EDX
007f4280  57  PUSH EDI
007f4281  8b7e08  MOV EDI,dword ptr [ESI + 0x8]
007f4284  8bc3  MOV EAX,EBX
007f4286  f7f7  DIV EDI
007f4288  8b4e04  MOV ECX,dword ptr [ESI + 0x4]
007f428b  8bea  MOV EBP,EDX
007f428d  8d14a9  LEA EDX,[ECX + EBP*0x4]
007f4290  8b0a  MOV ECX,dword ptr [EDX]
007f4292  85c9  TEST ECX,ECX
007f4294  740f  JZ 0x007f42a5
007f4296  3b19  CMP EBX,dword ptr [ECX]
007f4298  0f84a3000000  JZ 0x007f4341
007f429e  8b4908  MOV ECX,dword ptr [ECX + 0x8]
007f42a1  85c9  TEST ECX,ECX
007f42a3  75f1  JNZ 0x007f4296
007f42a5  8b560c  MOV EDX,dword ptr [ESI + 0xc]
007f42a8  6a01  PUSH 0x1
007f42aa  52  PUSH EDX
007f42ab  57  PUSH EDI
007f42ac  8d44241c  LEA EAX,[ESP + 0x1c]
007f42b0  50  PUSH EAX
007f42b1  8d4e10  LEA ECX,[ESI + 0x10]
007f42b4  e807ccceff  CALL 0x004e0ec0
007f42b9  8b4e1c  MOV ECX,dword ptr [ESI + 0x1c]
007f42bc  68e7000000  PUSH 0xe7
007f42c1  688899f900  PUSH 0xf99988
007f42c6  6a00  PUSH 0x0
007f42c8  6a00  PUSH 0x0
007f42ca  51  PUSH ECX
007f42cb  6a0c  PUSH 0xc
007f42cd  e82e02cfff  CALL 0x004e4500
007f42d2  8bf8  MOV EDI,EAX
007f42d4  83c418  ADD ESP,0x18
007f42d7  85ff  TEST EDI,EDI
007f42d9  740e  JZ 0x007f42e9
007f42db  8b442420  MOV EAX,dword ptr [ESP + 0x20]
007f42df  8b10  MOV EDX,dword ptr [EAX]
007f42e1  8917  MOV dword ptr [EDI],EDX
007f42e3  8b4004  MOV EAX,dword ptr [EAX + 0x4]
007f42e6  894704  MOV dword ptr [EDI + 0x4],EAX
007f42e9  c7470800000000  MOV dword ptr [EDI + 0x8],0x0
007f42f0  807c241000  CMP byte ptr [ESP + 0x10],0x0
007f42f5  7414  JZ 0x007f430b
007f42f7  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
007f42fb  33d2  XOR EDX,EDX
007f42fd  8bc3  MOV EAX,EBX
007f42ff  f7f1  DIV ECX
007f4301  51  PUSH ECX
007f4302  8bce  MOV ECX,ESI
007f4304  8bea  MOV EBP,EDX
007f4306  e8550f0700  CALL 0x00865260
007f430b  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007f430e  8d0cad00000000  LEA ECX,[EBP*0x4 + 0x0]
007f4315  8b0411  MOV EAX,dword ptr [ECX + EDX*0x1]
007f4318  894708  MOV dword ptr [EDI + 0x8],EAX
007f431b  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007f431e  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
007f4322  893c11  MOV dword ptr [ECX + EDX*0x1],EDI
007f4325  83460c01  ADD dword ptr [ESI + 0xc],0x1
007f4329  8b5604  MOV EDX,dword ptr [ESI + 0x4]
007f432c  8938  MOV dword ptr [EAX],EDI
007f432e  5f  POP EDI
007f432f  5e  POP ESI
007f4330  03d1  ADD EDX,ECX
007f4332  5d  POP EBP
007f4333  c6400801  MOV byte ptr [EAX + 0x8],0x1
007f4337  895004  MOV dword ptr [EAX + 0x4],EDX
007f433a  5b  POP EBX
007f433b  83c408  ADD ESP,0x8
007f433e  c20c00  RET 0xc
007f4341  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
007f4345  5f  POP EDI
007f4346  5e  POP ESI
007f4347  5d  POP EBP
007f4348  8908  MOV dword ptr [EAX],ECX
007f434a  c6400800  MOV byte ptr [EAX + 0x8],0x0
007f434e  895004  MOV dword ptr [EAX + 0x4],EDX
007f4351  5b  POP EBX
007f4352  83c408  ADD ESP,0x8
007f4355  c20c00  RET 0xc
Owned instructions=88 owned bytes=232 gap/nonowned bytes=0

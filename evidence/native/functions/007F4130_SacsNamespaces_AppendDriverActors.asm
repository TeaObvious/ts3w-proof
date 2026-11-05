# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsNamespaces_AppendDriverActors
Paired actual annotated Ghidra pseudocode: 007F4130_SacsNamespaces_AppendDriverActors.c
Owned ranges: [[007f4130, 007f414c] [007f4150, 007f41ac]]
Envelope bytes=125

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007f4130  53  PUSH EBX
007f4131  55  PUSH EBP
007f4132  8bd9  MOV EBX,ECX
007f4134  8b03  MOV EAX,dword ptr [EBX]
007f4136  8b400c  MOV EAX,dword ptr [EAX + 0xc]
007f4139  56  PUSH ESI
007f413a  57  PUSH EDI
007f413b  8b7844  MOV EDI,dword ptr [EAX + 0x44]
007f413e  8b37  MOV ESI,dword ptr [EDI]
007f4140  85f6  TEST ESI,ESI
007f4142  7516  JNZ 0x007f415a
007f4144  83c704  ADD EDI,0x4
007f4147  3937  CMP dword ptr [EDI],ESI
007f4149  750d  JNZ 0x007f4158
007f414b  eb03  JMP 0x007f4150
007f414d  8d  .byte (gap/alignment)
007f414e  49  .byte (gap/alignment)
007f414f  00  .byte (gap/alignment)
007f4150  83c704  ADD EDI,0x4
007f4153  833f00  CMP dword ptr [EDI],0x0
007f4156  74f8  JZ 0x007f4150
007f4158  8b37  MOV ESI,dword ptr [EDI]
007f415a  8b4848  MOV ECX,dword ptr [EAX + 0x48]
007f415d  8b5044  MOV EDX,dword ptr [EAX + 0x44]
007f4160  8b2c8a  MOV EBP,dword ptr [EDX + ECX*0x4]
007f4163  3bf5  CMP ESI,EBP
007f4165  743f  JZ 0x007f41a6
007f4167  8b06  MOV EAX,dword ptr [ESI]
007f4169  85c0  TEST EAX,EAX
007f416b  7424  JZ 0x007f4191
007f416d  8b0b  MOV ECX,dword ptr [EBX]
007f416f  50  PUSH EAX
007f4170  e86bbe0000  CALL 0x007fffe0
007f4175  85c0  TEST EAX,EAX
007f4177  7418  JZ 0x007f4191
007f4179  8b4008  MOV EAX,dword ptr [EAX + 0x8]
007f417c  85c0  TEST EAX,EAX
007f417e  7411  JZ 0x007f4191
007f4180  50  PUSH EAX
007f4181  8b4020  MOV EAX,dword ptr [EAX + 0x20]
007f4184  8b482c  MOV ECX,dword ptr [EAX + 0x2c]
007f4187  51  PUSH ECX
007f4188  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
007f418c  e82fe2d8ff  CALL 0x005823c0
007f4191  8b7608  MOV ESI,dword ptr [ESI + 0x8]
007f4194  85f6  TEST ESI,ESI
007f4196  750a  JNZ 0x007f41a2
007f4198  8b7704  MOV ESI,dword ptr [EDI + 0x4]
007f419b  83c704  ADD EDI,0x4
007f419e  85f6  TEST ESI,ESI
007f41a0  74f6  JZ 0x007f4198
007f41a2  3bf5  CMP ESI,EBP
007f41a4  75c1  JNZ 0x007f4167
007f41a6  5f  POP EDI
007f41a7  5e  POP ESI
007f41a8  5d  POP EBP
007f41a9  5b  POP EBX
007f41aa  c20400  RET 0x4
Owned instructions=55 owned bytes=122 gap/nonowned bytes=3

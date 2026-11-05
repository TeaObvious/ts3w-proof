# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadBoolean
Paired actual annotated Ghidra pseudocode: 007D51C0_NativePropertyStream_ReadBoolean.c
Owned ranges: [[007d51c0, 007d5203]]
Envelope bytes=68

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d51c0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d51c4  57  PUSH EDI
007d51c5  35595ffe68  XOR EAX,0x68fe5f59
007d51ca  50  PUSH EAX
007d51cb  8bf9  MOV EDI,ECX
007d51cd  e88effffff  CALL 0x007d5160
007d51d2  84c0  TEST AL,AL
007d51d4  7428  JZ 0x007d51fe
007d51d6  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d51da  56  PUSH ESI
007d51db  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d51de  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d51e1  51  PUSH ECX
007d51e2  52  PUSH EDX
007d51e3  e87886d0ff  CALL 0x004dd860
007d51e8  83c408  ADD ESP,0x8
007d51eb  8bce  MOV ECX,ESI
007d51ed  50  PUSH EAX
007d51ee  e8fd270000  CALL 0x007d79f0
007d51f3  8b4708  MOV EAX,dword ptr [EDI + 0x8]
007d51f6  8a4014  MOV AL,byte ptr [EAX + 0x14]
007d51f9  5e  POP ESI
007d51fa  5f  POP EDI
007d51fb  c20800  RET 0x8
007d51fe  32c0  XOR AL,AL
007d5200  5f  POP EDI
007d5201  c20800  RET 0x8
Owned instructions=27 owned bytes=68 gap/nonowned bytes=0

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: Object_IsLevelAboveFloorCutout
Paired actual annotated Ghidra pseudocode: 00B00880_Object_IsLevelAboveFloorCutout.c
Owned ranges: [[00b00880, 00b008d2]]
Envelope bytes=83

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00b00880  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b00884  85c0  TEST EAX,EAX
00b00886  7448  JZ 0x00b008d0
00b00888  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00b0088e  83c018  ADD EAX,0x18
00b00891  50  PUSH EAX
00b00892  e819e31800  CALL 0x00c8ebb0
00b00897  85c0  TEST EAX,EAX
00b00899  7435  JZ 0x00b008d0
00b0089b  8b8898000000  MOV ECX,dword ptr [EAX + 0x98]
00b008a1  c1e919  SHR ECX,0x19
00b008a4  f6c101  TEST CL,0x1
00b008a7  7427  JZ 0x00b008d0
00b008a9  f780d000000000000200  TEST dword ptr [EAX + 0xd0],0x20000
00b008b3  751b  JNZ 0x00b008d0
00b008b5  f780ac00000000180000  TEST dword ptr [EAX + 0xac],0x1800
00b008bf  750f  JNZ 0x00b008d0
00b008c1  33d2  XOR EDX,EDX
00b008c3  83b8f000000001  CMP dword ptr [EAX + 0xf0],0x1
00b008ca  0f94c2  SETZ DL
00b008cd  8ac2  MOV AL,DL
00b008cf  c3  RET
00b008d0  32c0  XOR AL,AL
00b008d2  c3  RET
Owned instructions=24 owned bytes=83 nonowned bytes=0

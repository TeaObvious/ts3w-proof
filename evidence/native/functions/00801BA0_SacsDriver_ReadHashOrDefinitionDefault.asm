# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: SacsDriver_ReadHashOrDefinitionDefault
Paired actual annotated Ghidra pseudocode: 00801BA0_SacsDriver_ReadHashOrDefinitionDefault.c
Owned ranges: [[00801ba0, 00801bc8]]
Envelope bytes=41

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00801ba0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00801ba4  50  PUSH EAX
00801ba5  e856ffffff  CALL 0x00801b00
00801baa  85c0  TEST EAX,EAX
00801bac  7414  JZ 0x00801bc2
00801bae  8b4808  MOV ECX,dword ptr [EAX + 0x8]
00801bb1  85c9  TEST ECX,ECX
00801bb3  7405  JZ 0x00801bba
00801bb5  8bc1  MOV EAX,ECX
00801bb7  c20800  RET 0x8
00801bba  8b08  MOV ECX,dword ptr [EAX]
00801bbc  8b4134  MOV EAX,dword ptr [ECX + 0x34]
00801bbf  c20800  RET 0x8
00801bc2  8b442408  MOV EAX,dword ptr [ESP + 0x8]
00801bc6  c20800  RET 0x8
Owned instructions=15 owned bytes=41 gap/nonowned bytes=0

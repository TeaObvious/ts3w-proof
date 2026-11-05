# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadInt32
Paired actual annotated Ghidra pseudocode: 007D5210_NativePropertyStream_ReadInt32.c
Owned ranges: [[007d5210, 007d5257]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d5210  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d5214  57  PUSH EDI
007d5215  352b641504  XOR EAX,0x415642b
007d521a  50  PUSH EAX
007d521b  8bf9  MOV EDI,ECX
007d521d  e83effffff  CALL 0x007d5160
007d5222  84c0  TEST AL,AL
007d5224  742c  JZ 0x007d5252
007d5226  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d522a  56  PUSH ESI
007d522b  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d522e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5231  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d5234  51  PUSH ECX
007d5235  52  PUSH EDX
007d5236  50  PUSH EAX
007d5237  e84487d0ff  CALL 0x004dd980
007d523c  83c40c  ADD ESP,0xc
007d523f  8bce  MOV ECX,ESI
007d5241  50  PUSH EAX
007d5242  e8a9270000  CALL 0x007d79f0
007d5247  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007d524a  8a4114  MOV AL,byte ptr [ECX + 0x14]
007d524d  5e  POP ESI
007d524e  5f  POP EDI
007d524f  c20800  RET 0x8
007d5252  32c0  XOR AL,AL
007d5254  5f  POP EDI
007d5255  c20800  RET 0x8
Owned instructions=29 owned bytes=72 gap/nonowned bytes=0

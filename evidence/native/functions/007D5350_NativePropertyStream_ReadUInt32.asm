# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadUInt32
Paired actual annotated Ghidra pseudocode: 007D5350_NativePropertyStream_ReadUInt32.c
Owned ranges: [[007d5350, 007d5397]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d5350  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d5354  57  PUSH EDI
007d5355  35068628f1  XOR EAX,0xf1288606
007d535a  50  PUSH EAX
007d535b  8bf9  MOV EDI,ECX
007d535d  e8fefdffff  CALL 0x007d5160
007d5362  84c0  TEST AL,AL
007d5364  742c  JZ 0x007d5392
007d5366  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d536a  56  PUSH ESI
007d536b  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d536e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5371  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d5374  51  PUSH ECX
007d5375  52  PUSH EDX
007d5376  50  PUSH EAX
007d5377  e80486d0ff  CALL 0x004dd980
007d537c  83c40c  ADD ESP,0xc
007d537f  8bce  MOV ECX,ESI
007d5381  50  PUSH EAX
007d5382  e869260000  CALL 0x007d79f0
007d5387  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007d538a  8a4114  MOV AL,byte ptr [ECX + 0x14]
007d538d  5e  POP ESI
007d538e  5f  POP EDI
007d538f  c20800  RET 0x8
007d5392  32c0  XOR AL,AL
007d5394  5f  POP EDI
007d5395  c20800  RET 0x8
Owned instructions=29 owned bytes=72 gap/nonowned bytes=0

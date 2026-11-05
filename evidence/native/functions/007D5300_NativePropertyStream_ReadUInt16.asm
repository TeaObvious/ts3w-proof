# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadUInt16
Paired actual annotated Ghidra pseudocode: 007D5300_NativePropertyStream_ReadUInt16.c
Owned ranges: [[007d5300, 007d5347]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d5300  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d5304  57  PUSH EDI
007d5305  356c8928f3  XOR EAX,0xf328896c
007d530a  50  PUSH EAX
007d530b  8bf9  MOV EDI,ECX
007d530d  e84efeffff  CALL 0x007d5160
007d5312  84c0  TEST AL,AL
007d5314  742c  JZ 0x007d5342
007d5316  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d531a  56  PUSH ESI
007d531b  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d531e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5321  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d5324  51  PUSH ECX
007d5325  52  PUSH EDX
007d5326  50  PUSH EAX
007d5327  e8b485d0ff  CALL 0x004dd8e0
007d532c  83c40c  ADD ESP,0xc
007d532f  8bce  MOV ECX,ESI
007d5331  50  PUSH EAX
007d5332  e8b9260000  CALL 0x007d79f0
007d5337  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007d533a  8a4114  MOV AL,byte ptr [ECX + 0x14]
007d533d  5e  POP ESI
007d533e  5f  POP EDI
007d533f  c20800  RET 0x8
007d5342  32c0  XOR AL,AL
007d5344  5f  POP EDI
007d5345  c20800  RET 0x8
Owned instructions=29 owned bytes=72 gap/nonowned bytes=0

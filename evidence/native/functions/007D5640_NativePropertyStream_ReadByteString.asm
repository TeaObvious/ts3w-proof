# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadByteString
Paired actual annotated Ghidra pseudocode: 007D5640_NativePropertyStream_ReadByteString.c
Owned ranges: [[007d5640, 007d5672]]
Envelope bytes=51

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d5640  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d5644  56  PUSH ESI
007d5645  35724c7bc8  XOR EAX,0xc87b4c72
007d564a  50  PUSH EAX
007d564b  8bf1  MOV ESI,ECX
007d564d  e80efbffff  CALL 0x007d5160
007d5652  84c0  TEST AL,AL
007d5654  7417  JZ 0x007d566d
007d5656  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
007d565a  51  PUSH ECX
007d565b  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
007d565e  e8fd3f0000  CALL 0x007d9660
007d5663  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d5666  8a4214  MOV AL,byte ptr [EDX + 0x14]
007d5669  5e  POP ESI
007d566a  c20800  RET 0x8
007d566d  32c0  XOR AL,AL
007d566f  5e  POP ESI
007d5670  c20800  RET 0x8
Owned instructions=19 owned bytes=51 gap/nonowned bytes=0

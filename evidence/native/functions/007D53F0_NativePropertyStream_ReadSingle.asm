# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: NativePropertyStream_ReadSingle
Paired actual annotated Ghidra pseudocode: 007D53F0_NativePropertyStream_ReadSingle.c
Owned ranges: [[007d53f0, 007d5437]]
Envelope bytes=72

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d53f0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d53f4  57  PUSH EDI
007d53f5  35a9d7dc4e  XOR EAX,0x4edcd7a9
007d53fa  50  PUSH EAX
007d53fb  8bf9  MOV EDI,ECX
007d53fd  e85efdffff  CALL 0x007d5160
007d5402  84c0  TEST AL,AL
007d5404  742c  JZ 0x007d5432
007d5406  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
007d540a  56  PUSH ESI
007d540b  8b7708  MOV ESI,dword ptr [EDI + 0x8]
007d540e  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5411  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d5414  51  PUSH ECX
007d5415  52  PUSH EDX
007d5416  50  PUSH EAX
007d5417  e86485d0ff  CALL 0x004dd980
007d541c  83c40c  ADD ESP,0xc
007d541f  8bce  MOV ECX,ESI
007d5421  50  PUSH EAX
007d5422  e8c9250000  CALL 0x007d79f0
007d5427  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
007d542a  8a4114  MOV AL,byte ptr [ECX + 0x14]
007d542d  5e  POP ESI
007d542e  5f  POP EDI
007d542f  c20800  RET 0x8
007d5432  32c0  XOR AL,AL
007d5434  5f  POP EDI
007d5435  c20800  RET 0x8
Owned instructions=29 owned bytes=72 gap/nonowned bytes=0

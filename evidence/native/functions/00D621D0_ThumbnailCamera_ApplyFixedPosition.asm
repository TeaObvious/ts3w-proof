# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailCamera_ApplyFixedPosition
Paired actual annotated Ghidra pseudocode: 00D621D0_ThumbnailCamera_ApplyFixedPosition.c
Owned ranges: [[00d621d0, 00d62271]]
Envelope bytes=162

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d621d0  56  PUSH ESI
00d621d1  57  PUSH EDI
00d621d2  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
00d621d6  8b4734  MOV EAX,dword ptr [EDI + 0x34]
00d621d9  8bf1  MOV ESI,ECX
00d621db  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d621de  50  PUSH EAX
00d621df  e84c8a77ff  CALL 0x004dac30
00d621e4  837f3400  CMP dword ptr [EDI + 0x34],0x0
00d621e8  51  PUSH ECX
00d621e9  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d621ec  750d  JNZ 0x00d621fb
00d621ee  d94730  FLD float ptr [EDI + 0x30]
00d621f1  d91c24  FSTP float ptr [ESP]
00d621f4  e837ecbfff  CALL 0x00960e30
00d621f9  eb0a  JMP 0x00d62205
00d621fb  d9e8  FLD1
00d621fd  d91c24  FSTP float ptr [ESP]
00d62200  e80bddbfff  CALL 0x0095ff10
00d62205  8b4e24  MOV ECX,dword ptr [ESI + 0x24]
00d62208  db4624  FILD dword ptr [ESI + 0x24]
00d6220b  85c9  TEST ECX,ECX
00d6220d  7d06  JGE 0x00d62215
00d6220f  d8054899f900  FADD float ptr [0x00f99948]
00d62215  8b5628  MOV EDX,dword ptr [ESI + 0x28]
00d62218  db4628  FILD dword ptr [ESI + 0x28]
00d6221b  85d2  TEST EDX,EDX
00d6221d  7d06  JGE 0x00d62225
00d6221f  d8054899f900  FADD float ptr [0x00f99948]
00d62225  def9  FDIVP
00d62227  51  PUSH ECX
00d62228  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d6222b  d91c24  FSTP float ptr [ESP]
00d6222e  e8bdecbfff  CALL 0x00960ef0
00d62233  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00d62237  57  PUSH EDI
00d62238  8d4710  LEA EAX,[EDI + 0x10]
00d6223b  50  PUSH EAX
00d6223c  51  PUSH ECX
00d6223d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d62240  e88bf9bfff  CALL 0x00961bd0
00d62245  d94720  FLD float ptr [EDI + 0x20]
00d62248  51  PUSH ECX
00d62249  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d6224c  d91c24  FSTP float ptr [ESP]
00d6224f  e82cdbbfff  CALL 0x0095fd80
00d62254  d9472c  FLD float ptr [EDI + 0x2c]
00d62257  51  PUSH ECX
00d62258  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d6225b  d91c24  FSTP float ptr [ESP]
00d6225e  e85d387dff  CALL 0x00535ac0
00d62263  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00d62266  6a00  PUSH 0x0
00d62268  e873f0bfff  CALL 0x009612e0
00d6226d  5f  POP EDI
00d6226e  5e  POP ESI
00d6226f  c20800  RET 0x8
Owned instructions=57 owned bytes=162 gap/nonowned bytes=0

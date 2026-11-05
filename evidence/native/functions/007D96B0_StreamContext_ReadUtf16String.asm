# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: StreamContext_ReadUtf16String
Paired actual annotated Ghidra pseudocode: 007D96B0_StreamContext_ReadUtf16String.c
Owned ranges: [[007d96b0, 007d96ff]]
Envelope bytes=80

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d96b0  51  PUSH ECX
007d96b1  56  PUSH ESI
007d96b2  8bf1  MOV ESI,ECX
007d96b4  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007d96b7  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d96ba  50  PUSH EAX
007d96bb  8d4c2408  LEA ECX,[ESP + 0x8]
007d96bf  51  PUSH ECX
007d96c0  52  PUSH EDX
007d96c1  e8ba42d0ff  CALL 0x004dd980
007d96c6  83c40c  ADD ESP,0xc
007d96c9  204614  AND byte ptr [ESI + 0x14],AL
007d96cc  742d  JZ 0x007d96fb
007d96ce  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d96d2  57  PUSH EDI
007d96d3  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
007d96d7  50  PUSH EAX
007d96d8  8bcf  MOV ECX,EDI
007d96da  e8612fc3ff  CALL 0x0040c640
007d96df  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d96e2  8b542408  MOV EDX,dword ptr [ESP + 0x8]
007d96e6  8b3f  MOV EDI,dword ptr [EDI]
007d96e8  8b4608  MOV EAX,dword ptr [ESI + 0x8]
007d96eb  51  PUSH ECX
007d96ec  52  PUSH EDX
007d96ed  57  PUSH EDI
007d96ee  50  PUSH EAX
007d96ef  e82c42d0ff  CALL 0x004dd920
007d96f4  83c410  ADD ESP,0x10
007d96f7  204614  AND byte ptr [ESI + 0x14],AL
007d96fa  5f  POP EDI
007d96fb  5e  POP ESI
007d96fc  59  POP ECX
007d96fd  c20400  RET 0x4
Owned instructions=34 owned bytes=80 gap/nonowned bytes=0

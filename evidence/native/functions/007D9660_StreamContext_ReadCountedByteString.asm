# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: StreamContext_ReadCountedByteString
Paired actual annotated Ghidra pseudocode: 007D9660_StreamContext_ReadCountedByteString.c
Owned ranges: [[007d9660, 007d96ab]]
Envelope bytes=76

GHIDRA LISTING (original bytes; nonowned alignment explicit)
007d9660  51  PUSH ECX
007d9661  56  PUSH ESI
007d9662  8bf1  MOV ESI,ECX
007d9664  8b4610  MOV EAX,dword ptr [ESI + 0x10]
007d9667  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d966a  50  PUSH EAX
007d966b  8d4c2408  LEA ECX,[ESP + 0x8]
007d966f  51  PUSH ECX
007d9670  52  PUSH EDX
007d9671  e80a43d0ff  CALL 0x004dd980
007d9676  83c40c  ADD ESP,0xc
007d9679  204614  AND byte ptr [ESI + 0x14],AL
007d967c  7429  JZ 0x007d96a7
007d967e  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d9682  57  PUSH EDI
007d9683  8b7c2410  MOV EDI,dword ptr [ESP + 0x10]
007d9687  50  PUSH EAX
007d9688  8bcf  MOV ECX,EDI
007d968a  e87107c3ff  CALL 0x00409e00
007d968f  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
007d9693  8b3f  MOV EDI,dword ptr [EDI]
007d9695  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d9698  51  PUSH ECX
007d9699  57  PUSH EDI
007d969a  52  PUSH EDX
007d969b  e81042d0ff  CALL 0x004dd8b0
007d96a0  83c40c  ADD ESP,0xc
007d96a3  204614  AND byte ptr [ESI + 0x14],AL
007d96a6  5f  POP EDI
007d96a7  5e  POP ESI
007d96a8  59  POP ECX
007d96a9  c20400  RET 0x4
Owned instructions=32 owned bytes=76 gap/nonowned bytes=0

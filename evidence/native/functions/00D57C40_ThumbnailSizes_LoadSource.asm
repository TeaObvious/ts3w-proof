# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ThumbnailSizes_LoadSource
Paired actual annotated Ghidra pseudocode: 00D57C40_ThumbnailSizes_LoadSource.c
Owned ranges: [[00d57c40, 00d57cc9]]
Envelope bytes=138

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00d57c40  81ec9c040000  SUB ESP,0x49c
00d57c46  56  PUSH ESI
00d57c47  57  PUSH EDI
00d57c48  8bf9  MOV EDI,ECX
00d57c4a  8d4c2410  LEA ECX,[ESP + 0x10]
00d57c4e  e8cd84a7ff  CALL 0x007d0120
00d57c53  8d7738  LEA ESI,[EDI + 0x38]
00d57c56  8d442410  LEA EAX,[ESP + 0x10]
00d57c5a  81c798000000  ADD EDI,0x98
00d57c60  6870930801  PUSH 0x1089370
00d57c65  8bcf  MOV ECX,EDI
00d57c67  8944240c  MOV dword ptr [ESP + 0xc],EAX
00d57c6b  89742410  MOV dword ptr [ESP + 0x10],ESI
00d57c6f  e88c9f78ff  CALL 0x004e1c00
00d57c74  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00d57c77  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00d57c7a  51  PUSH ECX
00d57c7b  52  PUSH EDX
00d57c7c  8bce  MOV ECX,ESI
00d57c7e  e87d43ffff  CALL 0x00d4c000
00d57c83  6a00  PUSH 0x0
00d57c85  683c990701  PUSH 0x107993c
00d57c8a  8d4c2418  LEA ECX,[ESP + 0x18]
00d57c8e  c7460c00000000  MOV dword ptr [ESI + 0xc],0x0
00d57c95  e8d686a7ff  CALL 0x007d0370
00d57c9a  84c0  TEST AL,AL
00d57c9c  7413  JZ 0x00d57cb1
00d57c9e  8d442408  LEA EAX,[ESP + 0x8]
00d57ca2  50  PUSH EAX
00d57ca3  68903dd500  PUSH 0xd53d90
00d57ca8  8d4c2418  LEA ECX,[ESP + 0x18]
00d57cac  e80f9a79ff  CALL 0x004f16c0
00d57cb1  8bcf  MOV ECX,EDI
00d57cb3  e808a078ff  CALL 0x004e1cc0
00d57cb8  8d4c2410  LEA ECX,[ESP + 0x10]
00d57cbc  e88f85a7ff  CALL 0x007d0250
00d57cc1  5f  POP EDI
00d57cc2  5e  POP ESI
00d57cc3  81c49c040000  ADD ESP,0x49c
00d57cc9  c3  RET
Owned instructions=40 owned bytes=138 gap/nonowned bytes=0

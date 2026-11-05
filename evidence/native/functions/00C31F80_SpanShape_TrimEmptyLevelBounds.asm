# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: SpanShape_TrimEmptyLevelBounds
Paired actual annotated Ghidra pseudocode: 00C31F80_SpanShape_TrimEmptyLevelBounds.c
Owned ranges: [[00c31f80, 00c32080]]
Envelope bytes=257

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c31f80  56  PUSH ESI
00c31f81  8bf1  MOV ESI,ECX
00c31f83  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c31f86  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
00c31f89  57  PUSH EDI
00c31f8a  7468  JZ 0x00c31ff4
00c31f8c  8d642400  LEA ESP,[ESP]
00c31f90  8b7e0c  MOV EDI,dword ptr [ESI + 0xc]
00c31f93  57  PUSH EDI
00c31f94  8bce  MOV ECX,ESI
00c31f96  e825faffff  CALL 0x00c319c0
00c31f9b  8b4f08  MOV ECX,dword ptr [EDI + 0x8]
00c31f9e  3b4f18  CMP ECX,dword ptr [EDI + 0x18]
00c31fa1  7551  JNZ 0x00c31ff4
00c31fa3  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c31fa6  8d4130  LEA EAX,[ECX + 0x30]
00c31fa9  3b4614  CMP EAX,dword ptr [ESI + 0x14]
00c31fac  740a  JZ 0x00c31fb8
00c31fae  89460c  MOV dword ptr [ESI + 0xc],EAX
00c31fb1  e85a37fdff  CALL 0x00c05710
00c31fb6  eb31  JMP 0x00c31fe9
00c31fb8  e85337fdff  CALL 0x00c05710
00c31fbd  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c31fc0  85c0  TEST EAX,EAX
00c31fc2  7409  JZ 0x00c31fcd
00c31fc4  50  PUSH EAX
00c31fc5  e816258bff  CALL 0x004e44e0
00c31fca  83c404  ADD ESP,0x4
00c31fcd  8b4618  MOV EAX,dword ptr [ESI + 0x18]
00c31fd0  83c004  ADD EAX,0x4
00c31fd3  894618  MOV dword ptr [ESI + 0x18],EAX
00c31fd6  8b00  MOV EAX,dword ptr [EAX]
00c31fd8  894610  MOV dword ptr [ESI + 0x10],EAX
00c31fdb  05c0000000  ADD EAX,0xc0
00c31fe0  894614  MOV dword ptr [ESI + 0x14],EAX
00c31fe3  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00c31fe6  89560c  MOV dword ptr [ESI + 0xc],EDX
00c31fe9  800601  ADD byte ptr [ESI],0x1
00c31fec  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c31fef  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
00c31ff2  759c  JNZ 0x00c31f90
00c31ff4  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c31ff7  3b4e1c  CMP ECX,dword ptr [ESI + 0x1c]
00c31ffa  7473  JZ 0x00c3206f
00c31ffc  8d642400  LEA ESP,[ESP]
00c32000  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00c32003  8b5620  MOV EDX,dword ptr [ESI + 0x20]
00c32006  3bc2  CMP EAX,EDX
00c32008  8b4e28  MOV ECX,dword ptr [ESI + 0x28]
00c3200b  750b  JNZ 0x00c32018
00c3200d  83e904  SUB ECX,0x4
00c32010  8b09  MOV ECX,dword ptr [ECX]
00c32012  8d81c0000000  LEA EAX,[ECX + 0xc0]
00c32018  8d78d0  LEA EDI,[EAX + -0x30]
00c3201b  57  PUSH EDI
00c3201c  8bce  MOV ECX,ESI
00c3201e  e89df9ffff  CALL 0x00c319c0
00c32023  8b5708  MOV EDX,dword ptr [EDI + 0x8]
00c32026  3b5718  CMP EDX,dword ptr [EDI + 0x18]
00c32029  7544  JNZ 0x00c3206f
00c3202b  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
00c3202e  8b4e20  MOV ECX,dword ptr [ESI + 0x20]
00c32031  3bc1  CMP EAX,ECX
00c32033  7523  JNZ 0x00c32058
00c32035  85c9  TEST ECX,ECX
00c32037  7409  JZ 0x00c32042
00c32039  51  PUSH ECX
00c3203a  e8a1248bff  CALL 0x004e44e0
00c3203f  83c404  ADD ESP,0x4
00c32042  8b4628  MOV EAX,dword ptr [ESI + 0x28]
00c32045  83e804  SUB EAX,0x4
00c32048  894628  MOV dword ptr [ESI + 0x28],EAX
00c3204b  8b00  MOV EAX,dword ptr [EAX]
00c3204d  894620  MOV dword ptr [ESI + 0x20],EAX
00c32050  05c0000000  ADD EAX,0xc0
00c32055  894624  MOV dword ptr [ESI + 0x24],EAX
00c32058  8d48d0  LEA ECX,[EAX + -0x30]
00c3205b  894e1c  MOV dword ptr [ESI + 0x1c],ECX
00c3205e  e8ad36fdff  CALL 0x00c05710
00c32063  804601ff  ADD byte ptr [ESI + 0x1],0xff
00c32067  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c3206a  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
00c3206d  7591  JNZ 0x00c32000
00c3206f  8b4e0c  MOV ECX,dword ptr [ESI + 0xc]
00c32072  3b4e1c  CMP ECX,dword ptr [ESI + 0x1c]
00c32075  7507  JNZ 0x00c3207e
00c32077  c60600  MOV byte ptr [ESI],0x0
00c3207a  c64601ff  MOV byte ptr [ESI + 0x1],0xff
00c3207e  5f  POP EDI
00c3207f  5e  POP ESI
00c32080  c3  RET
Owned instructions=91 owned bytes=257 nonowned bytes=0

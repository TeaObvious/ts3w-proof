# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00C8DB20_ProductCatalogKeyArray_FindExact.c
Owned ranges: [[00c8db20, 00c8db88]]

00c8db20  0fb64110  MOVZX EAX,byte ptr [ECX + 0x10]
00c8db24  56  PUSH ESI
00c8db25  8b74240c  MOV ESI,dword ptr [ESP + 0xc]
00c8db29  57  PUSH EDI
00c8db2a  8b7904  MOV EDI,dword ptr [ECX + 0x4]
00c8db2d  8b09  MOV ECX,dword ptr [ECX]
00c8db2f  50  PUSH EAX
00c8db30  56  PUSH ESI
00c8db31  57  PUSH EDI
00c8db32  51  PUSH ECX
00c8db33  e818eeffff  CALL 0x00c8c950
00c8db38  8bc8  MOV ECX,EAX
00c8db3a  83c410  ADD ESP,0x10
00c8db3d  3bcf  CMP ECX,EDI
00c8db3f  743a  JZ 0x00c8db7b
00c8db41  8b06  MOV EAX,dword ptr [ESI]
00c8db43  8b11  MOV EDX,dword ptr [ECX]
00c8db45  3bc2  CMP EAX,EDX
00c8db47  751a  JNZ 0x00c8db63
00c8db49  8b4604  MOV EAX,dword ptr [ESI + 0x4]
00c8db4c  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00c8db4f  3bc2  CMP EAX,EDX
00c8db51  7510  JNZ 0x00c8db63
00c8db53  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c8db56  8b510c  MOV EDX,dword ptr [ECX + 0xc]
00c8db59  3bc2  CMP EAX,EDX
00c8db5b  7506  JNZ 0x00c8db63
00c8db5d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c8db60  3b5108  CMP EDX,dword ptr [ECX + 0x8]
00c8db63  0f92c0  SETC AL
00c8db66  84c0  TEST AL,AL
00c8db68  7511  JNZ 0x00c8db7b
00c8db6a  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8db6e  8908  MOV dword ptr [EAX],ECX
00c8db70  83c118  ADD ECX,0x18
00c8db73  5f  POP EDI
00c8db74  894804  MOV dword ptr [EAX + 0x4],ECX
00c8db77  5e  POP ESI
00c8db78  c20800  RET 0x8
00c8db7b  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00c8db7f  5f  POP EDI
00c8db80  8908  MOV dword ptr [EAX],ECX
00c8db82  894804  MOV dword ptr [EAX + 0x4],ECX
00c8db85  5e  POP ESI
00c8db86  c20800  RET 0x8

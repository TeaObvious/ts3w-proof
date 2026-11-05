# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope; unowned alignment explicitly listed.
Annotated Ghidra pseudocode: 00CEA960_ScriptCore_UserToolUtils_UserToolUtils_GetProductListImpl.c
Owned ranges: [[00cea960, 00ceaa58]]

00cea960  8b0d34e01e01  MOV ECX,dword ptr [0x011ee034]
00cea966  83ec10  SUB ESP,0x10
00cea969  85c9  TEST ECX,ECX
00cea96b  0f84e2000000  JZ 0x00ceaa53
00cea971  53  PUSH EBX
00cea972  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00cea976  83fb08  CMP EBX,0x8
00cea979  56  PUSH ESI
00cea97a  c744240800000000  MOV dword ptr [ESP + 0x8],0x0
00cea982  c744240c00000000  MOV dword ptr [ESP + 0xc],0x0
00cea98a  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00cea992  c74424142c170801  MOV dword ptr [ESP + 0x14],0x108172c
00cea99a  7548  JNZ 0x00cea9e4
00cea99c  57  PUSH EDI
00cea99d  8d44240c  LEA EAX,[ESP + 0xc]
00cea9a1  50  PUSH EAX
00cea9a2  53  PUSH EBX
00cea9a3  e84866faff  CALL 0x00c90ff0
00cea9a8  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00cea9ac  8b54240c  MOV EDX,dword ptr [ESP + 0xc]
00cea9b0  68505cce00  PUSH 0xce5c50
00cea9b5  51  PUSH ECX
00cea9b6  52  PUSH EDX
00cea9b7  e8b4c1ffff  CALL 0x00ce6b70
00cea9bc  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00cea9c0  6a00  PUSH 0x0
00cea9c2  8bf8  MOV EDI,EAX
00cea9c4  56  PUSH ESI
00cea9c5  57  PUSH EDI
00cea9c6  ff158866f900  CALL dword ptr [0x00f96688]
00cea9cc  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00cea9d0  2bf7  SUB ESI,EDI
00cea9d2  83c418  ADD ESP,0x18
00cea9d5  c1fe02  SAR ESI,0x2
00cea9d8  f7de  NEG ESI
00cea9da  8d0cb0  LEA ECX,[EAX + ESI*0x4]
00cea9dd  894c2410  MOV dword ptr [ESP + 0x10],ECX
00cea9e1  5f  POP EDI
00cea9e2  eb44  JMP 0x00ceaa28
00cea9e4  83fb1a  CMP EBX,0x1a
00cea9e7  7534  JNZ 0x00ceaa1d
00cea9e9  8d542408  LEA EDX,[ESP + 0x8]
00cea9ed  52  PUSH EDX
00cea9ee  6a08  PUSH 0x8
00cea9f0  e8fb65faff  CALL 0x00c90ff0
00cea9f5  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
00cea9f9  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00cea9fd  68605cce00  PUSH 0xce5c60
00ceaa02  50  PUSH EAX
00ceaa03  51  PUSH ECX
00ceaa04  e867c1ffff  CALL 0x00ce6b70
00ceaa09  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00ceaa0d  83c40c  ADD ESP,0xc
00ceaa10  52  PUSH EDX
00ceaa11  50  PUSH EAX
00ceaa12  8d4c2410  LEA ECX,[ESP + 0x10]
00ceaa16  e8e5e8ffff  CALL 0x00ce9300
00ceaa1b  eb0b  JMP 0x00ceaa28
00ceaa1d  8d442408  LEA EAX,[ESP + 0x8]
00ceaa21  50  PUSH EAX
00ceaa22  53  PUSH EBX
00ceaa23  e8c865faff  CALL 0x00c90ff0
00ceaa28  6a00  PUSH 0x0
00ceaa2a  8d4c240c  LEA ECX,[ESP + 0xc]
00ceaa2e  53  PUSH EBX
00ceaa2f  51  PUSH ECX
00ceaa30  e8ebfdffff  CALL 0x00cea820
00ceaa35  8bf0  MOV ESI,EAX
00ceaa37  8b442414  MOV EAX,dword ptr [ESP + 0x14]
00ceaa3b  83c40c  ADD ESP,0xc
00ceaa3e  85c0  TEST EAX,EAX
00ceaa40  7409  JZ 0x00ceaa4b
00ceaa42  50  PUSH EAX
00ceaa43  e8989a7fff  CALL 0x004e44e0
00ceaa48  83c404  ADD ESP,0x4
00ceaa4b  8bc6  MOV EAX,ESI
00ceaa4d  5e  POP ESI
00ceaa4e  5b  POP EBX
00ceaa4f  83c410  ADD ESP,0x10
00ceaa52  c3  RET
00ceaa53  33c0  XOR EAX,EAX
00ceaa55  83c410  ADD ESP,0x10
00ceaa58  c3  RET

# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: ByteBlockGrid_WriteResourceHeader
Paired actual annotated Ghidra pseudocode: 00AEEE60_ByteBlockGrid_WriteResourceHeader.c
Owned ranges: [[00aeee60, 00aeef57]]
Envelope bytes=248

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aeee60  83ec10  SUB ESP,0x10
00aeee63  56  PUSH ESI
00aeee64  57  PUSH EDI
00aeee65  8bf9  MOV EDI,ECX
00aeee67  807f4000  CMP byte ptr [EDI + 0x40],0x0
00aeee6b  7405  JZ 0x00aeee72
00aeee6d  e84ef5ffff  CALL 0x00aee3c0
00aeee72  8b442424  MOV EAX,dword ptr [ESP + 0x24]
00aeee76  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00aeee7a  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00aeee7e  8b74241c  MOV ESI,dword ptr [ESP + 0x1c]
00aeee82  89442408  MOV dword ptr [ESP + 0x8],EAX
00aeee86  6a01  PUSH 0x1
00aeee88  8d44240c  LEA EAX,[ESP + 0xc]
00aeee8c  894c2410  MOV dword ptr [ESP + 0x10],ECX
00aeee90  50  PUSH EAX
00aeee91  8bce  MOV ECX,ESI
00aeee93  c74424187e84dc06  MOV dword ptr [ESP + 0x18],0x6dc847e
00aeee9b  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00aeee9f  e81c96ceff  CALL 0x007d84c0
00aeeea4  84c0  TEST AL,AL
00aeeea6  0f84a1000000  JZ 0x00aeef4d
00aeeeac  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeeeaf  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aeeeb2  51  PUSH ECX
00aeeeb3  6a01  PUSH 0x1
00aeeeb5  52  PUSH EDX
00aeeeb6  e8b5f09eff  CALL 0x004ddf70
00aeeebb  83c40c  ADD ESP,0xc
00aeeebe  8bce  MOV ECX,ESI
00aeeec0  50  PUSH EAX
00aeeec1  e82a8bceff  CALL 0x007d79f0
00aeeec6  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeeec9  8b07  MOV EAX,dword ptr [EDI]
00aeeecb  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aeeece  51  PUSH ECX
00aeeecf  50  PUSH EAX
00aeeed0  52  PUSH EDX
00aeeed1  e88af19eff  CALL 0x004de060
00aeeed6  83c40c  ADD ESP,0xc
00aeeed9  8bce  MOV ECX,ESI
00aeeedb  50  PUSH EAX
00aeeedc  e80f8bceff  CALL 0x007d79f0
00aeeee1  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeeee4  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00aeeee7  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aeeeea  51  PUSH ECX
00aeeeeb  50  PUSH EAX
00aeeeec  52  PUSH EDX
00aeeeed  e86ef19eff  CALL 0x004de060
00aeeef2  83c40c  ADD ESP,0xc
00aeeef5  8bce  MOV ECX,ESI
00aeeef7  50  PUSH EAX
00aeeef8  e8f38aceff  CALL 0x007d79f0
00aeeefd  8b4724  MOV EAX,dword ptr [EDI + 0x24]
00aeef00  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aeef03  2b4720  SUB EAX,dword ptr [EDI + 0x20]
00aeef06  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aeef09  51  PUSH ECX
00aeef0a  50  PUSH EAX
00aeef0b  52  PUSH EDX
00aeef0c  e85ff09eff  CALL 0x004ddf70
00aeef11  83c40c  ADD ESP,0xc
00aeef14  8bce  MOV ECX,ESI
00aeef16  50  PUSH EAX
00aeef17  e8d48aceff  CALL 0x007d79f0
00aeef1c  8b4f30  MOV ECX,dword ptr [EDI + 0x30]
00aeef1f  8b4734  MOV EAX,dword ptr [EDI + 0x34]
00aeef22  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aeef25  2bc1  SUB EAX,ECX
00aeef27  52  PUSH EDX
00aeef28  d1f8  SAR EAX,0x1
00aeef2a  50  PUSH EAX
00aeef2b  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aeef2e  51  PUSH ECX
00aeef2f  50  PUSH EAX
00aeef30  e86bef9eff  CALL 0x004ddea0
00aeef35  83c410  ADD ESP,0x10
00aeef38  8bce  MOV ECX,ESI
00aeef3a  50  PUSH EAX
00aeef3b  e8b08aceff  CALL 0x007d79f0
00aeef40  807e1400  CMP byte ptr [ESI + 0x14],0x0
00aeef44  7507  JNZ 0x00aeef4d
00aeef46  8bce  MOV ECX,ESI
00aeef48  e8238bceff  CALL 0x007d7a70
00aeef4d  8a4614  MOV AL,byte ptr [ESI + 0x14]
00aeef50  5f  POP EDI
00aeef51  5e  POP ESI
00aeef52  83c410  ADD ESP,0x10
00aeef55  c21000  RET 0x10
Owned instructions=90 owned bytes=248 gap/nonowned bytes=0

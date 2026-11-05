# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool LotGrid_WriteHeaderResource(void * this, void * param_1, undefined4 param_2, undefined4 param_3, undefined4 param_4)
Owned ranges: [[00c6d880, 00c6d942]]

00c6d880  83ec10  SUB ESP,0x10
00c6d883  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00c6d887  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00c6d88b  56  PUSH ESI
00c6d88c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00c6d890  57  PUSH EDI
00c6d891  8bf9  MOV EDI,ECX
00c6d893  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00c6d897  89442408  MOV dword ptr [ESP + 0x8],EAX
00c6d89b  6a01  PUSH 0x1
00c6d89d  8d44240c  LEA EAX,[ESP + 0xc]
00c6d8a1  894c2410  MOV dword ptr [ESP + 0x10],ECX
00c6d8a5  50  PUSH EAX
00c6d8a6  8bce  MOV ECX,ESI
00c6d8a8  c74424183a5325b1  MOV dword ptr [ESP + 0x18],0xb125533a
00c6d8b0  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00c6d8b4  e807acb6ff  CALL 0x007d84c0
00c6d8b9  84c0  TEST AL,AL
00c6d8bb  747b  JZ 0x00c6d938
00c6d8bd  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d8c0  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c6d8c3  51  PUSH ECX
00c6d8c4  6a01  PUSH 0x1
00c6d8c6  52  PUSH EDX
00c6d8c7  e8a40687ff  CALL 0x004ddf70
00c6d8cc  83c40c  ADD ESP,0xc
00c6d8cf  8bce  MOV ECX,ESI
00c6d8d1  50  PUSH EAX
00c6d8d2  e819a1b6ff  CALL 0x007d79f0
00c6d8d7  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d8da  8b4704  MOV EAX,dword ptr [EDI + 0x4]
00c6d8dd  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c6d8e0  51  PUSH ECX
00c6d8e1  50  PUSH EAX
00c6d8e2  52  PUSH EDX
00c6d8e3  e8780787ff  CALL 0x004de060
00c6d8e8  83c40c  ADD ESP,0xc
00c6d8eb  8bce  MOV ECX,ESI
00c6d8ed  50  PUSH EAX
00c6d8ee  e8fda0b6ff  CALL 0x007d79f0
00c6d8f3  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c6d8f6  8b4708  MOV EAX,dword ptr [EDI + 0x8]
00c6d8f9  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00c6d8fc  51  PUSH ECX
00c6d8fd  50  PUSH EAX
00c6d8fe  52  PUSH EDX
00c6d8ff  e85c0787ff  CALL 0x004de060
00c6d904  83c40c  ADD ESP,0xc
00c6d907  8bce  MOV ECX,ESI
00c6d909  50  PUSH EAX
00c6d90a  e8e1a0b6ff  CALL 0x007d79f0
00c6d90f  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00c6d912  8b7f0c  MOV EDI,dword ptr [EDI + 0xc]
00c6d915  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00c6d918  50  PUSH EAX
00c6d919  57  PUSH EDI
00c6d91a  51  PUSH ECX
00c6d91b  e8400787ff  CALL 0x004de060
00c6d920  83c40c  ADD ESP,0xc
00c6d923  8bce  MOV ECX,ESI
00c6d925  50  PUSH EAX
00c6d926  e8c5a0b6ff  CALL 0x007d79f0
00c6d92b  807e1400  CMP byte ptr [ESI + 0x14],0x0
00c6d92f  7507  JNZ 0x00c6d938
00c6d931  8bce  MOV ECX,ESI
00c6d933  e838a1b6ff  CALL 0x007d7a70
00c6d938  8a4614  MOV AL,byte ptr [ESI + 0x14]
00c6d93b  5f  POP EDI
00c6d93c  5e  POP ESI
00c6d93d  83c410  ADD ESP,0x10
00c6d940  c21000  RET 0x10

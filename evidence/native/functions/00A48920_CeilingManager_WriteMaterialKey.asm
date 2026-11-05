# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool CeilingManager_WriteMaterialKey(void * this, pointer streamContext, pointer keyContext, uint instanceLow, uint instanceHigh, uint groupId)
Owned ranges: [[00a48920, 00a489b3]]

00a48920  83ec10  SUB ESP,0x10
00a48923  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
00a48927  8b542424  MOV EDX,dword ptr [ESP + 0x24]
00a4892b  56  PUSH ESI
00a4892c  8b742418  MOV ESI,dword ptr [ESP + 0x18]
00a48930  57  PUSH EDI
00a48931  8bf9  MOV EDI,ECX
00a48933  8b4c2428  MOV ECX,dword ptr [ESP + 0x28]
00a48937  89442408  MOV dword ptr [ESP + 0x8],EAX
00a4893b  6a01  PUSH 0x1
00a4893d  8d44240c  LEA EAX,[ESP + 0xc]
00a48941  894c2410  MOV dword ptr [ESP + 0x10],ECX
00a48945  50  PUSH EAX
00a48946  8bce  MOV ECX,ESI
00a48948  c74424186d168a04  MOV dword ptr [ESP + 0x18],0x48a166d
00a48950  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00a48954  e867fbd8ff  CALL 0x007d84c0
00a48959  84c0  TEST AL,AL
00a4895b  744c  JZ 0x00a489a9
00a4895d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a48960  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a48963  51  PUSH ECX
00a48964  6a02  PUSH 0x2
00a48966  52  PUSH EDX
00a48967  e80456a9ff  CALL 0x004ddf70
00a4896c  83c40c  ADD ESP,0xc
00a4896f  8bce  MOV ECX,ESI
00a48971  50  PUSH EAX
00a48972  e879f0d8ff  CALL 0x007d79f0
00a48977  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00a4897b  6a00  PUSH 0x0
00a4897d  83c720  ADD EDI,0x20
00a48980  57  PUSH EDI
00a48981  e8daead8ff  CALL 0x007d7460
00a48986  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a48989  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a4898c  0fb7c0  MOVZX EAX,AX
00a4898f  51  PUSH ECX
00a48990  50  PUSH EAX
00a48991  52  PUSH EDX
00a48992  e8d954a9ff  CALL 0x004dde70
00a48997  83c40c  ADD ESP,0xc
00a4899a  8bce  MOV ECX,ESI
00a4899c  50  PUSH EAX
00a4899d  e84ef0d8ff  CALL 0x007d79f0
00a489a2  8bce  MOV ECX,ESI
00a489a4  e8c7f0d8ff  CALL 0x007d7a70
00a489a9  8a4614  MOV AL,byte ptr [ESI + 0x14]
00a489ac  5f  POP EDI
00a489ad  5e  POP ESI
00a489ae  83c410  ADD ESP,0x10
00a489b1  c21400  RET 0x14

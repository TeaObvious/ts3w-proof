# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: bool FireplaceGroups_ExportObjectIndices(void * this, pointer context, pointer objectIndices, ulonglong lotId, uint group)
Owned ranges: [[00a76320, 00a763ce]]

00a76320  83ec20  SUB ESP,0x20
00a76323  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00a76327  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00a7632b  56  PUSH ESI
00a7632c  8b742428  MOV ESI,dword ptr [ESP + 0x28]
00a76330  57  PUSH EDI
00a76331  8bf9  MOV EDI,ECX
00a76333  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
00a76337  89442408  MOV dword ptr [ESP + 0x8],EAX
00a7633b  6a01  PUSH 0x1
00a7633d  8d44240c  LEA EAX,[ESP + 0xc]
00a76341  894c2410  MOV dword ptr [ESP + 0x10],ECX
00a76345  50  PUSH EAX
00a76346  8bce  MOV ECX,ESI
00a76348  c7442418cc6bf604  MOV dword ptr [ESP + 0x18],0x4f66bcc
00a76350  8954241c  MOV dword ptr [ESP + 0x1c],EDX
00a76354  e86721d6ff  CALL 0x007d84c0
00a76359  84c0  TEST AL,AL
00a7635b  7467  JZ 0x00a763c4
00a7635d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a76360  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a76363  51  PUSH ECX
00a76364  6a01  PUSH 0x1
00a76366  52  PUSH EDX
00a76367  e8047ca6ff  CALL 0x004ddf70
00a7636c  83c40c  ADD ESP,0xc
00a7636f  8bce  MOV ECX,ESI
00a76371  50  PUSH EAX
00a76372  e87916d6ff  CALL 0x007d79f0
00a76377  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00a7637a  8b4710  MOV EAX,dword ptr [EDI + 0x10]
00a7637d  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00a76380  51  PUSH ECX
00a76381  50  PUSH EAX
00a76382  52  PUSH EDX
00a76383  e8e87ba6ff  CALL 0x004ddf70
00a76388  83c40c  ADD ESP,0xc
00a7638b  8bce  MOV ECX,ESI
00a7638d  50  PUSH EAX
00a7638e  e85d16d6ff  CALL 0x007d79f0
00a76393  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00a76397  83ec10  SUB ESP,0x10
00a7639a  8bc4  MOV EAX,ESP
00a7639c  8938  MOV dword ptr [EAX],EDI
00a7639e  b91061a700  MOV ECX,0xa76110
00a763a3  894804  MOV dword ptr [EAX + 0x4],ECX
00a763a6  897008  MOV dword ptr [EAX + 0x8],ESI
00a763a9  89500c  MOV dword ptr [EAX + 0xc],EDX
00a763ac  83c704  ADD EDI,0x4
00a763af  8d442428  LEA EAX,[ESP + 0x28]
00a763b3  57  PUSH EDI
00a763b4  50  PUSH EAX
00a763b5  e8e6f4ffff  CALL 0x00a758a0
00a763ba  83c418  ADD ESP,0x18
00a763bd  8bce  MOV ECX,ESI
00a763bf  e8ac16d6ff  CALL 0x007d7a70
00a763c4  8a4614  MOV AL,byte ptr [ESI + 0x14]
00a763c7  5f  POP EDI
00a763c8  5e  POP ESI
00a763c9  83c420  ADD ESP,0x20
00a763cc  c21400  RET 0x14
